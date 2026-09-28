; ===== 0x1C300..0x1C500 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

0001c300 <.data+0x1c300>:
   1c300:	3d 07 27             	cmp    $0x2707,%ax
   1c303:	74 77                	je     0x1c37c
   1c305:	06                   	push   %es
   1c306:	8a 1e 79 37          	mov    0x3779,%bl
   1c30a:	80 fb 13             	cmp    $0x13,%bl
   1c30d:	74 6e                	je     0x1c37d
   1c30f:	33 c9                	xor    %cx,%cx
   1c311:	8e c1                	mov    %cx,%es
   1c313:	80 fb 40             	cmp    $0x40,%bl
   1c316:	75 0d                	jne    0x1c325
   1c318:	f6 06 2b 3e 06       	testb  $0x6,0x3e2b
   1c31d:	74 06                	je     0x1c325
   1c31f:	ff 16 75 37          	call   *0x3775
   1c323:	eb 56                	jmp    0x1c37b
   1c325:	26 ff 36 7c 00       	push   %es:0x7c
   1c32a:	26 ff 36 7e 00       	push   %es:0x7e
   1c32f:	26 c7 06 7c 00 3a 3a 	movw   $0x3a3a,%es:0x7c
   1c336:	26 8c 1e 7e 00       	mov    %ds,%es:0x7e
   1c33b:	3b 06 e6 37          	cmp    0x37e6,%ax
   1c33f:	9c                   	pushf
   1c340:	80 3e 79 37 08       	cmpb   $0x8,0x3779
   1c345:	74 07                	je     0x1c34e
   1c347:	80 3e 79 37 0d       	cmpb   $0xd,0x3779
   1c34c:	72 10                	jb     0x1c35e
   1c34e:	8a 1e a1 37          	mov    0x37a1,%bl
   1c352:	80 cb 80             	or     $0x80,%bl
   1c355:	b0 dc                	mov    $0xdc,%al
   1c357:	9d                   	popf
   1c358:	74 0d                	je     0x1c367
   1c35a:	fe c8                	dec    %al
   1c35c:	eb 09                	jmp    0x1c367
   1c35e:	9d                   	popf
   1c35f:	b0 80                	mov    $0x80,%al
   1c361:	74 02                	je     0x1c365
   1c363:	fe c0                	inc    %al
   1c365:	b3 87                	mov    $0x87,%bl
   1c367:	8a 3e 6d 37          	mov    0x376d,%bh
   1c36b:	41                   	inc    %cx
   1c36c:	b4 09                	mov    $0x9,%ah
   1c36e:	e8 a7 fe             	call   0x1c218
   1c371:	26 8f 06 7e 00       	pop    %es:0x7e
   1c376:	26 8f 06 7c 00       	pop    %es:0x7c
   1c37b:	07                   	pop    %es
   1c37c:	c3                   	ret
   1c37d:	52                   	push   %dx
   1c37e:	50                   	push   %ax
   1c37f:	b4 03                	mov    $0x3,%ah
   1c381:	e8 94 fe             	call   0x1c218
   1c384:	33 c0                	xor    %ax,%ax
   1c386:	86 c6                	xchg   %al,%dh
   1c388:	b1 03                	mov    $0x3,%cl
   1c38a:	d3 e0                	shl    %cl,%ax
   1c38c:	d3 e2                	shl    %cl,%dx
   1c38e:	8b ca                	mov    %dx,%cx
   1c390:	8b d0                	mov    %ax,%dx
   1c392:	ff 16 b1 37          	call   *0x37b1
   1c396:	a0 a1 37             	mov    0x37a1,%al
   1c399:	8a e0                	mov    %al,%ah
   1c39b:	c4 1e d8 3d          	les    0x3dd8,%bx
   1c39f:	b9 08 00             	mov    $0x8,%cx
   1c3a2:	5a                   	pop    %dx
   1c3a3:	3b 16 e6 37          	cmp    0x37e6,%dx
   1c3a7:	75 06                	jne    0x1c3af
   1c3a9:	d1 e9                	shr    $1,%cx
   1c3ab:	81 c3 00 05          	add    $0x500,%bx
   1c3af:	51                   	push   %cx
   1c3b0:	b9 04 00             	mov    $0x4,%cx
   1c3b3:	26 31 07             	xor    %ax,%es:(%bx)
   1c3b6:	43                   	inc    %bx
   1c3b7:	43                   	inc    %bx
   1c3b8:	e2 f9                	loop   0x1c3b3
   1c3ba:	59                   	pop    %cx
   1c3bb:	81 c3 38 01          	add    $0x138,%bx
   1c3bf:	e2 ee                	loop   0x1c3af
   1c3c1:	5a                   	pop    %dx
   1c3c2:	eb b7                	jmp    0x1c37b
   1c3c4:	50                   	push   %ax
   1c3c5:	53                   	push   %bx
   1c3c6:	51                   	push   %cx
   1c3c7:	52                   	push   %dx
   1c3c8:	33 c9                	xor    %cx,%cx
   1c3ca:	8a 2e 48 37          	mov    0x3748,%ch
   1c3ce:	fe cd                	dec    %ch
   1c3d0:	8a 1e 58 37          	mov    0x3758,%bl
   1c3d4:	8a 3e 49 37          	mov    0x3749,%bh
   1c3d8:	4b                   	dec    %bx
   1c3d9:	fe cf                	dec    %bh
   1c3db:	e8 49 fe             	call   0x1c227
   1c3de:	8b d3                	mov    %bx,%dx
   1c3e0:	8a 3e 89 37          	mov    0x3789,%bh
   1c3e4:	33 c0                	xor    %ax,%ax
   1c3e6:	3a ee                	cmp    %dh,%ch
   1c3e8:	74 01                	je     0x1c3eb
   1c3ea:	40                   	inc    %ax
   1c3eb:	b4 06                	mov    $0x6,%ah
   1c3ed:	e8 28 fe             	call   0x1c218
   1c3f0:	e8 2e fe             	call   0x1c221
   1c3f3:	5a                   	pop    %dx
   1c3f4:	59                   	pop    %cx
   1c3f5:	5b                   	pop    %bx
   1c3f6:	58                   	pop    %ax
   1c3f7:	c3                   	ret
   1c3f8:	f9                   	stc
   1c3f9:	c3                   	ret
   1c3fa:	50                   	push   %ax
   1c3fb:	53                   	push   %bx
   1c3fc:	51                   	push   %cx
   1c3fd:	52                   	push   %dx
   1c3fe:	8b 1e 6f 37          	mov    0x376f,%bx
   1c402:	38 07                	cmp    %al,(%bx)
   1c404:	72 0b                	jb     0x1c411
   1c406:	8a d0                	mov    %al,%dl
   1c408:	32 f6                	xor    %dh,%dh
   1c40a:	03 da                	add    %dx,%bx
   1c40c:	03 da                	add    %dx,%bx
   1c40e:	ff 57 01             	call   *0x1(%bx)
   1c411:	5a                   	pop    %dx
   1c412:	59                   	pop    %cx
   1c413:	5b                   	pop    %bx
   1c414:	58                   	pop    %ax
   1c415:	c3                   	ret
   1c416:	b4 01                	mov    $0x1,%ah
   1c418:	fd                   	std
   1c419:	0b c9                	or     %cx,%cx
   1c41b:	74 10                	je     0x1c42d
   1c41d:	ad                   	lods   %ds:(%si),%ax
   1c41e:	49                   	dec    %cx
   1c41f:	0b c0                	or     %ax,%ax
   1c421:	b4 01                	mov    $0x1,%ah
   1c423:	74 08                	je     0x1c42d
   1c425:	ad                   	lods   %ds:(%si),%ax
   1c426:	0a e4                	or     %ah,%ah
   1c428:	75 05                	jne    0x1c42f
   1c42a:	49                   	dec    %cx
   1c42b:	0b e4                	or     %sp,%sp
   1c42d:	fc                   	cld
   1c42e:	c3                   	ret
   1c42f:	fc                   	cld
   1c430:	e9 24 f9             	jmp    0x1bd57
   1c433:	e8 c4 ff             	call   0x1c3fa
   1c436:	73 0b                	jae    0x1c443
   1c438:	3c 01                	cmp    $0x1,%al
   1c43a:	75 02                	jne    0x1c43e
   1c43c:	32 e0                	xor    %al,%ah
   1c43e:	32 c0                	xor    %al,%al
   1c440:	e8 b7 ff             	call   0x1c3fa
   1c443:	87 d9                	xchg   %bx,%cx
   1c445:	52                   	push   %dx
   1c446:	ff 16 91 37          	call   *0x3791
   1c44a:	a0 7b 37             	mov    0x377b,%al
   1c44d:	8a 0e 7c 37          	mov    0x377c,%cl
   1c451:	e8 73 0b             	call   0x1cfc7
   1c454:	58                   	pop    %ax
   1c455:	3a 06 88 37          	cmp    0x3788,%al
   1c459:	77 06                	ja     0x1c461
   1c45b:	3a 26 88 37          	cmp    0x3788,%ah
   1c45f:	76 02                	jbe    0x1c463
   1c461:	33 c0                	xor    %ax,%ax
   1c463:	ff 16 95 37          	call   *0x3795
   1c467:	c3                   	ret
   1c468:	f6 06 2b 3e 08       	testb  $0x8,0x3e2b
   1c46d:	75 18                	jne    0x1c487
   1c46f:	33 c0                	xor    %ax,%ax
   1c471:	8e c0                	mov    %ax,%es
   1c473:	a0 1e 3e             	mov    0x3e1e,%al
   1c476:	26 3a 06 10 04       	cmp    %es:0x410,%al
   1c47b:	26 a2 10 04          	mov    %al,%es:0x410
   1c47f:	1e                   	push   %ds
   1c480:	07                   	pop    %es
   1c481:	74 04                	je     0x1c487
   1c483:	e8 63 07             	call   0x1cbe9
   1c486:	f9                   	stc
   1c487:	a1 ec 37             	mov    0x37ec,%ax
   1c48a:	8b 0e f1 37          	mov    0x37f1,%cx
   1c48e:	72 19                	jb     0x1c4a9
   1c490:	3a 06 78 37          	cmp    0x3778,%al
   1c494:	75 12                	jne    0x1c4a8
   1c496:	3a 26 7a 37          	cmp    0x377a,%ah
   1c49a:	75 0c                	jne    0x1c4a8
   1c49c:	3a 2e 7c 37          	cmp    0x377c,%ch
   1c4a0:	75 06                	jne    0x1c4a8
   1c4a2:	3a 0e 7b 37          	cmp    0x377b,%cl
   1c4a6:	74 01                	je     0x1c4a9
   1c4a8:	f9                   	stc
   1c4a9:	9c                   	pushf
   1c4aa:	e8 4d ff             	call   0x1c3fa
   1c4ad:	87 d9                	xchg   %bx,%cx
   1c4af:	ff 16 91 37          	call   *0x3791
   1c4b3:	a0 7b 37             	mov    0x377b,%al
   1c4b6:	8a 0e 7c 37          	mov    0x377c,%cl
   1c4ba:	e8 0a 0b             	call   0x1cfc7
   1c4bd:	9d                   	popf
   1c4be:	73 0c                	jae    0x1c4cc
   1c4c0:	e8 92 08             	call   0x1cd55
   1c4c3:	ff 16 93 37          	call   *0x3793
   1c4c7:	e8 e7 0a             	call   0x1cfb1
   1c4ca:	eb 03                	jmp    0x1c4cf
   1c4cc:	e8 ed 0a             	call   0x1cfbc
   1c4cf:	ff 16 97 37          	call   *0x3797
   1c4d3:	8b 16 44 37          	mov    0x3744,%dx
   1c4d7:	e8 ca fd             	call   0x1c2a4
   1c4da:	a1 ef 37             	mov    0x37ef,%ax
   1c4dd:	ff 16 95 37          	call   *0x3795
   1c4e1:	e8 67 fd             	call   0x1c24b
   1c4e4:	33 c9                	xor    %cx,%cx
   1c4e6:	86 0e 9b 3d          	xchg   %cl,0x3d9b
   1c4ea:	e3 04                	jcxz   0x1c4f0
   1c4ec:	ff 16 fd 37          	call   *0x37fd
   1c4f0:	80 3e 78 37 00       	cmpb   $0x0,0x3778
   1c4f5:	74 05                	je     0x1c4fc
   1c4f7:	e8 aa fd             	call   0x1c2a4
   1c4fa:	eb 06                	jmp    0x1c502
   1c4fc:	a1 ea 37             	mov    0x37ea,%ax
   1c4ff:	e8               	call   0x1c2a7

