#!/usr/bin/env python3
"""Reproduce the Stage 22 caller/status tables from fixed disassembly evidence."""
from pathlib import Path
import csv
ROOT=Path(__file__).resolve().parents[1]
rows=list(csv.DictReader((ROOT/'analysis/STREAM_API_CALLER_CLASSIFICATION.csv').open()))
print(f"classified callers: {len(rows)}")
for r in rows:
    print(f"{r['caller']} -> {r['target']}: {r['classification']} [{r['evidence_status']}]")
