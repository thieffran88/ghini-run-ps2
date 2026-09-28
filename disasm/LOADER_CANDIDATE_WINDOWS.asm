; Stage 18: DOS/QB file-I/O runtime fingerprints and source-string anchor contexts

; ===== window around 0x17ef0 =====
   17e92:	5a                   	pop    %dx
   17e93:	59                   	pop    %cx
   17e94:	58                   	pop    %ax
   17e95:	0c 10                	or     $0x10,%al
   17e97:	26 8b 1d             	mov    %es:(%di),%bx
   17e9a:	26 8b 7d 02          	mov    %es:0x2(%di),%di
   17e9e:	1e                   	push   %ds
   17e9f:	07                   	pop    %es
   17ea0:	0b db                	or     %bx,%bx
   17ea2:	74 15                	je     0x17eb9
   17ea4:	f6 04 20             	testb  $0x20,(%si)
   17ea7:	75 03                	jne    0x17eac
   17ea9:	e8 11 00             	call   0x17ebd
   17eac:	89 3e f8 3a          	mov    %di,0x3af8
   17eb0:	8c 06 fa 3a          	mov    %es,0x3afa
   17eb4:	b4 0a                	mov    $0xa,%ah
   17eb6:	e8 9d 14             	call   0x19356
   17eb9:	07                   	pop    %es
   17eba:	5f                   	pop    %di
   17ebb:	5e                   	pop    %si
   17ebc:	c3                   	ret
   17ebd:	3b 5c 06             	cmp    0x6(%si),%bx
   17ec0:	77 07                	ja     0x17ec9
   17ec2:	f6 44 05 08          	testb  $0x8,0x5(%si)
   17ec6:	75 04                	jne    0x17ecc
   17ec8:	c3                   	ret
   17ec9:	e9 d3 3e             	jmp    0x1bd9f
   17ecc:	e9 c7 3e             	jmp    0x1bd96
   17ecf:	00 00                	add    %al,(%bx,%si)
   17ed1:	01 00                	add    %ax,(%bx,%si)
   17ed3:	58                   	pop    %ax
   17ed4:	03 55 03             	add    0x3(%di),%dx
   17ed7:	e9 b6 3e             	jmp    0x1bd90
   17eda:	e9 a4 3e             	jmp    0x1bd81
   17edd:	00 52 56             	add    %dl,0x56(%bp,%si)
   17ee0:	80 fc 02             	cmp    $0x2,%ah
   17ee3:	77 50                	ja     0x17f35
   17ee5:	8a dc                	mov    %ah,%bl
   17ee7:	32 ff                	xor    %bh,%bh
   17ee9:	d1 e3                	shl    $1,%bx
   17eeb:	8b f3                	mov    %bx,%si
   17eed:	80 c4 31             	add    $0x31,%ah
   17ef0:	88 26 cd 35          	mov    %ah,0x35cd
   17ef4:	ba ca 35             	mov    $0x35ca,%dx
   17ef7:	b8 01 3d             	mov    $0x3d01,%ax
   17efa:	cd 21                	int    $0x21
   17efc:	72 37                	jb     0x17f35
   17efe:	8b d8                	mov    %ax,%bx
   17f00:	b8 00 44             	mov    $0x4400,%ax
   17f03:	cd 21                	int    $0x21
   17f05:	f6 c2 80             	test   $0x80,%dl
   17f08:	74 27                	je     0x17f31
   17f0a:	b8 01 44             	mov    $0x4401,%ax
   17f0d:	80 ca 20             	or     $0x20,%dl
   17f10:	32 f6                	xor    %dh,%dh
   17f12:	cd 21                	int    $0x21
   17f14:	e8 cd 41             	call   0x1c0e4
   17f17:	72 0a                	jb     0x17f23
   17f19:	b8 0a 44             	mov    $0x440a,%ax
   17f1c:	cd 21                	int    $0x21
   17f1e:	f6 c6 80             	test   $0x80,%dh
   17f21:	75 18                	jne    0x17f3b
   17f23:	1e                   	push   %ds
   17f24:	b8 40 00             	mov    $0x40,%ax
   17f27:	8e d8                	mov    %ax,%ds
   17f29:	f7 44 08 ff ff       	testw  $0xffff,0x8(%si)
   17f2e:	1f                   	pop    %ds
   17f2f:	75 0a                	jne    0x17f3b
   17f31:	b4 3e                	mov    $0x3e,%ah
   17f33:	cd 21                	int    $0x21
   17f35:	b4 01                	mov    $0x1,%ah
   17f37:	33 db                	xor    %bx,%bx
   17f39:	eb 02                	jmp    0x17f3d
   17f3b:	32 e4                	xor    %ah,%ah
   17f3d:	5e                   	pop    %si
   17f3e:	5a                   	pop    %dx
   17f3f:	c3                   	ret
   17f40:	51                   	push   %cx
   17f41:	52                   	push   %dx
   17f42:	50                   	push   %ax
   17f43:	8b d4                	mov    %sp,%dx
   17f45:	b9 01 00             	mov    $0x1,%cx
   17f48:	b4 40                	mov    $0x40,%ah
   17f4a:	cd 21                	int    $0x21
   17f4c:	5a                   	pop    %dx
   17f4d:	72 04                	jb     0x17f53
   17f4f:	32 e4                	xor    %ah,%ah
   17f51:	eb 02                	jmp    0x17f55
   17f53:	b4 01                	mov    $0x1,%ah
   17f55:	5a                   	pop    %dx
   17f56:	59                   	pop    %cx
   17f57:	c3                   	ret
   17f58:	50                   	push   %ax
   17f59:	b4 3e                	mov    $0x3e,%ah
   17f5b:	cd 21                	int    $0x21
   17f5d:	58                   	pop    %ax
   17f5e:	c3                   	ret
   17f5f:	00 56 57             	add    %dl,0x57(%bp)
   17f62:	b4 ff                	mov    $0xff,%ah
   17f64:	8a 17                	mov    (%bx),%dl
   17f66:	80 fa 01             	cmp    $0x1,%dl
   17f69:	76 03                	jbe    0x17f6e
   17f6b:	e9 f3 00             	jmp    0x18061
   17f6e:	be e6 35             	mov    $0x35e6,%si
   17f71:	74 03                	je     0x17f76
   17f73:	be d0 35             	mov    $0x35d0,%si
   17f76:	88 14                	mov    %dl,(%si)
   17f78:	32 f6                	xor    %dh,%dh
   17f7a:	8b fa                	mov    %dx,%di
   17f7c:	d1 e7                	shl    $1,%di
   17f7e:	e8 e3 00             	call   0x18064
   17f81:	0b c0                	or     %ax,%ax
   17f83:	74 03                	je     0x17f88
   17f85:	e9 d9 00             	jmp    0x18061
   17f88:	8b 57 16             	mov    0x16(%bx),%dx
   17f8b:	8b 4f 1a             	mov    0x1a(%bx),%cx
   17f8e:	e8 3f 01             	call   0x180d0
   17f91:	8a 4f 1c             	mov    0x1c(%bx),%cl
   17f94:	c6 44 01 00          	movb   $0x0,0x1(%si)
   17f98:	c6 44 02 02          	movb   $0x2,0x2(%si)
   17f9c:	20 4c 02             	and    %cl,0x2(%si)
   17f9f:	c6 44 11 04          	movb   $0x4,0x11(%si)
   17fa3:	8a 4f 1c             	mov    0x1c(%bx),%cl
   17fa6:	20 4c 11             	and    %cl,0x11(%si)
   17fa9:	8b 4f 14             	mov    0x14(%bx),%cx
   17fac:	89 4c 12             	mov    %cx,0x12(%si)
   17faf:	8b 4f 18             	mov    0x18(%bx),%cx
   17fb2:	89 4c 14             	mov    %cx,0x14(%si)
   17fb5:	33 c9                	xor    %cx,%cx
   17fb7:	39 4f 08             	cmp    %cx,0x8(%bx)
   17fba:	74 03                	je     0x17fbf
   17fbc:	8b 4f 06             	mov    0x6(%bx),%cx
   17fbf:	89 4c 07             	mov    %cx,0x7(%si)
   17fc2:	33 c9                	xor    %cx,%cx
   17fc4:	39 4f 0c             	cmp    %cx,0xc(%bx)
   17fc7:	74 03                	je     0x17fcc
   17fc9:	8b 4f 06             	mov    0x6(%bx),%cx
   17fcc:	89 4c 05             	mov    %cx,0x5(%si)
   17fcf:	c7 44 03 00 00       	movw   $0x0,0x3(%si)
   17fd4:	c6 44 09 00          	movb   $0x0,0x9(%si)
   17fd8:	c6 44 0a 00          	movb   $0x0,0xa(%si)
   17fdc:	c6 44 0b 00          	movb   $0x0,0xb(%si)
   17fe0:	c6 44 0c 00          	movb   $0x0,0xc(%si)
   17fe4:	8a 77 01             	mov    0x1(%bx),%dh
   17fe7:	8a 57 02             	mov    0x2(%bx),%dl
   17fea:	0a d2                	or     %dl,%dl
   17fec:	74 09                	je     0x17ff7
   17fee:	80 fe 08             	cmp    $0x8,%dh
   17ff1:	75 09                	jne    0x17ffc
   17ff3:	b4 ff                	mov    $0xff,%ah
   17ff5:	eb 51                	jmp    0x18048
   17ff7:	80 fe 04             	cmp    $0x4,%dh
   17ffa:	74 f7                	je     0x17ff3
   17ffc:	80 ee 05             	sub    $0x5,%dh
   17fff:	88 74 0e             	mov    %dh,0xe(%si)
   18002:	8a f2                	mov    %dl,%dh
   18004:	80 fa 02             	cmp    $0x2,%dl
   18007:	72 0c                	jb     0x18015
   18009:	b6 01                	mov    $0x1,%dh
   1800b:	fe ca                	dec    %dl
   1800d:	fe c6                	inc    %dh
   1800f:	fe c6                	inc    %dh
   18011:	fe ca                	dec    %dl
   18013:	75 f8                	jne    0x1800d
   18015:	88 74 0d             	mov    %dh,0xd(%si)
   18018:	8a 47 03             	mov    0x3(%bx),%al
   1801b:	fe c8                	dec    %al
   1801d:	78 04                	js     0x18023
   1801f:	80 4c 0e 04          	orb    $0x4,0xe(%si)
   18023:	8b 4f 04             	mov    0x4(%bx),%cx
   18026:	e8 e0 00             	call   0x18109
   18029:	b4 ff                	mov    $0xff,%ah
   1802b:	e3 1b                	jcxz   0x18048
   1802d:	e8 23 01             	call   0x18153
   18030:	0a e4                	or     %ah,%ah
   18032:	75 14                	jne    0x18048
   18034:	8b 4f 08             	mov    0x8(%bx),%cx
   18037:	89 4c 07             	mov    %cx,0x7(%si)
   1803a:	8b 4f 0c             	mov    0xc(%bx),%cx
   1803d:	89 4c 05             	mov    %cx,0x5(%si)
   18040:	8b 4f 0a             	mov    0xa(%bx),%cx
   18043:	89 4c 03             	mov    %cx,0x3(%si)
   18046:	eb 19                	jmp    0x18061
   18048:	50                   	push   %ax
   18049:	53                   	push   %bx
   1804a:	51                   	push   %cx
   1804b:	52                   	push   %dx
   1804c:	33 c9                	xor    %cx,%cx
   1804e:	88 0e ee 3a          	mov    %cl,0x3aee

; ===== window around 0x18d00 =====
   18ca0:	5e                   	pop    %si
   18ca1:	59                   	pop    %cx
   18ca2:	c3                   	ret
   18ca3:	e9 0b 31             	jmp    0x1bdb1
   18ca6:	51                   	push   %cx
   18ca7:	56                   	push   %si
   18ca8:	57                   	push   %di
   18ca9:	06                   	push   %es
   18caa:	8b 77 02             	mov    0x2(%bx),%si
   18cad:	83 3f 05             	cmpw   $0x5,(%bx)
   18cb0:	72 2b                	jb     0x18cdd
   18cb2:	80 7c 04 3a          	cmpb   $0x3a,0x4(%si)
   18cb6:	75 25                	jne    0x18cdd
   18cb8:	bf 7a 10             	mov    $0x107a,%di
   18cbb:	0e                   	push   %cs
   18cbc:	07                   	pop    %es
   18cbd:	26 80 3d 00          	cmpb   $0x0,%es:(%di)
   18cc1:	74 1a                	je     0x18cdd
   18cc3:	56                   	push   %si
   18cc4:	b9 04 00             	mov    $0x4,%cx
   18cc7:	ac                   	lods   %ds:(%si),%al
   18cc8:	e8 14 43             	call   0x1cfdf
   18ccb:	ae                   	scas   %es:(%di),%al
   18ccc:	74 05                	je     0x18cd3
   18cce:	03 f9                	add    %cx,%di
   18cd0:	5e                   	pop    %si
   18cd1:	eb ea                	jmp    0x18cbd
   18cd3:	e2 f2                	loop   0x18cc7
   18cd5:	5e                   	pop    %si
   18cd6:	26 8a 05             	mov    %es:(%di),%al
   18cd9:	0a c0                	or     %al,%al
   18cdb:	eb 02                	jmp    0x18cdf
   18cdd:	32 c0                	xor    %al,%al
   18cdf:	07                   	pop    %es
   18ce0:	5f                   	pop    %di
   18ce1:	5e                   	pop    %si
   18ce2:	59                   	pop    %cx
   18ce3:	c3                   	ret
   18ce4:	80 12 a2             	adcb   $0xa2,(%bp,%si)
   18ce7:	12 99 13 56          	adc    0x5613(%bx,%di),%bl
   18ceb:	12 cd                	adc    %ch,%cl
   18ced:	13 3a                	adc    (%bp,%si),%di
   18cef:	15 f8 15             	adc    $0x15f8,%ax
   18cf2:	52                   	push   %dx
   18cf3:	12 d9                	adc    %cl,%bl
   18cf5:	13 8c 14 d1          	adc    -0x2eec(%si),%cx
   18cf9:	13 d5                	adc    %bp,%dx
   18cfb:	13 a7 42 d0          	adc    -0x2fbe(%bx),%sp
   18cff:	14 cd                	adc    $0xcd,%al
   18d01:	14 ff                	adc    $0xff,%al
   18d03:	4c                   	dec    %sp
   18d04:	10 c3                	adc    %al,%bl
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
   18e48:	c3                   	ret
   18e49:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18e4d:	75 1d                	jne    0x18e6c
   18e4f:	f6 04 0a             	testb  $0xa,(%si)
   18e52:	74 03                	je     0x18e57
   18e54:	e8 1a 02             	call   0x19071
   18e57:	e8 d7 ff             	call   0x18e31
   18e5a:	52                   	push   %dx
   18e5b:	50                   	push   %ax
   18e5c:	e8 cd ff             	call   0x18e2c
   18e5f:	59                   	pop    %cx