; ===== 0x1EE20..0x1EF10 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

0001ee20 <.data+0x1ee20>:
   1ee20:	55                   	push   %bp
   1ee21:	8b ec                	mov    %sp,%bp
   1ee23:	e8 2d 00             	call   0x1ee53
   1ee26:	5d                   	pop    %bp
   1ee27:	cb                   	lret
   1ee28:	55                   	push   %bp
   1ee29:	8b ec                	mov    %sp,%bp
   1ee2b:	8b 46 08             	mov    0x8(%bp),%ax
   1ee2e:	0b c0                	or     %ax,%ax
   1ee30:	74 1a                	je     0x1ee4c
   1ee32:	79 13                	jns    0x1ee47
   1ee34:	8b 56 06             	mov    0x6(%bp),%dx
   1ee37:	02 d4                	add    %ah,%dl
   1ee39:	80 d6 00             	adc    $0x0,%dh
   1ee3c:	14 00                	adc    $0x0,%al
   1ee3e:	32 e4                	xor    %ah,%ah
   1ee40:	89 16 59 37          	mov    %dx,0x3759
   1ee44:	a3 5b 37             	mov    %ax,0x375b
   1ee47:	e8 09 00             	call   0x1ee53
   1ee4a:	eb 03                	jmp    0x1ee4f
   1ee4c:	e8 36 00             	call   0x1ee85
   1ee4f:	5d                   	pop    %bp
   1ee50:	ca 04 00             	lret   $0x4
   1ee53:	57                   	push   %di
   1ee54:	a1 59 37             	mov    0x3759,%ax
   1ee57:	8b 0e a0 3a          	mov    0x3aa0,%cx
   1ee5b:	f7 e1                	mul    %cx
   1ee5d:	97                   	xchg   %ax,%di
   1ee5e:	8b da                	mov    %dx,%bx
   1ee60:	a1 5b 37             	mov    0x375b,%ax
   1ee63:	f7 e1                	mul    %cx
   1ee65:	03 d8                	add    %ax,%bx
   1ee67:	a1 a0 3a             	mov    0x3aa0,%ax
   1ee6a:	f7 26 59 37          	mulw   0x3759
   1ee6e:	03 d8                	add    %ax,%bx
   1ee70:	03 3e a4 3a          	add    0x3aa4,%di
   1ee74:	12 1e a4 3a          	adc    0x3aa4,%bl
   1ee78:	32 ff                	xor    %bh,%bh
   1ee7a:	8b d7                	mov    %di,%dx
   1ee7c:	89 16 59 37          	mov    %dx,0x3759
   1ee80:	89 1e 5b 37          	mov    %bx,0x375b
   1ee84:	5f                   	pop    %di
   1ee85:	cd 37                	int    $0x37
   1ee87:	06                   	push   %es
   1ee88:	59                   	pop    %cx
   1ee89:	37                   	aaa
   1ee8a:	cd 34                	int    $0x34
   1ee8c:	36 a8 3a             	ss test $0x3a,%al
   1ee8f:	bb 99 40             	mov    $0x4099,%bx
   1ee92:	cd 35                	int    $0x35
   1ee94:	1f                   	pop    %ds
   1ee95:	93                   	xchg   %ax,%bx
   1ee96:	cd 3d                	int    $0x3d
   1ee98:	c3                   	ret
   1ee99:	55                   	push   %bp
   1ee9a:	8b ec                	mov    %sp,%bp
   1ee9c:	8d 5e 0a             	lea    0xa(%bp),%bx
   1ee9f:	8b 07                	mov    (%bx),%ax
   1eea1:	33 47 02             	xor    0x2(%bx),%ax
   1eea4:	a3 5a 37             	mov    %ax,0x375a
   1eea7:	5d                   	pop    %bp
   1eea8:	ca 08 00             	lret   $0x8
   1eeab:	00 55 8b             	add    %dl,-0x75(%di)
   1eeae:	ec                   	in     (%dx),%al
   1eeaf:	56                   	push   %si
   1eeb0:	06                   	push   %es
   1eeb1:	b4 2c                	mov    $0x2c,%ah
   1eeb3:	cd 21                	int    $0x21
   1eeb5:	b0 3c                	mov    $0x3c,%al
   1eeb7:	f6 e5                	mul    %ch
   1eeb9:	32 ed                	xor    %ch,%ch
   1eebb:	03 c1                	add    %cx,%ax
   1eebd:	8b d8                	mov    %ax,%bx
   1eebf:	52                   	push   %dx
   1eec0:	e8 2d fe             	call   0x1ecf0
   1eec3:	5a                   	pop    %dx
   1eec4:	b8 3c 00             	mov    $0x3c,%ax
   1eec7:	e8 27 00             	call   0x1eef1
   1eeca:	8a c6                	mov    %dh,%al
   1eecc:	b4 01                	mov    $0x1,%ah
   1eece:	e8 20 00             	call   0x1eef1
   1eed1:	b8 64 00             	mov    $0x64,%ax
   1eed4:	e8 1a 00             	call   0x1eef1
   1eed7:	8a c2                	mov    %dl,%al
   1eed9:	b4 01                	mov    $0x1,%ah
   1eedb:	e8 13 00             	call   0x1eef1
   1eede:	b8 64 02             	mov    $0x264,%ax
   1eee1:	e8 0d 00             	call   0x1eef1
   1eee4:	bb 3b 3e             	mov    $0x3e3b,%bx
   1eee7:	cd 35                	int    $0x35
   1eee9:	1f                   	pop    %ds
   1eeea:	93                   	xchg   %ax,%bx
   1eeeb:	cd 3d                	int    $0x3d
   1eeed:	07                   	pop    %es
   1eeee:	5e                   	pop    %si
   1eeef:	5d                   	pop    %bp
   1eef0:	cb                   	lret
   1eef1:	52                   	push   %dx
   1eef2:	50                   	push   %ax
   1eef3:	8a d8                	mov    %al,%bl
   1eef5:	32 ff                	xor    %bh,%bh
   1eef7:	e8 f6 fd             	call   0x1ecf0
   1eefa:	58                   	pop    %ax
   1eefb:	0a e4                	or     %ah,%ah
   1eefd:	74 09                	je     0x1ef08
   1eeff:	fe cc                	dec    %ah
   1ef01:	74 0a                	je     0x1ef0d
   1ef03:	cd 3a                	int    $0x3a
   1ef05:	f9                   	stc
   1ef06:	eb 08                	jmp    0x1ef10
   1ef08:	cd 3a                	int    $0x3a
   1ef0a:	c9                   	leave
   1ef0b:	eb 03                	jmp    0x1ef10
   1ef0d:	cd 3a                	int    $0x3a
   1ef0f:	c1             	rcrw   $0xb8,-0x3d(%bp,%si)

