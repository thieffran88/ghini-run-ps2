   19354:	b4 06                	mov    $0x6,%ah
   19356:	56                   	push   %si
   19357:	57                   	push   %di
   19358:	50                   	push   %ax
   19359:	8a 44 03             	mov    0x3(%si),%al
   1935c:	f6 d8                	neg    %al
   1935e:	98                   	cbtw
   1935f:	d1 e0                	shl    $1,%ax
   19361:	8b 3e 0c 36          	mov    0x360c,%di
   19365:	2e 3b 05             	cmp    %cs:(%di),%ax
   19368:	72 03                	jb     0x1936d
   1936a:	e9 44 2a             	jmp    0x1bdb1
   1936d:	47                   	inc    %di
   1936e:	47                   	inc    %di
   1936f:	93                   	xchg   %ax,%bx
   19370:	2e 8b 39             	mov    %cs:(%bx,%di),%di
   19373:	87 df                	xchg   %bx,%di
   19375:	93                   	xchg   %ax,%bx
   19376:	a3 fc 3a             	mov    %ax,0x3afc
   19379:	58                   	pop    %ax
   1937a:	50                   	push   %ax
   1937b:	86 e0                	xchg   %ah,%al
   1937d:	98                   	cbtw
   1937e:	57                   	push   %di
   1937f:	8b 3e fc 3a          	mov    0x3afc,%di
   19383:	03 f8                	add    %ax,%di
   19385:	2e 8b 05             	mov    %cs:(%di),%ax
   19388:	a3 fc 3a             	mov    %ax,0x3afc
   1938b:	5f                   	pop    %di
   1938c:	58                   	pop    %ax
   1938d:	ff 16 fc 3a          	call   *0x3afc
   19391:	5f                   	pop    %di
   19392:	5e                   	pop    %si
   19393:	c3                   	ret
