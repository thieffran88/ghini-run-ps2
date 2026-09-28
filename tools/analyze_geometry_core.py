#!/usr/bin/env python3
import json, csv, collections, statistics
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]
# Stage 14 stream artifact is expected alongside this package when reproducing locally.
stream_path=ROOT.parent/'GhiniRun_stage14_math'/'analysis'/'SEGMENT_STREAMS.json'
if not stream_path.exists():
    # allow running against a copied Stage-14 extraction
    stream_path=Path('/tmp/st15/GhiniRun_stage14_math/analysis/SEGMENT_STREAMS.json')
D=json.loads(stream_path.read_text())

# Core = top-level opcode/magnitude/subtype only. Nested records are retained separately as sideband.
rows=[]
for track,v in D.items():
    for s in v['segments']:
        rows.append({
            'track':track,'segment':s['segment'],'opcode':s['opcode'],'magnitude':s['magnitude'],
            'subtype': '' if s['subtype'] is None else s['subtype'],
            'cumulative_before':s['cumulative_magnitude_before'],
            'nested_count':len(s['nested']),
            'nested':json.dumps(s['nested'],separators=(',',':'))
        })
with (ROOT/'analysis/GEOMETRY_CORE_STREAM.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(rows[0])); w.writeheader();w.writerows(rows)

# Morphology by opcode.
out=[]
for op in sorted(set(r['opcode'] for r in rows)):
    rr=[r for r in rows if r['opcode']==op]
    mags=[r['magnitude'] for r in rr]
    out.append({
      'opcode':op,'count':len(rr),'min_magnitude':min(mags),'max_magnitude':max(mags),
      'mean_magnitude':round(statistics.mean(mags),3),'median_magnitude':statistics.median(mags),
      'nested_rate':round(sum(r['nested_count']>0 for r in rr)/len(rr),4),
      'subtypes':','.join(map(str,sorted(set(r['subtype'] for r in rr if r['subtype']!=''))))
    })
with (ROOT/'analysis/OPCODE_MORPHOLOGY.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(out[0]));w.writeheader();w.writerows(out)

# Compare the paired tracks 1/11 ... 6/16 at the CORE level, ignoring nested sideband.
pairs=[]
for i in range(1,7):
    a,b=f'TRACK{i}',f'TRACK{i+10}'
    A=D[a]['segments'];B=D[b]['segments']; n=min(len(A),len(B))
    core_diff=[]
    for j in range(n):
        ca=(A[j]['opcode'],A[j]['magnitude'],A[j]['subtype'])
        cb=(B[j]['opcode'],B[j]['magnitude'],B[j]['subtype'])
        if ca!=cb: core_diff.append(j)
    length_equal=len(A)==len(B)
    pairs.append({'pair':f'{a}/{b}','segments_a':len(A),'segments_b':len(B),'core_length_equal':length_equal,
                  'core_field_differences':len(core_diff),'first_core_differences':','.join(map(str,core_diff[:10]))})
with (ROOT/'analysis/PAIRED_TRACK_CORE_COMPARISON.csv').open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=list(pairs[0]));w.writeheader();w.writerows(pairs)

# Extract the main stream in a compact JSON representation for future state-machine work.
core={}
for track,v in D.items():
    core[track]=[{'i':s['segment'],'op':s['opcode'],'mag':s['magnitude'],'sub':s['subtype']} for s in v['segments']]
(ROOT/'analysis/GEOMETRY_CORE_STREAMS.json').write_text(json.dumps(core,indent=2))
print('wrote geometry core artifacts')
