#!/usr/bin/env python3
"""Heuristic scanner for small-integer equality chains in a 16-bit QuickBASIC disassembly.
This is evidence collection only; it does not assign gameplay semantics to opcodes.
"""
from pathlib import Path
import re, argparse
ap=argparse.ArgumentParser(); ap.add_argument('disassembly'); ap.add_argument('-o','--out',default='opcode_candidates.txt'); a=ap.parse_args()
lines=Path(a.disassembly).read_text(errors='replace').splitlines(); hits=[]
for i,l in enumerate(lines):
 m=re.search(r'cmpw?\s+\$0x([0-9a-f]+),(-0x[0-9a-f]+\(%bp\)|0x[0-9a-f]+)',l)
 if m and int(m.group(1),16)<16:
  w='\n'.join(lines[max(0,i-4):i+5])
  vals=[int(x,16) for x in re.findall(r'cmpw?\s+\$0x([0-9a-f]+)',w)]
  if len(set(vals))>=2: hits.append(w)
Path(a.out).write_text('\n\n'.join(hits))
print(f'candidate windows: {len(hits)}')
