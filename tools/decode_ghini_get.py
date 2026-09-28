#!/usr/bin/env python3
"""Decode QuickBASIC SCREEN 13 GET-compatible resources from GHINI.DAT.

The first two bytes of a QuickBASIC graphics GET array encode the image
width in bits; in SCREEN 13 the image width in pixels is width_bits / 8.
Bytes 2..3 encode the height. The following width*height bytes are the
8-bit indexed pixels.

This tool intentionally leaves any bytes after the GET image undecoded.
Those trailing bytes occur in the supplied GHINI.DAT entries and must not
be guessed or discarded.
"""
from pathlib import Path
from PIL import Image
import csv, hashlib, re, sys

def load_palette(path):
    p = Path(path).read_bytes()
    if len(p) < 774:
        raise ValueError("palette file is shorter than 774 bytes")
    rgb=[]
    for i in range(256):
        r,g,b=p[6+3*i:9+3*i]
        rgb += [min(255,r*4),min(255,g*4),min(255,b*4)]
    return rgb

def main():
    if len(sys.argv) != 4:
        print("usage: decode_ghini_get.py GHINI.DAT GHINI.PAL OUTPUT_DIR")
        raise SystemExit(2)
    src,pal_path,out = map(Path,sys.argv[1:])
    blob=src.read_bytes()
    pal=load_palette(pal_path)
    out.mkdir(parents=True,exist_ok=True)
    rows=[]
    for i in range(182):
        p=10+40*i
        name=blob[p:p+30].rstrip(b" \0").decode("latin1")
        off=int.from_bytes(blob[p+32:p+34],"little")
        bank=int.from_bytes(blob[p+34:p+36],"little")
        size=int.from_bytes(blob[p+36:p+38],"little")
        payload=blob[off:off+size]
        wb=int.from_bytes(payload[:2],"little")
        h=int.from_bytes(payload[2:4],"little")
        w=wb//8 if wb and wb%8==0 else 0
        required=4+w*h if w and h else 0
        ok=bool(w and h and required<=size and w<=320 and h<=200)
        if ok:
            d=out/f"bank_{bank:02d}"; d.mkdir(parents=True,exist_ok=True)
            stem=f"{i:03d}_{re.sub(r'[^A-Za-z0-9_.-]+','_',name)}"
            img=Image.frombytes("P",(w,h),payload[4:required])
            img.putpalette(pal)
            img.save(d/f"{stem}.png", optimize=False)
            tail=payload[required:]
            if tail:
                (d/f"{stem}.tail.bin").write_bytes(tail)
        rows.append([i,name,bank,off,size,w if ok else "",h if ok else "",
                     size-required if ok else "",
                     hashlib.sha256(payload).hexdigest()])
    with (out/"MANIFEST.csv").open("w",newline="",encoding="utf-8") as f:
        wri=csv.writer(f)
        wri.writerow(["index","name","bank","offset","size","width","height",
                      "unparsed_tail","sha256_payload"])
        wri.writerows(rows)

if __name__=="__main__":
    main()
