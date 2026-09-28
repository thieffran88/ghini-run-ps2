#!/usr/bin/env python3
from pathlib import Path
import csv,sys
def main(manifest,root,out):
    rows=list(csv.DictReader(Path(manifest).open(encoding="utf-8")))
    for r in rows:
        p=Path(root)/f'bank_{int(r["bank"]):02d}'/f'{int(r["index"]):03d}_{r["name"]}.bin'
        b=p.read_bytes(); mx=0;cur=0;prev=None
        for x in b:
            cur=cur+1 if x==prev else 1; mx=max(mx,cur); prev=x
        r["max_run"]=mx; r["unique"]=len(set(b)); r["zero_ratio"]=f"{b.count(0)/len(b):.6f}" if b else "0"
    with Path(out).open("w",newline="",encoding="utf-8") as f:
        w=csv.DictWriter(f,fieldnames=list(rows[0].keys())); w.writeheader(); w.writerows(rows)
if __name__=="__main__":
    main(*sys.argv[1:])
