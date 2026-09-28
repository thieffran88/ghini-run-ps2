   18d06:	53                   	push   %bx
   18d07:	51                   	push   %cx
   18d08:	52                   	push   %dx
   18d09:	89 36 f6 3a          	mov    %si,0x3af6
   18d0d:	8b 5c 01             	mov    0x1(%si),%bx
   18d10:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18d14:	75 0b                	jne    0x18d21
   18d16:	f6 04 0a             	testb  $0xa,(%si)
   18d19:	74 06                	je     0x18d21
   18d1b:	e8 53 03             	call   0x19071
   18d1e:	e8 0b 01             	call   0x18e2c
   18d21:	e8 7a 03             	call   0x1909e
   18d24:	c7 06 f6 3a 00 00    	movw   $0x0,0x3af6
   18d2a:	5a                   	pop    %dx
   18d2b:	59                   	pop    %cx
   18d2c:	5b                   	pop    %bx
   18d2d:	e9 3a 25             	jmp    0x1b26a
   18d30:	f6 04 0a             	testb  $0xa,(%si)
   18d33:	75 1a                	jne    0x18d4f
   18d35:	b8 ff ff             	mov    $0xffff,%ax
   18d38:	f6 44 05 04          	testb  $0x4,0x5(%si)
   18d3c:	74 10                	je     0x18d4e
   18d3e:	f6 04 24             	testb  $0x24,(%si)
   18d41:	75 0a                	jne    0x18d4d
   18d43:	50                   	push   %ax
   18d44:	e8 42 01             	call   0x18e89
   18d47:	58                   	pop    %ax
   18d48:	72 04                	jb     0x18d4e
   18d4a:	e8 b5 ff             	call   0x18d02
   18d4d:	40                   	inc    %ax
   18d4e:	c3                   	ret
   18d4f:	e9 3e 30             	jmp    0x1bd90
   18d52:	e8 28 00             	call   0x18d7d
   18d55:	73 25                	jae    0x18d7c
   18d57:	b9 07 00             	mov    $0x7,%cx
   18d5a:	33 db                	xor    %bx,%bx
   18d5c:	d1 da                	rcr    $1,%dx
   18d5e:	d1 d8                	rcr    $1,%ax
   18d60:	d1 db                	rcr    $1,%bx
   18d62:	e2 f8                	loop   0x18d5c
   18d64:	80 3c 01             	cmpb   $0x1,(%si)
   18d67:	75 13                	jne    0x18d7c
   18d69:	0b db                	or     %bx,%bx
   18d6b:	74 08                	je     0x18d75
   18d6d:	05 01 00             	add    $0x1,%ax
   18d70:	83 d2 00             	adc    $0x0,%dx
   18d73:	eb 07                	jmp    0x18d7c
   18d75:	0b da                	or     %dx,%bx
   18d77:	0b d8                	or     %ax,%bx
   18d79:	75 01                	jne    0x18d7c
   18d7b:	40                   	inc    %ax
   18d7c:	c3                   	ret
   18d7d:	f6 04 24             	testb  $0x24,(%si)
   18d80:	75 25                	jne    0x18da7
   18d82:	b8 01 00             	mov    $0x1,%ax
   18d85:	33 d2                	xor    %dx,%dx
   18d87:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18d8b:	75 2e                	jne    0x18dbb
   18d8d:	e8 a1 00             	call   0x18e31
   18d90:	f6 04 01             	testb  $0x1,(%si)
   18d93:	74 06                	je     0x18d9b
   18d95:	2b 44 0c             	sub    0xc(%si),%ax
   18d98:	83 da 00             	sbb    $0x0,%dx
   18d9b:	03 44 10             	add    0x10(%si),%ax
   18d9e:	83 d2 00             	adc    $0x0,%dx
   18da1:	f9                   	stc
   18da2:	79 18                	jns    0x18dbc
   18da4:	e9 01 30             	jmp    0x1bda8
   18da7:	8b 44 0c             	mov    0xc(%si),%ax
   18daa:	8b 54 0e             	mov    0xe(%si),%dx
   18dad:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18db1:	74 08                	je     0x18dbb
   18db3:	91                   	xchg   %ax,%cx
   18db4:	8b 44 06             	mov    0x6(%si),%ax
   18db7:	e8 ed 01             	call   0x18fa7
   18dba:	91                   	xchg   %ax,%cx
   18dbb:	f8                   	clc
   18dbc:	c3                   	ret
   18dbd:	55                   	push   %bp
   18dbe:	8b ec                	mov    %sp,%bp
   18dc0:	56                   	push   %si
   18dc1:	8b 5e 06             	mov    0x6(%bp),%bx
   18dc4:	33 c0                	xor    %ax,%ax
   18dc6:	33 d2                	xor    %dx,%dx
   18dc8:	e8 50 00             	call   0x18e1b
   18dcb:	75 0b                	jne    0x18dd8
   18dcd:	e8 ad ff             	call   0x18d7d
   18dd0:	05 01 00             	add    $0x1,%ax
   18dd3:	83 d2 00             	adc    $0x0,%dx
   18dd6:	78 40                	js     0x18e18
   18dd8:	5e                   	pop    %si
   18dd9:	5d                   	pop    %bp
   18dda:	ca 02 00             	lret   $0x2
   18ddd:	55                   	push   %bp
   18dde:	8b ec                	mov    %sp,%bp
   18de0:	56                   	push   %si
   18de1:	8b 5e 0a             	mov    0xa(%bp),%bx
   18de4:	e8 34 00             	call   0x18e1b
   18de7:	75 2a                	jne    0x18e13
   18de9:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18ded:	75 24                	jne    0x18e13
   18def:	f6 04 0a             	testb  $0xa,(%si)
   18df2:	74 03                	je     0x18df7
   18df4:	e8 7a 02             	call   0x19071
   18df7:	f6 04 01             	testb  $0x1,(%si)
   18dfa:	74 05                	je     0x18e01
   18dfc:	c7 44 0c 00 00       	movw   $0x0,0xc(%si)
   18e01:	8b 4e 06             	mov    0x6(%bp),%cx
   18e04:	8b 56 08             	mov    0x8(%bp),%dx
   18e07:	b0 02                	mov    $0x2,%al
   18e09:	e8 a5 01             	call   0x18fb1
   18e0c:	e8 19 00             	call   0x18e28
   18e0f:	80 4c 05 04          	orb    $0x4,0x5(%si)
   18e13:	5e                   	pop    %si
   18e14:	5d                   	pop    %bp
   18e15:	ca 06 00             	lret   $0x6
   18e18:	e9 8d 2f             	jmp    0x1bda8
   18e1b:	e8 45 28             	call   0x1b663
   18e1e:	74 05                	je     0x18e25
   18e20:	80 7c 03 00          	cmpb   $0x0,0x3(%si)
   18e24:	c3                   	ret
   18e25:	e9 62 2f             	jmp    0x1bd8a
   18e28:	33 c0                	xor    %ax,%ax
   18e2a:	eb 0f                	jmp    0x18e3b
   18e2c:	b8 02 00             	mov    $0x2,%ax
   18e2f:	eb 06                	jmp    0x18e37
   18e31:	b8 01 00             	mov    $0x1,%ax
   18e34:	3d 33 c0             	cmp    $0xc033,%ax
   18e37:	33 c9                	xor    %cx,%cx
   18e39:	8b d1                	mov    %cx,%dx
   18e3b:	53                   	push   %bx
   18e3c:	87 ca                	xchg   %cx,%dx
   18e3e:	8b 5c 01             	mov    0x1(%si),%bx
   18e41:	b4 42                	mov    $0x42,%ah
   18e43:	cd 21                	int    $0x21
   18e45:	72 d1                	jb     0x18e18
   18e47:	5b                   	pop    %bx
