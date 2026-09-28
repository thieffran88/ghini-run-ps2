"""Reproduces the Stage 20 dispatcher table extraction."""
import struct, csv, sys
exe=sys.argv[1] if len(sys.argv)>1 else '../../stage16work/Ghini.exe'
b=open(exe,'rb').read()
base=struct.unpack_from('<H',b,0x360c)[0]
print(f'DS:[360C] = {base:04X}')
for i in range(16):
    off=base+2+4*i
    lo,seg=struct.unpack_from('<HH',b,off)
    print(f'{i:2d}: {seg:04X}:{lo:04X}')