; ===== 0x1FC90..0x1FD10 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

0001fc90 <.data+0x1fc90>:
   1fc90:	38 cd                	cmp    %cl,%ch
   1fc92:	3d 50 a0             	cmp    $0xa050,%ax
   1fc95:	95                   	xchg   %ax,%bp
   1fc96:	38 a2 97 38          	cmp    %ah,0x3897(%bp,%si)
   1fc9a:	58                   	pop    %ax
   1fc9b:	cd 35                	int    $0x35
   1fc9d:	2e 97                	cs xchg %ax,%di
   1fc9f:	38 cd                	cmp    %cl,%ch
   1fca1:	39 04                	cmp    %ax,(%si)
   1fca3:	cd 35                	int    $0x35
   1fca5:	c0 cd 37             	ror    $0x37,%ch
   1fca8:	3c cd                	cmp    $0xcd,%al
   1fcaa:	3d 33 ff             	cmp    $0xff33,%ax
   1fcad:	be 6b 38             	mov    $0x386b,%si
   1fcb0:	ac                   	lods   %ds:(%si),%al
   1fcb1:	8a f8                	mov    %al,%bh
   1fcb3:	ad                   	lods   %ds:(%si),%ax
   1fcb4:	8b c8                	mov    %ax,%cx
   1fcb6:	ba 10 4d             	mov    $0x4d10,%dx
   1fcb9:	f7 e2                	mul    %dx
   1fcbb:	91                   	xchg   %ax,%cx
   1fcbc:	b0 4d                	mov    $0x4d,%al
   1fcbe:	f6 e4                	mul    %ah
   1fcc0:	03 c8                	add    %ax,%cx
   1fcc2:	13 d7                	adc    %di,%dx
   1fcc4:	b0 9a                	mov    $0x9a,%al
   1fcc6:	f6 e7                	mul    %bh
   1fcc8:	03 c8                	add    %ax,%cx
   1fcca:	13 fa                	adc    %dx,%di
   1fccc:	81 e9 f4 12          	sub    $0x12f4,%cx
   1fcd0:	81 df 43 13          	sbb    $0x1343,%di
   1fcd4:	57                   	push   %di
   1fcd5:	f7 df                	neg    %di
   1fcd7:	be 64 38             	mov    $0x3864,%si
   1fcda:	e8 37 02             	call   0x1ff14
   1fcdd:	bb ec 0a             	mov    $0xaec,%bx
   1fce0:	5f                   	pop    %di
   1fce1:	cd 3c                	int    $0x3c
   1fce3:	9b                   	fwait
   1fce4:	2f                   	das
   1fce5:	cd 34                	int    $0x34
   1fce7:	d9 cd                	fxch   %st(5)
   1fce9:	39 3e 93 38          	cmp    %di,0x3893
   1fced:	cd 3d                	int    $0x3d
   1fcef:	f6 06 94 38 41       	testb  $0x41,0x3894
   1fcf4:	74 0b                	je     0x1fd01
   1fcf6:	47                   	inc    %di
   1fcf7:	bb f6 0a             	mov    $0xaf6,%bx
   1fcfa:	cd 3c                	int    $0x3c
   1fcfc:	9b                   	fwait
   1fcfd:	2f                   	das
   1fcfe:	cd 3a                	int    $0x3a
   1fd00:	c9                   	leave
   1fd01:	57                   	push   %di
   1fd02:	cd 37                	int    $0x37
   1fd04:	3c cd                	cmp    $0xcd,%al
   1fd06:	35 2e 95             	xor    $0x952e,%ax
   1fd09:	38 cd                	cmp    %cl,%ch
   1fd0b:	3d ad 97             	cmp    $0x97ad,%ax
   1fd0e:	ad                   	lods   %ds:(%si),%ax
   1fd0f:	95                   	xchg   %ax,%bp

