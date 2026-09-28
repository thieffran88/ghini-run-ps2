; ===== WINDOW 0x17E17 =====
   17dbc:	0b db                	or     %bx,%bx
   17dbe:	74 07                	je     0x17dc7
   17dc0:	b4 00                	mov    $0x0,%ah
   17dc2:	e8 4c 00             	call   0x17e11
   17dc5:	eb 0f                	jmp    0x17dd6
   17dc7:	f6 06 fc 37 01       	testb  $0x1,0x37fc
   17dcc:	74 40                	je     0x17e0e
   17dce:	b8 06 44             	mov    $0x4406,%ax
   17dd1:	cd 21                	int    $0x21
   17dd3:	98                   	cbtw
   17dd4:	f7 d0                	not    %ax
   17dd6:	5d                   	pop    %bp
   17dd7:	ca 02 00             	lret   $0x2
   17dda:	55                   	push   %bp
   17ddb:	8b ec                	mov    %sp,%bp
   17ddd:	56                   	push   %si
   17dde:	8b 5e 08             	mov    0x8(%bp),%bx
   17de1:	e8 7f 38             	call   0x1b663
   17de4:	75 03                	jne    0x17de9
   17de6:	e9 a1 3f             	jmp    0x1bd8a
   17de9:	8b 5e 06             	mov    0x6(%bp),%bx
   17dec:	4b                   	dec    %bx
   17ded:	81 fb 02 00          	cmp    $0x2,%bx
   17df1:	72 03                	jb     0x17df6
   17df3:	e9 61 3f             	jmp    0x1bd57
   17df6:	03 db                	add    %bx,%bx
   17df8:	33 c0                	xor    %ax,%ax
   17dfa:	99                   	cwtd
   17dfb:	2e 03 b7 1f 04       	add    %cs:0x41f(%bx),%si
   17e00:	2e ff a7 23 04       	jmp    *%cs:0x423(%bx)
   17e05:	ad                   	lods   %ds:(%si),%ax
   17e06:	eb 01                	jmp    0x17e09
   17e08:	ac                   	lods   %ds:(%si),%al
   17e09:	5e                   	pop    %si
   17e0a:	5d                   	pop    %bp
   17e0b:	ca 04 00             	lret   $0x4
   17e0e:	e9 79 3f             	jmp    0x1bd8a
   17e11:	56                   	push   %si
   17e12:	e8 4e 38             	call   0x1b663
   17e15:	74 f7                	je     0x17e0e
   17e17:	e8 3c 15             	call   0x19356
   17e1a:	5e                   	pop    %si
   17e1b:	c3                   	ret
   17e1c:	56                   	push   %si
   17e1d:	57                   	push   %di
   17e1e:	06                   	push   %es
   17e1f:	e9 87 00             	jmp    0x17ea9
   17e22:	56                   	push   %si
   17e23:	57                   	push   %di
   17e24:	06                   	push   %es
   17e25:	56                   	push   %si
   17e26:	e8 3a 38             	call   0x1b663
   17e29:	5b                   	pop    %bx
   17e2a:	74 e2                	je     0x17e0e
   17e2c:	f6 04 24             	testb  $0x24,(%si)
   17e2f:	75 03                	jne    0x17e34
   17e31:	e9 a3 00             	jmp    0x17ed7
   17e34:	a8 04                	test   $0x4,%al
   17e36:	75 12                	jne    0x17e4a
   17e38:	f6 04 20             	testb  $0x20,(%si)
   17e3b:	74 03                	je     0x17e40
   17e3d:	e9 9a 00             	jmp    0x17eda
   17e40:	1e                   	push   %ds
   17e41:	07                   	pop    %es
   17e42:	8d 7c 13             	lea    0x13(%si),%di
   17e45:	8b 5c 06             	mov    0x6(%si),%bx
   17e48:	eb 62                	jmp    0x17eac
   17e4a:	0b db                	or     %bx,%bx
   17e4c:	75 56                	jne    0x17ea4
   17e4e:	f6 04 20             	testb  $0x20,(%si)
   17e51:	75 44                	jne    0x17e97
   17e53:	50                   	push   %ax
   17e54:	51                   	push   %cx
   17e55:	52                   	push   %dx
   17e56:	bb 02 00             	mov    $0x2,%bx
   17e59:	0c 08                	or     $0x8,%al
   17e5b:	a8 01                	test   $0x1,%al
   17e5d:	75 29                	jne    0x17e88
   17e5f:	53                   	push   %bx
   17e60:	57                   	push   %di
   17e61:	50                   	push   %ax
   17e62:	8b fc                	mov    %sp,%di
   17e64:	e8 b5 ff             	call   0x17e1c
   17e67:	58                   	pop    %ax
   17e68:	5f                   	pop    %di
   17e69:	5b                   	pop    %bx
   17e6a:	03 d8                	add    %ax,%bx
   17e6c:	e8 4e 00             	call   0x17ebd
   17e6f:	50                   	push   %ax
   17e70:	57                   	push   %di
   17e71:	9a 26 67 8b 14       	lcall  $0x148b,$0x6726
   17e76:	59                   	pop    %cx
   17e77:	e3 19                	jcxz   0x17e92
   17e79:	8b d9                	mov    %cx,%bx
   17e7b:	e8 9c 2e             	call   0x1ad1a
   17e7e:	89 0d                	mov    %cx,(%di)
   17e80:	89 5d 02             	mov    %bx,0x2(%di)
   17e83:	89 7f fe             	mov    %di,-0x2(%bx)
   17e86:	eb 0a                	jmp    0x17e92
   17e88:	53                   	push   %bx
   17e89:	03 1d                	add    (%di),%bx
   17e8b:	e8 2f 00             	call   0x17ebd
   17e8e:	5b                   	pop    %bx
   17e8f:	e8 8a ff             	call   0x17e1c
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

; ===== WINDOW 0x17EB6 =====
   17e61:	50                   	push   %ax
   17e62:	8b fc                	mov    %sp,%di
   17e64:	e8 b5 ff             	call   0x17e1c
   17e67:	58                   	pop    %ax
   17e68:	5f                   	pop    %di
   17e69:	5b                   	pop    %bx
   17e6a:	03 d8                	add    %ax,%bx
   17e6c:	e8 4e 00             	call   0x17ebd
   17e6f:	50                   	push   %ax
   17e70:	57                   	push   %di
   17e71:	9a 26 67 8b 14       	lcall  $0x148b,$0x6726
   17e76:	59                   	pop    %cx
   17e77:	e3 19                	jcxz   0x17e92
   17e79:	8b d9                	mov    %cx,%bx
   17e7b:	e8 9c 2e             	call   0x1ad1a
   17e7e:	89 0d                	mov    %cx,(%di)
   17e80:	89 5d 02             	mov    %bx,0x2(%di)
   17e83:	89 7f fe             	mov    %di,-0x2(%bx)
   17e86:	eb 0a                	jmp    0x17e92
   17e88:	53                   	push   %bx
   17e89:	03 1d                	add    (%di),%bx
   17e8b:	e8 2f 00             	call   0x17ebd
   17e8e:	5b                   	pop    %bx
   17e8f:	e8 8a ff             	call   0x17e1c
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

; ===== WINDOW 0x19356 =====
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

