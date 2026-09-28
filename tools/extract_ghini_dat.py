#!/usr/bin/env python3
"""Extract the resource table from 'Ghini Run' GHINI.DAT.

Usage:
    python tools/extract_ghini_dat.py path/to/GHINI.DAT output_dir

The script does not modify the original DAT file. It preserves each payload
byte-for-byte and writes a CSV manifest with offsets, bank, size and SHA-256.
"""
from pathlib import Path
import csv, hashlib, re, sys

def main():
    if len(sys.argv) != 3:
        print("usage: extract_ghini_dat.py GHINI.DAT OUTPUT_DIR")
        raise SystemExit(2)
    src=Path(sys.argv[1]); out=Path(sys.argv[2])
    b=src.read_bytes()
    count=182; index_offset=10; entry_size=40
    entries=[]
    for i in range(count):
        p=index_offset+i*entry_size
        name=b[p:p+30].rstrip(b" \0").decode("latin1")
        field0=int.from_bytes(b[p+30:p+32],"little")
        offset=int.from_bytes(b[p+32:p+34],"little")
        bank=int.from_bytes(b[p+34:p+36],"little")
        size=int.from_bytes(b[p+36:p+38],"little")
        field4=int.from_bytes(b[p+38:p+40],"little")
        payload=b[offset:offset+size]
        if offset+size > len(b):
            raise ValueError(f"resource {i} exceeds file: {offset}+{size}>{len(b)}")
        d=out/f"bank_{bank:02d}"; d.mkdir(parents=True,exist_ok=True)
        safe=re.sub(r"[^A-Za-z0-9_.-]+","_",name) or f"resource_{i:03d}"
        (d/f"{i:03d}_{safe}.bin").write_bytes(payload)
        entries.append([i,name,field0,offset,bank,size,field4,
                        hashlib.sha256(payload).hexdigest()])
    with (out/"MANIFEST.csv").open("w",newline="",encoding="utf-8") as f:
        w=csv.writer(f)
        w.writerow(["index","name","field0","offset","bank","size","field4","sha256"])
        w.writerows(entries)
    print(f"extracted {len(entries)} resources to {out}")

if __name__=="__main__":
    main()
