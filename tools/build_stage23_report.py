#!/usr/bin/env python3
"""Rebuild the Stage 23 provenance CSVs from the checked-in evidence."""
from pathlib import Path
import csv
ROOT = Path(__file__).resolve().parents[1]
for name in ["STREAM_PROVENANCE_STAGE23.csv", "GHINI_RUN_GRAMMAR_SIGNATURE.csv", "CALLCHAIN_GAPS_STAGE23.csv"]:
    p = ROOT / "analysis" / name
    with p.open(newline='', encoding='utf-8') as f:
        rows = list(csv.reader(f))
    print(f"{name}: {len(rows)-1} records")
