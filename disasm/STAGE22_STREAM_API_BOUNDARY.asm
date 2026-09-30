; Stage 22 — stream API boundary and caller classification
; Evidence assembled from Stage 20/21 disassembly artifacts.

; Runtime dispatcher: selector comes from stream state, then indirect target.
19356:  56                    push   %si
19357:  57                    push   %di
19358:  50                    push   %ax
19359:  8a 44 03              mov    0x3(%si),%al
1935c:  f6 d8                 neg    %al
1935e:  98                    cbtw
1935f:  d1 e0                 shl    $1,%ax
19361:  8b 3e 0c 36           mov    0x360c,%di
19365:  2e 3b 05              cmp    %cs:(%di),%ax
1936d:  47                    inc    %di
1936e:  47                    inc    %di
19370:  2e 8b 39              mov    %cs:(%bx,%di),%di
19383:  03 f8                 add    %ax,%di
19385:  2e 8b 05              mov    %cs:(%di),%ax
1938d:  ff 16 fc 3a           call   *0x3afc

; Character input wrapper.
1944b:  56                    push   %si
1944c:  8b 36 c3 40           mov    0x40c3,%si
19450:  0b f6                 or     %si,%si
19465:  b4 10                 mov    $0x10,%ah
19467:  e8 ec fe              call   0x19356
1946a:  5e                    pop    %si

; Buffered/block-read path. The application/parser provenance is not proven.
1e59a:  8b d9                 mov    %cx,%bx
1e59c:  b8 04 0a              mov    $0xa04,%ax
1e5a0:  e8 b3 ad              call   0x19356
1e5a4:  3b c8                 cmp    %ax,%cx
1e5b3:  e8 95 ae              call   0x1944b
1e5ba:  aa                    stos   %al,%es:(%di)
1e5bc:  e2 f6                 loop   0x1e5b3

; Generic delimiter-oriented text helper — rejected for Ghini.run.
1e62e:  57                    push   %di
1e632:  e8 16 ae              call   0x1944b
1e639:  74 04                 je     0x1e63f
1e647:  3c 22                 cmp    $0x22,%al
1e64e:  75 0b                 jne    0x1e65b
1e64b:  80 fa 2c              cmp    $0x2c,%dl
1e660:  3c 0d                 cmp    $0xd,%al
1e666:  3c 0a                 cmp    $0xa,%al
1e695:  3c 2c                 cmp    $0x2c,%al
1e6c9:  b4 0e                 mov    $0xe,%ah
1e6c9:  e8 8a ac              call   0x19356

; High-level open helper observed in Stage 21.
17ef7:  b8 01 3d              mov    $0x3d01,%ax
17efa:  cd 21                 int    $0x21
17efe:  8b d8                 mov    %ax,%bx
17f31:  b4 3e                 mov    $0x3e,%ah
17f33:  cd 21                 int    $0x21

; Important: no claim below proves that DX:35CA is data\\ghini.run.
; It is a runtime/open helper and remains one layer below the application provenance.