; ===== window around 0x18e20 =====
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
   18e48:	c3                   	ret
   18e49:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18e4d:	75 1d                	jne    0x18e6c
   18e4f:	f6 04 0a             	testb  $0xa,(%si)
   18e52:	74 03                	je     0x18e57
   18e54:	e8 1a 02             	call   0x19071
   18e57:	e8 d7 ff             	call   0x18e31
   18e5a:	52                   	push   %dx
   18e5b:	50                   	push   %ax
   18e5c:	e8 cd ff             	call   0x18e2c
   18e5f:	59                   	pop    %cx
   18e60:	5b                   	pop    %bx
   18e61:	52                   	push   %dx
   18e62:	50                   	push   %ax
   18e63:	8b d3                	mov    %bx,%dx
   18e65:	e8 c0 ff             	call   0x18e28
   18e68:	58                   	pop    %ax
   18e69:	5a                   	pop    %dx
   18e6a:	eb 10                	jmp    0x18e7c
   18e6c:	b8 01 00             	mov    $0x1,%ax
   18e6f:	33 d2                	xor    %dx,%dx
   18e71:	f6 04 24             	testb  $0x24,(%si)
   18e74:	74 06                	je     0x18e7c
   18e76:	8b 44 08             	mov    0x8(%si),%ax
   18e79:	8b 54 0a             	mov    0xa(%si),%dx
   18e7c:	c3                   	ret
   18e7d:	88 54 04             	mov    %dl,0x4(%si)
   18e80:	c3                   	ret
   18e81:	8a 64 12             	mov    0x12(%si),%ah
   18e84:	c3                   	ret
   18e85:	8a 64 04             	mov    0x4(%si),%ah
   18e88:	c3                   	ret
   18e89:	53                   	push   %bx
   18e8a:	51                   	push   %cx
   18e8b:	52                   	push   %dx
   18e8c:	57                   	push   %di
   18e8d:	f6 44 05 04          	testb  $0x4,0x5(%si)
   18e91:	74 41                	je     0x18ed4
   18e93:	80 3c 04             	cmpb   $0x4,(%si)
   18e96:	74 41                	je     0x18ed9
   18e98:	8d 7c 13             	lea    0x13(%si),%di
   18e9b:	8b 5c 10             	mov    0x10(%si),%bx
   18e9e:	3b 5c 0c             	cmp    0xc(%si),%bx
   18ea1:	75 1a                	jne    0x18ebd
   18ea3:	b0 fe                	mov    $0xfe,%al
   18ea5:	8b 5c 06             	mov    0x6(%si),%bx
   18ea8:	06                   	push   %es
   18ea9:	1e                   	push   %ds
   18eaa:	07                   	pop    %es
   18eab:	e8 a6 01             	call   0x19054
   18eae:	07                   	pop    %es
   18eaf:	72 34                	jb     0x18ee5
   18eb1:	0b c0                	or     %ax,%ax
   18eb3:	74 1b                	je     0x18ed0
   18eb5:	89 44 0c             	mov    %ax,0xc(%si)
   18eb8:	33 db                	xor    %bx,%bx
   18eba:	89 5c 10             	mov    %bx,0x10(%si)
   18ebd:	8a 40 13             	mov    0x13(%bx,%si),%al
   18ec0:	ff 44 10             	incw   0x10(%si)
   18ec3:	f6 44 05 a0          	testb  $0xa0,0x5(%si)
   18ec7:	75 17                	jne    0x18ee0
   18ec9:	3c 1a                	cmp    $0x1a,%al
   18ecb:	75 12                	jne    0x18edf
   18ecd:	e8 32 fe             	call   0x18d02
   18ed0:	80 64 05 fb          	andb   $0xfb,0x5(%si)
   18ed4:	b0 1a                	mov    $0x1a,%al
   18ed6:	f9                   	stc
   18ed7:	eb 07                	jmp    0x18ee0
   18ed9:	e8 26 00             	call   0x18f02
   18edc:	8a 40 12             	mov    0x12(%bx,%si),%al
   18edf:	f8                   	clc
   18ee0:	5f                   	pop    %di
   18ee1:	5a                   	pop    %dx
   18ee2:	59                   	pop    %cx
   18ee3:	5b                   	pop    %bx
   18ee4:	c3                   	ret
   18ee5:	0b f6                	or     %si,%si
   18ee7:	74 0b                	je     0x18ef4
   18ee9:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18eed:	9c                   	pushf
   18eee:	e8 9c 06             	call   0x1958d
   18ef1:	9d                   	popf
   18ef2:	75 0b                	jne    0x18eff
   18ef4:	e8 bd 32             	call   0x1c1b4
   18ef7:	75 03                	jne    0x18efc
   18ef9:	e9 bb 2e             	jmp    0x1bdb7
   18efc:	e9 c7 2e             	jmp    0x1bdc6
   18eff:	e9 97 2e             	jmp    0x1bd99
   18f02:	8b 5c 10             	mov    0x10(%si),%bx
   18f05:	3b 5c 06             	cmp    0x6(%si),%bx
   18f08:	74 05                	je     0x18f0f
   18f0a:	43                   	inc    %bx
   18f0b:	89 5c 10             	mov    %bx,0x10(%si)
   18f0e:	c3                   	ret
   18f0f:	a1 1c 38             	mov    0x381c,%ax
   18f12:	89 44 10             	mov    %ax,0x10(%si)
   18f15:	e9 6c 2e             	jmp    0x1bd84
   18f18:	3b c1                	cmp    %cx,%ax
   18f1a:	74 1f                	je     0x18f3b
   18f1c:	f6 44 05 02          	testb  $0x2,0x5(%si)
   18f20:	74 07                	je     0x18f29
   18f22:	50                   	push   %ax
   18f23:	40                   	inc    %ax
   18f24:	3b c1                	cmp    %cx,%ax
   18f26:	58                   	pop    %ax
   18f27:	74 12                	je     0x18f3b
   18f29:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18f2d:	9c                   	pushf
   18f2e:	89 36 f6 3a          	mov    %si,0x3af6
   18f32:	e8 58 06             	call   0x1958d
   18f35:	9d                   	popf
   18f36:	75 c7                	jne    0x18eff
   18f38:	e9 67 2e             	jmp    0x1bda2
   18f3b:	c3                   	ret
   18f3c:	80 3c 04             	cmpb   $0x4,(%si)
   18f3f:	74 22                	je     0x18f63
   18f41:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18f45:	74 04                	je     0x18f4b
   18f47:	3c 1a                	cmp    $0x1a,%al
   18f49:	74 31                	je     0x18f7c
   18f4b:	53                   	push   %bx
   18f4c:	8b 5c 10             	mov    0x10(%si),%bx
   18f4f:	3b 5c 06             	cmp    0x6(%si),%bx
   18f52:	72 07                	jb     0x18f5b
   18f54:	51                   	push   %cx
   18f55:	e8 19 01             	call   0x19071
   18f58:	59                   	pop    %cx
   18f59:	33 db                	xor    %bx,%bx
   18f5b:	88 40 13             	mov    %al,0x13(%bx,%si)
   18f5e:	ff 44 10             	incw   0x10(%si)
   18f61:	eb 07                	jmp    0x18f6a
   18f63:	53                   	push   %bx
   18f64:	e8 9b ff             	call   0x18f02
   18f67:	88 40 12             	mov    %al,0x12(%bx,%si)
   18f6a:	5b                   	pop    %bx
   18f6b:	3c 0d                	cmp    $0xd,%al
   18f6d:	75 06                	jne    0x18f75
   18f6f:	c6 44 12 00          	movb   $0x0,0x12(%si)
   18f73:	eb 07                	jmp    0x18f7c
   18f75:	3c 20                	cmp    $0x20,%al
   18f77:	f5                   	cmc
   18f78:	80 54 12 00          	adcb   $0x0,0x12(%si)
   18f7c:	c3                   	ret
   18f7d:	b4 40                	mov    $0x40,%ah
   18f7f:	3d b4 3f             	cmp    $0x3fb4,%ax

; ===== window around 0x18f70 =====
   18f12:	89 44 10             	mov    %ax,0x10(%si)
   18f15:	e9 6c 2e             	jmp    0x1bd84
   18f18:	3b c1                	cmp    %cx,%ax
   18f1a:	74 1f                	je     0x18f3b
   18f1c:	f6 44 05 02          	testb  $0x2,0x5(%si)
   18f20:	74 07                	je     0x18f29
   18f22:	50                   	push   %ax
   18f23:	40                   	inc    %ax
   18f24:	3b c1                	cmp    %cx,%ax
   18f26:	58                   	pop    %ax
   18f27:	74 12                	je     0x18f3b
   18f29:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18f2d:	9c                   	pushf
   18f2e:	89 36 f6 3a          	mov    %si,0x3af6
   18f32:	e8 58 06             	call   0x1958d
   18f35:	9d                   	popf
   18f36:	75 c7                	jne    0x18eff
   18f38:	e9 67 2e             	jmp    0x1bda2
   18f3b:	c3                   	ret
   18f3c:	80 3c 04             	cmpb   $0x4,(%si)
   18f3f:	74 22                	je     0x18f63
   18f41:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18f45:	74 04                	je     0x18f4b
   18f47:	3c 1a                	cmp    $0x1a,%al
   18f49:	74 31                	je     0x18f7c
   18f4b:	53                   	push   %bx
   18f4c:	8b 5c 10             	mov    0x10(%si),%bx
   18f4f:	3b 5c 06             	cmp    0x6(%si),%bx
   18f52:	72 07                	jb     0x18f5b
   18f54:	51                   	push   %cx
   18f55:	e8 19 01             	call   0x19071
   18f58:	59                   	pop    %cx
   18f59:	33 db                	xor    %bx,%bx
   18f5b:	88 40 13             	mov    %al,0x13(%bx,%si)
   18f5e:	ff 44 10             	incw   0x10(%si)
   18f61:	eb 07                	jmp    0x18f6a
   18f63:	53                   	push   %bx
   18f64:	e8 9b ff             	call   0x18f02
   18f67:	88 40 12             	mov    %al,0x12(%bx,%si)
   18f6a:	5b                   	pop    %bx
   18f6b:	3c 0d                	cmp    $0xd,%al
   18f6d:	75 06                	jne    0x18f75
   18f6f:	c6 44 12 00          	movb   $0x0,0x12(%si)
   18f73:	eb 07                	jmp    0x18f7c
   18f75:	3c 20                	cmp    $0x20,%al
   18f77:	f5                   	cmc
   18f78:	80 54 12 00          	adcb   $0x0,0x12(%si)
   18f7c:	c3                   	ret
   18f7d:	b4 40                	mov    $0x40,%ah
   18f7f:	3d b4 3f             	cmp    $0x3fb4,%ax
   18f82:	53                   	push   %bx
   18f83:	1e                   	push   %ds
   18f84:	ff 74 01             	push   0x1(%si)
   18f87:	8e da                	mov    %dx,%ds
   18f89:	8b d3                	mov    %bx,%dx
   18f8b:	5b                   	pop    %bx
   18f8c:	cd 21                	int    $0x21
   18f8e:	72 02                	jb     0x18f92
   18f90:	3b c1                	cmp    %cx,%ax
   18f92:	1f                   	pop    %ds
   18f93:	5b                   	pop    %bx
   18f94:	c3                   	ret
   18f95:	50                   	push   %ax
   18f96:	51                   	push   %cx
   18f97:	57                   	push   %di
   18f98:	03 f8                	add    %ax,%di
   18f9a:	33 c0                	xor    %ax,%ax
   18f9c:	d1 e9                	shr    $1,%cx
   18f9e:	f3 ab                	rep stos %ax,%es:(%di)
   18fa0:	73 01                	jae    0x18fa3
   18fa2:	aa                   	stos   %al,%es:(%di)
   18fa3:	5f                   	pop    %di
   18fa4:	59                   	pop    %cx
   18fa5:	58                   	pop    %ax
   18fa6:	c3                   	ret
   18fa7:	53                   	push   %bx
   18fa8:	91                   	xchg   %ax,%cx
   18fa9:	e8 3e 40             	call   0x1cfea
   18fac:	91                   	xchg   %ax,%cx
   18fad:	72 38                	jb     0x18fe7
   18faf:	5b                   	pop    %bx
   18fb0:	c3                   	ret
   18fb1:	a8 02                	test   $0x2,%al
   18fb3:	74 19                	je     0x18fce
   18fb5:	0b d2                	or     %dx,%dx
   18fb7:	78 2e                	js     0x18fe7
   18fb9:	75 02                	jne    0x18fbd
   18fbb:	e3 2a                	jcxz   0x18fe7
   18fbd:	83 e9 01             	sub    $0x1,%cx
   18fc0:	83 da 00             	sbb    $0x0,%dx
   18fc3:	f6 04 24             	testb  $0x24,(%si)
   18fc6:	74 19                	je     0x18fe1
   18fc8:	89 4c 0c             	mov    %cx,0xc(%si)
   18fcb:	89 54 0e             	mov    %dx,0xe(%si)
   18fce:	8b 4c 0c             	mov    0xc(%si),%cx
   18fd1:	8b 54 0e             	mov    0xe(%si),%dx
   18fd4:	f6 04 20             	testb  $0x20,(%si)
   18fd7:	75 08                	jne    0x18fe1
   18fd9:	50                   	push   %ax
   18fda:	8b 44 06             	mov    0x6(%si),%ax
   18fdd:	e8 c7 ff             	call   0x18fa7
   18fe0:	58                   	pop    %ax
   18fe1:	c7 44 10 00 00       	movw   $0x0,0x10(%si)
   18fe6:	c3                   	ret
   18fe7:	e9 be 2d             	jmp    0x1bda8
   18fea:	51                   	push   %cx
   18feb:	57                   	push   %di
   18fec:	87 d1                	xchg   %dx,%cx
   18fee:	e8 c0 ff             	call   0x18fb1
   18ff1:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18ff5:	75 45                	jne    0x1903c
   18ff7:	a8 10                	test   $0x10,%al
   18ff9:	75 05                	jne    0x19000
   18ffb:	50                   	push   %ax
   18ffc:	e8 29 fe             	call   0x18e28
   18fff:	58                   	pop    %ax
   19000:	50                   	push   %ax
   19001:	c4 3e f8 3a          	les    0x3af8,%di
   19005:	e8 4c 00             	call   0x19054
   19008:	5a                   	pop    %dx
   19009:	72 46                	jb     0x19051
   1900b:	f6 04 20             	testb  $0x20,(%si)
   1900e:	74 05                	je     0x19015
   19010:	01 44 0c             	add    %ax,0xc(%si)
   19013:	eb 09                	jmp    0x1901e
   19015:	f6 c2 08             	test   $0x8,%dl
   19018:	75 0a                	jne    0x19024
   1901a:	83 44 0c 01          	addw   $0x1,0xc(%si)
   1901e:	83 54 0e 00          	adcw   $0x0,0xe(%si)
   19022:	78 c3                	js     0x18fe7
   19024:	80 4c 05 04          	orb    $0x4,0x5(%si)
   19028:	f6 c2 01             	test   $0x1,%dl
   1902b:	75 1c                	jne    0x19049
   1902d:	8b cb                	mov    %bx,%cx
   1902f:	2b c8                	sub    %ax,%cx
   19031:	e3 1b                	jcxz   0x1904e
   19033:	80 64 05 fb          	andb   $0xfb,0x5(%si)
   19037:	e8 5b ff             	call   0x18f95
   1903a:	eb 12                	jmp    0x1904e
   1903c:	a8 01                	test   $0x1,%al
   1903e:	74 c0                	je     0x19000
   19040:	01 5c 08             	add    %bx,0x8(%si)
   19043:	83 54 0a 00          	adcw   $0x0,0xa(%si)
   19047:	eb b7                	jmp    0x19000
   19049:	8b cb                	mov    %bx,%cx
   1904b:	e8 ca fe             	call   0x18f18
   1904e:	5f                   	pop    %di
   1904f:	59                   	pop    %cx
   19050:	c3                   	ret
   19051:	e9 91 fe             	jmp    0x18ee5
   19054:	53                   	push   %bx
   19055:	51                   	push   %cx
   19056:	52                   	push   %dx
   19057:	a8 01                	test   $0x1,%al
   19059:	8b cb                	mov    %bx,%cx
   1905b:	8b 5c 01             	mov    0x1(%si),%bx
   1905e:	8b d7                	mov    %di,%dx
   19060:	75 03                	jne    0x19065
   19062:	b4 3f                	mov    $0x3f,%ah
   19064:	3d b4 40             	cmp    $0x40b4,%ax
   19067:	1e                   	push   %ds
   19068:	06                   	push   %es
   19069:	1f                   	pop    %ds
   1906a:	cd 21                	int    $0x21
   1906c:	1f                   	pop    %ds
   1906d:	5a                   	pop    %dx
   1906e:	59                   	pop    %cx
   1906f:	5b                   	pop    %bx
   19070:	c3                   	ret
   19071:	33 c9                	xor    %cx,%cx
   19073:	f6 44 05 40          	testb  $0x40,0x5(%si)
   19077:	74 07                	je     0x19080
   19079:	80 64 05 bf          	andb   $0xbf,0x5(%si)
   1907d:	e8 05 00             	call   0x19085
   19080:	87 4c 10             	xchg   %cx,0x10(%si)
   19083:	e3 15                	jcxz   0x1909a
   19085:	50                   	push   %ax
   19086:	53                   	push   %bx
   19087:	52                   	push   %dx
   19088:	8d 54 13             	lea    0x13(%si),%dx
   1908b:	8b 5c 01             	mov    0x1(%si),%bx
   1908e:	b4 40                	mov    $0x40,%ah
   19090:	cd 21                	int    $0x21
   19092:	72 07                	jb     0x1909b
   19094:	e8 81 fe             	call   0x18f18
   19097:	5a                   	pop    %dx
   19098:	5b                   	pop    %bx
   19099:	58                   	pop    %ax
   1909a:	c3                   	ret
   1909b:	e9 47 fe             	jmp    0x18ee5
   1909e:	50                   	push   %ax
   1909f:	b4 3e                	mov    $0x3e,%ah
   190a1:	cd 21                	int    $0x21
   190a3:	72 f6                	jb     0x1909b
   190a5:	58                   	pop    %ax
   190a6:	c3                   	ret
   190a7:	00 57 06             	add    %dl,0x6(%bx)
   190aa:	1e                   	push   %ds
   190ab:	07                   	pop    %es
   190ac:	41                   	inc    %cx
   190ad:	e2 0d                	loop   0x190bc
   190af:	b9 80 00             	mov    $0x80,%cx
   190b2:	f6 06 9a 3d 04       	testb  $0x4,0x3d9a
   190b7:	75 03                	jne    0x190bc
   190b9:	b9 00 02             	mov    $0x200,%cx
   190bc:	f6 06 9a 3d 20       	testb  $0x20,0x3d9a
   190c1:	74 03                	je     0x190c6
   190c3:	b9 01 00             	mov    $0x1,%cx
   190c6:	51                   	push   %cx
   190c7:	53                   	push   %bx
   190c8:	50                   	push   %ax
   190c9:	bf 3b 3e             	mov    $0x3e3b,%di
   190cc:	33 f6                	xor    %si,%si
   190ce:	f6 06 9a 3d 25       	testb  $0x25,0x3d9a

