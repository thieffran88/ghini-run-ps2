#!/usr/bin/env python3
"""Stage 21 helper: extract direct callers of the QuickBASIC stream dispatcher.

Input: all.asm (full i8086 disassembly with physical-file offsets).
Usage: python trace_runtime_callchain.py all.asm
""
from pathlib import Path
import re,sys
if len(sys.argv)!=2:
    raise SystemExit('usage: trace_runtime_callchain.py all.asm')
s=Path(sys.argv[1]).read_text(errors='ignore')
for target in ('0x19356','0x1944b','0x1926c'):
    print(f'== {target} ==')
    for line in s.splitlines():
        if re.search(rf'call\s+{re.escape(target)}\b',line): print(line)
