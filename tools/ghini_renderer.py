#!/usr/bin/env python3
"""Minimal renderer for canonical Ghini Run QuickBASIC GET assets."""
from pathlib import Path
import argparse
import numpy as np
from PIL import Image

def load_palette(path):
    b=Path(path).read_bytes()
    if len(b)!=774: raise ValueError(f"expected 774-byte palette, got {len(b)}")
    return np.frombuffer(b[6:], dtype=np.uint8).reshape(256,3)*4

def load_get(path):
    b=Path(path).read_bytes()
    if len(b)<4: raise ValueError("GET asset too short")
    w=int.from_bytes(b[0:2],"little")//8
    h=int.from_bytes(b[2:4],"little")
    need=4+w*h
    if len(b)!=need: raise ValueError(f"canonical GET expected {need} bytes, got {len(b)}")
    return w,h,np.frombuffer(b[4:],dtype=np.uint8).reshape(h,w)

def put_indexed(rgb, sprite, x, y, palette, transparent=None):
    h,w=sprite.shape
    x0=max(0,x); y0=max(0,y); x1=min(rgb.shape[1],x+w); y1=min(rgb.shape[0],y+h)
    if x0>=x1 or y0>=y1: return
    s=sprite[y0-y:y1-y, x0-x:x1-x]
    region=rgb[y0:y1,x0:x1]
    if transparent is None:
        region[:]=palette[s]
    else:
        mask=s!=transparent
        region[mask]=palette[s[mask]]

if __name__=="__main__":
    ap=argparse.ArgumentParser()
    ap.add_argument("get_file")
    ap.add_argument("palette")
    ap.add_argument("output")
    ap.add_argument("--x",type=int,default=0)
    ap.add_argument("--y",type=int,default=0)
    ap.add_argument("--background",type=int,default=0)
    ap.add_argument("--transparent",type=int,default=None)
    args=ap.parse_args()
    pal=load_palette(args.palette)
    w,h,s=load_get(args.get_file)
    bg=np.empty((200,320,3),dtype=np.uint8); bg[:]=pal[args.background]
    put_indexed(bg,s,args.x,args.y,pal,args.transparent)
    Image.fromarray(bg).save(args.output)
