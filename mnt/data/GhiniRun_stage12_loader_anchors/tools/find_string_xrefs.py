#!/usr/bin/env python3
from pathlib import Path
import re,csv,struct,sys

# Static scanner: string records were located in the QB EXE at known file offsets.
# It tests common immediate forms for the CS-relative string offset. A miss is a
# negative result, not evidence that the string is unused; QB commonly routes
# strings through runtime descriptors/tables.
def main(exe,out):
    b=Path(exe).read_bytes(); rows=[]
    code_base=0x3200 + 0x1bf2*16
    anchors=[
      ('data\\ghini.run',0x23be0),('PROFILE',0x23bfc),('Error before PROFILE',0x23c08),
      ('TRACKMAP',0x23c20),('Error before TRACKMAP',0x23c2c)]
    for name,fileoff in anchors:
        off=fileoff-code_base; raw=struct.pack('<H',off & 0xffff)
        forms={'mov_ax':b'\xb8'+raw,'mov_bx':b'\xbb'+raw,'mov_cx':b'\xb9'+raw,
               'mov_dx':b'\xba'+raw,'mov_si':b'\xbe'+raw,'mov_di':b'\xbf'+raw,
               'push_imm':b'\x68'+raw}
        for form,p in forms.items():
            pos=[]; i=0
            while True:
                i=b.find(p,i)
                if i<0: break
                pos.append(i); i+=1
            for hit in pos:
                rows.append({'anchor':name,'string_file_offset':hex(fileoff),'cs_relative_offset':hex(off & 0xffff),
                             'form':form,'hit_file_offset':hex(hit)})
        if not any(r['anchor']==name for r in rows):
            rows.append({'anchor':name,'string_file_offset':hex(fileoff),'cs_relative_offset':hex(off & 0xffff),
                         'form':'NO_COMMON_IMMEDIATE_XREF','hit_file_offset':''})
    with open(out,'w',newline='') as f:
        w=csv.DictWriter(f,fieldnames=rows[0].keys()); w.writeheader(); w.writerows(rows)
if __name__=='__main__':
    if len(sys.argv)!=3: raise SystemExit('usage: find_string_xrefs.py Ghini.exe output.csv')
    main(sys.argv[1],sys.argv[2])