; ===== window around 0x19050 =====
   18ff1:	f6 44 05 80          	testb  $0x80,0x5(%si)
   18ff5:	75 45                	jne    0x1903c
   18ff7:	a8 10                	test   $0x10,%al
   18ff9:	75 05                	jne    0x19000
   18ffb:	50                   	push   %ax
   18ffc:	e8 29 fe             	call   0x18e28
   18fff:	58                   	pop    %ax
   19000:	50                   	push   %ax
   19001:	c4 3e f8 3a          	les    0x3af8,%di
   19005:	e8 4c 00             	call   0x19054
   19008:	5a                   	pop    %dx
   19009:	72 46                	jb     0x19051
   1900b:	f6 04 20             	testb  $0x20,(%si)
   1900e:	74 05                	je     0x19015
   19010:	01 44 0c             	add    %ax,0xc(%si)
   19013:	eb 09                	jmp    0x1901e
   19015:	f6 c2 08             	test   $0x8,%dl
   19018:	75 0a                	jne    0x19024
   1901a:	83 44 0c 01          	addw   $0x1,0xc(%si)
   1901e:	83 54 0e 00          	adcw   $0x0,0xe(%si)
   19022:	78 c3                	js     0x18fe7
   19024:	80 4c 05 04          	orb    $0x4,0x5(%si)
   19028:	f6 c2 01             	test   $0x1,%dl
   1902b:	75 1c                	jne    0x19049
   1902d:	8b cb                	mov    %bx,%cx
   1902f:	2b c8                	sub    %ax,%cx
   19031:	e3 1b                	jcxz   0x1904e
   19033:	80 64 05 fb          	andb   $0xfb,0x5(%si)
   19037:	e8 5b ff             	call   0x18f95
   1903a:	eb 12                	jmp    0x1904e
   1903c:	a8 01                	test   $0x1,%al
   1903e:	74 c0                	je     0x19000
   19040:	01 5c 08             	add    %bx,0x8(%si)
   19043:	83 54 0a 00          	adcw   $0x0,0xa(%si)
   19047:	eb b7                	jmp    0x19000
   19049:	8b cb                	mov    %bx,%cx
   1904b:	e8 ca fe             	call   0x18f18
   1904e:	5f                   	pop    %di
   1904f:	59                   	pop    %cx
   19050:	c3                   	ret
   19051:	e9 91 fe             	jmp    0x18ee5
   19054:	53                   	push   %bx
   19055:	51                   	push   %cx
   19056:	52                   	push   %dx
   19057:	a8 01                	test   $0x1,%al
   19059:	8b cb                	mov    %bx,%cx
   1905b:	8b 5c 01             	mov    0x1(%si),%bx
   1905e:	8b d7                	mov    %di,%dx
   19060:	75 03                	jne    0x19065
   19062:	b4 3f                	mov    $0x3f,%ah
   19064:	3d b4 40             	cmp    $0x40b4,%ax
   19067:	1e                   	push   %ds
   19068:	06                   	push   %es
   19069:	1f                   	pop    %ds
   1906a:	cd 21                	int    $0x21
   1906c:	1f                   	pop    %ds
   1906d:	5a                   	pop    %dx
   1906e:	59                   	pop    %cx
   1906f:	5b                   	pop    %bx
   19070:	c3                   	ret
   19071:	33 c9                	xor    %cx,%cx
   19073:	f6 44 05 40          	testb  $0x40,0x5(%si)
   19077:	74 07                	je     0x19080
   19079:	80 64 05 bf          	andb   $0xbf,0x5(%si)
   1907d:	e8 05 00             	call   0x19085
   19080:	87 4c 10             	xchg   %cx,0x10(%si)
   19083:	e3 15                	jcxz   0x1909a
   19085:	50                   	push   %ax
   19086:	53                   	push   %bx
   19087:	52                   	push   %dx
   19088:	8d 54 13             	lea    0x13(%si),%dx
   1908b:	8b 5c 01             	mov    0x1(%si),%bx
   1908e:	b4 40                	mov    $0x40,%ah
   19090:	cd 21                	int    $0x21
   19092:	72 07                	jb     0x1909b
   19094:	e8 81 fe             	call   0x18f18
   19097:	5a                   	pop    %dx
   19098:	5b                   	pop    %bx
   19099:	58                   	pop    %ax
   1909a:	c3                   	ret
   1909b:	e9 47 fe             	jmp    0x18ee5
   1909e:	50                   	push   %ax
   1909f:	b4 3e                	mov    $0x3e,%ah
   190a1:	cd 21                	int    $0x21
   190a3:	72 f6                	jb     0x1909b
   190a5:	58                   	pop    %ax
   190a6:	c3                   	ret
   190a7:	00 57 06             	add    %dl,0x6(%bx)
   190aa:	1e                   	push   %ds
   190ab:	07                   	pop    %es
   190ac:	41                   	inc    %cx
   190ad:	e2 0d                	loop   0x190bc
   190af:	b9 80 00             	mov    $0x80,%cx
   190b2:	f6 06 9a 3d 04       	testb  $0x4,0x3d9a
   190b7:	75 03                	jne    0x190bc
   190b9:	b9 00 02             	mov    $0x200,%cx
   190bc:	f6 06 9a 3d 20       	testb  $0x20,0x3d9a
   190c1:	74 03                	je     0x190c6
   190c3:	b9 01 00             	mov    $0x1,%cx
   190c6:	51                   	push   %cx
   190c7:	53                   	push   %bx
   190c8:	50                   	push   %ax
   190c9:	bf 3b 3e             	mov    $0x3e3b,%di
   190cc:	33 f6                	xor    %si,%si
   190ce:	f6 06 9a 3d 25       	testb  $0x25,0x3d9a
   190d3:	75 03                	jne    0x190d8
   190d5:	e8 9e 01             	call   0x19276
   190d8:	33 db                	xor    %bx,%bx
   190da:	80 3e 99 3d 01       	cmpb   $0x1,0x3d99
   190df:	74 17                	je     0x190f8
   190e1:	80 3e 9a 3d 01       	cmpb   $0x1,0x3d9a
   190e6:	74 10                	je     0x190f8
   190e8:	43                   	inc    %bx
   190e9:	80 3e 99 3d 02       	cmpb   $0x2,0x3d99
   190ee:	74 08                	je     0x190f8
   190f0:	80 3e 9a 3d 02       	cmpb   $0x2,0x3d9a
   190f5:	74 01                	je     0x190f8
   190f7:	43                   	inc    %bx
   190f8:	8b fb                	mov    %bx,%di
   190fa:	e8 64 01             	call   0x19261
   190fd:	72 11                	jb     0x19110
   190ff:	80 3e 9a 3d 08       	cmpb   $0x8,0x3d9a
   19104:	75 58                	jne    0x1915e
   19106:	83 ff 01             	cmp    $0x1,%di
   19109:	75 53                	jne    0x1915e
   1910b:	e8 45 01             	call   0x19253
   1910e:	eb 70                	jmp    0x19180
   19110:	3d 03 00             	cmp    $0x3,%ax
   19113:	74 0f                	je     0x19124
   19115:	80 3e 9a 3d 01       	cmpb   $0x1,0x3d9a
   1911a:	75 0b                	jne    0x19127
   1911c:	3d 05 00             	cmp    $0x5,%ax
   1911f:	74 50                	je     0x19171
   19121:	e9 69 2c             	jmp    0x1bd8d
   19124:	e9 a2 2c             	jmp    0x1bdc9
   19127:	3d 02 00             	cmp    $0x2,%ax
   1912a:	75 16                	jne    0x19142
   1912c:	ba 3b 3e             	mov    $0x3e3b,%dx
   1912f:	33 c9                	xor    %cx,%cx
   19131:	b4 3c                	mov    $0x3c,%ah
   19133:	cd 21                	int    $0x21
   19135:	72 4c                	jb     0x19183
   19137:	93                   	xchg   %ax,%bx
   19138:	e8 18 01             	call   0x19253
   1913b:	8b df                	mov    %di,%bx
   1913d:	e8 21 01             	call   0x19261
   19140:	73 53                	jae    0x19195
   19142:	3d 05 00             	cmp    $0x5,%ax
   19145:	75 2d                	jne    0x19174
   19147:	80 3e 99 3d 00       	cmpb   $0x0,0x3d99
   1914c:	75 23                	jne    0x19171
   1914e:	f6 06 9a 3d 24       	testb  $0x24,0x3d9a
   19153:	74 0b                	je     0x19160
   19155:	0b ff                	or     %di,%di
   19157:	74 18                	je     0x19171
   19159:	8b df                	mov    %di,%bx
   1915b:	4b                   	dec    %bx
   1915c:	eb 9a                	jmp    0x190f8
   1915e:	eb 35                	jmp    0x19195
   19160:	80 3e 9a 3d 08       	cmpb   $0x8,0x3d9a
   19165:	75 0a                	jne    0x19171
   19167:	83 ff 02             	cmp    $0x2,%di
   1916a:	75 05                	jne    0x19171
   1916c:	bb 01 00             	mov    $0x1,%bx
   1916f:	eb 87                	jmp    0x190f8
   19171:	e9 80 fd             	jmp    0x18ef4
   19174:	3d 02 00             	cmp    $0x2,%ax
   19177:	74 a8                	je     0x19121
   19179:	80 3e 9a 3d 02       	cmpb   $0x2,0x3d9a
   1917e:	74 12                	je     0x19192
   19180:	e9 43 2c             	jmp    0x1bdc6
   19183:	3d 05 00             	cmp    $0x5,%ax
   19186:	75 ec                	jne    0x19174
   19188:	e8 29 30             	call   0x1c1b4
   1918b:	72 05                	jb     0x19192
   1918d:	3d 52 00             	cmp    $0x52,%ax
   19190:	75 ee                	jne    0x19180
   19192:	e9 19 2c             	jmp    0x1bdae
   19195:	58                   	pop    %ax
   19196:	5a                   	pop    %dx
   19197:	59                   	pop    %cx
   19198:	87 d3                	xchg   %dx,%bx
   1919a:	52                   	push   %dx
   1919b:	51                   	push   %cx
   1919c:	03 0e bc 3e          	add    0x3ebc,%cx
   191a0:	b2 ff                	mov    $0xff,%dl
   191a2:	b4 ff                	mov    $0xff,%ah
   191a4:	e8 fa 00             	call   0x192a1
   191a7:	59                   	pop    %cx
   191a8:	89 4c 06             	mov    %cx,0x6(%si)
   191ab:	8d 7c 13             	lea    0x13(%si),%di
   191ae:	03 f9                	add    %cx,%di

