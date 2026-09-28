; WINDOW 19354-19394

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
; WINDOW 1944B-194D5

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
; WINDOW 1E54A-1E6CD

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