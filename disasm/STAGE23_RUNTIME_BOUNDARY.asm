; Stage 23 — selected runtime boundary evidence
; Source: checked-in Stage 20/22 disassembly artifacts.

; Dispatcher: selector from stream state, indirect vector target.
19356:  8a 44 03              mov    0x3(%si),%al
1935c:  f6 d8                 neg    %al
1935e:  98                    cbtw
1935f:  d1 e0                 shl    $1,%ax
19361:  8b 3e 0c 36           mov    0x360c,%di
19370:  2e 8b 39              mov    %cs:(%bx,%di),%di
19385:  2e 8b 05              mov    %cs:(%di),%ax
1938d:  ff 16 fc 3a           call   *0x3afc

; Buffered reader: block path enters dispatcher with AX=0x0A04;
; character path enters 0x1944B.
1e550:  8b 4e 08              mov    0x8(%bp),%cx
1e581:  8b d9                 mov    %cx,%bx
1e59a:  8b d9                 mov    %cx,%bx
1e5a0:  e8 b3 ad              call   0x19356
1e5b3:  e8 95 ae              call   0x1944b
1e5ba:  aa                    stos   %al,%es:(%di)

; Generic delimiter parser rejected for Ghini.run.
1e62e:  ... compares for 0x22 (quote), 0x2C (comma), 0x0D/0x0A.