; ===== window around 0x19250 =====
   191f2:	75 05                	jne    0x191f9
   191f4:	c6 06 9a 3d 02       	movb   $0x2,0x3d9a
   191f9:	a0 9a 3d             	mov    0x3d9a,%al
   191fc:	88 04                	mov    %al,(%si)
   191fe:	f6 44 05 80          	testb  $0x80,0x5(%si)
   19202:	75 08                	jne    0x1920c
   19204:	a8 02                	test   $0x2,%al
   19206:	74 04                	je     0x1920c
   19208:	80 4c 05 40          	orb    $0x40,0x5(%si)
   1920c:	3c 08                	cmp    $0x8,%al
   1920e:	75 3a                	jne    0x1924a
   19210:	e8 19 fc             	call   0x18e2c
   19213:	8b c8                	mov    %ax,%cx
   19215:	0b c2                	or     %dx,%ax
   19217:	74 2c                	je     0x19245
   19219:	81 e9 80 00          	sub    $0x80,%cx
   1921d:	83 da 00             	sbb    $0x0,%dx
   19220:	73 04                	jae    0x19226
   19222:	33 c9                	xor    %cx,%cx
   19224:	33 d2                	xor    %dx,%dx
   19226:	e8 ff fb             	call   0x18e28
   19229:	91                   	xchg   %ax,%cx
   1922a:	89 36 f6 3a          	mov    %si,0x3af6
   1922e:	e8 58 fc             	call   0x18e89
   19231:	c7 06 f6 3a 00 00    	movw   $0x0,0x3af6
   19237:	72 08                	jb     0x19241
   19239:	83 c1 01             	add    $0x1,%cx
   1923c:	83 d2 00             	adc    $0x0,%dx
   1923f:	eb e5                	jmp    0x19226
   19241:	e8 e4 fb             	call   0x18e28
   19244:	91                   	xchg   %ax,%cx
   19245:	c7 44 10 00 00       	movw   $0x0,0x10(%si)
   1924a:	07                   	pop    %es
   1924b:	5f                   	pop    %di
   1924c:	c3                   	ret
   1924d:	e8 86 20             	call   0x1b2d6
   19250:	e9 46 2b             	jmp    0x1bd99
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
   19276:	56                   	push   %si
   19277:	33 f6                	xor    %si,%si
   19279:	e8 70 21             	call   0x1b3ec
   1927c:	74 1f                	je     0x1929d
   1927e:	80 7c 03 00          	cmpb   $0x0,0x3(%si)
   19282:	75 f5                	jne    0x19279
   19284:	8d 5c 13             	lea    0x13(%si),%bx
   19287:	03 5c 06             	add    0x6(%si),%bx
   1928a:	87 de                	xchg   %bx,%si
   1928c:	57                   	push   %di
   1928d:	ac                   	lods   %ds:(%si),%al
   1928e:	ae                   	scas   %es:(%di),%al
   1928f:	75 07                	jne    0x19298
   19291:	0a c0                	or     %al,%al
   19293:	75 f8                	jne    0x1928d
   19295:	e9 fb 2a             	jmp    0x1bd93
   19298:	5f                   	pop    %di
   19299:	87 de                	xchg   %bx,%si
   1929b:	eb dc                	jmp    0x19279
   1929d:	5e                   	pop    %si
   1929e:	c3                   	ret
   1929f:	33 c9                	xor    %cx,%cx
   192a1:	51                   	push   %cx
   192a2:	84 26 9a 3d          	test   %ah,0x3d9a
   192a6:	74 21                	je     0x192c9
   192a8:	e3 03                	jcxz   0x192ad
   192aa:	83 c1 0d             	add    $0xd,%cx
   192ad:	87 d9                	xchg   %bx,%cx
   192af:	83 c3 06             	add    $0x6,%bx
   192b2:	52                   	push   %dx
   192b3:	b2 08                	mov    $0x8,%dl
   192b5:	e8 e6 21             	call   0x1b49e
   192b8:	5a                   	pop    %dx
   192b9:	87 d9                	xchg   %bx,%cx
   192bb:	8a 0e 9a 3d          	mov    0x3d9a,%cl
   192bf:	88 0c                	mov    %cl,(%si)
   192c1:	88 44 03             	mov    %al,0x3(%si)
   192c4:	88 54 04             	mov    %dl,0x4(%si)
   192c7:	59                   	pop    %cx
   192c8:	c3                   	ret
   192c9:	e9 c4 2a             	jmp    0x1bd90
   192cc:	55                   	push   %bp
   192cd:	8b ec                	mov    %sp,%bp
   192cf:	8b 46 06             	mov    0x6(%bp),%ax
   192d2:	8a dc                	mov    %ah,%bl
   192d4:	80 e3 f0             	and    $0xf0,%bl
   192d7:	80 e4 0f             	and    $0xf,%ah
   192da:	88 26 99 3d          	mov    %ah,0x3d99
   192de:	88 1e 98 3d          	mov    %bl,0x3d98
   192e2:	0a e3                	or     %bl,%ah
   192e4:	74 05                	je     0x192eb
   192e6:	e8 fb 2d             	call   0x1c0e4
   192e9:	72 12                	jb     0x192fd
   192eb:	32 e4                	xor    %ah,%ah
   192ed:	8b 5e 0a             	mov    0xa(%bp),%bx
   192f0:	8b 4e 08             	mov    0x8(%bp),%cx
   192f3:	8b 56 0c             	mov    0xc(%bp),%dx
   192f6:	e8 a0 00             	call   0x19399
   192f9:	5d                   	pop    %bp
   192fa:	ca 08 00             	lret   $0x8
   192fd:	e9 c0 2a             	jmp    0x1bdc0
   19300:	55                   	push   %bp
   19301:	8b ec                	mov    %sp,%bp
   19303:	c6 06 99 3d 00       	movb   $0x0,0x3d99
   19308:	c6 06 98 3d 00       	movb   $0x0,0x3d98
   1930d:	8b 5e 0c             	mov    0xc(%bp),%bx
   19310:	8b 0f                	mov    (%bx),%cx
   19312:	e3 b5                	jcxz   0x192c9
   19314:	53                   	push   %bx
   19315:	8b 5f 02             	mov    0x2(%bx),%bx
   19318:	8a 1f                	mov    (%bx),%bl
   1931a:	80 e3 df             	and    $0xdf,%bl
   1931d:	b8 01 00             	mov    $0x1,%ax
   19320:	80 fb 49             	cmp    $0x49,%bl
   19323:	74 1b                	je     0x19340
   19325:	40                   	inc    %ax
   19326:	80 fb 4f             	cmp    $0x4f,%bl
   19329:	74 15                	je     0x19340
   1932b:	b0 04                	mov    $0x4,%al
   1932d:	80 fb 52             	cmp    $0x52,%bl
   19330:	74 0e                	je     0x19340
   19332:	b0 08                	mov    $0x8,%al
   19334:	80 fb 41             	cmp    $0x41,%bl
   19337:	74 07                	je     0x19340
   19339:	80 fb 42             	cmp    $0x42,%bl
   1933c:	75 8b                	jne    0x192c9
   1933e:	b0 20                	mov    $0x20,%al
   19340:	5b                   	pop    %bx
   19341:	e8 33 1c             	call   0x1af77
   19344:	8b 5e 0a             	mov    0xa(%bp),%bx
   19347:	8b 4e 06             	mov    0x6(%bp),%cx
   1934a:	8b 56 08             	mov    0x8(%bp),%dx
   1934d:	e8 49 00             	call   0x19399
   19350:	5d                   	pop    %bp
   19351:	ca 08 00             	lret   $0x8
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
   19394:	56                   	push   %si
   19395:	57                   	push   %di
   19396:	50                   	push   %ax
   19397:	eb c3                	jmp    0x1935c
   19399:	56                   	push   %si
   1939a:	a2 9a 3d             	mov    %al,0x3d9a
   1939d:	51                   	push   %cx
   1939e:	e8 1e 00             	call   0x193bf
   193a1:	e8 bf 22             	call   0x1b663
   193a4:	75 64                	jne    0x1940a
   193a6:	59                   	pop    %cx
   193a7:	41                   	inc    %cx
   193a8:	74 05                	je     0x193af
   193aa:	49                   	dec    %cx
   193ab:	0b c9                	or     %cx,%cx
   193ad:	7e 0d                	jle    0x193bc
   193af:	b4 0c                	mov    $0xc,%ah