; ===== 0x20B50..0x20BD0 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

00020b50 <.data+0x20b50>:
   20b50:	f0 7f ff             	lock jg 0x20b52
   20b53:	ff                   	(bad)
   20b54:	ff                   	(bad)
   20b55:	ff                   	(bad)
   20b56:	ff                   	(bad)
   20b57:	ff                   	ljmp   (bad)
   20b58:	ef                   	out    %ax,(%dx)
   20b59:	7f 00                	jg     0x20b5b
	...
   20b63:	00 00                	add    %al,(%bx,%si)
   20b65:	01 00                	add    %ax,(%bx,%si)
   20b67:	00 00                	add    %al,(%bx,%si)
   20b69:	00 00                	add    %al,(%bx,%si)
   20b6b:	00 00                	add    %al,(%bx,%si)
   20b6d:	80 00 00             	addb   $0x0,(%bx,%si)
   20b70:	00 00                	add    %al,(%bx,%si)
   20b72:	8a b1 6a f6          	mov    -0x996(%bx,%di),%dh
   20b76:	f4                   	hlt
   20b77:	a2 30 89             	mov    %al,0x8930
   20b7a:	fe                   	(bad)
   20b7b:	ff 00                	incw   (%bx,%si)
   20b7d:	00 9e 53 65          	add    %bl,0x6553(%bp)
   20b81:	c2 42 d7             	ret    $0xd742
   20b84:	b3 dd                	mov    $0xdd,%bl
   20b86:	00 00                	add    %al,(%bx,%si)
   20b88:	00 00                	add    %al,(%bx,%si)
   20b8a:	23 2c                	and    (%si),%bp
   20b8c:	9b                   	fwait
   20b8d:	6b c1 91             	imul   $0xff91,%cx,%ax
   20b90:	0a 86 ff ff          	or     -0x1(%bp),%al
   20b94:	00 00                	add    %al,(%bx,%si)
   20b96:	84 64 de             	test   %ah,-0x22(%si)
   20b99:	f9                   	stc
   20b9a:	33 f3                	xor    %bx,%si
   20b9c:	04 b5                	add    $0xb5,%al
	...
   20ba6:	00 00                	add    %al,(%bx,%si)
   20ba8:	00 80 01 00          	add    %al,0x1(%bx,%si)
   20bac:	00 00                	add    %al,(%bx,%si)
   20bae:	35 c2 68             	xor    $0x68c2,%ax
   20bb1:	21 a2 da 0f          	and    %sp,0xfda(%bp,%si)
   20bb5:	c9                   	leave
   20bb6:	01 00                	add    %ax,(%bx,%si)
   20bb8:	00 00                	add    %al,(%bx,%si)
   20bba:	fe 8a 1b cd          	decb   -0x32e5(%bp,%si)
   20bbe:	4b                   	dec    %bx
   20bbf:	78 9a                	js     0x20b5b
   20bc1:	d4 01                	aam    $0x1
   20bc3:	00 00                	add    %al,(%bx,%si)
   20bc5:	00 bc f0 17          	add    %bh,0x17f0(%si)
   20bc9:	5c                   	pop    %sp
   20bca:	29 3b                	sub    %di,(%bp,%di)
   20bcc:	aa                   	stos   %al,%es:(%di)
   20bcd:	b8 00 00             	mov    $0x0,%ax

