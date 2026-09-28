#!/usr/bin/env python3
from pathlib import Path
import csv,struct,sys,hashlib
def main(dat,manifest,outdir):
    D=Path(dat).read_bytes(); out=Path(outdir); out.mkdir(parents=True,exist_ok=True)
    rows=list(csv.DictReader(Path(manifest).open(encoding='utf-8')))
    for r in rows:
        bank=int(r['bank']); off=int(r['offset']); size=int(r['size'])
        raw=D[bank*65536+off:bank*65536+off+size]
        need=int(r['get_payload'])
        core=raw[:need]
        (out/f'{int(r["index"]):03d}_{r["name"]}.get').write_bytes(core)
if __name__=='__main__':
    if len(sys.argv)!=4: raise SystemExit('usage: extract_canonical_get.py GHINI.DAT MANIFEST OUTDIR')
    main(*sys.argv[1:])