; ===== window around 0x19380 =====
   19320:	80 fb 49             	cmp    $0x49,%bl
   19323:	74 1b                	je     0x19340
   19325:	40                   	inc    %ax
   19326:	80 fb 4f             	cmp    $0x4f,%bl
   19329:	74 15                	je     0x19340
   1932b:	b0 04                	mov    $0x4,%al
   1932d:	80 fb 52             	cmp    $0x52,%bl
   19330:	74 0e                	je     0x19340
   19332:	b0 08                	mov    $0x8,%al
   19334:	80 fb 41             	cmp    $0x41,%bl
   19337:	74 07                	je     0x19340
   19339:	80 fb 42             	cmp    $0x42,%bl
   1933c:	75 8b                	jne    0x192c9
   1933e:	b0 20                	mov    $0x20,%al
   19340:	5b                   	pop    %bx
   19341:	e8 33 1c             	call   0x1af77
   19344:	8b 5e 0a             	mov    0xa(%bp),%bx
   19347:	8b 4e 06             	mov    0x6(%bp),%cx
   1934a:	8b 56 08             	mov    0x8(%bp),%dx
   1934d:	e8 49 00             	call   0x19399
   19350:	5d                   	pop    %bp
   19351:	ca 08 00             	lret   $0x8
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
   19394:	56                   	push   %si
   19395:	57                   	push   %di
   19396:	50                   	push   %ax
   19397:	eb c3                	jmp    0x1935c
   19399:	56                   	push   %si
   1939a:	a2 9a 3d             	mov    %al,0x3d9a
   1939d:	51                   	push   %cx
   1939e:	e8 1e 00             	call   0x193bf
   193a1:	e8 bf 22             	call   0x1b663
   193a4:	75 64                	jne    0x1940a
   193a6:	59                   	pop    %cx
   193a7:	41                   	inc    %cx
   193a8:	74 05                	je     0x193af
   193aa:	49                   	dec    %cx
   193ab:	0b c9                	or     %cx,%cx
   193ad:	7e 0d                	jle    0x193bc
   193af:	b4 0c                	mov    $0xc,%ah
   193b1:	e8 e0 ff             	call   0x19394
   193b4:	c7 06 c3 40 00 00    	movw   $0x0,0x40c3
   193ba:	5e                   	pop    %si
   193bb:	c3                   	ret
   193bc:	e9 98 29             	jmp    0x1bd57
   193bf:	56                   	push   %si
   193c0:	57                   	push   %di
   193c1:	06                   	push   %es
   193c2:	87 d3                	xchg   %dx,%bx
   193c4:	bf 3b 3e             	mov    $0x3e3b,%di
   193c7:	1e                   	push   %ds
   193c8:	07                   	pop    %es
   193c9:	8b 0f                	mov    (%bx),%cx
   193cb:	e3 43                	jcxz   0x19410
   193cd:	e8 d6 f8             	call   0x18ca6
   193d0:	74 0e                	je     0x193e0
   193d2:	8b 77 02             	mov    0x2(%bx),%si
   193d5:	51                   	push   %cx
   193d6:	f3 a4                	rep movsb %ds:(%si),%es:(%di)
   193d8:	88 0d                	mov    %cl,(%di)
   193da:	59                   	pop    %cx
   193db:	42                   	inc    %dx
   193dc:	74 de                	je     0x193bc
   193de:	eb 16                	jmp    0x193f6
   193e0:	e8 75 f7             	call   0x18b58
   193e3:	a8 01                	test   $0x1,%al
   193e5:	75 26                	jne    0x1940d
   193e7:	42                   	inc    %dx
   193e8:	75 0a                	jne    0x193f4
   193ea:	be fe 35             	mov    $0x35fe,%si
   193ed:	e8 83 f8             	call   0x18c73
   193f0:	32 c0                	xor    %al,%al
   193f2:	eb 09                	jmp    0x193fd
   193f4:	32 c0                	xor    %al,%al
   193f6:	4a                   	dec    %dx
   193f7:	74 17                	je     0x19410
   193f9:	0a f6                	or     %dh,%dh
   193fb:	75 13                	jne    0x19410
   193fd:	e8 77 1b             	call   0x1af77
   19400:	89 0e bc 3e          	mov    %cx,0x3ebc
   19404:	87 d3                	xchg   %dx,%bx
   19406:	07                   	pop    %es
   19407:	5f                   	pop    %di
   19408:	5e                   	pop    %si
   19409:	c3                   	ret
   1940a:	e9 86 29             	jmp    0x1bd93
   1940d:	e9 9b 29             	jmp    0x1bdab
   19410:	e9 77 29             	jmp    0x1bd8a
   19413:	55                   	push   %bp
   19414:	8b ec                	mov    %sp,%bp
   19416:	56                   	push   %si
   19417:	57                   	push   %di
   19418:	8d 7e 08             	lea    0x8(%bp),%di
   1941b:	8b 4e 06             	mov    0x6(%bp),%cx
   1941e:	e3 10                	jcxz   0x19430
   19420:	8b 1d                	mov    (%di),%bx
   19422:	e8 3e 22             	call   0x1b663
   19425:	74 03                	je     0x1942a
   19427:	e8 2a ff             	call   0x19354
   1942a:	47                   	inc    %di
   1942b:	47                   	inc    %di
   1942c:	e2 f2                	loop   0x19420
   1942e:	eb 03                	jmp    0x19433
   19430:	e8 30 01             	call   0x19563
   19433:	8b df                	mov    %di,%bx
   19435:	5f                   	pop    %di
   19436:	5e                   	pop    %si
   19437:	8b 46 02             	mov    0x2(%bp),%ax
   1943a:	8b 56 04             	mov    0x4(%bp),%dx
   1943d:	8b 6e 00             	mov    0x0(%bp),%bp
   19440:	8b e3                	mov    %bx,%sp
   19442:	c7 06 c3 40 00 00    	movw   $0x0,0x40c3
   19448:	52                   	push   %dx
   19449:	50                   	push   %ax
   1944a:	cb                   	lret
   1944b:	56                   	push   %si
   1944c:	8b 36 c3 40          	mov    0x40c3,%si
   19450:	0b f6                	or     %si,%si
   19452:	75 11                	jne    0x19465
   19454:	f6 06 fc 37 01       	testb  $0x1,0x37fc
   19459:	74 05                	je     0x19460
   1945b:	e8 ca 3a             	call   0x1cf28
   1945e:	5e                   	pop    %si
   1945f:	c3                   	ret
   19460:	e8 21 23             	call   0x1b784
   19463:	eb 05                	jmp    0x1946a
   19465:	b4 10                	mov    $0x10,%ah
   19467:	e8 ec fe             	call   0x19356
   1946a:	5e                   	pop    %si
   1946b:	72 03                	jb     0x19470
   1946d:	0b e4                	or     %sp,%sp
   1946f:	c3                   	ret
   19470:	0b e4                	or     %sp,%sp
   19472:	f9                   	stc
   19473:	c3                   	ret
   19474:	56                   	push   %si
   19475:	8b 36 c3 40          	mov    0x40c3,%si
   19479:	0b f6                	or     %si,%si
   1947b:	75 04                	jne    0x19481
   1947d:	5e                   	pop    %si
   1947e:	e9 4c 23             	jmp    0x1b7cd
   19481:	f6 04 20             	testb  $0x20,(%si)
   19484:	74 03                	je     0x19489
   19486:	e9 07 29             	jmp    0x1bd90
   19489:	b4 12                	mov    $0x12,%ah
   1948b:	e8 c8 fe             	call   0x19356
   1948e:	5e                   	pop    %si
   1948f:	c3                   	ret
   19490:	56                   	push   %si
   19491:	8b 36 c3 40          	mov    0x40c3,%si
   19495:	0b f6                	or     %si,%si
   19497:	75 04                	jne    0x1949d
   19499:	5e                   	pop    %si
   1949a:	e9 a4 25             	jmp    0x1ba41
   1949d:	b4 14                	mov    $0x14,%ah
   1949f:	eb ea                	jmp    0x1948b
   194a1:	56                   	push   %si
   194a2:	8b 36 c3 40          	mov    0x40c3,%si
   194a6:	0b f6                	or     %si,%si
   194a8:	75 04                	jne    0x194ae
   194aa:	5e                   	pop    %si
   194ab:	e9 a5 25             	jmp    0x1ba53
   194ae:	b4 16                	mov    $0x16,%ah
   194b0:	eb d9                	jmp    0x1948b
   194b2:	56                   	push   %si
   194b3:	8b 36 c3 40          	mov    0x40c3,%si
   194b7:	0b f6                	or     %si,%si
   194b9:	75 04                	jne    0x194bf
   194bb:	5e                   	pop    %si
   194bc:	e9 9e 25             	jmp    0x1ba5d
   194bf:	b4 1a                	mov    $0x1a,%ah
   194c1:	eb c8                	jmp    0x1948b
   194c3:	56                   	push   %si
   194c4:	8b 36 c3 40          	mov    0x40c3,%si
   194c8:	0b f6                	or     %si,%si
   194ca:	75 04                	jne    0x194d0
   194cc:	5e                   	pop    %si
   194cd:	e9 8d 25             	jmp    0x1ba5d
   194d0:	b4 1c                	mov    $0x1c,%ah
   194d2:	eb b7                	jmp    0x1948b
   194d4:	50                   	push   %ax
   194d5:	53                   	push   %bx
   194d6:	56                   	push   %si
   194d7:	c6 06 fe 3a 01       	movb   $0x1,0x3afe
   194dc:	8b 36 c3 40          	mov    0x40c3,%si

; ===== window around 0x1d7e9 =====
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
   1d7f7:	00 02                	add    %al,(%bp,%si)
   1d7f9:	b2 60                	mov    $0x60,%dl
   1d7fb:	03 05                	add    (%di),%ax
   1d7fd:	5f                   	pop    %di
   1d7fe:	05 fd 5f             	add    $0x5ffd,%ax
   1d801:	06                   	push   %es
   1d802:	87 60 0a             	xchg   %sp,0xa(%bx,%si)
   1d805:	e0 5e                	loopne 0x1d865
   1d807:	0b 13                	or     (%bp,%di),%dx
   1d809:	60                   	pusha
   1d80a:	0d e1 5e             	or     $0x5ee1,%ax
   1d80d:	0e                   	push   %cs
   1d80e:	22 60 15             	and    0x15(%bx,%si),%ah
   1d811:	33 60 1c             	xor    0x1c(%bx,%si),%sp
   1d814:	63 60 1d             	arpl   %sp,0x1d(%bx,%si)
   1d817:	4e                   	dec    %si
   1d818:	60                   	pusha
   1d819:	08 b5 5f 09          	or     %dh,0x95f(%di)
   1d81d:	c1 5e 12 da          	rcrw   $0xda,0x12(%bp)
   1d821:	5e                   	pop    %si
   1d822:	14 32                	adc    $0x32,%al
   1d824:	3f                   	aas
   1d825:	7f 9f                	jg     0x1d7c6
   1d827:	5f                   	pop    %di
   1d828:	50                   	push   %ax
   1d829:	53                   	push   %bx
   1d82a:	51                   	push   %cx
   1d82b:	52                   	push   %dx
   1d82c:	06                   	push   %es
   1d82d:	1e                   	push   %ds
   1d82e:	07                   	pop    %es
   1d82f:	33 db                	xor    %bx,%bx
   1d831:	89 1e 7a 3f          	mov    %bx,0x3f7a
   1d835:	89 1e 7c 3f          	mov    %bx,0x3f7c
   1d839:	88 1e 84 3f          	mov    %bl,0x3f84
   1d83d:	88 1e 85 3f          	mov    %bl,0x3f85
   1d841:	88 1e 3b 3e          	mov    %bl,0x3e3b
   1d845:	80 0e fc 37 30       	orb    $0x30,0x37fc
   1d84a:	e8 f9 03             	call   0x1dc46
   1d84d:	e8 92 00             	call   0x1d8e2
   1d850:	e8 df 00             	call   0x1d932
   1d853:	e8 42 00             	call   0x1d898
   1d856:	75 05                	jne    0x1d85d
   1d858:	e8 b3 00             	call   0x1d90e
   1d85b:	eb f3                	jmp    0x1d850
   1d85d:	72 05                	jb     0x1d864
   1d85f:	e8 c2 00             	call   0x1d924
   1d862:	eb ec                	jmp    0x1d850
   1d864:	80 fc 80             	cmp    $0x80,%ah
   1d867:	75 09                	jne    0x1d872
   1d869:	3c 80                	cmp    $0x80,%al
   1d86b:	74 f2                	je     0x1d85f
   1d86d:	e8 a5 00             	call   0x1d915
   1d870:	eb de                	jmp    0x1d850
   1d872:	80 fc ff             	cmp    $0xff,%ah
   1d875:	75 d9                	jne    0x1d850
   1d877:	3c 10                	cmp    $0x10,%al
   1d879:	75 04                	jne    0x1d87f
   1d87b:	b0 fe                	mov    $0xfe,%al
   1d87d:	eb e0                	jmp    0x1d85f
   1d87f:	3c ff                	cmp    $0xff,%al
   1d881:	74 dc                	je     0x1d85f
   1d883:	e8 be 00             	call   0x1d944
   1d886:	f6 06 85 3f ff       	testb  $0xff,0x3f85
   1d88b:	75 02                	jne    0x1d88f
   1d88d:	eb c1                	jmp    0x1d850
   1d88f:	e8 62 00             	call   0x1d8f4
   1d892:	07                   	pop    %es
   1d893:	5a                   	pop    %dx
   1d894:	59                   	pop    %cx
   1d895:	5b                   	pop    %bx
   1d896:	58                   	pop    %ax
   1d897:	c3                   	ret
   1d898:	e8 3e 00             	call   0x1d8d9
   1d89b:	f6 06 fc 37 01       	testb  $0x1,0x37fc
   1d8a0:	74 10                	je     0x1d8b2
   1d8a2:	e8 83 f6             	call   0x1cf28
   1d8a5:	75 10                	jne    0x1d8b7
   1d8a7:	80 26 fc 37 cf       	andb   $0xcf,0x37fc
   1d8ac:	e8 23 02             	call   0x1dad2
   1d8af:	e9 f3 e4             	jmp    0x1bda5
   1d8b2:	b2 01                	mov    $0x1,%dl
   1d8b4:	e8 a6 e7             	call   0x1c05d
   1d8b7:	e8 1f f9             	call   0x1d1d9
   1d8ba:	9c                   	pushf
   1d8bb:	e8 24 00             	call   0x1d8e2
   1d8be:	3c fe                	cmp    $0xfe,%al
   1d8c0:	75 04                	jne    0x1d8c6
   1d8c2:	9d                   	popf
   1d8c3:	33 c0                	xor    %ax,%ax
   1d8c5:	c3                   	ret
   1d8c6:	9d                   	popf
   1d8c7:	c3                   	ret
   1d8c8:	51                   	push   %cx
   1d8c9:	56                   	push   %si
   1d8ca:	8b cb                	mov    %bx,%cx
   1d8cc:	e3 08                	jcxz   0x1d8d6
   1d8ce:	be 3d 3f             	mov    $0x3f3d,%si
   1d8d1:	e8 ec 00             	call   0x1d9c0
   1d8d4:	33 db                	xor    %bx,%bx
   1d8d6:	5e                   	pop    %si
   1d8d7:	59                   	pop    %cx
   1d8d8:	c3                   	ret
   1d8d9:	f6 06 84 3f ff       	testb  $0xff,0x3f84
   1d8de:	75 08                	jne    0x1d8e8
   1d8e0:	eb 0c                	jmp    0x1d8ee
   1d8e2:	50                   	push   %ax
   1d8e3:	b8 f4 47             	mov    $0x47f4,%ax
   1d8e6:	eb 10                	jmp    0x1d8f8
   1d8e8:	50                   	push   %ax
   1d8e9:	b8 df 47             	mov    $0x47df,%ax
   1d8ec:	eb 0a                	jmp    0x1d8f8
   1d8ee:	50                   	push   %ax
   1d8ef:	b8 da 47             	mov    $0x47da,%ax
   1d8f2:	eb 04                	jmp    0x1d8f8
   1d8f4:	50                   	push   %ax
   1d8f5:	b8 e4 47             	mov    $0x47e4,%ax
   1d8f8:	52                   	push   %dx
   1d8f9:	8a 16 fc 37          	mov    0x37fc,%dl
   1d8fd:	80 e2 03             	and    $0x3,%dl
   1d900:	80 fa 03             	cmp    $0x3,%dl
   1d903:	74 06                	je     0x1d90b
   1d905:	8b 16 44 37          	mov    0x3744,%dx
   1d909:	ff d0                	call   *%ax
   1d90b:	5a                   	pop    %dx
   1d90c:	58                   	pop    %ax
   1d90d:	c3                   	ret
   1d90e:	e8 b7 ff             	call   0x1d8c8
   1d911:	e8 2e 03             	call   0x1dc42
   1d914:	c3                   	ret
   1d915:	50                   	push   %ax
   1d916:	e8 af ff             	call   0x1d8c8
   1d919:	2c 20                	sub    $0x20,%al
   1d91b:	3c 0c                	cmp    $0xc,%al
   1d91d:	7c 03                	jl     0x1d922
   1d91f:	e8 20 03             	call   0x1dc42
   1d922:	58                   	pop    %ax
   1d923:	c3                   	ret
   1d924:	83 fb 10             	cmp    $0x10,%bx
   1d927:	7c 03                	jl     0x1d92c
   1d929:	e8 9c ff             	call   0x1d8c8
   1d92c:	88 87 3d 3f          	mov    %al,0x3f3d(%bx)
   1d930:	43                   	inc    %bx
   1d931:	c3                   	ret
   1d932:	50                   	push   %ax
   1d933:	f6 06 fc 37 01       	testb  $0x1,0x37fc
   1d938:	75 08                	jne    0x1d942
   1d93a:	e8 01 e7             	call   0x1c03e
   1d93d:	75 03                	jne    0x1d942
   1d93f:	e8 86 ff             	call   0x1d8c8
   1d942:	58                   	pop    %ax
   1d943:	c3                   	ret
   1d944:	56                   	push   %si
   1d945:	e8 80 ff             	call   0x1d8c8
   1d948:	be 48 5d             	mov    $0x5d48,%si