; ===== WINDOW 0x1944B =====
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
   194e0:	0b f6                	or     %si,%si
   194e2:	74 4f                	je     0x19533
   194e4:	f6 44 03 80          	testb  $0x80,0x3(%si)
   194e8:	74 1e                	je     0x19508
   194ea:	b0 0d                	mov    $0xd,%al
   194ec:	e8 85 ff             	call   0x19474
   194ef:	80 7c 03 fe          	cmpb   $0xfe,0x3(%si)
   194f3:	74 11                	je     0x19506
   194f5:	80 7c 03 fc          	cmpb   $0xfc,0x3(%si)
   194f9:	7f 06                	jg     0x19501
   194fb:	80 7c 03 fa          	cmpb   $0xfa,0x3(%si)
   194ff:	7f 05                	jg     0x19506
   19501:	b0 0a                	mov    $0xa,%al
   19503:	e8 6e ff             	call   0x19474
   19506:	eb 30                	jmp    0x19538
   19508:	80 3c 04             	cmpb   $0x4,(%si)
   1950b:	75 1a                	jne    0x19527
   1950d:	f6 06 62 37 04       	testb  $0x4,0x3762
   19512:	74 13                	je     0x19527
   19514:	8b 5c 06             	mov    0x6(%si),%bx
   19517:	2b 5c 10             	sub    0x10(%si),%bx
   1951a:	83 eb 02             	sub    $0x2,%bx
   1951d:	b0 20                	mov    $0x20,%al
   1951f:	74 06                	je     0x19527
   19521:	e8 50 ff             	call   0x19474
   19524:	4b                   	dec    %bx
   19525:	eb f8                	jmp    0x1951f
   19527:	b0 0d                	mov    $0xd,%al
   19529:	e8 48 ff             	call   0x19474
   1952c:	b0 0a                	mov    $0xa,%al

; ===== WINDOW 0x1E550 =====
   1e502:	73 13                	jae    0x1e517
   1e504:	42                   	inc    %dx
   1e505:	40                   	inc    %ax
   1e506:	8a f0                	mov    %al,%dh
   1e508:	e8 fd ed             	call   0x1d308
   1e50b:	93                   	xchg   %ax,%bx
   1e50c:	83 7e 06 00          	cmpw   $0x0,0x6(%bp)
   1e510:	75 01                	jne    0x1e513
   1e512:	93                   	xchg   %ax,%bx
   1e513:	5d                   	pop    %bp
   1e514:	ca 06 00             	lret   $0x6
   1e517:	e9 3d d8             	jmp    0x1bd57
   1e51a:	53                   	push   %bx
   1e51b:	51                   	push   %cx
   1e51c:	56                   	push   %si
   1e51d:	57                   	push   %di
   1e51e:	8a 4f 08             	mov    0x8(%bx),%cl
   1e521:	32 ed                	xor    %ch,%ch
   1e523:	8b 7f 0c             	mov    0xc(%bx),%di
   1e526:	33 f6                	xor    %si,%si
   1e528:	8b c7                	mov    %di,%ax
   1e52a:	f7 67 0e             	mulw   0xe(%bx)
   1e52d:	8b f8                	mov    %ax,%di
   1e52f:	8b c6                	mov    %si,%ax
   1e531:	8b f2                	mov    %dx,%si
   1e533:	f7 67 0e             	mulw   0xe(%bx)
   1e536:	72 0d                	jb     0x1e545
   1e538:	03 f0                	add    %ax,%si
   1e53a:	72 09                	jb     0x1e545
   1e53c:	83 c3 04             	add    $0x4,%bx
   1e53f:	e2 e7                	loop   0x1e528
   1e541:	8b c7                	mov    %di,%ax
   1e543:	8b d6                	mov    %si,%dx
   1e545:	5f                   	pop    %di
   1e546:	5e                   	pop    %si
   1e547:	59                   	pop    %cx
   1e548:	5b                   	pop    %bx
   1e549:	c3                   	ret
   1e54a:	e9 0a d8             	jmp    0x1bd57
   1e54d:	e9 3a d8             	jmp    0x1bd8a
   1e550:	55                   	push   %bp
   1e551:	8b ec                	mov    %sp,%bp
   1e553:	56                   	push   %si
   1e554:	57                   	push   %di
   1e555:	06                   	push   %es
   1e556:	1e                   	push   %ds
   1e557:	07                   	pop    %es
   1e558:	8b 4e 08             	mov    0x8(%bp),%cx
   1e55b:	8b 5e 06             	mov    0x6(%bp),%bx
   1e55e:	33 f6                	xor    %si,%si
   1e560:	0b db                	or     %bx,%bx
   1e562:	74 15                	je     0x1e579
   1e564:	80 fb ff             	cmp    $0xff,%bl
   1e567:	74 10                	je     0x1e579
   1e569:	e8 f7 d0             	call   0x1b663
   1e56c:	74 df                	je     0x1e54d
   1e56e:	8b 44 10             	mov    0x10(%si),%ax
   1e571:	a3 1c 38             	mov    %ax,0x381c
   1e574:	f6 04 0a             	testb  $0xa,(%si)
   1e577:	75 53                	jne    0x1e5cc
   1e579:	89 36 c3 40          	mov    %si,0x40c3
   1e57d:	0b c9                	or     %cx,%cx
   1e57f:	78 c9                	js     0x1e54a
   1e581:	8b d9                	mov    %cx,%bx
   1e583:	e8 63 c9             	call   0x1aee9
   1e586:	e3 36                	jcxz   0x1e5be
   1e588:	53                   	push   %bx
   1e589:	0b f6                	or     %si,%si
   1e58b:	74 24                	je     0x1e5b1
   1e58d:	f6 04 20             	testb  $0x20,(%si)
   1e590:	74 1f                	je     0x1e5b1
   1e592:	89 16 f8 3a          	mov    %dx,0x3af8
   1e596:	8c 1e fa 3a          	mov    %ds,0x3afa
   1e59a:	8b d9                	mov    %cx,%bx
   1e59c:	b8 04 0a             	mov    $0xa04,%ax
   1e59f:	51                   	push   %cx
   1e5a0:	e8 b3 ad             	call   0x19356
   1e5a3:	59                   	pop    %cx
   1e5a4:	5b                   	pop    %bx
   1e5a5:	3b c8                	cmp    %ax,%cx
   1e5a7:	74 15                	je     0x1e5be
   1e5a9:	92                   	xchg   %ax,%dx
   1e5aa:	33 c9                	xor    %cx,%cx
   1e5ac:	e8 e0 c9             	call   0x1af8f
   1e5af:	eb 0d                	jmp    0x1e5be
   1e5b1:	8b fa                	mov    %dx,%di
   1e5b3:	e8 95 ae             	call   0x1944b
   1e5b6:	74 17                	je     0x1e5cf
   1e5b8:	72 12                	jb     0x1e5cc
   1e5ba:	aa                   	stos   %al,%es:(%di)
   1e5bb:	e2 f6                	loop   0x1e5b3
   1e5bd:	5b                   	pop    %bx
   1e5be:	93                   	xchg   %ax,%bx
   1e5bf:	c7 06 c3 40 00 00    	movw   $0x0,0x40c3
   1e5c5:	07                   	pop    %es
   1e5c6:	5f                   	pop    %di
   1e5c7:	5e                   	pop    %si
   1e5c8:	5d                   	pop    %bp
   1e5c9:	ca 04 00             	lret   $0x4
   1e5cc:	e9 d6 d7             	jmp    0x1bda5
   1e5cf:	e9 38 e4             	jmp    0x1ca0a
   1e5d2:	55                   	push   %bp
   1e5d3:	8b ec                	mov    %sp,%bp
   1e5d5:	56                   	push   %si
   1e5d6:	8b 5e 06             	mov    0x6(%bp),%bx
   1e5d9:	e8 c5 04             	call   0x1eaa1
   1e5dc:	e8 84 d0             	call   0x1b663
   1e5df:	74 24                	je     0x1e605
   1e5e1:	8b 44 10             	mov    0x10(%si),%ax
   1e5e4:	a3 1c 38             	mov    %ax,0x381c
   1e5e7:	f6 04 0a             	testb  $0xa,(%si)
   1e5ea:	75 1c                	jne    0x1e608
   1e5ec:	f6 04 20             	testb  $0x20,(%si)
   1e5ef:	75 1a                	jne    0x1e60b
   1e5f1:	89 36 c3 40          	mov    %si,0x40c3
   1e5f5:	c7 06 15 38 5e 6b    	movw   $0x6b5e,0x3815
   1e5fb:	c6 06 14 38 01       	movb   $0x1,0x3814
   1e600:	5e                   	pop    %si
   1e601:	5d                   	pop    %bp
   1e602:	ca 02 00             	lret   $0x2
   1e605:	e9 82 d7             	jmp    0x1bd8a
   1e608:	e9 9a d7             	jmp    0x1bda5
   1e60b:	e9 82 d7             	jmp    0x1bd90
   1e60e:	ba 20 2c             	mov    $0x2c20,%dx
   1e611:	80 3e aa 40 03       	cmpb   $0x3,0x40aa
   1e616:	75 02                	jne    0x1e61a
   1e618:	8a d6                	mov    %dh,%dl
   1e61a:	e8 11 00             	call   0x1e62e
   1e61d:	e8 f8 00             	call   0x1e718
   1e620:	be 99 40             	mov    $0x4099,%si
   1e623:	f6 06 aa 40 08       	testb  $0x8,0x40aa
   1e628:	74 03                	je     0x1e62d
   1e62a:	83 ee 04             	sub    $0x4,%si
   1e62d:	c3                   	ret
   1e62e:	57                   	push   %di
   1e62f:	06                   	push   %es
   1e630:	1e                   	push   %ds
   1e631:	07                   	pop    %es
   1e632:	e8 16 ae             	call   0x1944b
   1e635:	72 d1                	jb     0x1e608

