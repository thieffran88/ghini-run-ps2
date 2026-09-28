
/tmp/orig/Ghini.exe:     file format binary


Disassembly of section .data:

0001d787 <.data+0x1d787>:
   1d787:	53                   	push   %bx
   1d788:	e8 61 f9             	call   0x1d0ec
   1d78b:	8b 0f                	mov    (%bx),%cx
   1d78d:	88 0e 9c 3d          	mov    %cl,0x3d9c
   1d791:	51                   	push   %cx
   1d792:	be 00 00             	mov    $0x0,%si
   1d795:	8a 47 02             	mov    0x2(%bx),%al
   1d798:	98                   	cbtw
   1d799:	50                   	push   %ax
   1d79a:	48                   	dec    %ax
   1d79b:	d1 e0                	shl    $1,%ax
   1d79d:	d1 e0                	shl    $1,%ax
   1d79f:	03 f0                	add    %ax,%si
   1d7a1:	58                   	pop    %ax
   1d7a2:	e8 0f 00             	call   0x1d7b4
   1d7a5:	80 fc 30             	cmp    $0x30,%ah
   1d7a8:	74 04                	je     0x1d7ae
   1d7aa:	fe 0e 9c 3d          	decb   0x3d9c
   1d7ae:	e8 27 00             	call   0x1d7d8
   1d7b1:	59                   	pop    %cx
   1d7b2:	5b                   	pop    %bx
   1d7b3:	c3                   	ret
   1d7b4:	51                   	push   %cx
   1d7b5:	32 e4                	xor    %ah,%ah
   1d7b7:	b1 0a                	mov    $0xa,%cl
   1d7b9:	f6 f1                	div    %cl
   1d7bb:	05 30 30             	add    $0x3030,%ax
   1d7be:	86 e0                	xchg   %ah,%al
   1d7c0:	59                   	pop    %cx
   1d7c1:	c3                   	ret
   1d7c2:	83 c6 04             	add    $0x4,%si
   1d7c5:	fe c0                	inc    %al
   1d7c7:	3c 39                	cmp    $0x39,%al
   1d7c9:	7e 0d                	jle    0x1d7d8
   1d7cb:	b0 30                	mov    $0x30,%al
   1d7cd:	fe c4                	inc    %ah
   1d7cf:	80 fc 31             	cmp    $0x31,%ah
   1d7d2:	75 04                	jne    0x1d7d8
   1d7d4:	fe 0e 9c 3d          	decb   0x3d9c
   1d7d8:	81 fe 30 00          	cmp    $0x30,%si
   1d7dc:	76 0b                	jbe    0x1d7e9
   1d7de:	be 00 00             	mov    $0x0,%si
   1d7e1:	b4 30                	mov    $0x30,%ah
   1d7e3:	b0 31                	mov    $0x31,%al
   1d7e5:	fe 06 9c 3d          	incb   0x3d9c
   1d7e9:	c3                   	ret
   1d7ea:	50                   	push   %ax
   1d7eb:	53                   	push   %bx
   1d7ec:	f8                   	clc
   1d7ed:	e8 80 f7             	call   0x1cf70
   1d7f0:	93                   	xchg   %ax,%bx
   1d7f1:	e8 84 f7             	call   0x1cf78
   1d7f4:	5b                   	pop    %bx
   1d7f5:	58                   	pop    %ax
   1d7f6:	c3                   	ret
