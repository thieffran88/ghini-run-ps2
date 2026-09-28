#!/usr/bin/env python3
"""Generate non-destructive statistics for extracted GHINI.DAT resources."""
from pathlib import Path
import collections, csv, math, sys

def entropy(b):
    if not b: return 0.0
    c=collections.Counter(b); n=len(b)
    return -sum((v/n)*math.log2(v/n) for v in c.values())
def pairs(n):
    out=[]
    for w in range(8,min(400,int(math.sqrt(n))+1)+1):
        if n%w==0:
            h=n//w
            if h<=1000: out.append(f"{w}x{h}")
    return ";".join(out[:30])

def main():
    if len(sys.argv)!=3:
        print("usage: analyze_ghini_resources.py RESOURCE_DIR OUTPUT.csv")
        raise SystemExit(2)
    root=Path(sys.argv[1]); rows=[]
    for p in sorted(root.rglob("*.bin")):
        b=p.read_bytes()
        rows.append([p.name,len(b),len(set(b)),round(entropy(b),3),
                     round(b.count(0)/len(b),4) if b else 0,pairs(len(b))])
    with Path(sys.argv[2]).open("w",newline="",encoding="utf-8") as f:
        w=csv.writer(f); w.writerow(["file","size","unique_bytes","entropy_bits","zero_fraction","factor_pairs"])
        w.writerows(rows)
    print(f"analyzed {len(rows)} payloads")

if __name__=="__main__": main()