; ===== WINDOW 0x1E5A0 =====
   1e548:	5b                   	pop    %bx
   1e549:	c3                   	ret
   1e54a:	e9 0a d8             	jmp    0x1bd57
   1e54d:	e9 3a d8             	jmp    0x1bd8a
   1e550:	55                   	push   %bp
   1e551:	8b ec                	mov    %sp,%bp
   1e553:	56                   	push   %si
   1e554:	57                   	push   %di
   1e555:	06                   	push   %es
   1e556:	1e                   	push   %ds
   1e557:	07                   	pop    %es
   1e558:	8b 4e 08             	mov    0x8(%bp),%cx
   1e55b:	8b 5e 06             	mov    0x6(%bp),%bx
   1e55e:	33 f6                	xor    %si,%si
   1e560:	0b db                	or     %bx,%bx
   1e562:	74 15                	je     0x1e579
   1e564:	80 fb ff             	cmp    $0xff,%bl
   1e567:	74 10                	je     0x1e579
   1e569:	e8 f7 d0             	call   0x1b663
   1e56c:	74 df                	je     0x1e54d
   1e56e:	8b 44 10             	mov    0x10(%si),%ax
   1e571:	a3 1c 38             	mov    %ax,0x381c
   1e574:	f6 04 0a             	testb  $0xa,(%si)
   1e577:	75 53                	jne    0x1e5cc
   1e579:	89 36 c3 40          	mov    %si,0x40c3
   1e57d:	0b c9                	or     %cx,%cx
   1e57f:	78 c9                	js     0x1e54a
   1e581:	8b d9                	mov    %cx,%bx
   1e583:	e8 63 c9             	call   0x1aee9
   1e586:	e3 36                	jcxz   0x1e5be
   1e588:	53                   	push   %bx
   1e589:	0b f6                	or     %si,%si
   1e58b:	74 24                	je     0x1e5b1
   1e58d:	f6 04 20             	testb  $0x20,(%si)
   1e590:	74 1f                	je     0x1e5b1
   1e592:	89 16 f8 3a          	mov    %dx,0x3af8
   1e596:	8c 1e fa 3a          	mov    %ds,0x3afa
   1e59a:	8b d9                	mov    %cx,%bx
   1e59c:	b8 04 0a             	mov    $0xa04,%ax
   1e59f:	51                   	push   %cx
   1e5a0:	e8 b3 ad             	call   0x19356
   1e5a3:	59                   	pop    %cx
   1e5a4:	5b                   	pop    %bx
   1e5a5:	3b c8                	cmp    %ax,%cx
   1e5a7:	74 15                	je     0x1e5be
   1e5a9:	92                   	xchg   %ax,%dx
   1e5aa:	33 c9                	xor    %cx,%cx
   1e5ac:	e8 e0 c9             	call   0x1af8f
   1e5af:	eb 0d                	jmp    0x1e5be
   1e5b1:	8b fa                	mov    %dx,%di
   1e5b3:	e8 95 ae             	call   0x1944b
   1e5b6:	74 17                	je     0x1e5cf
   1e5b8:	72 12                	jb     0x1e5cc
   1e5ba:	aa                   	stos   %al,%es:(%di)
   1e5bb:	e2 f6                	loop   0x1e5b3
   1e5bd:	5b                   	pop    %bx
   1e5be:	93                   	xchg   %ax,%bx
   1e5bf:	c7 06 c3 40 00 00    	movw   $0x0,0x40c3
   1e5c5:	07                   	pop    %es
   1e5c6:	5f                   	pop    %di
   1e5c7:	5e                   	pop    %si
   1e5c8:	5d                   	pop    %bp
   1e5c9:	ca 04 00             	lret   $0x4
   1e5cc:	e9 d6 d7             	jmp    0x1bda5
   1e5cf:	e9 38 e4             	jmp    0x1ca0a
   1e5d2:	55                   	push   %bp
   1e5d3:	8b ec                	mov    %sp,%bp
   1e5d5:	56                   	push   %si
   1e5d6:	8b 5e 06             	mov    0x6(%bp),%bx
   1e5d9:	e8 c5 04             	call   0x1eaa1
   1e5dc:	e8 84 d0             	call   0x1b663
   1e5df:	74 24                	je     0x1e605
   1e5e1:	8b 44 10             	mov    0x10(%si),%ax
   1e5e4:	a3 1c 38             	mov    %ax,0x381c
   1e5e7:	f6 04 0a             	testb  $0xa,(%si)
   1e5ea:	75 1c                	jne    0x1e608
   1e5ec:	f6 04 20             	testb  $0x20,(%si)
   1e5ef:	75 1a                	jne    0x1e60b
   1e5f1:	89 36 c3 40          	mov    %si,0x40c3
   1e5f5:	c7 06 15 38 5e 6b    	movw   $0x6b5e,0x3815
   1e5fb:	c6 06 14 38 01       	movb   $0x1,0x3814
   1e600:	5e                   	pop    %si
   1e601:	5d                   	pop    %bp
   1e602:	ca 02 00             	lret   $0x2
   1e605:	e9 82 d7             	jmp    0x1bd8a
   1e608:	e9 9a d7             	jmp    0x1bda5
   1e60b:	e9 82 d7             	jmp    0x1bd90
   1e60e:	ba 20 2c             	mov    $0x2c20,%dx
   1e611:	80 3e aa 40 03       	cmpb   $0x3,0x40aa
   1e616:	75 02                	jne    0x1e61a
   1e618:	8a d6                	mov    %dh,%dl
   1e61a:	e8 11 00             	call   0x1e62e
   1e61d:	e8 f8 00             	call   0x1e718
   1e620:	be 99 40             	mov    $0x4099,%si
   1e623:	f6 06 aa 40 08       	testb  $0x8,0x40aa
   1e628:	74 03                	je     0x1e62d
   1e62a:	83 ee 04             	sub    $0x4,%si
   1e62d:	c3                   	ret
   1e62e:	57                   	push   %di
   1e62f:	06                   	push   %es
   1e630:	1e                   	push   %ds
   1e631:	07                   	pop    %es
   1e632:	e8 16 ae             	call   0x1944b
   1e635:	72 d1                	jb     0x1e608
   1e637:	0a d2                	or     %dl,%dl
   1e639:	74 04                	je     0x1e63f
   1e63b:	3c 20                	cmp    $0x20,%al
   1e63d:	74 f3                	je     0x1e632
   1e63f:	be 5e 37             	mov    $0x375e,%si
   1e642:	bf 3b 3e             	mov    $0x3e3b,%di
   1e645:	b1 ff                	mov    $0xff,%cl
   1e647:	3c 22                	cmp    $0x22,%al
   1e649:	75 10                	jne    0x1e65b
   1e64b:	80 fa 2c             	cmp    $0x2c,%dl
   1e64e:	75 0b                	jne    0x1e65b
   1e650:	e8 8d 00             	call   0x1e6e0
   1e653:	ba 22 22             	mov    $0x2222,%dx
   1e656:	e8 f2 ad             	call   0x1944b
   1e659:	72 3a                	jb     0x1e695
   1e65b:	80 fe 22             	cmp    $0x22,%dh
   1e65e:	74 21                	je     0x1e681
   1e660:	3c 0d                	cmp    $0xd,%al
   1e662:	74 46                	je     0x1e6aa
   1e664:	3c 0a                	cmp    $0xa,%al
   1e666:	75 19                	jne    0x1e681
   1e668:	80 fa 2c             	cmp    $0x2c,%dl
   1e66b:	74 03                	je     0x1e670
   1e66d:	e8 70 00             	call   0x1e6e0
   1e670:	e8 d8 ad             	call   0x1944b
   1e673:	72 20                	jb     0x1e695
   1e675:	3c 0a                	cmp    $0xa,%al
   1e677:	74 ef                	je     0x1e668
   1e679:	3c 0d                	cmp    $0xd,%al
   1e67b:	75 04                	jne    0x1e681
   1e67d:	0a d2                	or     %dl,%dl
   1e67f:	75 0f                	jne    0x1e690
   1e681:	0a c0                	or     %al,%al
   1e683:	74 0b                	je     0x1e690
   1e685:	3a c6                	cmp    %dh,%al
   1e687:	74 0c                	je     0x1e695

