#!/usr/bin/env python3
"""Build a reversible segment stream from top-level TRACKMAP records.

Important: field2 is treated only as an observed positive magnitude. The script
calls it `magnitude`, not `distance`, until the executable proves that meaning.
"""
from pathlib import Path
import re,json
root=Path(__file__).resolve().parents[1]
lines=(root/'analysis/Ghini.run').read_text().splitlines()
tracks={};cur=None;sec=None
for ln in lines:
    if re.fullmatch(r'TRACK\d+',ln.strip()): cur=ln.strip();sec=None;tracks[cur]=[];continue
    if ln.strip()=='TRACKMAP': sec='TRACKMAP';continue
    if sec=='TRACKMAP' and ln.strip() and ln.strip()!='9999':
        parts=ln.strip().split()
        if all(re.fullmatch(r'-?\d+',x) for x in parts):
            indent=len(ln)-len(ln.lstrip())
            tracks[cur].append((indent,[int(x) for x in parts]))

out={}
for tr,recs in tracks.items():
    stream=[]; mag_sum=0
    top_index=-1
    for indent,rec in recs:
        if indent==0:
            top_index+=1
            op=rec[0]; mag=rec[1]
            item={'segment':top_index,'opcode':op,'magnitude':mag,'subtype':rec[2] if len(rec)>2 else None,'nested':[],'cumulative_magnitude_before':mag_sum}
            stream.append(item); mag_sum+=mag
        elif stream:
            stream[-1]['nested'].append(rec)
    out[tr]={'top_level_count':len(stream),'magnitude_sum':mag_sum,'segments':stream}
(root/'analysis/SEGMENT_STREAMS.json').write_text(json.dumps(out,indent=2))
print('Wrote SEGMENT_STREAMS.json')
