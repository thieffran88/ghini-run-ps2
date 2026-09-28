#!/usr/bin/env python3
"""Stage 16: scan 8086 arithmetic-heavy regions in Ghini.exe.

This tool generates candidates only. It does not infer TRACKMAP semantics
without a data-flow proof.
"""
import argparse, re, subprocess, csv

def main():
    ap=argparse.ArgumentParser()
    ap.add_argument("exe")
    ap.add_argument("--start",type=lambda x:int(x,0),default=0x1C000)
    ap.add_argument("--end",type=lambda x:int(x,0),default=0x22800)
    ap.add_argument("-o","--output",default="MATH_CLUSTERS.csv")
    a=ap.parse_args()
    text=subprocess.check_output(
        ["objdump","-b","binary","-m","i8086","-D",
         f"--start-address={a.start}",f"--stop-address={a.end}",a.exe],
        text=True,errors="replace")
    lines=text.splitlines()
    pat=re.compile(r"\b(mul|imul|div|idiv|add|sub|adc|sbb|sar|shr|shl|sal)\b")
    hits=[(i,l.strip()) for i,l in enumerate(lines) if pat.search(l)]
    clusters=[]
    for item in hits:
        if not clusters or item[0]-clusters[-1][-1][0] > 8:
            clusters.append([])
        clusters[-1].append(item)
    with open(a.output,"w",newline="",encoding="utf-8") as f:
        w=csv.writer(f)
        w.writerow(["address","muldiv_count","arith_instruction_count",
                    "hex_constant_count","screen_related_constants","disassembly"])
        for c in clusters:
            m=re.search(r"([0-9a-f]+):",c[0][1])
            if not m: continue
            txt=" ".join(x[1] for x in c)
            md=sum(bool(re.search(r"\b(mul|imul|div|idiv)\b",x)) for _,x in c)
            consts=[]
            for val,name in [(0x140,"320"),(0xc8,"200"),(0xa0,"160"),
                             (0x64,"100"),(0x50,"80"),(0x28,"40"),(0x20,"32")]:
                if re.search(rf"\$?0x{val:x}\b|\b{val}\b",txt):
                    consts.append(name)
            w.writerow([int(m.group(1),16),md,len(c),
                        len(re.findall(r"0x[0-9a-f]{2,4}",txt)),
                        ",".join(consts),txt[:1200]])
if __name__=="__main__":
    main()