; ===== WINDOW 0x1E62E =====
   1e5c5:	07                   	pop    %es
   1e5c6:	5f                   	pop    %di
   1e5c7:	5e                   	pop    %si
   1e5c8:	5d                   	pop    %bp
   1e5c9:	ca 04 00             	lret   $0x4
   1e5cc:	e9 d6 d7             	jmp    0x1bda5
   1e5cf:	e9 38 e4             	jmp    0x1ca0a
   1e5d2:	55                   	push   %bp
   1e5d3:	8b ec                	mov    %sp,%bp
   1e5d5:	56                   	push   %si
   1e5d6:	8b 5e 06             	mov    0x6(%bp),%bx
   1e5d9:	e8 c5 04             	call   0x1eaa1
   1e5dc:	e8 84 d0             	call   0x1b663
   1e5df:	74 24                	je     0x1e605
   1e5e1:	8b 44 10             	mov    0x10(%si),%ax
   1e5e4:	a3 1c 38             	mov    %ax,0x381c
   1e5e7:	f6 04 0a             	testb  $0xa,(%si)
   1e5ea:	75 1c                	jne    0x1e608
   1e5ec:	f6 04 20             	testb  $0x20,(%si)
   1e5ef:	75 1a                	jne    0x1e60b
   1e5f1:	89 36 c3 40          	mov    %si,0x40c3
   1e5f5:	c7 06 15 38 5e 6b    	movw   $0x6b5e,0x3815
   1e5fb:	c6 06 14 38 01       	movb   $0x1,0x3814
   1e600:	5e                   	pop    %si
   1e601:	5d                   	pop    %bp
   1e602:	ca 02 00             	lret   $0x2
   1e605:	e9 82 d7             	jmp    0x1bd8a
   1e608:	e9 9a d7             	jmp    0x1bda5
   1e60b:	e9 82 d7             	jmp    0x1bd90
   1e60e:	ba 20 2c             	mov    $0x2c20,%dx
   1e611:	80 3e aa 40 03       	cmpb   $0x3,0x40aa
   1e616:	75 02                	jne    0x1e61a
   1e618:	8a d6                	mov    %dh,%dl
   1e61a:	e8 11 00             	call   0x1e62e
   1e61d:	e8 f8 00             	call   0x1e718
   1e620:	be 99 40             	mov    $0x4099,%si
   1e623:	f6 06 aa 40 08       	testb  $0x8,0x40aa
   1e628:	74 03                	je     0x1e62d
   1e62a:	83 ee 04             	sub    $0x4,%si
   1e62d:	c3                   	ret
   1e62e:	57                   	push   %di
   1e62f:	06                   	push   %es
   1e630:	1e                   	push   %ds
   1e631:	07                   	pop    %es
   1e632:	e8 16 ae             	call   0x1944b
   1e635:	72 d1                	jb     0x1e608
   1e637:	0a d2                	or     %dl,%dl
   1e639:	74 04                	je     0x1e63f
   1e63b:	3c 20                	cmp    $0x20,%al
   1e63d:	74 f3                	je     0x1e632
   1e63f:	be 5e 37             	mov    $0x375e,%si
   1e642:	bf 3b 3e             	mov    $0x3e3b,%di
   1e645:	b1 ff                	mov    $0xff,%cl
   1e647:	3c 22                	cmp    $0x22,%al
   1e649:	75 10                	jne    0x1e65b
   1e64b:	80 fa 2c             	cmp    $0x2c,%dl
   1e64e:	75 0b                	jne    0x1e65b
   1e650:	e8 8d 00             	call   0x1e6e0
   1e653:	ba 22 22             	mov    $0x2222,%dx
   1e656:	e8 f2 ad             	call   0x1944b
   1e659:	72 3a                	jb     0x1e695
   1e65b:	80 fe 22             	cmp    $0x22,%dh
   1e65e:	74 21                	je     0x1e681
   1e660:	3c 0d                	cmp    $0xd,%al
   1e662:	74 46                	je     0x1e6aa
   1e664:	3c 0a                	cmp    $0xa,%al
   1e666:	75 19                	jne    0x1e681
   1e668:	80 fa 2c             	cmp    $0x2c,%dl
   1e66b:	74 03                	je     0x1e670
   1e66d:	e8 70 00             	call   0x1e6e0
   1e670:	e8 d8 ad             	call   0x1944b
   1e673:	72 20                	jb     0x1e695
   1e675:	3c 0a                	cmp    $0xa,%al
   1e677:	74 ef                	je     0x1e668
   1e679:	3c 0d                	cmp    $0xd,%al
   1e67b:	75 04                	jne    0x1e681
   1e67d:	0a d2                	or     %dl,%dl
   1e67f:	75 0f                	jne    0x1e690
   1e681:	0a c0                	or     %al,%al
   1e683:	74 0b                	je     0x1e690
   1e685:	3a c6                	cmp    %dh,%al
   1e687:	74 0c                	je     0x1e695
   1e689:	3a c2                	cmp    %dl,%al
   1e68b:	74 08                	je     0x1e695
   1e68d:	e8 50 00             	call   0x1e6e0
   1e690:	e8 b8 ad             	call   0x1944b
   1e693:	73 c6                	jae    0x1e65b
   1e695:	3c 2c                	cmp    $0x2c,%al
   1e697:	74 34                	je     0x1e6cd
   1e699:	e8 af ad             	call   0x1944b
   1e69c:	72 2f                	jb     0x1e6cd
   1e69e:	3c 20                	cmp    $0x20,%al
   1e6a0:	74 f7                	je     0x1e699
   1e6a2:	3c 2c                	cmp    $0x2c,%al
   1e6a4:	74 27                	je     0x1e6cd
   1e6a6:	3c 0d                	cmp    $0xd,%al
   1e6a8:	75 18                	jne    0x1e6c2
   1e6aa:	8b 1e c3 40          	mov    0x40c3,%bx
   1e6ae:	8a 47 03             	mov    0x3(%bx),%al
   1e6b1:	3c f7                	cmp    $0xf7,%al
   1e6b3:	74 04                	je     0x1e6b9
   1e6b5:	0a c0                	or     %al,%al
   1e6b7:	78 14                	js     0x1e6cd
   1e6b9:	e8 8f ad             	call   0x1944b
   1e6bc:	72 0f                	jb     0x1e6cd
   1e6be:	3c 0a                	cmp    $0xa,%al
   1e6c0:	74 0b                	je     0x1e6cd
   1e6c2:	56                   	push   %si
   1e6c3:	8b 36 c3 40          	mov    0x40c3,%si
   1e6c7:	b4 0e                	mov    $0xe,%ah
   1e6c9:	e8 8a ac             	call   0x19356
   1e6cc:	5e                   	pop    %si
   1e6cd:	32 c0                	xor    %al,%al
   1e6cf:	aa                   	stos   %al,%es:(%di)
   1e6d0:	bb 3b 3e             	mov    $0x3e3b,%bx
   1e6d3:	e8 58 c8             	call   0x1af2e
   1e6d6:	40                   	inc    %ax
   1e6d7:	a3 5e 37             	mov    %ax,0x375e
   1e6da:	e8 2a 00             	call   0x1e707
   1e6dd:	07                   	pop    %es
   1e6de:	5f                   	pop    %di
   1e6df:	c3                   	ret
   1e6e0:	0a c0                	or     %al,%al
   1e6e2:	74 22                	je     0x1e706
   1e6e4:	aa                   	stos   %al,%es:(%di)
   1e6e5:	fe c9                	dec    %cl
   1e6e7:	75 1d                	jne    0x1e706
   1e6e9:	c7 06 5e 37 ff 00    	movw   $0xff,0x375e
   1e6ef:	52                   	push   %dx
   1e6f0:	e8 14 00             	call   0x1e707
   1e6f3:	75 0b                	jne    0x1e700
   1e6f5:	bb ff 00             	mov    $0xff,%bx
   1e6f8:	8b 54 02             	mov    0x2(%si),%dx
   1e6fb:	e8 47 c8             	call   0x1af45
   1e6fe:	8b f3                	mov    %bx,%si
   1e700:	5a                   	pop    %dx
   1e701:	bf 3b 3e             	mov    $0x3e3b,%di
   1e704:	b1 ff                	mov    $0xff,%cl
   1e706:	c3                   	ret
   1e707:	bb 5e 37             	mov    $0x375e,%bx