; ===== 0x21230..0x214C0 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

00021230 <.data+0x21230>:
   21230:	22 fa                	and    %dl,%bh
   21232:	33 db                	xor    %bx,%bx
   21234:	8b eb                	mov    %bx,%bp
   21236:	8b cb                	mov    %bx,%cx
   21238:	8b 04                	mov    (%si),%ax
   2123a:	0b c0                	or     %ax,%ax
   2123c:	74 0c                	je     0x2124a
   2123e:	8b 15                	mov    (%di),%dx
   21240:	0b d2                	or     %dx,%dx
   21242:	74 06                	je     0x2124a
   21244:	f7 e2                	mul    %dx
   21246:	8b e8                	mov    %ax,%bp
   21248:	8b ca                	mov    %dx,%cx
   2124a:	55                   	push   %bp
   2124b:	8b 04                	mov    (%si),%ax
   2124d:	0b c0                	or     %ax,%ax
   2124f:	74 10                	je     0x21261
   21251:	8b 55 02             	mov    0x2(%di),%dx
   21254:	0b d2                	or     %dx,%dx
   21256:	74 09                	je     0x21261
   21258:	f7 e2                	mul    %dx
   2125a:	03 c8                	add    %ax,%cx
   2125c:	13 da                	adc    %dx,%bx
   2125e:	83 d5 00             	adc    $0x0,%bp
   21261:	8b 44 02             	mov    0x2(%si),%ax
   21264:	0b c0                	or     %ax,%ax
   21266:	74 0f                	je     0x21277
   21268:	8b 15                	mov    (%di),%dx
   2126a:	0b d2                	or     %dx,%dx
   2126c:	74 09                	je     0x21277
   2126e:	f7 e2                	mul    %dx
   21270:	03 c8                	add    %ax,%cx
   21272:	13 da                	adc    %dx,%bx
   21274:	83 d5 00             	adc    $0x0,%bp
   21277:	58                   	pop    %ax
   21278:	0b c1                	or     %cx,%ax
   2127a:	50                   	push   %ax
   2127b:	33 c9                	xor    %cx,%cx
   2127d:	8b 04                	mov    (%si),%ax
   2127f:	0b c0                	or     %ax,%ax
   21281:	74 10                	je     0x21293
   21283:	8b 55 04             	mov    0x4(%di),%dx
   21286:	0b d2                	or     %dx,%dx
   21288:	74 09                	je     0x21293
   2128a:	f7 e2                	mul    %dx
   2128c:	03 d8                	add    %ax,%bx
   2128e:	13 ea                	adc    %dx,%bp
   21290:	83 d1 00             	adc    $0x0,%cx
   21293:	8b 44 02             	mov    0x2(%si),%ax
   21296:	0b c0                	or     %ax,%ax
   21298:	74 10                	je     0x212aa
   2129a:	8b 55 02             	mov    0x2(%di),%dx
   2129d:	0b d2                	or     %dx,%dx
   2129f:	74 09                	je     0x212aa
   212a1:	f7 e2                	mul    %dx
   212a3:	03 d8                	add    %ax,%bx
   212a5:	13 ea                	adc    %dx,%bp
   212a7:	83 d1 00             	adc    $0x0,%cx
   212aa:	8b 44 04             	mov    0x4(%si),%ax
   212ad:	0b c0                	or     %ax,%ax
   212af:	74 0f                	je     0x212c0
   212b1:	8b 15                	mov    (%di),%dx
   212b3:	0b d2                	or     %dx,%dx
   212b5:	74 09                	je     0x212c0
   212b7:	f7 e2                	mul    %dx
   212b9:	03 d8                	add    %ax,%bx
   212bb:	13 ea                	adc    %dx,%bp
   212bd:	83 d1 00             	adc    $0x0,%cx
   212c0:	58                   	pop    %ax
   212c1:	0b c3                	or     %bx,%ax
   212c3:	50                   	push   %ax
   212c4:	33 db                	xor    %bx,%bx
   212c6:	8b 04                	mov    (%si),%ax
   212c8:	0b c0                	or     %ax,%ax
   212ca:	74 0a                	je     0x212d6
   212cc:	f7 65 06             	mulw   0x6(%di)
   212cf:	03 e8                	add    %ax,%bp
   212d1:	13 ca                	adc    %dx,%cx
   212d3:	83 d3 00             	adc    $0x0,%bx
   212d6:	8b 44 02             	mov    0x2(%si),%ax
   212d9:	0b c0                	or     %ax,%ax
   212db:	74 10                	je     0x212ed
   212dd:	8b 55 04             	mov    0x4(%di),%dx
   212e0:	0b d2                	or     %dx,%dx
   212e2:	74 09                	je     0x212ed
   212e4:	f7 e2                	mul    %dx
   212e6:	03 e8                	add    %ax,%bp
   212e8:	13 ca                	adc    %dx,%cx
   212ea:	83 d3 00             	adc    $0x0,%bx
   212ed:	8b 44 04             	mov    0x4(%si),%ax
   212f0:	0b c0                	or     %ax,%ax
   212f2:	74 10                	je     0x21304
   212f4:	8b 55 02             	mov    0x2(%di),%dx
   212f7:	0b d2                	or     %dx,%dx
   212f9:	74 09                	je     0x21304
   212fb:	f7 e2                	mul    %dx
   212fd:	03 e8                	add    %ax,%bp
   212ff:	13 ca                	adc    %dx,%cx
   21301:	83 d3 00             	adc    $0x0,%bx
   21304:	8b 44 06             	mov    0x6(%si),%ax
   21307:	8b 15                	mov    (%di),%dx
   21309:	0b d2                	or     %dx,%dx
   2130b:	74 09                	je     0x21316
   2130d:	f7 e2                	mul    %dx
   2130f:	03 e8                	add    %ax,%bp
   21311:	13 ca                	adc    %dx,%cx
   21313:	83 d3 00             	adc    $0x0,%bx
   21316:	8b d5                	mov    %bp,%dx
   21318:	81 e5 ff 3f          	and    $0x3fff,%bp
   2131c:	58                   	pop    %ax
   2131d:	0b c5                	or     %bp,%ax
   2131f:	50                   	push   %ax
   21320:	33 ed                	xor    %bp,%bp
   21322:	52                   	push   %dx
   21323:	8b 44 02             	mov    0x2(%si),%ax
   21326:	0b c0                	or     %ax,%ax
   21328:	74 0a                	je     0x21334
   2132a:	f7 65 06             	mulw   0x6(%di)
   2132d:	03 c8                	add    %ax,%cx
   2132f:	13 da                	adc    %dx,%bx
   21331:	83 d5 00             	adc    $0x0,%bp
   21334:	8b 44 04             	mov    0x4(%si),%ax
   21337:	0b c0                	or     %ax,%ax
   21339:	74 10                	je     0x2134b
   2133b:	8b 55 04             	mov    0x4(%di),%dx
   2133e:	0b d2                	or     %dx,%dx
   21340:	74 09                	je     0x2134b
   21342:	f7 e2                	mul    %dx
   21344:	03 c8                	add    %ax,%cx
   21346:	13 da                	adc    %dx,%bx
   21348:	83 d5 00             	adc    $0x0,%bp
   2134b:	8b 44 06             	mov    0x6(%si),%ax
   2134e:	8b 55 02             	mov    0x2(%di),%dx
   21351:	0b d2                	or     %dx,%dx
   21353:	74 09                	je     0x2135e
   21355:	f7 e2                	mul    %dx
   21357:	03 c8                	add    %ax,%cx
   21359:	13 da                	adc    %dx,%bx
   2135b:	83 d5 00             	adc    $0x0,%bp
   2135e:	51                   	push   %cx
   2135f:	33 c9                	xor    %cx,%cx
   21361:	8b 44 04             	mov    0x4(%si),%ax
   21364:	0b c0                	or     %ax,%ax
   21366:	74 0a                	je     0x21372
   21368:	f7 65 06             	mulw   0x6(%di)
   2136b:	03 d8                	add    %ax,%bx
   2136d:	13 ea                	adc    %dx,%bp
   2136f:	83 d1 00             	adc    $0x0,%cx
   21372:	8b 44 06             	mov    0x6(%si),%ax
   21375:	8b 55 04             	mov    0x4(%di),%dx
   21378:	0b d2                	or     %dx,%dx
   2137a:	74 09                	je     0x21385
   2137c:	f7 e2                	mul    %dx
   2137e:	03 d8                	add    %ax,%bx
   21380:	13 ea                	adc    %dx,%bp
   21382:	83 d1 00             	adc    $0x0,%cx
   21385:	8b 44 06             	mov    0x6(%si),%ax
   21388:	f7 65 06             	mulw   0x6(%di)
   2138b:	03 c5                	add    %bp,%ax
   2138d:	13 d1                	adc    %cx,%dx
   2138f:	59                   	pop    %cx
   21390:	5d                   	pop    %bp
   21391:	8b fa                	mov    %dx,%di
   21393:	8b d1                	mov    %cx,%dx
   21395:	8b cb                	mov    %bx,%cx
   21397:	8b d8                	mov    %ax,%bx
   21399:	58                   	pop    %ax
   2139a:	0b c0                	or     %ax,%ax
   2139c:	74 03                	je     0x213a1
   2139e:	83 cd 01             	or     $0x1,%bp
   213a1:	5e                   	pop    %si
   213a2:	e9 61 01             	jmp    0x21506
   213a5:	f9                   	stc
   213a6:	1b c1                	sbb    %cx,%ax
   213a8:	32 f2                	xor    %dl,%dh
   213aa:	55                   	push   %bp
   213ab:	52                   	push   %dx
   213ac:	56                   	push   %si
   213ad:	57                   	push   %di
   213ae:	83 c6 06             	add    $0x6,%si
   213b1:	83 c7 06             	add    $0x6,%di
   213b4:	b9 04 00             	mov    $0x4,%cx
   213b7:	fd                   	std
   213b8:	f3 a7                	repz cmpsw %es:(%di),%ds:(%si)
   213ba:	fc                   	cld
   213bb:	5f                   	pop    %di
   213bc:	5e                   	pop    %si
   213bd:	9c                   	pushf
   213be:	8b e8                	mov    %ax,%bp
   213c0:	ad                   	lods   %ds:(%si),%ax
   213c1:	8b c8                	mov    %ax,%cx
   213c3:	ad                   	lods   %ds:(%si),%ax
   213c4:	8b d8                	mov    %ax,%bx
   213c6:	ad                   	lods   %ds:(%si),%ax
   213c7:	8b d0                	mov    %ax,%dx
   213c9:	ad                   	lods   %ds:(%si),%ax
   213ca:	92                   	xchg   %ax,%dx
   213cb:	8b f7                	mov    %di,%si
   213cd:	bf 96 00             	mov    $0x96,%di
   213d0:	a5                   	movsw  %ds:(%si),%es:(%di)
   213d1:	a5                   	movsw  %ds:(%si),%es:(%di)
   213d2:	a5                   	movsw  %ds:(%si),%es:(%di)
   213d3:	a5                   	movsw  %ds:(%si),%es:(%di)
   213d4:	33 ff                	xor    %di,%di
   213d6:	9d                   	popf
   213d7:	72 0b                	jb     0x213e4
   213d9:	d1 ea                	shr    $1,%dx
   213db:	d1 d8                	rcr    $1,%ax
   213dd:	d1 db                	rcr    $1,%bx
   213df:	d1 d9                	rcr    $1,%cx
   213e1:	d1 df                	rcr    $1,%di
   213e3:	45                   	inc    %bp
   213e4:	55                   	push   %bp
   213e5:	89 3e 1a 00          	mov    %di,0x1a
   213e9:	e8 4a 00             	call   0x21436
   213ec:	57                   	push   %di
   213ed:	c7 06 1a 00 00 00    	movw   $0x0,0x1a
   213f3:	e8 40 00             	call   0x21436
   213f6:	57                   	push   %di
   213f7:	e8 3c 00             	call   0x21436
   213fa:	57                   	push   %di
   213fb:	e8 38 00             	call   0x21436
   213fe:	bd 01 80             	mov    $0x8001,%bp
   21401:	d1 e1                	shl    $1,%cx
   21403:	d1 d3                	rcl    $1,%bx
   21405:	d1 d0                	rcl    $1,%ax
   21407:	d1 d2                	rcl    $1,%dx
   21409:	72 22                	jb     0x2142d
   2140b:	be 96 00             	mov    $0x96,%si
   2140e:	3b 54 06             	cmp    0x6(%si),%dx
   21411:	75 0c                	jne    0x2141f
   21413:	3b 44 04             	cmp    0x4(%si),%ax
   21416:	75 07                	jne    0x2141f
   21418:	3b 5c 02             	cmp    0x2(%si),%bx
   2141b:	75 02                	jne    0x2141f
   2141d:	3b 0c                	cmp    (%si),%cx
   2141f:	73 0c                	jae    0x2142d
   21421:	0b c2                	or     %dx,%ax
   21423:	0b c1                	or     %cx,%ax
   21425:	0b c3                	or     %bx,%ax
   21427:	0a c4                	or     %ah,%al
   21429:	32 e4                	xor    %ah,%ah
   2142b:	8b e8                	mov    %ax,%bp
   2142d:	8b d7                	mov    %di,%dx
   2142f:	59                   	pop    %cx
   21430:	5b                   	pop    %bx
   21431:	5f                   	pop    %di
   21432:	5e                   	pop    %si
   21433:	e9 3c 01             	jmp    0x21572
   21436:	8b 36 9c 00          	mov    0x9c,%si
   2143a:	33 ff                	xor    %di,%di
   2143c:	3b d6                	cmp    %si,%dx
   2143e:	73 62                	jae    0x214a2
   21440:	0b d2                	or     %dx,%dx
   21442:	75 04                	jne    0x21448
   21444:	3b f0                	cmp    %ax,%si
   21446:	77 41                	ja     0x21489
   21448:	f7 f6                	div    %si
   2144a:	52                   	push   %dx
   2144b:	53                   	push   %bx
   2144c:	97                   	xchg   %ax,%di
   2144d:	33 ed                	xor    %bp,%bp
   2144f:	8b f5                	mov    %bp,%si
   21451:	a1 96 00             	mov    0x96,%ax
   21454:	0b c0                	or     %ax,%ax
   21456:	74 04                	je     0x2145c
   21458:	f7 e7                	mul    %di
   2145a:	8b f2                	mov    %dx,%si
   2145c:	50                   	push   %ax
   2145d:	a1 98 00             	mov    0x98,%ax
   21460:	0b c0                	or     %ax,%ax
   21462:	74 06                	je     0x2146a
   21464:	f7 e7                	mul    %di
   21466:	03 f0                	add    %ax,%si
   21468:	13 ea                	adc    %dx,%bp
   2146a:	a1 9a 00             	mov    0x9a,%ax
   2146d:	0b c0                	or     %ax,%ax
   2146f:	74 08                	je     0x21479
   21471:	f7 e7                	mul    %di
   21473:	03 e8                	add    %ax,%bp
   21475:	83 d2 00             	adc    $0x0,%dx
   21478:	92                   	xchg   %ax,%dx
   21479:	8b 16 1a 00          	mov    0x1a,%dx
   2147d:	5b                   	pop    %bx
   2147e:	2b d3                	sub    %bx,%dx
   21480:	1b ce                	sbb    %si,%cx
   21482:	5b                   	pop    %bx
   21483:	1b dd                	sbb    %bp,%bx
   21485:	5d                   	pop    %bp
   21486:	1b e8                	sbb    %ax,%bp
   21488:	95                   	xchg   %ax,%bp
   21489:	92                   	xchg   %ax,%dx
   2148a:	91                   	xchg   %ax,%cx
   2148b:	93                   	xchg   %ax,%bx
   2148c:	73 13                	jae    0x214a1
   2148e:	4f                   	dec    %di
   2148f:	03 0e 96 00          	add    0x96,%cx
   21493:	13 1e 98 00          	adc    0x98,%bx
   21497:	13 06 9a 00          	adc    0x9a,%ax
   2149b:	13 16 9c 00          	adc    0x9c,%dx
   2149f:	73 ed                	jae    0x2148e
   214a1:	c3                   	ret
   214a2:	4f                   	dec    %di
   214a3:	2b 0e 96 00          	sub    0x96,%cx
   214a7:	1b 1e 98 00          	sbb    0x98,%bx
   214ab:	1b 06 9a 00          	sbb    0x9a,%ax
   214af:	03 0e 98 00          	add    0x98,%cx
   214b3:	13 1e 9a 00          	adc    0x9a,%bx
   214b7:	13 c2                	adc    %dx,%ax
   214b9:	8b 16 96 00          	mov    0x96,%dx
   214bd:	f5                   	cmc
   214be:	eb c9                	jmp    0x21489

