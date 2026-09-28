#!/usr/bin/env python3
from pathlib import Path
import re,csv

ASM=Path('/mnt/data/stage16work/all.asm')
OUT=Path('/mnt/data/GhiniRun_stage18_loader_dataflow')
lines=ASM.read_text(errors='replace').splitlines()

# Parse disassembly lines keyed by address.
rows=[]
for i,l in enumerate(lines):
    m=re.match(r'\s*([0-9a-f]+):\s+([0-9a-f ]+)\s+(.*)$',l)
    if m:
        rows.append((int(m.group(1),16),m.group(3).strip(),i,l))
byaddr={a:(text,i,l) for a,text,i,l in rows}

# DOS file I/O fingerprints in the executable.
funcs={0x3d:'OPEN',0x3e:'CLOSE',0x3f:'READ',0x40:'WRITE',0x42:'LSEEK',0x43:'ATTR',0x47:'GETCWD',0x49:'FREE',0x4a:'RESIZE'}
out=[]
for a,text,i,l in rows:
    if re.search(r'int\s+\$0x21$',text):
        ah=None; ax=None
        # Look back a few decoded instructions for immediate AX/AH.
        for aa in [x[0] for x in rows if x[0] < a][-6:][::-1]:
            t=byaddr[aa][0]
            mm=re.search(r'mov\s+\$0x([0-9a-f]+),%ah',t)
            if mm:
                ah=int(mm.group(1),16); break
            mm=re.search(r'mov\s+\$0x([0-9a-f]+),%ax',t)
            if mm:
                ax=int(mm.group(1),16); ah=(ax>>8)&0xff; break
        out.append({'address':f'{a:05x}','dos_ah':f'{ah:02x}' if ah is not None else '',
                    'dos_service':funcs.get(ah,'OTHER') if ah is not None else 'UNKNOWN',
                    'previous_ax':f'{ax:04x}' if ax is not None else '', 'instruction':text})

with (OUT/'analysis/IO_SYSCALL_CANDIDATES.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=out[0].keys()); w.writeheader(); w.writerows(out)

# Exact source-string records relevant to Ghini.run loader.
b=Path('/mnt/data/stage16work/Ghini.exe').read_bytes()
import struct
wanted=[]
for off in range(0x23800,0x24000):
    if off+4>len(b): break
    ln,line=struct.unpack_from('<HH',b,off)
    if 0<ln<100 and off+4+ln<=len(b):
        s=b[off+4:off+4+ln]
        if s in [b'data\\ghini.run',b'PROFILE',b'Error before PROFILE',b'TRACKMAP',b'Error before TRACKMAP']:
            wanted.append((off,line,s.decode('latin1')))
with (OUT/'analysis/GHINI_RUN_STRING_OFFSETS.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['physical_offset','source_line','string']); w.writerows(wanted)

# Produce focused windows: DOS I/O runtime plus all literal source-line anchors.
anchors=[0x17ef0,0x18d00,0x18e20,0x18f70,0x19050,0x19250,0x19380]
# add contexts around unique hits of source-line words, if any
for n in [3424,3436,3460]:
    p=n.to_bytes(2,'little'); start=0
    while True:
        x=b.find(p,start)
        if x<0: break
        if x<0x22000: anchors.append(max(0,x-32));
        start=x+1

a=[]
for l in lines:
    m=re.match(r'\s*([0-9a-f]+):',l)
    if m: a.append(int(m.group(1),16))
windows=[]
for center in anchors:
    lo=max(0,center-0x60); hi=center+0x160
    # line ranges by address
    sel=[l for l in lines if (lambda m: m and lo<=int(m.group(1),16)<hi)(re.match(r'\s*([0-9a-f]+):',l))]
    if sel:
        windows.append((center,sel))
with (OUT/'disasm/LOADER_CANDIDATE_WINDOWS.asm').open('w') as f:
    f.write('; Stage 18: DOS/QB file-I/O runtime fingerprints and source-string anchor contexts\n')
    for c,sel in windows:
        f.write(f'\n; ===== window around 0x{c:05x} =====\n')
        f.write('\n'.join(sel)+'\n')

# Compact runtime map derived from exact instruction sites.
map_rows=[
 ('0x17ef7','DOS OPEN','AH=3Dh; helper opens device/filename at DS:DX'),
 ('0x17f48','DOS WRITE','AH=40h; one-byte write helper'),
 ('0x18e41','DOS LSEEK','AH=42h; stream position management'),
 ('0x18f7d','DOS WRITE','AH=40h; stream write path'),
 ('0x19062','DOS READ','AH=3Fh; stream read path'),
 ('0x1908e','DOS WRITE','AH=40h; stream flush/write path'),
 ('0x1909e','DOS CLOSE','AH=3Eh; stream close path'),
 ('0x1926c','DOS OPEN','AH=3Dh; higher-level stream open'),
]
with (OUT/'analysis/QB_IO_RUNTIME_MAP.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['address','operation','evidence']); w.writerows(map_rows)

print('IO syscall sites:',len(out))
print('Relevant source anchors:',len(wanted))
