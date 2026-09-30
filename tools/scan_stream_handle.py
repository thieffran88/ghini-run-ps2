#!/usr/bin/env python3
"""Stage 24: scan Ghini.exe disassembly for the QuickBASIC current-stream state.
Usage: python scan_stream_handle.py all.asm
"""
import sys
from pathlib import Path
text=Path(sys.argv[1]).read_text(errors="ignore")
for i,line in enumerate(text.splitlines(),1):
    if any(x in line for x in ("0x40c3","0x1e550","0x1e5d2","0x1ea4c","0x1944b","0x19356")):
        print(f"{i}: {line}")
