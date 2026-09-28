#!/usr/bin/env python3
import re, json, csv, pathlib, collections

ROOT=pathlib.Path(__file__).resolve().parents[1]
RUN=ROOT.parent/'ghini_radiografia/game/data/Ghini.run'
OUT=ROOT/'analysis'

lines=RUN.read_text(errors='replace').splitlines()
tracks={}
cur=None; mode=None
for raw in lines:
    s=raw.strip()
    if re.fullmatch(r'TRACK\d+', s):
        cur=s; tracks[cur]={'profile':[],'trackmap':[]}; mode=None; continue
    if s in ('PROFILE','TRACKMAP'):
        mode=s; continue
    if not cur or not s or not s[0].isdigit():
        continue
    vals=list(map(int,s.split()))
    indent=len(raw)-len(raw.lstrip('\t'))
    if mode=='PROFILE': tracks[cur]['profile'].append(vals)
    elif mode=='TRACKMAP': tracks[cur]['trackmap'].append({'indent':indent,'values':vals})

# Duplicate/paired track comparison.
pairs=[('TRACK1','TRACK11'),('TRACK2','TRACK12'),('TRACK3','TRACK13'),('TRACK4','TRACK14'),('TRACK5','TRACK15'),('TRACK6','TRACK16')]
with (OUT/'PROFILE_ANALYSIS.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['track','rows','sum_col0','min_col0','max_col0','sum_abs_col1','min_col2','max_col2','profile'])
    for t,d in tracks.items():
        p=d['profile']; c0=[x[0] for x in p]; c1=[x[1] for x in p]; c2=[x[2] for x in p]
        w.writerow([t,len(p),sum(c0),min(c0),max(c0),sum(abs(x) for x in c1),min(c2),max(c2),' | '.join(' '.join(map(str,x)) for x in p)])

with (OUT/'TRACKMAP_OPCODE_ANALYSIS.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['track','opcode','top_level_count','nested_count','arity_patterns','second_values','third_values'])
    for t,d in tracks.items():
        stats=collections.defaultdict(lambda:{0:0,1:0,'arity':collections.Counter(),'v2':collections.Counter(),'v3':collections.Counter()})
        for e in d['trackmap']:
            op=e['values'][0]; lev=0 if e['indent']==0 else 1
            st=stats[op]; st[lev]+=1; st['arity'][len(e['values'])]+=1
            if len(e['values'])>1: st['v2'][e['values'][1]]+=1
            if len(e['values'])>2: st['v3'][e['values'][2]]+=1
        for op in sorted(stats):
            st=stats[op]
            w.writerow([t,op,st[0],st[1],dict(st['arity']),dict(st['v2'].most_common(12)),dict(st['v3'].most_common(12))])

with (OUT/'TRACKMAP_TOPLEVEL.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['track','index','opcode','length_or_arg','strength_or_arg','nested_after'])
    for t,d in tracks.items():
        tm=d['trackmap']
        for i,e in enumerate(tm):
            if e['indent']!=0: continue
            vals=e['values']; nested=[]
            j=i+1
            while j<len(tm) and tm[j]['indent']>e['indent']:
                nested.append(tm[j]['values']); j+=1
            w.writerow([t,i,vals[0],vals[1] if len(vals)>1 else '',vals[2] if len(vals)>2 else '',json.dumps(nested,separators=(',',':'))])

# A conservative, reversible interpretation: top-level 0..7 are segment commands;
# nested lines are attached metadata/decoration records. We do NOT assign left/right
# meanings yet.
summary=[]
for t,d in tracks.items():
    top=[e for e in d['trackmap'] if e['indent']==0 and e['values']!=[9999]]
    ops=collections.Counter(e['values'][0] for e in top)
    lengths=collections.Counter()
    for e in top:
        if len(e['values'])>1: lengths[e['values'][0]] += e['values'][1]
    summary.append({'track':t,'profile_rows':len(d['profile']),'top_segments':len(top),'terminator':any(e['values']==[9999] for e in d['trackmap']),'top_opcode_counts':dict(sorted(ops.items())),'top_second_sum_by_opcode':dict(sorted(lengths.items()))})
(OUT/'STRUCTURAL_TRACKMAP.json').write_text(json.dumps(summary,indent=2))

# Pair diff, useful because TRACK11..16 are close variants of 1..6.
with (OUT/'TRACK_PAIRS_DIFF.csv').open('w',newline='') as f:
    w=csv.writer(f); w.writerow(['base','variant','profile_equal','trackmap_equal','first_trackmap_difference'])
    for a,b in pairs:
        pa=tracks[a]['profile']; pb=tracks[b]['profile']; ta=tracks[a]['trackmap']; tb=tracks[b]['trackmap']
        diff='equal'
        for i,(x,y) in enumerate(zip(ta,tb)):
            if x!=y: diff=f'index {i}: {x} != {y}'; break
        if diff=='equal' and len(ta)!=len(tb): diff=f'length {len(ta)} != {len(tb)}'
        w.writerow([a,b,pa==pb,ta==tb,diff])

print(f'Analyzed {len(tracks)} track blocks from {RUN}')