; ===== window around 0x1814c =====
   180ec:	bb b2 3a             	mov    $0x3ab2,%bx
   180ef:	80 3c 00             	cmpb   $0x0,(%si)
   180f2:	74 03                	je     0x180f7
   180f4:	bb c0 3a             	mov    $0x3ac0,%bx
   180f7:	33 c0                	xor    %ax,%ax
   180f9:	89 47 04             	mov    %ax,0x4(%bx)
   180fc:	e8 0f 04             	call   0x1850e
   180ff:	89 57 02             	mov    %dx,0x2(%bx)
   18102:	89 57 06             	mov    %dx,0x6(%bx)
   18105:	58                   	pop    %ax
   18106:	5b                   	pop    %bx
   18107:	5e                   	pop    %si
   18108:	c3                   	ret
   18109:	53                   	push   %bx
   1810a:	52                   	push   %dx
   1810b:	bb 71 06             	mov    $0x671,%bx
   1810e:	8b d1                	mov    %cx,%dx
   18110:	43                   	inc    %bx
   18111:	43                   	inc    %bx
   18112:	2e 8b 0f             	mov    %cs:(%bx),%cx
   18115:	43                   	inc    %bx
   18116:	43                   	inc    %bx
   18117:	e3 04                	jcxz   0x1811d
   18119:	3b d1                	cmp    %cx,%dx
   1811b:	75 f3                	jne    0x18110
   1811d:	2e 8b 0f             	mov    %cs:(%bx),%cx
   18120:	5a                   	pop    %dx
   18121:	5b                   	pop    %bx
   18122:	c3                   	ret
   18123:	4b                   	dec    %bx
   18124:	00 00                	add    %al,(%bx,%si)
   18126:	06                   	push   %es
   18127:	6e                   	outsb  %ds:(%si),(%dx)
   18128:	00 17                	add    %dl,(%bx)
   1812a:	04 96                	add    $0x96,%al
   1812c:	00 00                	add    %al,(%bx,%si)
   1812e:	03 2c                	add    (%si),%bp
   18130:	01 80 01 58          	add    %ax,0x5801(%bx,%si)
   18134:	02 c0                	add    %al,%al
   18136:	00 b0 04 60          	add    %dh,0x6004(%bx,%si)
   1813a:	00 08                	add    %cl,(%bx,%si)
   1813c:	07                   	pop    %es
   1813d:	40                   	inc    %ax
   1813e:	00 60 09             	add    %ah,0x9(%bx,%si)
   18141:	30 00                	xor    %al,(%bx,%si)
   18143:	c0 12 18             	rclb   $0x18,(%bp,%si)
   18146:	00 80 25 0c          	add    %al,0xc25(%bx,%si)
   1814a:	00 00                	add    %al,(%bx,%si)
   1814c:	4b                   	dec    %bx
   1814d:	06                   	push   %es
   1814e:	00 00                	add    %al,(%bx,%si)
   18150:	00 00                	add    %al,(%bx,%si)
   18152:	00 8b 95 32          	add    %cl,0x3295(%bp,%di)
   18156:	3e 83 c2 03          	ds add $0x3,%dx
   1815a:	b0 80                	mov    $0x80,%al
   1815c:	ee                   	out    %al,(%dx)
   1815d:	83 ea 02             	sub    $0x2,%dx
   18160:	8a c5                	mov    %ch,%al
   18162:	eb 00                	jmp    0x18164
   18164:	ee                   	out    %al,(%dx)
   18165:	4a                   	dec    %dx
   18166:	8a c1                	mov    %cl,%al
   18168:	eb 00                	jmp    0x1816a
   1816a:	ee                   	out    %al,(%dx)
   1816b:	8a 6c 0d             	mov    0xd(%si),%ch
   1816e:	b1 03                	mov    $0x3,%cl
   18170:	d2 e5                	shl    %cl,%ch
   18172:	8a 44 0e             	mov    0xe(%si),%al
   18175:	0a c5                	or     %ch,%al
   18177:	83 c2 03             	add    $0x3,%dx
   1817a:	eb 00                	jmp    0x1817c
   1817c:	ee                   	out    %al,(%dx)
   1817d:	83 ea 03             	sub    $0x3,%dx
   18180:	33 c9                	xor    %cx,%cx
   18182:	eb 00                	jmp    0x18184
   18184:	ec                   	in     (%dx),%al
   18185:	e2 fb                	loop   0x18182
   18187:	83 c2 05             	add    $0x5,%dx
   1818a:	eb 00                	jmp    0x1818c
   1818c:	ec                   	in     (%dx),%al
   1818d:	42                   	inc    %dx
   1818e:	eb 00                	jmp    0x18190
   18190:	ec                   	in     (%dx),%al
   18191:	eb 00                	jmp    0x18193
   18193:	ec                   	in     (%dx),%al
   18194:	88 44 0c             	mov    %al,0xc(%si)
   18197:	4a                   	dec    %dx
   18198:	4a                   	dec    %dx
   18199:	8a 44 02             	mov    0x2(%si),%al
   1819c:	34 02                	xor    $0x2,%al
   1819e:	0c 09                	or     $0x9,%al
   181a0:	eb 00                	jmp    0x181a2
   181a2:	ee                   	out    %al,(%dx)
   181a3:	83 ea 03             	sub    $0x3,%dx
   181a6:	b0 0b                	mov    $0xb,%al
   181a8:	eb 00                	jmp    0x181aa
   181aa:	ee                   	out    %al,(%dx)
   181ab:	42                   	inc    %dx
   181ac:	eb 00                	jmp    0x181ae
   181ae:	ec                   	in     (%dx),%al
   181af:	e8 03 00             	call   0x181b5
   181b2:	8a e6                	mov    %dh,%ah
   181b4:	c3                   	ret
   181b5:	53                   	push   %bx
   181b6:	51                   	push   %cx
   181b7:	57                   	push   %di
   181b8:	33 db                	xor    %bx,%bx
   181ba:	8b cb                	mov    %bx,%cx
   181bc:	33 ff                	xor    %di,%di
   181be:	80 3e ee 3a 00       	cmpb   $0x0,0x3aee
   181c3:	75 78                	jne    0x1823d
   181c5:	e8 62 3e             	call   0x1c02a
   181c8:	32 e4                	xor    %ah,%ah
   181ca:	8a 44 0c             	mov    0xc(%si),%al
   181cd:	a8 10                	test   $0x10,%al
   181cf:	75 0f                	jne    0x181e0
   181d1:	83 7c 03 00          	cmpw   $0x0,0x3(%si)
   181d5:	74 09                	je     0x181e0
   181d7:	b6 03                	mov    $0x3,%dh
   181d9:	3b 7c 03             	cmp    0x3(%si),%di
   181dc:	73 6f                	jae    0x1824d
   181de:	fe c4                	inc    %ah
   181e0:	a8 20                	test   $0x20,%al
   181e2:	75 0f                	jne    0x181f3
   181e4:	83 7c 05 00          	cmpw   $0x0,0x5(%si)
   181e8:	74 09                	je     0x181f3
   181ea:	b6 04                	mov    $0x4,%dh
   181ec:	3b 7c 05             	cmp    0x5(%si),%di
   181ef:	73 5c                	jae    0x1824d
   181f1:	fe c4                	inc    %ah
   181f3:	a8 80                	test   $0x80,%al
   181f5:	75 0f                	jne    0x18206
   181f7:	83 7c 07 00          	cmpw   $0x0,0x7(%si)
   181fb:	74 09                	je     0x18206
   181fd:	b6 05                	mov    $0x5,%dh
   181ff:	3b 7c 07             	cmp    0x7(%si),%di
   18202:	73 49                	jae    0x1824d
   18204:	fe c4                	inc    %ah
   18206:	0a e4                	or     %ah,%ah
   18208:	74 41                	je     0x1824b
   1820a:	8b f9                	mov    %cx,%di
   1820c:	32 e4                	xor    %ah,%ah
   1820e:	cd 1a                	int    $0x1a
   18210:	87 f9                	xchg   %di,%cx
   18212:	8b c1                	mov    %cx,%ax
   18214:	0b c3                	or     %bx,%ax
   18216:	75 06                	jne    0x1821e
   18218:	8b cf                	mov    %di,%cx
   1821a:	8b da                	mov    %dx,%bx
   1821c:	eb 9e                	jmp    0x181bc
   1821e:	2b d3                	sub    %bx,%dx
   18220:	1b f9                	sbb    %cx,%di
   18222:	73 07                	jae    0x1822b
   18224:	81 c2 b0 00          	add    $0xb0,%dx
   18228:	83 d7 18             	adc    $0x18,%di
   1822b:	0b ff                	or     %di,%di
   1822d:	bf ff ff             	mov    $0xffff,%di
   18230:	75 8c                	jne    0x181be
   18232:	b8 37 00             	mov    $0x37,%ax
   18235:	f7 e2                	mul    %dx
   18237:	72 85                	jb     0x181be
   18239:	8b f8                	mov    %ax,%di
   1823b:	eb 81                	jmp    0x181be
   1823d:	ff 16 66 37          	call   *0x3766
   18241:	f6 06 68 37 08       	testb  $0x8,0x3768
   18246:	74 80                	je     0x181c8
   18248:	b6 fc                	mov    $0xfc,%dh
   1824a:	3d 32 f6             	cmp    $0xf632,%ax
   1824d:	5f                   	pop    %di
   1824e:	59                   	pop    %cx
   1824f:	5b                   	pop    %bx
   18250:	c3                   	ret
   18251:	56                   	push   %si
   18252:	53                   	push   %bx
   18253:	be d0 35             	mov    $0x35d0,%si
   18256:	0a e4                	or     %ah,%ah
   18258:	74 03                	je     0x1825d
   1825a:	be e6 35             	mov    $0x35e6,%si
   1825d:	e8 31 00             	call   0x18291
   18260:	80 fc 00             	cmp    $0x0,%ah
   18263:	75 27                	jne    0x1828c
   18265:	bb b2 3a             	mov    $0x3ab2,%bx
   18268:	80 3c 00             	cmpb   $0x0,(%si)
   1826b:	74 03                	je     0x18270
   1826d:	bb c0 3a             	mov    $0x3ac0,%bx
   18270:	83 7f 08 00          	cmpw   $0x0,0x8(%bx)
   18274:	75 0a                	jne    0x18280
   18276:	80 7c 0f 00          	cmpb   $0x0,0xf(%si)
   1827a:	74 10                	je     0x1828c
   1827c:	b0 1a                	mov    $0x1a,%al
   1827e:	eb 08                	jmp    0x18288
   18280:	06                   	push   %es
   18281:	8e 44 12             	mov    0x12(%si),%es
   18284:	e8 af 02             	call   0x18536
   18287:	07                   	pop    %es
   18288:	0b e4                	or     %sp,%sp
   1828a:	eb 02                	jmp    0x1828e
   1828c:	32 c0                	xor    %al,%al
   1828e:	5b                   	pop    %bx
   1828f:	5e                   	pop    %si
   18290:	c3                   	ret
   18291:	80 7c 0a 00          	cmpb   $0x0,0xa(%si)
   18295:	74 1b                	je     0x182b2
   18297:	8a 44 0a             	mov    0xa(%si),%al
   1829a:	b4 06                	mov    $0x6,%ah
   1829c:	a8 02                	test   $0x2,%al
   1829e:	75 1c                	jne    0x182bc
   182a0:	b4 02                	mov    $0x2,%ah
   182a2:	a8 04                	test   $0x4,%al
   182a4:	75 16                	jne    0x182bc
   182a6:	b4 07                	mov    $0x7,%ah
   182a8:	a8 08                	test   $0x8,%al
   182aa:	75 10                	jne    0x182bc

