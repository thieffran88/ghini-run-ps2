#!/usr/bin/env python3
"""Locate ASCII-to-number fingerprints in an objdump of Ghini.exe."""
import re,sys
text=open(sys.argv[1],errors='ignore').read().splitlines()
patterns=(r'sub\s+\$0x30',r'cmp\s+\$0x39',r'cmp\s+\$0x30',r'add\s+\$0xa,%al',r'sub\s+\$0x11')
for n,line in enumerate(text,1):
    if any(re.search(p,line) for p in patterns): print(f'{n}: {line}')
