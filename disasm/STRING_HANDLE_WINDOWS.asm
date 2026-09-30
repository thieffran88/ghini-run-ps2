; Stage 25 — selected windows for QB string/handle provenance
; Offsets are file offsets / linear disassembly offsets.


; ===== 0x17EE0..0x17F60 =====
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

; ===== 0x19354..0x19394 =====
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

; ===== 0x19442..0x194A8 =====
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

; ===== 0x1E550..0x1E5D0 =====
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

; ===== 0x1E5D2..0x1E612 =====
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

; ===== 0x1EA38..0x1EA9E =====
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

; ===== 0x1D880..0x1D940 =====
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
