#!/usr/bin/env python3
from pathlib import Path
import csv,re,json

ROOT=Path(__file__).resolve().parents[1]
run=ROOT/'analysis'/'Ghini.run'
text=run.read_text(errors='replace')
lines=text.splitlines()
tracks={}; cur=None; section=None; profiles={}; tops={}; nested={}
for ln in lines:
    if re.fullmatch(r'TRACK\d+', ln.strip()):
        cur=ln.strip(); tracks[cur]=[]; section=None; profiles[cur]=[]; tops[cur]=[]; nested[cur]=[]; continue
    if not cur: continue
    if ln.strip() in {'RAIN','SKY','VERGE L','VERGE R','VERGEL','VEGGER','ROADCOL','SCENERY','LAYERSCROLL','PROFILE','TRACKMAP'}:
        section=ln.strip(); continue
    if section=='PROFILE':
        if ln.strip() and not ln.startswith('TRACK'):
            p=ln.strip().split()
            if len(p)==3 and all(re.fullmatch(r'-?\d+',x) for x in p): profiles[cur].append([int(x) for x in p])
    elif section=='TRACKMAP' and ln.strip() and ln.strip()!='9999':
        p=ln.strip().split()
        if all(re.fullmatch(r'-?\d+',x) for x in p):
            rec=[int(x) for x in p]
            indent=len(ln)-len(ln.lstrip('\t '))
            (tops[cur] if indent==0 else nested[cur]).append((rec,indent))

# Palette domain evidence
pal=Path('/mnt/data/GhiniRun_stage14_math/analysis/Ghini.pal')
if pal.exists():
    pb=pal.read_bytes()[6:]
    palette=[tuple(x*4 for x in pb[i:i+3]) for i in range(0,768,3)]
else: palette=[]

rows=[]
for tr,ps in profiles.items():
    vals=[v for r in ps for v in r]
    nonneg=[v for v in vals if v>=0]
    in256=[v for v in nonneg if v<=255]
    sentinel=vals.count(-1)
    rows.append({
        'track':tr,'profile_rows':len(ps),'values':len(vals),'negative_minus1':sentinel,
        'nonnegative':len(nonneg),'within_palette_0_255':len(in256),
        'palette_domain_ratio': round(len(in256)/len(nonneg),4) if nonneg else 0,
        'unique_nonnegative':len(set(nonneg)),
        'profile': ' | '.join(' '.join(map(str,r)) for r in ps)
    })
with (ROOT/'analysis/PROFILE_PALETTE_EVIDENCE.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0])); w.writeheader(); w.writerows(rows)

# Top-level command shape/length statistics per track and opcode.
out=[]
for tr,recs in tops.items():
    by={}
    for rec,_ in recs:
        op=rec[0]; by.setdefault(op,[]).append(rec)
    for op,rs in sorted(by.items()):
        lens=[r[1] for r in rs if len(r)>=2]
        third=[r[2] for r in rs if len(r)>=3]
        out.append({'track':tr,'opcode':op,'count':len(rs),'sum_field2':sum(lens),'min_field2':min(lens) if lens else '', 'max_field2':max(lens) if lens else '', 'unique_field2':len(set(lens)), 'field3_values':','.join(map(str,sorted(set(third))))})
with (ROOT/'analysis/TRACKMAP_TOPLEVEL_MATH.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(out[0])); w.writeheader(); w.writerows(out)

# Paired tracks 1/11 etc: profile equality and top-level equality
pairs=[]
for a,b in [(f'TRACK{i}',f'TRACK{i+10}') for i in range(1,7)]:
    def norm(rs): return [r for r,_ in rs]
    ta=norm(tops[a]); tb=norm(tops[b])
    pairs.append({'track_a':a,'track_b':b,'profile_equal':profiles[a]==profiles[b], 'toplevel_equal':ta==tb, 'toplevel_count_a':len(ta),'toplevel_count_b':len(tb)})
with (ROOT/'analysis/TRACK_PAIRS_STAGE14.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(pairs[0])); w.writeheader(); w.writerows(pairs)

# A conservative semantic candidate matrix: only observations, not labels.
sem=[]
for op in range(8):
    rs=[r for tr in tops for r,_ in tops[tr] if r[0]==op]
    if not rs: continue
    sem.append({
      'opcode':op,
      'observed_records':len(rs),
      'two_field_records':sum(len(r)==2 for r in rs),
      'three_field_records':sum(len(r)>=3 for r in rs),
      'field2_min':min(r[1] for r in rs),
      'field2_max':max(r[1] for r in rs),
      'field3_values':','.join(map(str,sorted({r[2] for r in rs if len(r)>=3}))),
      'safe_observation':'field2 is positive in all observed records' if all(r[1]>0 for r in rs) else 'field2 is not uniformly positive'
    })
with (ROOT/'analysis/OPCODE_OBSERVATION_MATRIX.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(sem[0])); w.writeheader(); w.writerows(sem)

print('Wrote Stage 14 analysis files.')
