#!/usr/bin/env python3
import csv,re,sys,collections,json
from pathlib import Path

def parse(path):
    lines=Path(path).read_text().splitlines(); tracks={}; cur=None; mode=None
    for line in lines:
        s=line.strip()
        if not s: continue
        if re.fullmatch(r'TRACK(?:1|2|3|4|5|6|11|12|13|14|15|16)',s):
            cur=s; tracks[cur]={'top':[],'nested':[],'profile':[]}; mode=None; continue
        if cur is None: continue
        if s=='PROFILE': mode='profile'; continue
        if s=='TRACKMAP': mode='trackmap'; continue
        if s in ('RAIN','SKY','VERGE L','VERGE R','ROADCOL','SCENERY','LAYERSCROLL'): mode=s; continue
        if mode=='profile' and re.fullmatch(r'-?\d+\s+-?\d+\s+-?\d+',s):
            tracks[cur]['profile'].append(tuple(map(int,s.split())))
        elif mode=='trackmap' and re.match(r'^\d+',s):
            x=tuple(map(int,s.split())); indent=len(line)-len(line.lstrip('\t'))
            (tracks[cur]['top'] if indent==0 else tracks[cur]['nested']).append(x)
    return tracks

def main(src,outdir):
    out=Path(outdir); out.mkdir(parents=True,exist_ok=True); tracks=parse(src)
    rows=[]; global_ops=collections.defaultdict(list)
    for tr,d in tracks.items():
        for x in d['top']:
            if len(x)>=2: global_ops[x[0]].append(x)
        for op in sorted({x[0] for x in d['top'] if len(x)>=2}):
            xs=[x for x in d['top'] if len(x)>=2 and x[0]==op]
            rows.append({'track':tr,'opcode':op,'count':len(xs),'arities':dict(collections.Counter(map(len,xs))),
                         'second_min':min(x[1] for x in xs),'second_max':max(x[1] for x in xs),
                         'second_sum':sum(x[1] for x in xs),'third_values':sorted({x[2] for x in xs if len(x)>2})})
    with (out/'TRACKMAP_SEMANTIC_CANDIDATES.csv').open('w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=rows[0].keys()); w.writeheader(); w.writerows(rows)
    with (out/'TRACKMAP_GLOBAL_OPCODE_STATS.csv').open('w',newline='') as f:
        fields=['opcode','count','arity_2','arity_3','second_min','second_max','third_values']
        w=csv.DictWriter(f,fieldnames=fields); w.writeheader()
        for op in sorted(global_ops):
            xs=global_ops[op]; ar=collections.Counter(map(len,xs))
            w.writerow({'opcode':op,'count':len(xs),'arity_2':ar[2],'arity_3':ar[3],
                         'second_min':min(x[1] for x in xs),'second_max':max(x[1] for x in xs),
                         'third_values':sorted({x[2] for x in xs if len(x)>2})})
    return tracks

if __name__=='__main__':
    if len(sys.argv)!=3: raise SystemExit('usage: analyze_trackmap_semantics.py Ghini.run outdir')
    main(sys.argv[1],sys.argv[2])
