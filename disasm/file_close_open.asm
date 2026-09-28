   19253:	89 1e f4 3a          	mov    %bx,0x3af4
   19257:	e8 44 fe             	call   0x1909e
   1925a:	c7 06 f4 3a 00 00    	movw   $0x0,0x3af4
   19260:	c3                   	ret
   19261:	ba 3b 3e             	mov    $0x3e3b,%dx
   19264:	0a 1e 98 3d          	or     0x3d98,%bl
   19268:	8b d2                	mov    %dx,%dx
   1926a:	8b c3                	mov    %bx,%ax
   1926c:	b4 3d                	mov    $0x3d,%ah
   1926e:	cd 21                	int    $0x21
   19270:	72 03                	jb     0x19275
   19272:	93                   	xchg   %ax,%bx
   19273:	33 c0                	xor    %ax,%ax
   19275:	c3                   	ret