; ===== window around 0x002e2 =====
     283:	09 00                	or     %ax,(%bx,%si)
     285:	00 dd                	add    %bl,%ch
     287:	09 00                	or     %ax,(%bx,%si)
     289:	00 e6                	add    %ah,%dh
     28b:	09 00                	or     %ax,(%bx,%si)
     28d:	00 fc                	add    %bh,%ah
     28f:	09 00                	or     %ax,(%bx,%si)
     291:	00 01                	add    %al,(%bx,%di)
     293:	0a 00                	or     (%bx,%si),%al
     295:	00 0a                	add    %cl,(%bp,%si)
     297:	0a 00                	or     (%bx,%si),%al
     299:	00 0f                	add    %cl,(%bx)
     29b:	0a 00                	or     (%bx,%si),%al
     29d:	00 68 0a             	add    %ch,0xa(%bx,%si)
     2a0:	00 00                	add    %al,(%bx,%si)
     2a2:	80 0a 00             	orb    $0x0,(%bp,%si)
     2a5:	00 89 0a 00          	add    %cl,0xa(%bx,%di)
     2a9:	00 9d 0a 00          	add    %bl,0xa(%di)
     2ad:	00 d3                	add    %dl,%bl
     2af:	0a 00                	or     (%bx,%si),%al
     2b1:	00 01                	add    %al,(%bx,%di)
     2b3:	0b 00                	or     (%bx,%si),%ax
     2b5:	00 12                	add    %dl,(%bp,%si)
     2b7:	0b 00                	or     (%bx,%si),%ax
     2b9:	00 22                	add    %ah,(%bp,%si)
     2bb:	0b 00                	or     (%bx,%si),%ax
     2bd:	00 2a                	add    %ch,(%bp,%si)
     2bf:	0b 00                	or     (%bx,%si),%ax
     2c1:	00 3d                	add    %bh,(%di)
     2c3:	0b 00                	or     (%bx,%si),%ax
     2c5:	00 45 0b             	add    %al,0xb(%di)
     2c8:	00 00                	add    %al,(%bx,%si)
     2ca:	58                   	pop    %ax
     2cb:	0b 00                	or     (%bx,%si),%ax
     2cd:	00 60 0b             	add    %ah,0xb(%bx,%si)
     2d0:	00 00                	add    %al,(%bx,%si)
     2d2:	92                   	xchg   %ax,%dx
     2d3:	0b 00                	or     (%bx,%si),%ax
     2d5:	00 9a 0b 00          	add    %bl,0xb(%bp,%si)
     2d9:	00 d5                	add    %dl,%ch
     2db:	0b 00                	or     (%bx,%si),%ax
     2dd:	00 dd                	add    %bl,%ch
     2df:	0b 00                	or     (%bx,%si),%ax
     2e1:	00 18                	add    %bl,(%bx,%si)
     2e3:	0c 00                	or     $0x0,%al
     2e5:	00 20                	add    %ah,(%bx,%si)
     2e7:	0c 00                	or     $0x0,%al
     2e9:	00 47 0c             	add    %al,0xc(%bx)
     2ec:	00 00                	add    %al,(%bx,%si)
     2ee:	4f                   	dec    %di
     2ef:	0c 00                	or     $0x0,%al
     2f1:	00 81 0c 00          	add    %al,0xc(%bx,%di)
     2f5:	00 89 0c 00          	add    %cl,0xc(%bx,%di)
     2f9:	00 97 0c 00          	add    %dl,0xc(%bx)
     2fd:	00 0a                	add    %cl,(%bp,%si)
     2ff:	0d 00 00             	or     $0x0,%ax
     302:	84 0d                	test   %cl,(%di)
     304:	00 00                	add    %al,(%bx,%si)
     306:	a9 0d 00             	test   $0xd,%ax
     309:	00 d4                	add    %dl,%ah
     30b:	0d 00 00             	or     $0x0,%ax
     30e:	f9                   	stc
     30f:	0d 00 00             	or     $0x0,%ax
     312:	a4                   	movsb  %ds:(%si),%es:(%di)
     313:	0e                   	push   %cs
     314:	00 00                	add    %al,(%bx,%si)
     316:	b2 0e                	mov    $0xe,%dl
     318:	00 00                	add    %al,(%bx,%si)
     31a:	d0 0e 00 00          	rorb   $1,0x0
     31e:	f6 0e 00 00 06       	testb  $0x6,0x0
     323:	0f 00 00             	sldt   (%bx,%si)
     326:	0e                   	push   %cs
     327:	0f 00 00             	sldt   (%bx,%si)
     32a:	21 0f                	and    %cx,(%bx)
     32c:	00 00                	add    %al,(%bx,%si)
     32e:	29 0f                	sub    %cx,(%bx)
     330:	00 00                	add    %al,(%bx,%si)
     332:	3c 0f                	cmp    $0xf,%al
     334:	00 00                	add    %al,(%bx,%si)
     336:	44                   	inc    %sp
     337:	0f 00 00             	sldt   (%bx,%si)
     33a:	57                   	push   %di
     33b:	0f 00 00             	sldt   (%bx,%si)
     33e:	5f                   	pop    %di
     33f:	0f 00 00             	sldt   (%bx,%si)
     342:	9e                   	sahf
     343:	0f 00 00             	sldt   (%bx,%si)
     346:	a6                   	cmpsb  %es:(%di),%ds:(%si)
     347:	0f 00 00             	sldt   (%bx,%si)
     34a:	c7                   	(bad)
     34b:	0f 00 00             	sldt   (%bx,%si)
     34e:	ef                   	out    %ax,(%dx)
     34f:	0f 00 00             	sldt   (%bx,%si)
     352:	f7 0f 00 00          	testw  $0x0,(%bx)
     356:	26 10 00             	adc    %al,%es:(%bx,%si)
     359:	00 2e 10 00          	add    %ch,0x10
     35d:	00 5d 10             	add    %bl,0x10(%di)
     360:	00 00                	add    %al,(%bx,%si)
     362:	65 10 00             	adc    %al,%gs:(%bx,%si)
     365:	00 c4                	add    %al,%ah
     367:	10 00                	adc    %al,(%bx,%si)
     369:	00 d1                	add    %dl,%cl
     36b:	10 00                	adc    %al,(%bx,%si)
     36d:	00 f5                	add    %dh,%ch
     36f:	10 00                	adc    %al,(%bx,%si)
     371:	00 fe                	add    %bh,%dh
     373:	10 00                	adc    %al,(%bx,%si)
     375:	00 25                	add    %ah,(%di)
     377:	11 00                	adc    %ax,(%bx,%si)
     379:	00 55 11             	add    %dl,0x11(%di)
     37c:	00 00                	add    %al,(%bx,%si)
     37e:	5e                   	pop    %si
     37f:	11 00                	adc    %ax,(%bx,%si)
     381:	00 96 11 00          	add    %dl,0x11(%bp)
     385:	00 a3 11 00          	add    %ah,0x11(%bp,%di)
     389:	00 c7                	add    %al,%bh
     38b:	11 00                	adc    %ax,(%bx,%si)
     38d:	00 d0                	add    %dl,%al
     38f:	11 00                	adc    %ax,(%bx,%si)
     391:	00 f7                	add    %dh,%bh
     393:	11 00                	adc    %ax,(%bx,%si)
     395:	00 27                	add    %ah,(%bx)
     397:	12 00                	adc    (%bx,%si),%al
     399:	00 30                	add    %dh,(%bx,%si)
     39b:	12 00                	adc    (%bx,%si),%al
     39d:	00 4d 12             	add    %cl,0x12(%di)
     3a0:	00 00                	add    %al,(%bx,%si)
     3a2:	65 12 00             	adc    %gs:(%bx,%si),%al
     3a5:	00 71 12             	add    %dh,0x12(%bx,%di)
     3a8:	00 00                	add    %al,(%bx,%si)
     3aa:	93                   	xchg   %ax,%bx
     3ab:	12 00                	adc    (%bx,%si),%al
     3ad:	00 ad 12 00          	add    %ch,0x12(%di)
     3b1:	00 b6 12 00          	add    %dh,0x12(%bp)
     3b5:	00 c5                	add    %al,%ch
     3b7:	12 00                	adc    (%bx,%si),%al
     3b9:	00 e1                	add    %ah,%cl
     3bb:	12 00                	adc    (%bx,%si),%al
     3bd:	00 fb                	add    %bh,%bl
     3bf:	12 00                	adc    (%bx,%si),%al
     3c1:	00 04                	add    %al,(%si)
     3c3:	13 00                	adc    (%bx,%si),%ax
     3c5:	00 13                	add    %dl,(%bp,%di)
     3c7:	13 00                	adc    (%bx,%si),%ax
     3c9:	00 2f                	add    %ch,(%bx)
     3cb:	13 00                	adc    (%bx,%si),%ax
     3cd:	00 49 13             	add    %cl,0x13(%bx,%di)
     3d0:	00 00                	add    %al,(%bx,%si)
     3d2:	52                   	push   %dx
     3d3:	13 00                	adc    (%bx,%si),%ax
     3d5:	00 61 13             	add    %ah,0x13(%bx,%di)
     3d8:	00 00                	add    %al,(%bx,%si)
     3da:	7d 13                	jge    0x3ef
     3dc:	00 00                	add    %al,(%bx,%si)
     3de:	97                   	xchg   %ax,%di
     3df:	13 00                	adc    (%bx,%si),%ax
     3e1:	00 a0 13 00          	add    %ah,0x13(%bx,%si)
     3e5:	00 af 13 00          	add    %ch,0x13(%bx)
     3e9:	00 cb                	add    %cl,%bl
     3eb:	13 00                	adc    (%bx,%si),%ax
     3ed:	00 e7                	add    %ah,%bh
     3ef:	13 00                	adc    (%bx,%si),%ax
     3f1:	00 f0                	add    %dh,%al
     3f3:	13 00                	adc    (%bx,%si),%ax
     3f5:	00 12                	add    %dl,(%bp,%si)
     3f7:	14 00                	adc    $0x0,%al
     3f9:	00 2b                	add    %ch,(%bp,%di)
     3fb:	14 00                	adc    $0x0,%al
     3fd:	00 56 14             	add    %dl,0x14(%bp)
     400:	00 00                	add    %al,(%bx,%si)
     402:	60                   	pusha
     403:	14 00                	adc    $0x0,%al
     405:	00 71 14             	add    %dh,0x14(%bx,%di)
     408:	00 00                	add    %al,(%bx,%si)
     40a:	9c                   	pushf
     40b:	14 00                	adc    $0x0,%al
     40d:	00 a6 14 00          	add    %ah,0x14(%bp)
     411:	00 d0                	add    %dl,%al
     413:	14 00                	adc    $0x0,%al
     415:	00 d5                	add    %dl,%ch
     417:	14 00                	adc    $0x0,%al
     419:	00 46 15             	add    %al,0x15(%bp)
     41c:	00 00                	add    %al,(%bx,%si)
     41e:	9f                   	lahf
     41f:	15 00 00             	adc    $0x0,%ax
     422:	b9 15 00             	mov    $0x15,%cx
     425:	00 be 15 00          	add    %bh,0x15(%bp)
     429:	00 cc                	add    %cl,%ah
     42b:	15 00 00             	adc    $0x0,%ax
     42e:	d5 15                	aad    $0x15
     430:	00 00                	add    %al,(%bx,%si)
     432:	ee                   	out    %al,(%dx)
     433:	15 00 00             	adc    $0x0,%ax
     436:	fb                   	sti
     437:	15 00 00             	adc    $0x0,%ax
     43a:	14 16                	adc    $0x16,%al
     43c:	00 00                	add    %al,(%bx,%si)
     43e:	23 16 00 00          	and    0x0,%dx

; ===== window around 0x1660b =====
   165ac:	83 3e 15 1d 00       	cmpw   $0x0,0x1d15
   165b1:	0f 84 08 00          	je     0x165bd
   165b5:	b4 45                	mov    $0x45,%ah
   165b7:	8b 16 11 1d          	mov    0x1d11,%dx
   165bb:	cd 67                	int    $0x67
   165bd:	33 f6                	xor    %si,%si
   165bf:	80 bc 3f 1d 00       	cmpb   $0x0,0x1d3f(%si)
   165c4:	0f 84 15 00          	je     0x165dd
   165c8:	8b de                	mov    %si,%bx
   165ca:	d1 e3                	shl    $1,%bx
   165cc:	56                   	push   %si
   165cd:	8b 8f 2b 1d          	mov    0x1d2b(%bx),%cx
   165d1:	8e c1                	mov    %cx,%es
   165d3:	b4 49                	mov    $0x49,%ah
   165d5:	cd 21                	int    $0x21
   165d7:	5e                   	pop    %si
   165d8:	c6 84 3f 1d 00       	movb   $0x0,0x1d3f(%si)
   165dd:	46                   	inc    %si
   165de:	83 fe 0a             	cmp    $0xa,%si
   165e1:	72 dc                	jb     0x165bf
   165e3:	33 c9                	xor    %cx,%cx
   165e5:	8b f1                	mov    %cx,%si
   165e7:	80 bc 55 26 00       	cmpb   $0x0,0x2655(%si)
   165ec:	0f 84 0f 00          	je     0x165ff
   165f0:	c6 84 55 26 00       	movb   $0x0,0x2655(%si)
   165f5:	d1 e6                	shl    $1,%si
   165f7:	b4 49                	mov    $0x49,%ah
   165f9:	8e 84 5f 26          	mov    0x265f(%si),%es
   165fd:	cd 21                	int    $0x21
   165ff:	41                   	inc    %cx
   16600:	83 f9 0a             	cmp    $0xa,%cx
   16603:	72 e0                	jb     0x165e5
   16605:	80 3e 88 26 00       	cmpb   $0x0,0x2688
   1660a:	0f 84 17 00          	je     0x16625
   1660e:	8b 1e 89 26          	mov    0x2689,%bx
   16612:	b4 3e                	mov    $0x3e,%ah
   16614:	cd 21                	int    $0x21
   16616:	b4 49                	mov    $0x49,%ah
   16618:	8b 1e 8b 26          	mov    0x268b,%bx
   1661c:	8e c3                	mov    %bx,%es
   1661e:	cd 21                	int    $0x21
   16620:	c6 06 88 26 00       	movb   $0x0,0x2688
   16625:	80 3e 9b 29 00       	cmpb   $0x0,0x299b
   1662a:	0f 84 0d 00          	je     0x1663b
   1662e:	8b 1e 9c 29          	mov    0x299c,%bx
   16632:	b4 3e                	mov    $0x3e,%ah
   16634:	cd 21                	int    $0x21
   16636:	c6 06 9b 29 00       	movb   $0x0,0x299b
   1663b:	80 3e 49 1d 00       	cmpb   $0x0,0x1d49
   16640:	0f 84 0a 00          	je     0x1664e
   16644:	b8 03 00             	mov    $0x3,%ax
   16647:	cd 10                	int    $0x10
   16649:	c6 06 49 1d 00       	movb   $0x0,0x1d49
   1664e:	c6 06 06 1d 00       	movb   $0x0,0x1d06
   16653:	cb                   	lret
   16654:	55                   	push   %bp
   16655:	8b ec                	mov    %sp,%bp
   16657:	8b 46 0e             	mov    0xe(%bp),%ax
   1665a:	8e c0                	mov    %ax,%es
   1665c:	b9 01 00             	mov    $0x1,%cx
   1665f:	39 4e 0a             	cmp    %cx,0xa(%bp)
   16662:	0f 84 52 00          	je     0x166b8
   16666:	33 c9                	xor    %cx,%cx
   16668:	8b 76 0c             	mov    0xc(%bp),%si
   1666b:	03 76 06             	add    0x6(%bp),%si
   1666e:	26 8b 1c             	mov    %es:(%si),%bx
   16671:	51                   	push   %cx
   16672:	41                   	inc    %cx
   16673:	8b fe                	mov    %si,%di
   16675:	03 7e 08             	add    0x8(%bp),%di
   16678:	26 3b 1d             	cmp    %es:(%di),%bx
   1667b:	0f 8c 23 00          	jl     0x166a2
   1667f:	26 8b 1d             	mov    %es:(%di),%bx
   16682:	51                   	push   %cx
   16683:	56                   	push   %si
   16684:	57                   	push   %di
   16685:	2b 76 06             	sub    0x6(%bp),%si
   16688:	2b 7e 06             	sub    0x6(%bp),%di
   1668b:	8b 4e 08             	mov    0x8(%bp),%cx
   1668e:	26 8a 04             	mov    %es:(%si),%al
   16691:	26 8a 25             	mov    %es:(%di),%ah
   16694:	26 88 24             	mov    %ah,%es:(%si)
   16697:	26 88 05             	mov    %al,%es:(%di)
   1669a:	46                   	inc    %si
   1669b:	47                   	inc    %di
   1669c:	49                   	dec    %cx
   1669d:	75 ef                	jne    0x1668e
   1669f:	5f                   	pop    %di
   166a0:	5e                   	pop    %si
   166a1:	59                   	pop    %cx
   166a2:	03 7e 08             	add    0x8(%bp),%di
   166a5:	41                   	inc    %cx
   166a6:	3b 4e 0a             	cmp    0xa(%bp),%cx
   166a9:	7c cd                	jl     0x16678
   166ab:	59                   	pop    %cx
   166ac:	03 76 08             	add    0x8(%bp),%si
   166af:	41                   	inc    %cx
   166b0:	8b 56 0a             	mov    0xa(%bp),%dx
   166b3:	4a                   	dec    %dx
   166b4:	3b ca                	cmp    %dx,%cx
   166b6:	7c b6                	jl     0x1666e
   166b8:	5d                   	pop    %bp
   166b9:	ca 0a 00             	lret   $0xa
   166bc:	55                   	push   %bp
   166bd:	83 ec 04             	sub    $0x4,%sp
   166c0:	8b ec                	mov    %sp,%bp
   166c2:	66 33 c0             	xor    %eax,%eax
   166c5:	66 33 db             	xor    %ebx,%ebx
   166c8:	8b 46 0c             	mov    0xc(%bp),%ax
   166cb:	3b 46 10             	cmp    0x10(%bp),%ax
   166ce:	0f 85 1b 00          	jne    0x166ed
   166d2:	8b 46 0e             	mov    0xe(%bp),%ax
   166d5:	3b 46 0a             	cmp    0xa(%bp),%ax
   166d8:	7d 0a                	jge    0x166e4
   166da:	b8 7f 00             	mov    $0x7f,%ax
   166dd:	83 c4 04             	add    $0x4,%sp
   166e0:	5d                   	pop    %bp
   166e1:	ca 08 00             	lret   $0x8
   166e4:	33 c0                	xor    %ax,%ax
   166e6:	83 c4 04             	add    $0x4,%sp
   166e9:	5d                   	pop    %bp
   166ea:	ca 08 00             	lret   $0x8
   166ed:	2b 46 10             	sub    0x10(%bp),%ax
   166f0:	66 98                	cwtl
   166f2:	66 8b d8             	mov    %eax,%ebx
   166f5:	8b 46 0a             	mov    0xa(%bp),%ax
   166f8:	2b 46 0e             	sub    0xe(%bp),%ax
   166fb:	66 98                	cwtl
   166fd:	db e3                	fninit
   166ff:	66 c7 46 00 80 00 00 	movl   $0x80,0x0(%bp)
   16706:	00 
   16707:	db 46 00             	fildl  0x0(%bp)
   1670a:	66 89 46 00          	mov    %eax,0x0(%bp)
   1670e:	db 46 00             	fildl  0x0(%bp)
   16711:	66 89 5e 00          	mov    %ebx,0x0(%bp)
   16715:	db 46 00             	fildl  0x0(%bp)
   16718:	de f9                	fdivrp %st,%st(1)
   1671a:	d9 e8                	fld1
   1671c:	d9 f3                	fpatan
   1671e:	d9 eb                	fldpi
   16720:	de f9                	fdivrp %st,%st(1)
   16722:	de c9                	fmulp  %st,%st(1)
   16724:	db 5e 00             	fistpl 0x0(%bp)
   16727:	9b                   	fwait
   16728:	66 8b 46 00          	mov    0x0(%bp),%eax
   1672c:	05 40 00             	add    $0x40,%ax
   1672f:	8b 5e 0c             	mov    0xc(%bp),%bx
   16732:	3b 5e 10             	cmp    0x10(%bp),%bx
   16735:	0f 8d 03 00          	jge    0x1673c
   16739:	05 80 00             	add    $0x80,%ax
   1673c:	25 ff 00             	and    $0xff,%ax
   1673f:	83 c4 04             	add    $0x4,%sp
   16742:	5d                   	pop    %bp
   16743:	ca 08 00             	lret   $0x8
   16746:	55                   	push   %bp
   16747:	8b ec                	mov    %sp,%bp
   16749:	80 3e 8d 29 01       	cmpb   $0x1,0x298d
   1674e:	0f 84 22 00          	je     0x16774
   16752:	33 c0                	xor    %ax,%ax
   16754:	8e c0                	mov    %ax,%es
   16756:	fa                   	cli
   16757:	26 66 a1 20 00       	mov    %es:0x20,%eax
   1675c:	66 a3 97 29          	mov    %eax,0x2997
   16760:	b8 62 06             	mov    $0x662,%ax
   16763:	26 a3 20 00          	mov    %ax,%es:0x20
   16767:	b8 f6 12             	mov    $0x12f6,%ax
   1676a:	26 a3 22 00          	mov    %ax,%es:0x22

