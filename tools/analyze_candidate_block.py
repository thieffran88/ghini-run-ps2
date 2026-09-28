from pathlib import Path
p=Path(__file__).resolve().parents[1]/'disasm'/'renderer_candidate_5461_5667.asm'
s=p.read_text()
print('candidate bytes/lines:', len(s.splitlines()))
for x in ('0x66','0x94','0xc2','0x11e','0xf0','0x14c','0x1a8'):
    print(x, s.count(x))
print('Contains direct file I/O markers:', any(k in s.lower() for k in ('3d','open','read','lseek')))