; ===== WINDOW 0x1E6C9 =====
   1e670:	e8 d8 ad             	call   0x1944b
   1e673:	72 20                	jb     0x1e695
   1e675:	3c 0a                	cmp    $0xa,%al
   1e677:	74 ef                	je     0x1e668
   1e679:	3c 0d                	cmp    $0xd,%al
   1e67b:	75 04                	jne    0x1e681
   1e67d:	0a d2                	or     %dl,%dl
   1e67f:	75 0f                	jne    0x1e690
   1e681:	0a c0                	or     %al,%al
   1e683:	74 0b                	je     0x1e690
   1e685:	3a c6                	cmp    %dh,%al
   1e687:	74 0c                	je     0x1e695
   1e689:	3a c2                	cmp    %dl,%al
   1e68b:	74 08                	je     0x1e695
   1e68d:	e8 50 00             	call   0x1e6e0
   1e690:	e8 b8 ad             	call   0x1944b
   1e693:	73 c6                	jae    0x1e65b
   1e695:	3c 2c                	cmp    $0x2c,%al
   1e697:	74 34                	je     0x1e6cd
   1e699:	e8 af ad             	call   0x1944b
   1e69c:	72 2f                	jb     0x1e6cd
   1e69e:	3c 20                	cmp    $0x20,%al
   1e6a0:	74 f7                	je     0x1e699
   1e6a2:	3c 2c                	cmp    $0x2c,%al
   1e6a4:	74 27                	je     0x1e6cd
   1e6a6:	3c 0d                	cmp    $0xd,%al
   1e6a8:	75 18                	jne    0x1e6c2
   1e6aa:	8b 1e c3 40          	mov    0x40c3,%bx
   1e6ae:	8a 47 03             	mov    0x3(%bx),%al
   1e6b1:	3c f7                	cmp    $0xf7,%al
   1e6b3:	74 04                	je     0x1e6b9
   1e6b5:	0a c0                	or     %al,%al
   1e6b7:	78 14                	js     0x1e6cd
   1e6b9:	e8 8f ad             	call   0x1944b
   1e6bc:	72 0f                	jb     0x1e6cd
   1e6be:	3c 0a                	cmp    $0xa,%al
   1e6c0:	74 0b                	je     0x1e6cd
   1e6c2:	56                   	push   %si
   1e6c3:	8b 36 c3 40          	mov    0x40c3,%si
   1e6c7:	b4 0e                	mov    $0xe,%ah
   1e6c9:	e8 8a ac             	call   0x19356
   1e6cc:	5e                   	pop    %si
   1e6cd:	32 c0                	xor    %al,%al
   1e6cf:	aa                   	stos   %al,%es:(%di)
   1e6d0:	bb 3b 3e             	mov    $0x3e3b,%bx
   1e6d3:	e8 58 c8             	call   0x1af2e
   1e6d6:	40                   	inc    %ax
   1e6d7:	a3 5e 37             	mov    %ax,0x375e
   1e6da:	e8 2a 00             	call   0x1e707
   1e6dd:	07                   	pop    %es
   1e6de:	5f                   	pop    %di
   1e6df:	c3                   	ret
   1e6e0:	0a c0                	or     %al,%al
   1e6e2:	74 22                	je     0x1e706
   1e6e4:	aa                   	stos   %al,%es:(%di)
   1e6e5:	fe c9                	dec    %cl
   1e6e7:	75 1d                	jne    0x1e706
   1e6e9:	c7 06 5e 37 ff 00    	movw   $0xff,0x375e
   1e6ef:	52                   	push   %dx
   1e6f0:	e8 14 00             	call   0x1e707
   1e6f3:	75 0b                	jne    0x1e700
   1e6f5:	bb ff 00             	mov    $0xff,%bx
   1e6f8:	8b 54 02             	mov    0x2(%si),%dx
   1e6fb:	e8 47 c8             	call   0x1af45
   1e6fe:	8b f3                	mov    %bx,%si
   1e700:	5a                   	pop    %dx
   1e701:	bf 3b 3e             	mov    $0x3e3b,%di
   1e704:	b1 ff                	mov    $0xff,%cl
   1e706:	c3                   	ret
   1e707:	bb 5e 37             	mov    $0x375e,%bx
   1e70a:	3b de                	cmp    %si,%bx
   1e70c:	74 09                	je     0x1e717
   1e70e:	56                   	push   %si
   1e70f:	53                   	push   %bx
   1e710:	9a 37 63 8b 14       	lcall  $0x148b,$0x6337
   1e715:	8b f0                	mov    %ax,%si
   1e717:	c3                   	ret
   1e718:	56                   	push   %si
   1e719:	57                   	push   %di
   1e71a:	06                   	push   %es
   1e71b:	56                   	push   %si
   1e71c:	8b 74 02             	mov    0x2(%si),%si
   1e71f:	80 3e aa 40 03       	cmpb   $0x3,0x40aa
   1e724:	74 05                	je     0x1e72b
   1e726:	e8 39 04             	call   0x1eb62
   1e729:	eb 24                	jmp    0x1e74f
   1e72b:	1e                   	push   %ds
   1e72c:	07                   	pop    %es
   1e72d:	e8 6e 05             	call   0x1ec9e
   1e730:	5f                   	pop    %di
   1e731:	57                   	push   %di
   1e732:	8b c2                	mov    %dx,%ax
   1e734:	2b 45 02             	sub    0x2(%di),%ax
   1e737:	8b d9                	mov    %cx,%bx
   1e739:	e8 ad c7             	call   0x1aee9
   1e73c:	8b 7f 02             	mov    0x2(%bx),%di
   1e73f:	5e                   	pop    %si
   1e740:	56                   	push   %si
   1e741:	8b 74 02             	mov    0x2(%si),%si
   1e744:	03 f0                	add    %ax,%si
   1e746:	41                   	inc    %cx
   1e747:	d1 e9                	shr    $1,%cx
   1e749:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
   1e74b:	89 1e 99 40          	mov    %bx,0x4099
   1e74f:	5b                   	pop    %bx
   1e750:	e8 24 c8             	call   0x1af77
   1e753:	07                   	pop    %es
   1e754:	5f                   	pop    %di
   1e755:	5e                   	pop    %si
   1e756:	c3                   	ret
   1e757:	00 80 0e 14          	add    %al,0x140e(%bx,%si)
   1e75b:	38 01                	cmp    %al,(%bx,%di)
   1e75d:	9a b4 5b 8b 14       	lcall  $0x148b,$0x5bb4
   1e762:	c3                   	ret
   1e763:	00 eb                	add    %ch,%bl
   1e765:	6c                   	insb   (%dx),%es:(%di)
   1e766:	eb 6c                	jmp    0x1e7d4
   1e768:	eb 6c                	jmp    0x1e7d6
   1e76a:	14 0b                	adc    $0xb,%al
   1e76c:	14 0b                	adc    $0xb,%al
   1e76e:	dc 6c eb             	fsubrl -0x15(%si)
   1e771:	6c                   	insb   (%dx),%es:(%di)
   1e772:	eb 6c                	jmp    0x1e7e0
   1e774:	eb 6c                	jmp    0x1e7e2
   1e776:	53                   	push   %bx
   1e777:	57                   	push   %di
   1e778:	bb b2 6c             	mov    $0x6cb2,%bx
   1e77b:	bf 12 00             	mov    $0x12,%di
   1e77e:	53                   	push   %bx
   1e77f:	57                   	push   %di
   1e780:	2e ff 11             	call   *%cs:(%bx,%di)
   1e783:	5f                   	pop    %di
   1e784:	5b                   	pop    %bx
   1e785:	4f                   	dec    %di
   1e786:	4f                   	dec    %di
   1e787:	75 f5                	jne    0x1e77e
   1e789:	5f                   	pop    %di
   1e78a:	5b                   	pop    %bx
   1e78b:	c3                   	ret
   1e78c:	c6 06 ac 40 02       	movb   $0x2,0x40ac