; ===== window around 0x16cf0 =====
   16c91:	26 8a 45 02          	mov    %es:0x2(%di),%al
   16c95:	2c 30                	sub    $0x30,%al
   16c97:	98                   	cbtw
   16c98:	03 d8                	add    %ax,%bx
   16c9a:	8b 46 0a             	mov    0xa(%bp),%ax
   16c9d:	3d ff ff             	cmp    $0xffff,%ax
   16ca0:	0f 85 03 00          	jne    0x16ca7
   16ca4:	89 5e 0a             	mov    %bx,0xa(%bp)
   16ca7:	8b fa                	mov    %dx,%di
   16ca9:	b0 49                	mov    $0x49,%al
   16cab:	8b ce                	mov    %si,%cx
   16cad:	f2 ae                	repnz scas %es:(%di),%al
   16caf:	0f 84 0c 00          	je     0x16cbf
   16cb3:	8b fa                	mov    %dx,%di
   16cb5:	b0 69                	mov    $0x69,%al
   16cb7:	8b ce                	mov    %si,%cx
   16cb9:	f2 ae                	repnz scas %es:(%di),%al
   16cbb:	0f 85 14 00          	jne    0x16cd3
   16cbf:	26 8a 05             	mov    %es:(%di),%al
   16cc2:	2c 30                	sub    $0x30,%al
   16cc4:	32 e4                	xor    %ah,%ah
   16cc6:	8b 5e 08             	mov    0x8(%bp),%bx
   16cc9:	83 fb ff             	cmp    $0xffff,%bx
   16ccc:	0f 85 03 00          	jne    0x16cd3
   16cd0:	89 46 08             	mov    %ax,0x8(%bp)
   16cd3:	8b fa                	mov    %dx,%di
   16cd5:	b0 44                	mov    $0x44,%al
   16cd7:	8b ce                	mov    %si,%cx
   16cd9:	f2 ae                	repnz scas %es:(%di),%al
   16cdb:	0f 84 0c 00          	je     0x16ceb
   16cdf:	8b fa                	mov    %dx,%di
   16ce1:	b0 64                	mov    $0x64,%al
   16ce3:	8b ce                	mov    %si,%cx
   16ce5:	f2 ae                	repnz scas %es:(%di),%al
   16ce7:	0f 85 14 00          	jne    0x16cff
   16ceb:	26 8a 05             	mov    %es:(%di),%al
   16cee:	2c 30                	sub    $0x30,%al
   16cf0:	32 e4                	xor    %ah,%ah
   16cf2:	8b 5e 06             	mov    0x6(%bp),%bx
   16cf5:	83 fb ff             	cmp    $0xffff,%bx
   16cf8:	0f 85 03 00          	jne    0x16cff
   16cfc:	89 46 06             	mov    %ax,0x6(%bp)
   16cff:	8b 46 0a             	mov    0xa(%bp),%ax
   16d02:	3d ff ff             	cmp    $0xffff,%ax
   16d05:	0f 84 17 00          	je     0x16d20
   16d09:	8b 46 08             	mov    0x8(%bp),%ax
   16d0c:	3d ff ff             	cmp    $0xffff,%ax
   16d0f:	0f 84 0d 00          	je     0x16d20
   16d13:	8b 46 06             	mov    0x6(%bp),%ax
   16d16:	3d ff ff             	cmp    $0xffff,%ax
   16d19:	0f 84 03 00          	je     0x16d20
   16d1d:	eb 0d                	jmp    0x16d2c
   16d1f:	90                   	nop
   16d20:	b8 05 00             	mov    $0x5,%ax
   16d23:	c6 06 9e 29 17       	movb   $0x17,0x299e
   16d28:	5d                   	pop    %bp
   16d29:	ca 0c 00             	lret   $0xc
   16d2c:	c6 06 81 27 00       	movb   $0x0,0x2781
   16d31:	8b 46 10             	mov    0x10(%bp),%ax
   16d34:	0b c0                	or     %ax,%ax
   16d36:	0f 84 47 00          	je     0x16d81
   16d3a:	b4 48                	mov    $0x48,%ah
   16d3c:	bb 00 04             	mov    $0x400,%bx
   16d3f:	cd 21                	int    $0x21
   16d41:	0f 83 0c 00          	jae    0x16d51
   16d45:	b8 07 00             	mov    $0x7,%ax
   16d48:	c6 06 9e 29 07       	movb   $0x7,0x299e
   16d4d:	5d                   	pop    %bp
   16d4e:	ca 0c 00             	lret   $0xc
   16d51:	a3 82 27             	mov    %ax,0x2782
   16d54:	8e c0                	mov    %ax,%es
   16d56:	33 c9                	xor    %cx,%cx
   16d58:	33 ff                	xor    %di,%di
   16d5a:	33 db                	xor    %bx,%bx
   16d5c:	8b c1                	mov    %cx,%ax
   16d5e:	2d 80 00             	sub    $0x80,%ax
   16d61:	f7 eb                	imul   %bx
   16d63:	be 40 00             	mov    $0x40,%si
   16d66:	f7 fe                	idiv   %si
   16d68:	05 80 00             	add    $0x80,%ax
   16d6b:	26 88 05             	mov    %al,%es:(%di)
   16d6e:	47                   	inc    %di
   16d6f:	43                   	inc    %bx
   16d70:	83 fb 40             	cmp    $0x40,%bx
   16d73:	7c e7                	jl     0x16d5c
   16d75:	41                   	inc    %cx
   16d76:	81 f9 00 01          	cmp    $0x100,%cx
   16d7a:	7c de                	jl     0x16d5a
   16d7c:	c6 06 81 27 01       	movb   $0x1,0x2781
   16d81:	c6 06 72 2e 00       	movb   $0x0,0x2e72
   16d86:	8b 46 0a             	mov    0xa(%bp),%ax
   16d89:	a3 7e 27             	mov    %ax,0x277e
   16d8c:	8b 4e 08             	mov    0x8(%bp),%cx
   16d8f:	88 0e 80 27          	mov    %cl,0x2780
   16d93:	b3 01                	mov    $0x1,%bl
   16d95:	d2 e3                	shl    %cl,%bl
   16d97:	88 1e 84 27          	mov    %bl,0x2784
   16d9b:	80 f3 ff             	xor    $0xff,%bl
   16d9e:	88 1e 69 2e          	mov    %bl,0x2e69
   16da2:	8b 46 06             	mov    0x6(%bp),%ax
   16da5:	a2 68 2e             	mov    %al,0x2e68
   16da8:	3c 00                	cmp    $0x0,%al
   16daa:	0f 85 15 00          	jne    0x16dc3
   16dae:	c7 06 6a 2e 87 00    	movw   $0x87,0x2e6a
   16db4:	c7 06 6c 2e 00 00    	movw   $0x0,0x2e6c
   16dba:	c7 06 6e 2e 01 00    	movw   $0x1,0x2e6e
   16dc0:	eb 5e                	jmp    0x16e20
   16dc2:	90                   	nop
   16dc3:	3c 01                	cmp    $0x1,%al
   16dc5:	0f 85 15 00          	jne    0x16dde
   16dc9:	c7 06 6a 2e 83 00    	movw   $0x83,0x2e6a
   16dcf:	c7 06 6c 2e 02 00    	movw   $0x2,0x2e6c
   16dd5:	c7 06 6e 2e 03 00    	movw   $0x3,0x2e6e
   16ddb:	eb 43                	jmp    0x16e20
   16ddd:	90                   	nop
   16dde:	3c 02                	cmp    $0x2,%al
   16de0:	0f 85 15 00          	jne    0x16df9
   16de4:	c7 06 6a 2e 81 00    	movw   $0x81,0x2e6a
   16dea:	c7 06 6c 2e 04 00    	movw   $0x4,0x2e6c
   16df0:	c7 06 6e 2e 05 00    	movw   $0x5,0x2e6e
   16df6:	eb 28                	jmp    0x16e20
   16df8:	90                   	nop
   16df9:	3c 03                	cmp    $0x3,%al
   16dfb:	0f 85 15 00          	jne    0x16e14
   16dff:	c7 06 6a 2e 82 00    	movw   $0x82,0x2e6a
   16e05:	c7 06 6c 2e 06 00    	movw   $0x6,0x2e6c
   16e0b:	c7 06 6e 2e 07 00    	movw   $0x7,0x2e6e
   16e11:	eb 0d                	jmp    0x16e20
   16e13:	90                   	nop
   16e14:	b8 04 00             	mov    $0x4,%ax
   16e17:	c6 06 9e 29 0d       	movb   $0xd,0x299e
   16e1c:	5d                   	pop    %bp
   16e1d:	ca 0c 00             	lret   $0xc
   16e20:	b9 2c 01             	mov    $0x12c,%cx
   16e23:	8b 16 7e 27          	mov    0x277e,%dx
   16e27:	83 c2 06             	add    $0x6,%dx
   16e2a:	b0 01                	mov    $0x1,%al
   16e2c:	ee                   	out    %al,(%dx)
   16e2d:	ec                   	in     (%dx),%al
   16e2e:	ec                   	in     (%dx),%al
   16e2f:	ec                   	in     (%dx),%al
   16e30:	ec                   	in     (%dx),%al
   16e31:	ec                   	in     (%dx),%al
   16e32:	ec                   	in     (%dx),%al
   16e33:	32 c0                	xor    %al,%al
   16e35:	ee                   	out    %al,(%dx)
   16e36:	83 c2 08             	add    $0x8,%dx
   16e39:	51                   	push   %cx
   16e3a:	33 c9                	xor    %cx,%cx
   16e3c:	49                   	dec    %cx
   16e3d:	0f 84 05 00          	je     0x16e46
   16e41:	ec                   	in     (%dx),%al
   16e42:	0a c0                	or     %al,%al
   16e44:	79 f6                	jns    0x16e3c
   16e46:	59                   	pop    %cx
   16e47:	83 ea 04             	sub    $0x4,%dx
   16e4a:	ec                   	in     (%dx),%al
   16e4b:	3c aa                	cmp    $0xaa,%al
   16e4d:	0f 84 0f 00          	je     0x16e60
