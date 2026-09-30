# Ghini Run — Engineering Phase 26

## Goal
Test whether the ASCII-to-number conversion layer can be used to identify the application parser for `data\\ghini.run`.

## Result
The strongest ASCII-to-number fingerprint is the block around `0x1F835–0x1FBDF`.
It contains:
- `0x1FB67`: sign/prefix handling;
- `0x1FB7B`: digit conversion (`'0'..'9'`, hexadecimal-style `A..F` handling);
- `0x1FBE0`: character fetch/skip logic;
- `0x1F8C2` / `0x1F900`: higher-level numeric conversion routines.

All discovered callers of these routines are internal to this runtime block. No application-side caller was established.

### Important conclusion
This numeric parser is **not promoted as the `Ghini.run` parser**. It is a QuickBASIC/runtime conversion service. Its existence is useful because it tells us what the runtime's numeric conversion fingerprint looks like, but it does not establish provenance from `data\\ghini.run`.

## Consequence for the next phase
Do not search for `sub 0x30` alone. Instead, search for an application routine that combines:
1. stream/line acquisition;
2. delimiter/whitespace handling specific to `Ghini.run`;
3. a call into a numeric conversion service;
4. storage into a stable application data area;
5. source-line anchors near the `PROFILE`/`TRACKMAP` region.

## Evidence status
- Runtime numeric conversion: **CONFIRMED**
- Application parser identified: **OPEN**
- `0x1FB67` as `Ghini.run` parser: **REJECTED**
- `0x1FB7B` as `Ghini.run` parser: **REJECTED**
