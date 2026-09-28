#!/usr/bin/env python3
"""Emit per-asset palette-index statistics for canonical GET files."""
from pathlib import Path
import csv, numpy as np, argparse
def load_get(p):
    b=Path(p).read_bytes(); w=int.from_bytes(b[:2],"little")//8; h=int.from_bytes(b[2:4],"little")
    a=np.frombuffer(b[4:],dtype=np.uint8).reshape(h,w); return w,h,a
ap=argparse.ArgumentParser(); ap.add_argument("assets"); ap.add_argument("csvout"); a=ap.parse_args()
rows=[]
for p in sorted(Path(a.assets).glob("*.get")):
    w,h,x=load_get(p); c=np.bincount(x.ravel(),minlength=256)
    border=np.concatenate([x[0],x[-1],x[:,0],x[:,-1]])
    bc=np.bincount(border,minlength=256)
    rows.append([p.name,w,h,int(c.argmax()),int(c.max()),int(c[0]),round(100*c[0]/x.size,2),int(bc.argmax()),",".join(map(str,[x[0,0],x[0,-1],x[-1,0],x[-1,-1]]))])
with open(a.csvout,"w",newline="") as f:
    wr=csv.writer(f); wr.writerow(["file","width","height","dominant_index","dominant_count","zero_count","zero_pct","border_dominant_index","corner_indices"]); wr.writerows(rows)
