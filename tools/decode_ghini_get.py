#!/usr/bin/env python3
"""
Decode GHINI.DAT QuickBASIC SCREEN 13 GET image arrays.

GHINI.DAT uses 64 KiB logical banks:
    absolute_offset = bank * 65536 + offset

Each of the 182 indexed resources starts with a QuickBASIC GET header:
    uint16 width_bits
    uint16 height
    width_bits/8 * height bytes of 8-bit indexed pixels

Any bytes after the required GET payload are preserved as .tail.bin.
The tail is intentionally not interpreted here.
"""
from pathlib import Path
import struct, csv, sys
from PIL import Image

def read_palette(path):
    p = Path(path).read_bytes()
    if len(p) < 774:
        raise ValueError("palette file is too small")
    out = []
    for i in range(256):
        r,g,b = p[6+i*3:9+i*3]
        out.extend((r*4,g*4,b*4))
    return out

def main(dat, pal, outdir):
    D = Path(dat).read_bytes()
    palette = read_palette(pal)
    out = Path(outdir)
    (out/"decoded_get").mkdir(parents=True, exist_ok=True)
    (out/"unparsed_tail").mkdir(parents=True, exist_ok=True)
    rows = []

    for i in range(182):
        o = 10 + i*40
        name = D[o:o+30].split(b"\0",1)[0].decode("latin1").rstrip()
        field0, off, bank, size, field4 = struct.unpack_from("<5H", D, o+30)
        abs_off = bank*65536 + off
        raw = D[abs_off:abs_off+size]
        if len(raw) != size:
            raise ValueError(f"short resource {i}: {name}")
        width_bits, height = struct.unpack_from("<HH", raw, 0)
        if width_bits % 8:
            raise ValueError(f"width is not byte-aligned: {name}")
        width = width_bits // 8
        need = 4 + width*height
        if not (1 <= width <= 320 and 1 <= height <= 200 and need <= size):
            raise ValueError(f"invalid GET resource: {name}")
        img = Image.frombytes("P", (width,height), raw[4:need])
        img.putpalette(palette)
        bdir = out/"decoded_get"/f"bank_{bank:02d}"
        tdir = out/"unparsed_tail"/f"bank_{bank:02d}"
        bdir.mkdir(parents=True, exist_ok=True)
        tdir.mkdir(parents=True, exist_ok=True)
        img.save(bdir/f"{i:03d}_{name}.png")
        tail = raw[need:]
        (tdir/f"{i:03d}_{name}.bin").write_bytes(tail)
        rows.append((i,name,bank,off,abs_off,size,width,height,need,len(tail),tail.count(0),len(set(tail)),field0,field4))

    with (out/"GET_DECODER_MANIFEST.csv").open("w",newline="",encoding="utf-8") as f:
        w=csv.writer(f)
        w.writerow(["index","name","bank","offset","absolute_offset","size","width","height","get_payload","tail_size","tail_zero_bytes","tail_unique_bytes","field0","field4"])
        w.writerows(rows)

if __name__ == "__main__":
    if len(sys.argv) != 4:
        print("usage: decode_ghini_get.py GHINI.DAT GHINI.PAL OUTPUT_DIR")
        raise SystemExit(2)
    main(*sys.argv[1:])
