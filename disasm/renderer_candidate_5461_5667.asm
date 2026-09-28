    5461:	83 3e ae 03 64       	cmpw   $0x64,0x3ae
    5466:	7d 03                	jge    0x546b
    5468:	e9 4e 00             	jmp    0x54b9
    546b:	a1 ac 03             	mov    0x3ac,%ax
    546e:	89 46 b4             	mov    %ax,-0x4c(%bp)
    5471:	83 7e b4 01          	cmpw   $0x1,-0x4c(%bp)
    5475:	74 03                	je     0x547a
    5477:	e9 09 00             	jmp    0x5483
    547a:	a1 b0 03             	mov    0x3b0,%ax
    547d:	a3 36 02             	mov    %ax,0x236
    5480:	e9 24 00             	jmp    0x54a7
    5483:	83 7e b4 02          	cmpw   $0x2,-0x4c(%bp)
    5487:	74 03                	je     0x548c
    5489:	e9 09 00             	jmp    0x5495
    548c:	a1 b0 03             	mov    0x3b0,%ax
    548f:	a3 38 02             	mov    %ax,0x238
    5492:	e9 12 00             	jmp    0x54a7
    5495:	83 7e b4 03          	cmpw   $0x3,-0x4c(%bp)
    5499:	74 03                	je     0x549e
    549b:	e9 09 00             	jmp    0x54a7
    549e:	a1 b0 03             	mov    0x3b0,%ax
    54a1:	a3 34 02             	mov    %ax,0x234
    54a4:	e9 00 00             	jmp    0x54a7
    54a7:	c7 06 ac 03 00 00    	movw   $0x0,0x3ac
    54ad:	c7 06 ae 03 00 00    	movw   $0x0,0x3ae
    54b3:	c7 06 b0 03 00 00    	movw   $0x0,0x3b0
    54b9:	33 c0                	xor    %ax,%ax
    54bb:	e9 9e 01             	jmp    0x565c
    54be:	33 c0                	xor    %ax,%ax
    54c0:	50                   	push   %ax
    54c1:	b8 01 00             	mov    $0x1,%ax
    54c4:	50                   	push   %ax
    54c5:	bb 66 00             	mov    $0x66,%bx
    54c8:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    54cd:	83 c3 04             	add    $0x4,%bx
    54d0:	8b f3                	mov    %bx,%si
    54d2:	26 83 3f 00          	cmpw   $0x0,%es:(%bx)
    54d6:	7f 03                	jg     0x54db
    54d8:	e9 64 00             	jmp    0x553f
    54db:	33 c0                	xor    %ax,%ax
    54dd:	50                   	push   %ax
    54de:	b8 01 00             	mov    $0x1,%ax
    54e1:	50                   	push   %ax
    54e2:	bb 66 00             	mov    $0x66,%bx
    54e5:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    54ea:	83 c3 04             	add    $0x4,%bx
    54ed:	26 8b 0f             	mov    %es:(%bx),%cx
    54f0:	ba 0c 00             	mov    $0xc,%dx
    54f3:	2b d1                	sub    %cx,%dx
    54f5:	ff 76 b2             	push   -0x4e(%bp)
    54f8:	50                   	push   %ax
    54f9:	bb 94 00             	mov    $0x94,%bx
    54fc:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    5501:	26 8b 07             	mov    %es:(%bx),%ax
    5504:	8b c8                	mov    %ax,%cx
    5506:	33 c0                	xor    %ax,%ax
    5508:	50                   	push   %ax
    5509:	b8 01 00             	mov    $0x1,%ax
    550c:	50                   	push   %ax
    550d:	bb 66 00             	mov    $0x66,%bx
    5510:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    5515:	83 c3 04             	add    $0x4,%bx
    5518:	89 4e b0             	mov    %cx,-0x50(%bp)
    551b:	26 8b 0f             	mov    %es:(%bx),%cx
    551e:	89 5e ae             	mov    %bx,-0x52(%bp)
    5521:	bb 0d 00             	mov    $0xd,%bx
    5524:	2b d9                	sub    %cx,%bx
    5526:	93                   	xchg   %ax,%bx
    5527:	8b ca                	mov    %dx,%cx
    5529:	f7 6e b0             	imulw  -0x50(%bp)
    552c:	99                   	cwtd
    552d:	f7 f9                	idiv   %cx
    552f:	40                   	inc    %ax
    5530:	ff 76 b2             	push   -0x4e(%bp)
    5533:	53                   	push   %bx
    5534:	bb 94 00             	mov    $0x94,%bx
    5537:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    553c:	26 89 07             	mov    %ax,%es:(%bx)
    553f:	33 c0                	xor    %ax,%ax
    5541:	50                   	push   %ax
    5542:	b8 01 00             	mov    $0x1,%ax
    5545:	50                   	push   %ax
    5546:	bb 66 00             	mov    $0x66,%bx
    5549:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    554e:	83 c3 04             	add    $0x4,%bx
    5551:	26 8b 07             	mov    %es:(%bx),%ax
    5554:	29 06 a8 03          	sub    %ax,0x3a8
    5558:	83 3e a8 03 01       	cmpw   $0x1,0x3a8
    555d:	7c 03                	jl     0x5562
    555f:	e9 f6 00             	jmp    0x5658
    5562:	ff 36 aa 03          	push   0x3aa
    5566:	b8 01 00             	mov    $0x1,%ax
    5569:	50                   	push   %ax
    556a:	bb 94 00             	mov    $0x94,%bx
    556d:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    5572:	26 c7 07 02 00       	movw   $0x2,%es:(%bx)
    5577:	83 3e a4 02 00       	cmpw   $0x0,0x2a4
    557c:	7f 03                	jg     0x5581
    557e:	e9 39 00             	jmp    0x55ba
    5581:	ff 36 aa 03          	push   0x3aa
    5585:	50                   	push   %ax
    5586:	bb c2 00             	mov    $0xc2,%bx
    5589:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    558e:	8b 0e 98 02          	mov    0x298,%cx
    5592:	26 89 0f             	mov    %cx,%es:(%bx)
    5595:	ff 0e a4 02          	decw   0x2a4
    5599:	83 3e aa 02 00       	cmpw   $0x0,0x2aa
    559e:	7f 03                	jg     0x55a3
    55a0:	e9 17 00             	jmp    0x55ba
    55a3:	ff 36 aa 03          	push   0x3aa
    55a7:	50                   	push   %ax
    55a8:	bb 1e 01             	mov    $0x11e,%bx
    55ab:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    55b0:	a1 9e 02             	mov    0x29e,%ax
    55b3:	26 89 07             	mov    %ax,%es:(%bx)
    55b6:	ff 0e aa 02          	decw   0x2aa
    55ba:	83 3e a6 02 00       	cmpw   $0x0,0x2a6
    55bf:	7f 03                	jg     0x55c4
    55c1:	e9 3c 00             	jmp    0x5600
    55c4:	ff 36 aa 03          	push   0x3aa
    55c8:	b8 01 00             	mov    $0x1,%ax
    55cb:	50                   	push   %ax
    55cc:	bb f0 00             	mov    $0xf0,%bx
    55cf:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    55d4:	8b 0e 9a 02          	mov    0x29a,%cx
    55d8:	26 89 0f             	mov    %cx,%es:(%bx)
    55db:	ff 0e a6 02          	decw   0x2a6
    55df:	83 3e ac 02 00       	cmpw   $0x0,0x2ac
    55e4:	7f 03                	jg     0x55e9
    55e6:	e9 17 00             	jmp    0x5600
    55e9:	ff 36 aa 03          	push   0x3aa
    55ed:	50                   	push   %ax
    55ee:	bb 4c 01             	mov    $0x14c,%bx
    55f1:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    55f6:	a1 a0 02             	mov    0x2a0,%ax
    55f9:	26 89 07             	mov    %ax,%es:(%bx)
    55fc:	ff 0e ac 02          	decw   0x2ac
    5600:	83 3e a8 02 00       	cmpw   $0x0,0x2a8
    5605:	7f 03                	jg     0x560a
    5607:	e9 1a 00             	jmp    0x5624
    560a:	ff 36 aa 03          	push   0x3aa
    560e:	b8 01 00             	mov    $0x1,%ax
    5611:	50                   	push   %ax
    5612:	bb a8 01             	mov    $0x1a8,%bx
    5615:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    561a:	a1 9c 02             	mov    0x29c,%ax
    561d:	26 89 07             	mov    %ax,%es:(%bx)
    5620:	ff 0e a8 02          	decw   0x2a8
    5624:	ff 06 aa 03          	incw   0x3aa
    5628:	83 3e aa 03 04       	cmpw   $0x4,0x3aa
    562d:	7f 03                	jg     0x5632
    562f:	e9 06 00             	jmp    0x5638
    5632:	c7 06 aa 03 00 00    	movw   $0x0,0x3aa
    5638:	33 c0                	xor    %ax,%ax
    563a:	50                   	push   %ax
    563b:	b8 01 00             	mov    $0x1,%ax
    563e:	50                   	push   %ax
    563f:	bb 66 00             	mov    $0x66,%bx
    5642:	9a f0 29 8b 14       	lcall  $0x148b,$0x29f0
    5647:	83 c3 04             	add    $0x4,%bx
    564a:	26 8b 07             	mov    %es:(%bx),%ax
    564d:	b9 0f 00             	mov    $0xf,%cx
    5650:	f7 e9                	imul   %cx
    5652:	05 14 00             	add    $0x14,%ax
    5655:	a3 a8 03             	mov    %ax,0x3a8
    5658:	8b 46 b2             	mov    -0x4e(%bp),%ax
    565b:	40                   	inc    %ax
    565c:	89 46 b2             	mov    %ax,-0x4e(%bp)
    565f:	3d 04 00             	cmp    $0x4,%ax
    5662:	7f 03                	jg     0x5667
    5664:	e9 57 fe             	jmp    0x54be
    5667:	b8 02 00             	mov    $0x2,%ax