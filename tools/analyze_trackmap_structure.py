#!/usr/bin/env python3
"""Stage 13: derive conservative structural hypotheses from TRACKMAP statistics."""
from pathlib import Path
import csv, json, collections

root = Path(__file__).resolve().parents[1]
src = Path('/mnt/data/GhiniRun_stage12_semantic/TRACKMAP_SEMANTIC_CANDIDATES.csv')
out_csv = root/'analysis'/'TRACKMAP_OPCODE_PROFILE.csv'
rows = list(csv.DictReader(src.open()))
by = collections.defaultdict(list)
for r in rows:
    by[int(r['opcode'])].append(r)
profiles=[]
for op, rs in sorted(by.items()):
    tracks=len(rs); total=sum(int(r['count']) for r in rs)
    arities=collections.Counter(r['arities'] for r in rs)
    thirds=collections.Counter()
    for r in rs:
        v=r['third_values'].strip('[]')
        if v:
            for x in v.replace('"','').split(','):
                if x.strip(): thirds[int(x.strip())]+=1
    profiles.append({
        'opcode':op,'tracks_with_opcode':tracks,'total_records':total,
        'arity_patterns':dict(arities),'third_value_patterns':dict(thirds),
        'second_min':min(int(r['second_min']) for r in rs),
        'second_max':max(int(r['second_max']) for r in rs),
    })
with out_csv.open('w',newline='') as f:
    w=csv.DictWriter(f,fieldnames=['opcode','tracks_with_opcode','total_records','arity_patterns','third_value_patterns','second_min','second_max'])
    w.writeheader()
    for p in profiles: w.writerow(p)

# Conservative hypotheses: structural, not semantic labels.
h = [
 {'opcode':0,'hypothesis':'two-field segment/control record','confidence':'high','evidence':'Only arity 2; dominant across every track; second field 10..2000.'},
 {'opcode':1,'hypothesis':'three-field parameterized record; third field fixed at 1','confidence':'high','evidence':'Present on every track; arity 3; all observed third values are 1.'},
 {'opcode':2,'hypothesis':'two-field sparse control/event record','confidence':'medium','evidence':'Only 8 occurrences; arity 2; values 100..400.'},
 {'opcode':3,'hypothesis':'three-field parameterized record with mode/subtype','confidence':'high','evidence':'184 occurrences; third field 1..4; every track except sparse variants.'},
 {'opcode':4,'hypothesis':'two-field large-scale control/event record','confidence':'medium','evidence':'50 occurrences; second field 300..1000; arity 2.'},
 {'opcode':5,'hypothesis':'three-field parameterized record; third field fixed at 1','confidence':'high','evidence':'70 occurrences; third field always 1.'},
 {'opcode':6,'hypothesis':'two-field large-scale control/event record','confidence':'medium','evidence':'38 occurrences; arity 2; second field 200..1000.'},
 {'opcode':7,'hypothesis':'three-field parameterized record with mode/subtype','confidence':'high','evidence':'192 occurrences; third field 1..4.'},
 {'opcode':21,'hypothesis':'special three-field marker','confidence':'low','evidence':'Only TRACK4/14; exact record 21 7 0.'},
 {'opcode':22,'hypothesis':'special three-field marker','confidence':'low','evidence':'Only TRACK4/14; exact record 22 7 0.'},
]
(root/'analysis'/'TRACKMAP_HYPOTHESES.json').write_text(json.dumps(h,indent=2))
