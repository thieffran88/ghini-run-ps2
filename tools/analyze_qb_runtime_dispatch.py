import csv, re, struct
from pathlib import Path

ROOT=Path('/mnt/data/stage16work')
exe=(ROOT/'Ghini.exe').read_bytes()
asm=(ROOT/'all.asm').read_text(errors='ignore').splitlines()
out=Path('/mnt/data/GhiniRun_stage19_runtime_dispatch/analysis')

# Known runtime entry points discovered in Stage 18.
entries=[
 ('0x17ef7','DOS OPEN device helper'),('0x17f48','DOS WRITE one-byte helper'),
 ('0x18e41','DOS LSEEK'),('0x18f7d','DOS WRITE stream'),
 ('0x19062','DOS READ stream'),('0x1908e','DOS WRITE buffered stream'),
 ('0x1909e','DOS CLOSE stream'),('0x1926c','DOS OPEN higher-level stream'),
 ('0x19356','QB runtime dispatcher'),('0x19399','runtime input/line setup'),
 ('0x1944b','runtime character input'),('0x19474','runtime output/stream op'),
]
rows=[]
for addr,desc in entries:
    a=int(addr,16)
    direct=[]
    for line in asm:
        m=re.match(r'\s*([0-9a-f]+):.*call\s+0x([0-9a-f]+)',line)
        if m and int(m.group(2),16)==a:
            direct.append(int(m.group(1),16))
    rows.append((addr,desc,len(direct),','.join(hex(x) for x in direct[:20])))
with (out/'RUNTIME_ENTRY_XREFS.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['entry','description','direct_call_count','direct_callers_sample']); w.writerows(rows)

# The dispatcher at 0x19356 reads a word at 0x360c as a bounds value and then
# performs an indirect call through a CS-relative table. Preserve the exact bytes
# around it rather than assigning semantics to individual slots.
for start,end,name in [(0x19354,0x19394,'dispatcher_19356.asm'),(0x18d06,0x18e48,'file_state_lseek.asm'),(0x19000,0x190a8,'file_read_write_close.asm'),(0x19253,0x19276,'file_close_open.asm')]:
    lines=[]
    for line in asm:
        m=re.match(r'\s*([0-9a-f]+):',line)
        if m:
            a=int(m.group(1),16)
            if start<=a<end: lines.append(line)
    (Path('/mnt/data/GhiniRun_stage19_runtime_dispatch/disasm')/name).write_text('\n'.join(lines)+'\n')

# Source-file anchors and a grammar comparison: Ghini.run is whitespace/indent based,
# while the generic runtime text reader around 0x1e62e is comma/newline/quote oriented.
grun=ROOT/'data/Ghini.run'
text=grun.read_text(errors='replace')
features={
 'tabs': text.count('\t'),
 'commas': text.count(','),
 'spaces': text.count(' '),
 'newlines': text.count('\n'),
 'quote_chars': text.count('"'),
 'numeric_lines': sum(bool(re.fullmatch(r'\s*-?\d+(?:\s+-?\d+)*\s*',x)) for x in text.splitlines()),
}
with (out/'GHINI_RUN_GRAMMAR_FINGERPRINT.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['feature','count']); w.writerows(features.items())

# Exact string anchors already known from Stage 18.
anchors=[]
for label,needle in [('filename','data\\ghini.run'),('profile','PROFILE'),('profile_error','Error before PROFILE'),('trackmap','TRACKMAP'),('trackmap_error','Error before TRACKMAP')]:
    pos=exe.find(needle.encode('ascii'))
    anchors.append((label,needle,hex(pos) if pos>=0 else 'NOT_FOUND'))
with (out/'GHINI_RUN_SOURCE_ANCHORS.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['label','literal','file_offset']); w.writerows(anchors)

# A concise evidence ledger.
(out/'STAGE19_FINDINGS.txt').write_text('''Stage 19 findings\n\nCONFIRMED\n- The EXE contains a QuickBASIC-like runtime dispatcher at 0x19356. It computes an index from a runtime type byte and performs an indirect CS-relative call; this explains why application-level file operations do not necessarily appear as direct CALL 0x19062/0x1926c references.\n- File I/O is implemented below that layer: READ at 0x19062, WRITE at 0x1908e/0x18f7d, CLOSE at 0x1909e, OPEN at 0x1926c, LSEEK at 0x18e41.\n- The runtime keeps per-stream state in a structure addressed through SI. Confirmed fields used include +0x01 (DOS handle), +0x05 (flags), +0x06 (buffer/limit-related word), +0x0c/+0x0e (position), +0x10 (buffer cursor), and +0x12/+0x13 (buffer bytes). These offsets are runtime structure evidence, not Ghini.run record fields.\n- Ghini.run is strongly whitespace/indent based and contains no commas in the extracted file.\n\nREJECTED FOR GHINI.RUN\n- The generic text parser around 0x1e62e reads comma/newline/quote-delimited input and is therefore not a direct semantic match for the observed Ghini.run grammar.\n\nOPEN\n- The exact application-side call sequence that opens data\\ghini.run and dispatches PROFILE/TRACKMAP remains unresolved because the QB runtime boundary uses indirect dispatch/metadata.\n''')
