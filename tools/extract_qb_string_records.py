#!/usr/bin/env python3
from pathlib import Path
import csv,sys
def extract(path,start,end):
    p=Path(path).read_bytes(); out=[]; pos=start
    while pos+4<=end:
        n=int.from_bytes(p[pos:pos+2],'little'); line=int.from_bytes(p[pos+2:pos+4],'little')
        if 0<n<=200 and pos+4+n<=end:
            s=p[pos+4:pos+4+n]
            if all((32<=c<127) or c in (9,10,13) for c in s):
                out.append((pos,n,line,s.decode('latin1'))); pos+=4+n; continue
        pos+=1
    return out
if __name__=='__main__':
    rows=extract(sys.argv[1],int(sys.argv[2],16),int(sys.argv[3],16))
    with Path(sys.argv[4]).open('w',newline='',encoding='utf-8') as f:
        w=csv.writer(f); w.writerow(['file_offset','length','line','text']); w.writerows(rows)