; ===== WINDOW 0x1EA3E =====
   1e9f2:	86 e0                	xchg   %ah,%al
   1e9f4:	32 e4                	xor    %ah,%ah
   1e9f6:	d1 e0                	shl    $1,%ax
   1e9f8:	05 1e 38             	add    $0x381e,%ax
   1e9fb:	8b f8                	mov    %ax,%di
   1e9fd:	58                   	pop    %ax
   1e9fe:	c3                   	ret
   1e9ff:	50                   	push   %ax
   1ea00:	56                   	push   %si
   1ea01:	57                   	push   %di
   1ea02:	be ac 40             	mov    $0x40ac,%si
   1ea05:	bf 0c 00             	mov    $0xc,%di
   1ea08:	0a e4                	or     %ah,%ah
   1ea0a:	74 07                	je     0x1ea13
   1ea0c:	50                   	push   %ax
   1ea0d:	86 e0                	xchg   %ah,%al
   1ea0f:	e8 dc fe             	call   0x1e8ee
   1ea12:	58                   	pop    %ax
   1ea13:	e8 d8 fe             	call   0x1e8ee
   1ea16:	5f                   	pop    %di
   1ea17:	5e                   	pop    %si
   1ea18:	58                   	pop    %ax
   1ea19:	c3                   	ret
   1ea1a:	53                   	push   %bx
   1ea1b:	8b df                	mov    %di,%bx
   1ea1d:	83 c3 f4             	add    $0xfff4,%bx
   1ea20:	d1 eb                	shr    $1,%bx
   1ea22:	8a e3                	mov    %bl,%ah
   1ea24:	5b                   	pop    %bx
   1ea25:	c3                   	ret
   1ea26:	53                   	push   %bx
   1ea27:	8b 5c 01             	mov    0x1(%si),%bx
   1ea2a:	e8 2b 95             	call   0x17f58
   1ea2d:	5b                   	pop    %bx
   1ea2e:	81 fe ac 40          	cmp    $0x40ac,%si
   1ea32:	74 03                	je     0x1ea37
   1ea34:	e8 33 c8             	call   0x1b26a
   1ea37:	c3                   	ret
   1ea38:	56                   	push   %si
   1ea39:	80 0e 62 37 08       	orb    $0x8,0x3762
   1ea3e:	c7 06 c3 40 ac 40    	movw   $0x40ac,0x40c3
   1ea44:	be 90 3a             	mov    $0x3a90,%si
   1ea47:	e8 51 ec             	call   0x1d69b
   1ea4a:	5e                   	pop    %si
   1ea4b:	cb                   	lret
   1ea4c:	55                   	push   %bp
   1ea4d:	8b ec                	mov    %sp,%bp
   1ea4f:	56                   	push   %si
   1ea50:	8b 5e 06             	mov    0x6(%bp),%bx
   1ea53:	e8 4b 00             	call   0x1eaa1
   1ea56:	e8 0a cc             	call   0x1b663
   1ea59:	74 43                	je     0x1ea9e
   1ea5b:	89 36 c3 40          	mov    %si,0x40c3
   1ea5f:	8b 44 10             	mov    0x10(%si),%ax
   1ea62:	a3 1c 38             	mov    %ax,0x381c
   1ea65:	8a 44 03             	mov    0x3(%si),%al
   1ea68:	5e                   	pop    %si
   1ea69:	5d                   	pop    %bp
   1ea6a:	ca 02 00             	lret   $0x2
   1ea6d:	55                   	push   %bp
   1ea6e:	8b ec                	mov    %sp,%bp
   1ea70:	56                   	push   %si
   1ea71:	8b 5e 06             	mov    0x6(%bp),%bx
   1ea74:	e8 2a 00             	call   0x1eaa1
   1ea77:	e8 e9 cb             	call   0x1b663
   1ea7a:	74 22                	je     0x1ea9e
   1ea7c:	8b 44 10             	mov    0x10(%si),%ax
   1ea7f:	a3 1c 38             	mov    %ax,0x381c
   1ea82:	80 3c 01             	cmpb   $0x1,(%si)
   1ea85:	74 14                	je     0x1ea9b
   1ea87:	89 36 c3 40          	mov    %si,0x40c3
   1ea8b:	80 0e 62 37 01       	orb    $0x1,0x3762
   1ea90:	be 90 3a             	mov    $0x3a90,%si
   1ea93:	e8 05 ec             	call   0x1d69b
   1ea96:	5e                   	pop    %si
   1ea97:	5d                   	pop    %bp
   1ea98:	ca 02 00             	lret   $0x2
   1ea9b:	e9 f2 d2             	jmp    0x1bd90
   1ea9e:	e9 e9 d2             	jmp    0x1bd8a
   1eaa1:	0b db                	or     %bx,%bx
   1eaa3:	74 f9                	je     0x1ea9e
   1eaa5:	0a ff                	or     %bh,%bh
   1eaa7:	75 f5                	jne    0x1ea9e
   1eaa9:	c3                   	ret
   1eaaa:	ea b0 03 f2 1b       	ljmp   $0x1bf2,$0x3b0
   1eaaf:	ea e4 03 f2 1b       	ljmp   $0x1bf2,$0x3e4
   1eab4:	ea 8a 04 f2 1b       	ljmp   $0x1bf2,$0x48a
   1eab9:	55                   	push   %bp
   1eaba:	8b ec                	mov    %sp,%bp
   1eabc:	50                   	push   %ax
   1eabd:	8b 46 0c             	mov    0xc(%bp),%ax
   1eac0:	3b 46 08             	cmp    0x8(%bp),%ax
   1eac3:	75 11                	jne    0x1ead6
   1eac5:	8b 46 0a             	mov    0xa(%bp),%ax
   1eac8:	3b 46 06             	cmp    0x6(%bp),%ax
   1eacb:	9f                   	lahf
   1eacc:	25 00 41             	and    $0x4100,%ax
   1eacf:	d1 e8                	shr    $1,%ax
   1ead1:	d0 e4                	shl    $1,%ah
   1ead3:	0a e0                	or     %al,%ah
   1ead5:	9e                   	sahf
   1ead6:	58                   	pop    %ax
   1ead7:	5d                   	pop    %bp
   1ead8:	ca 08 00             	lret   $0x8
   1eadb:	55                   	push   %bp
   1eadc:	8b ec                	mov    %sp,%bp
   1eade:	50                   	push   %ax
   1eadf:	8b 46 0c             	mov    0xc(%bp),%ax
   1eae2:	3b 46 08             	cmp    0x8(%bp),%ax
   1eae5:	f9                   	stc
   1eae6:	7c 09                	jl     0x1eaf1
   1eae8:	f8                   	clc
   1eae9:	7f 06                	jg     0x1eaf1
   1eaeb:	8b 46 0a             	mov    0xa(%bp),%ax
   1eaee:	3b 46 06             	cmp    0x6(%bp),%ax
   1eaf1:	58                   	pop    %ax
   1eaf2:	5d                   	pop    %bp
   1eaf3:	ca 08 00             	lret   $0x8
   1eaf6:	55                   	push   %bp
   1eaf7:	8b ec                	mov    %sp,%bp
   1eaf9:	f6 06 fc 37 01       	testb  $0x1,0x37fc
   1eafe:	74 0e                	je     0x1eb0e
   1eb00:	c7 06 c3 40 00 00    	movw   $0x0,0x40c3
   1eb06:	e8 1f e4             	call   0x1cf28
   1eb09:	75 0e                	jne    0x1eb19
   1eb0b:	e9 fc de             	jmp    0x1ca0a
   1eb0e:	e8 2d d5             	call   0x1c03e
   1eb11:	b8 54 36             	mov    $0x3654,%ax
   1eb14:	74 27                	je     0x1eb3d
   1eb16:	e8 52 d5             	call   0x1c06b
   1eb19:	e8 e9 e6             	call   0x1d205
   1eb1c:	74 db                	je     0x1eaf9
   1eb1e:	73 15                	jae    0x1eb35
   1eb20:	3d fe 00             	cmp    $0xfe,%ax
   1eb23:	74 10                	je     0x1eb35
   1eb25:	86 c4                	xchg   %al,%ah
   1eb27:	50                   	push   %ax
   1eb28:	bb 02 00             	mov    $0x2,%bx
   1eb2b:	e8 bb c3             	call   0x1aee9
   1eb2e:	87 da                	xchg   %bx,%dx