; ===== 0x22300..0x22370 =====

/mnt/data/stage16work/Ghini.exe:     file format binary


Disassembly of section .data:

00022300 <.data+0x22300>:
   22300:	01 74 07             	add    %si,0x7(%si)
   22303:	40                   	inc    %ax
   22304:	d1 eb                	shr    $1,%bx
   22306:	d1 d9                	rcr    $1,%cx
   22308:	d1 da                	rcr    $1,%dx
   2230a:	d1 f8                	sar    $1,%ax
   2230c:	89 45 08             	mov    %ax,0x8(%di)
   2230f:	83 fb fe             	cmp    $0xfffe,%bx
   22312:	72 03                	jb     0x22317
   22314:	f9                   	stc
   22315:	eb 39                	jmp    0x22350
   22317:	52                   	push   %dx
   22318:	b8 75 b0             	mov    $0xb075,%ax
   2231b:	f7 e3                	mul    %bx
   2231d:	bd d8 57             	mov    $0x57d8,%bp
   22320:	03 ea                	add    %dx,%bp
   22322:	73 03                	jae    0x22327
   22324:	bd ff ff             	mov    $0xffff,%bp
   22327:	8b d3                	mov    %bx,%dx
   22329:	33 c0                	xor    %ax,%ax
   2232b:	f7 f5                	div    %bp
   2232d:	03 e8                	add    %ax,%bp
   2232f:	d1 dd                	rcr    $1,%bp
   22331:	8b d3                	mov    %bx,%dx
   22333:	8b c1                	mov    %cx,%ax
   22335:	f7 f5                	div    %bp
   22337:	f9                   	stc
   22338:	13 e8                	adc    %ax,%bp
   2233a:	d1 dd                	rcr    $1,%bp
   2233c:	8b d3                	mov    %bx,%dx
   2233e:	8b c1                	mov    %cx,%ax
   22340:	f7 f5                	div    %bp
   22342:	8b f0                	mov    %ax,%si
   22344:	58                   	pop    %ax
   22345:	f7 f5                	div    %bp
   22347:	8b dd                	mov    %bp,%bx
   22349:	8b c8                	mov    %ax,%cx
   2234b:	83 c1 01             	add    $0x1,%cx
   2234e:	13 de                	adc    %si,%bx
   22350:	d1 db                	rcr    $1,%bx
   22352:	d1 d9                	rcr    $1,%cx
   22354:	89 5d 06             	mov    %bx,0x6(%di)
   22357:	89 4d 04             	mov    %cx,0x4(%di)
   2235a:	c7 45 02 00 00       	movw   $0x0,0x2(%di)
   2235f:	c7 05 00 00          	movw   $0x0,(%di)
   22363:	8b f7                	mov    %di,%si
   22365:	5f                   	pop    %di
   22366:	89 3e 94 00          	mov    %di,0x94
   2236a:	e8 c9 ec             	call   0x21036
   2236d:	be 4a 00             	mov    $0x4a,%si
