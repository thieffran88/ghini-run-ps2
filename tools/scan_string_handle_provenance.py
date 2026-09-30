#!/usr/bin/env python3
"""Stage 25: reproducible scans for QuickBASIC string/stream provenance."""
from pathlib import Path
import re
ASM=Path("Ghini.exe")
if not ASM.exists():
    raise SystemExit("Run from a directory containing Ghini.exe")
print("This stage intentionally reports candidate references; it does not assign semantics without a data-flow proof.")