; ===== WINDOW 0x1F08A =====
   1f001:	89 2e a0 40          	mov    %bp,0x40a0
   1f005:	ff 74 02             	push   0x2(%si)
   1f008:	8b 04                	mov    (%si),%ax
   1f00a:	05 30 00             	add    $0x30,%ax
   1f00d:	50                   	push   %ax
   1f00e:	cb                   	lret
   1f00f:	ea 42 43 8b 14       	ljmp   $0x148b,$0x4342
   1f014:	c7 06 e8 36 90 44    	movw   $0x4490,0x36e8
   1f01a:	c7 06 f4 36 d0 44    	movw   $0x44d0,0x36f4
   1f020:	c7 06 00 37 b1 44    	movw   $0x44b1,0x3700
   1f026:	c7 06 28 37 b2 44    	movw   $0x44b2,0x3728
   1f02c:	c7 06 34 37 c5 44    	movw   $0x44c5,0x3734
   1f032:	cb                   	lret
   1f033:	00 c7                	add    %al,%bh
   1f035:	06                   	push   %es
   1f036:	fd                   	std
   1f037:	37                   	aaa
   1f038:	41                   	inc    %cx
   1f039:	5c                   	pop    %sp
   1f03a:	cb                   	lret
   1f03b:	00 b8 50 62          	add    %bh,0x6250(%bx,%si)
   1f03f:	a3 17 38             	mov    %ax,0x3817
   1f042:	a3 15 38             	mov    %ax,0x3815
   1f045:	cb                   	lret
   1f046:	c7 06 16 37 b3 1a    	movw   $0x1ab3,0x3716
   1f04c:	c7 06 10 37 b3 1a    	movw   $0x1ab3,0x3710
   1f052:	c7 06 26 37 19 45    	movw   $0x4519,0x3726
   1f058:	c7 06 36 37 3e 47    	movw   $0x473e,0x3736
   1f05e:	c7 06 3a 37 a8 6c    	movw   $0x6ca8,0x373a
   1f064:	c7 06 19 38 c1 15    	movw   $0x15c1,0x3819
   1f06a:	c7 06 64 37 dd 1a    	movw   $0x1add,0x3764
   1f070:	cb                   	lret
   1f071:	00 c7                	add    %al,%bh
   1f073:	06                   	push   %es
   1f074:	08 37                	or     %dh,(%bx)
   1f076:	c6                   	(bad)
   1f077:	6c                   	insb   (%dx),%es:(%di)
   1f078:	c7 06 da 36 4f 6f    	movw   $0x6f4f,0x36da
   1f07e:	c7 06 d6 36 ec 6c    	movw   $0x6cec,0x36d6
   1f084:	c7 06 d8 36 f7 6c    	movw   $0x6cf7,0x36d8
   1f08a:	c7 06 0c 36 09 6d    	movw   $0x6d09,0x360c
   1f090:	c7 06 f4 37 f5 0f    	movw   $0xff5,0x37f4
   1f096:	c7 06 f6 37 2c 10    	movw   $0x102c,0x37f6
   1f09c:	cb                   	lret
   1f09d:	00 c7                	add    %al,%bh
   1f09f:	06                   	push   %es
   1f0a0:	00 38                	add    %bh,(%bx,%si)
   1f0a2:	96                   	xchg   %ax,%si
   1f0a3:	72 c7                	jb     0x1f06c
   1f0a5:	06                   	push   %es
   1f0a6:	02 38                	add    (%bx,%si),%bh
   1f0a8:	42                   	inc    %dx
   1f0a9:	73 cb                	jae    0x1f076
   1f0ab:	00 56 57             	add    %dl,0x57(%bp)
   1f0ae:	06                   	push   %es
   1f0af:	1e                   	push   %ds
   1f0b0:	07                   	pop    %es
   1f0b1:	c7 06 dc 3e 00 00    	movw   $0x0,0x3edc
   1f0b7:	89 1e de 3e          	mov    %bx,0x3ede
   1f0bb:	8c 1e e0 3e          	mov    %ds,0x3ee0
   1f0bf:	c7 06 e2 3e bc 3e    	movw   $0x3ebc,0x3ee2
   1f0c5:	8c 1e e4 3e          	mov    %ds,0x3ee4
   1f0c9:	c7 06 e6 3e cc 3e    	movw   $0x3ecc,0x3ee6
   1f0cf:	8c 1e e8 3e          	mov    %ds,0x3ee8
   1f0d3:	bf bc 3e             	mov    $0x3ebc,%di
   1f0d6:	b8 01 29             	mov    $0x2901,%ax
   1f0d9:	cd 21                	int    $0x21
   1f0db:	cd 21                	int    $0x21
   1f0dd:	bf cc 3e             	mov    $0x3ecc,%di
   1f0e0:	cd 21                	int    $0x21
   1f0e2:	1e                   	push   %ds
   1f0e3:	55                   	push   %bp
   1f0e4:	8e d9                	mov    %cx,%ds
   1f0e6:	bb dc 3e             	mov    $0x3edc,%bx
   1f0e9:	b8 00 4b             	mov    $0x4b00,%ax
   1f0ec:	2e 8c 16 70 00       	mov    %ss,%cs:0x70
   1f0f1:	2e 89 26 6e 00       	mov    %sp,%cs:0x6e
   1f0f6:	cd 21                	int    $0x21
   1f0f8:	fa                   	cli
   1f0f9:	2e 8e 16 70 00       	mov    %cs:0x70,%ss
   1f0fe:	2e 8b 26 6e 00       	mov    %cs:0x6e,%sp
   1f103:	fb                   	sti
   1f104:	5d                   	pop    %bp
   1f105:	1f                   	pop    %ds
   1f106:	72 02                	jb     0x1f10a
   1f108:	33 c0                	xor    %ax,%ax
   1f10a:	07                   	pop    %es
   1f10b:	5f                   	pop    %di
   1f10c:	5e                   	pop    %si
   1f10d:	cb                   	lret
	...
   1f12e:	00 00                	add    %al,(%bx,%si)
   1f130:	55                   	push   %bp
   1f131:	8b ec                	mov    %sp,%bp
   1f133:	56                   	push   %si
   1f134:	57                   	push   %di
   1f135:	06                   	push   %es
   1f136:	83 7e 0a 00          	cmpw   $0x0,0xa(%bp)
   1f13a:	75 38                	jne    0x1f174
   1f13c:	bf de 3f             	mov    $0x3fde,%di
   1f13f:	8b 56 08             	mov    0x8(%bp),%dx
   1f142:	8b 46 06             	mov    0x6(%bp),%ax
   1f145:	48                   	dec    %ax
   1f146:	75 07                	jne    0x1f14f
   1f148:	e8 59 00             	call   0x1f1a4
   1f14b:	72 27                	jb     0x1f174
   1f14d:	eb 4e                	jmp    0x1f19d
   1f14f:	8b 36 2e 40          	mov    0x402e,%si
   1f153:	48                   	dec    %ax
   1f154:	74 11                	je     0x1f167
   1f156:	3b f7                	cmp    %di,%si
   1f158:	74 0d                	je     0x1f167
   1f15a:	8b 44 02             	mov    0x2(%si),%ax
   1f15d:	89 46 0e             	mov    %ax,0xe(%bp)
   1f160:	56                   	push   %si
   1f161:	e8 40 00             	call   0x1f1a4
   1f164:	5e                   	pop    %si
   1f165:	73 36                	jae    0x1f19d
   1f167:	83 c6 04             	add    $0x4,%si
   1f16a:	81 fe 2e 40          	cmp    $0x402e,%si
   1f16e:	73 04                	jae    0x1f174
   1f170:	0b d2                	or     %dx,%dx
   1f172:	75 06                	jne    0x1f17a
   1f174:	b8 ff ff             	mov    $0xffff,%ax
   1f177:	99                   	cwtd
   1f178:	eb 23                	jmp    0x1f19d
   1f17a:	8b da                	mov    %dx,%bx
   1f17c:	83 c3 0f             	add    $0xf,%bx
   1f17f:	d1 db                	rcr    $1,%bx
   1f181:	b1 03                	mov    $0x3,%cl
   1f183:	d3 eb                	shr    %cl,%bx
   1f185:	b4 48                	mov    $0x48,%ah
   1f187:	cd 21                	int    $0x21
   1f189:	72 e9                	jb     0x1f174
   1f18b:	3b 06 c9 40          	cmp    0x40c9,%ax
   1f18f:	76 f4                	jbe    0x1f185
   1f191:	92                   	xchg   %ax,%dx
   1f192:	89 04                	mov    %ax,(%si)
   1f194:	89 54 02             	mov    %dx,0x2(%si)
   1f197:	89 36 2e 40          	mov    %si,0x402e