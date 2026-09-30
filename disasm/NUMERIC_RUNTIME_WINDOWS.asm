===== 0x1F835 =====
   1f81c:	03 ce                	add    %si,%cx
   1f81e:	89 0e 32 38          	mov    %cx,0x3832
   1f822:	a3 3a 38             	mov    %ax,0x383a
   1f825:	89 16 3c 38          	mov    %dx,0x383c
   1f829:	33 c9                	xor    %cx,%cx
   1f82b:	0b db                	or     %bx,%bx
   1f82d:	75 41                	jne    0x1f870
   1f82f:	c7 06 38 38 0a 00    	movw   $0xa,0x3838
   1f835:	e8 8a 00             	call   0x1f8c2
   1f838:	88 0e 2c 38          	mov    %cl,0x382c
   1f83c:	8b 36 30 38          	mov    0x3830,%si
   1f840:	c6 06 5c 38 00       	movb   $0x0,0x385c
   1f845:	e8 b8 00             	call   0x1f900
   1f848:	0a 0e 2c 38          	or     0x382c,%cl
   1f84c:	f7 06 3a 38 ff ff    	testw  $0xffff,0x383a
   1f852:	75 06                	jne    0x1f85a
   1f854:	f7 c1 42 18          	test   $0x1842,%cx
   1f858:	74 03                	je     0x1f85d
   1f85a:	80 c9 30             	or     $0x30,%cl
   1f85d:	a1 42 38             	mov    0x3842,%ax
   1f860:	8b 1e 44 38          	mov    0x3844,%bx
   1f864:	8a 2e 5c 38          	mov    0x385c,%ch
   1f868:	cd 35                	int    $0x35
   1f86a:	2e 5f                	cs pop %di
   1f86c:	38 cd                	cmp    %cl,%ch
   1f86e:	3d c3 89             	cmp    $0x89c3,%ax
   1f871:	1e                   	push   %ds
   1f872:	38 38                	cmp    %bh,(%bx,%si)
   1f874:	e8 74 02             	call   0x1faeb
   1f877:	89 0e 2c 38          	mov    %cx,0x382c
   1f87b:	8b 3e 2e 38          	mov    0x382e,%di
   1f87f:	cd 37                	int    $0x37
   1f881:	06                   	push   %es
   1f882:	42                   	inc    %dx
   1f883:	38 cd                	cmp    %cl,%ch
   1f885:	39 1d                	cmp    %bx,(%di)
   1f887:	8b 0e 2c 38          	mov    0x382c,%cx
   1f88b:	eb bf                	jmp    0x1f84c
   1f88d:	58                   	pop    %ax
   1f88e:	80 c9 30             	or     $0x30,%cl
   1f891:	eb 26                	jmp    0x1f8b9
   1f893:	80 c9 30             	or     $0x30,%cl
   1f896:	58                   	pop    %ax
   1f897:	9e                   	sahf
   1f898:	75 17                	jne    0x1f8b1
   1f89a:	f7 db                	neg    %bx
   1f89c:	f7 df                	neg    %di
   1f89e:	83 db 00             	sbb    $0x0,%bx
   1f8a1:	8b d3                	mov    %bx,%dx
   1f8a3:	0b d7                	or     %di,%dx
   1f8a5:	74 12                	je     0x1f8b9
   1f8a7:	80 c9 10             	or     $0x10,%cl
   1f8aa:	f6 c7 80             	test   $0x80,%bh
   1f8ad:	75 0a                	jne    0x1f8b9
   1f8af:	eb 05                	jmp    0x1f8b6
   1f8b1:	f6 c7 80             	test   $0x80,%bh
   1f8b4:	74 03                	je     0x1f8b9
   1f8b6:	80 c9 20             	or     $0x20,%cl
   1f8b9:	89 3e 42 38          	mov    %di,0x3842
   1f8bd:	89 1e 44 38          	mov    %bx,0x3844
   1f8c1:	c3                   	ret
   1f8c2:	e8 a2 02             	call   0x1fb67
   1f8c5:	9f                   	lahf
   1f8c6:	50                   	push   %ax
   1f8c7:	33 c9                	xor    %cx,%cx
   1f8c9:	8b d9                	mov    %cx,%bx
   1f8cb:	e8 ad 02             	call   0x1fb7b
   1f8ce:	72 bd                	jb     0x1f88d
   1f8d0:	8b f8                	mov    %ax,%di
   1f8d2:	e8 a6 02             	call   0x1fb7b
   1f8d5:	72 bf                	jb     0x1f896
   1f8d7:	8b d3                	mov    %bx,%dx
   1f8d9:	8b ef                	mov    %di,%bp
   1f8db:	d1 e7                	shl    $1,%di
   1f8dd:	d1 d3                	rcl    $1,%bx
   1f8df:	d0 d5                	rcl    $1,%ch
   1f8e1:	d1 e7                	shl    $1,%di
   1f8e3:	d1 d3                	rcl    $1,%bx
   1f8e5:	d0 d5                	rcl    $1,%ch
   1f8e7:	03 fd                	add    %bp,%di
   1f8e9:	13 da                	adc    %dx,%bx
   1f8eb:	80 d5 00             	adc    $0x0,%ch
   1f8ee:	d1 e7                	shl    $1,%di
===== 0x1F8C2 =====
   1f8ad:	75 0a                	jne    0x1f8b9
   1f8af:	eb 05                	jmp    0x1f8b6
   1f8b1:	f6 c7 80             	test   $0x80,%bh
   1f8b4:	74 03                	je     0x1f8b9
   1f8b6:	80 c9 20             	or     $0x20,%cl
   1f8b9:	89 3e 42 38          	mov    %di,0x3842
   1f8bd:	89 1e 44 38          	mov    %bx,0x3844
   1f8c1:	c3                   	ret
   1f8c2:	e8 a2 02             	call   0x1fb67
   1f8c5:	9f                   	lahf
   1f8c6:	50                   	push   %ax
   1f8c7:	33 c9                	xor    %cx,%cx
   1f8c9:	8b d9                	mov    %cx,%bx
   1f8cb:	e8 ad 02             	call   0x1fb7b
   1f8ce:	72 bd                	jb     0x1f88d
   1f8d0:	8b f8                	mov    %ax,%di
   1f8d2:	e8 a6 02             	call   0x1fb7b
   1f8d5:	72 bf                	jb     0x1f896
   1f8d7:	8b d3                	mov    %bx,%dx
   1f8d9:	8b ef                	mov    %di,%bp
   1f8db:	d1 e7                	shl    $1,%di
   1f8dd:	d1 d3                	rcl    $1,%bx
   1f8df:	d0 d5                	rcl    $1,%ch
   1f8e1:	d1 e7                	shl    $1,%di
   1f8e3:	d1 d3                	rcl    $1,%bx
   1f8e5:	d0 d5                	rcl    $1,%ch
   1f8e7:	03 fd                	add    %bp,%di
   1f8e9:	13 da                	adc    %dx,%bx
   1f8eb:	80 d5 00             	adc    $0x0,%ch
   1f8ee:	d1 e7                	shl    $1,%di
   1f8f0:	d1 d3                	rcl    $1,%bx
   1f8f2:	d0 d5                	rcl    $1,%ch
   1f8f4:	03 f8                	add    %ax,%di
   1f8f6:	83 d3 00             	adc    $0x0,%bx
   1f8f9:	80 d5 00             	adc    $0x0,%ch
   1f8fc:	74 d4                	je     0x1f8d2
   1f8fe:	eb 93                	jmp    0x1f893
   1f900:	33 c9                	xor    %cx,%cx
   1f902:	89 0e 34 38          	mov    %cx,0x3834
   1f906:	c7 06 36 38 ee ff    	movw   $0xffee,0x3836
   1f90c:	e8 58 02             	call   0x1fb67
   1f90f:	75 03                	jne    0x1f914
   1f911:	80 cd 80             	or     $0x80,%ch
   1f914:	e8 16 01             	call   0x1fa2d
   1f917:	32 c9                	xor    %cl,%cl
   1f919:	33 db                	xor    %bx,%bx
   1f91b:	e8 c2 02             	call   0x1fbe0
   1f91e:	74 6f                	je     0x1f98f
   1f920:	4e                   	dec    %si
   1f921:	3c 44                	cmp    $0x44,%al
   1f923:	74 40                	je     0x1f965
   1f925:	3c 45                	cmp    $0x45,%al
   1f927:	74 33                	je     0x1f95c
   1f929:	80 3e 40 38 00       	cmpb   $0x0,0x3840
   1f92e:	74 5f                	je     0x1f98f
   1f930:	3c 2b                	cmp    $0x2b,%al
   1f932:	74 04                	je     0x1f938
   1f934:	3c 2d                	cmp    $0x2d,%al
   1f936:	75 57                	jne    0x1f98f
   1f938:	4e                   	dec    %si
   1f939:	eb 24                	jmp    0x1f95f
   1f93b:	80 3e 3e 38 00       	cmpb   $0x0,0x383e
   1f940:	74 16                	je     0x1f958
   1f942:	46                   	inc    %si
   1f943:	e8 9a 02             	call   0x1fbe0
   1f946:	4e                   	dec    %si
   1f947:	4e                   	dec    %si
   1f948:	3c 2b                	cmp    $0x2b,%al
   1f94a:	74 0c                	je     0x1f958
   1f94c:	3c 2d                	cmp    $0x2d,%al
   1f94e:	74 08                	je     0x1f958
   1f950:	3c 39                	cmp    $0x39,%al
   1f952:	77 05                	ja     0x1f959
   1f954:	3c 30                	cmp    $0x30,%al
   1f956:	72 01                	jb     0x1f959
   1f958:	c3                   	ret
   1f959:	58                   	pop    %ax
   1f95a:	eb 33                	jmp    0x1f98f
   1f95c:	e8 dc ff             	call   0x1f93b
   1f95f:	81 c9 02 04          	or     $0x402,%cx
   1f963:	eb 06                	jmp    0x1f96b
   1f965:	e8 d3 ff             	call   0x1f93b
   1f968:	80 c9 0e             	or     $0xe,%cl
===== 0x1F900 =====
   1f8ee:	d1 e7                	shl    $1,%di
   1f8f0:	d1 d3                	rcl    $1,%bx
   1f8f2:	d0 d5                	rcl    $1,%ch
   1f8f4:	03 f8                	add    %ax,%di
   1f8f6:	83 d3 00             	adc    $0x0,%bx
   1f8f9:	80 d5 00             	adc    $0x0,%ch
   1f8fc:	74 d4                	je     0x1f8d2
   1f8fe:	eb 93                	jmp    0x1f893
   1f900:	33 c9                	xor    %cx,%cx
   1f902:	89 0e 34 38          	mov    %cx,0x3834
   1f906:	c7 06 36 38 ee ff    	movw   $0xffee,0x3836
   1f90c:	e8 58 02             	call   0x1fb67
   1f90f:	75 03                	jne    0x1f914
   1f911:	80 cd 80             	or     $0x80,%ch
   1f914:	e8 16 01             	call   0x1fa2d
   1f917:	32 c9                	xor    %cl,%cl
   1f919:	33 db                	xor    %bx,%bx
   1f91b:	e8 c2 02             	call   0x1fbe0
   1f91e:	74 6f                	je     0x1f98f
   1f920:	4e                   	dec    %si
   1f921:	3c 44                	cmp    $0x44,%al
   1f923:	74 40                	je     0x1f965
   1f925:	3c 45                	cmp    $0x45,%al
   1f927:	74 33                	je     0x1f95c
   1f929:	80 3e 40 38 00       	cmpb   $0x0,0x3840
   1f92e:	74 5f                	je     0x1f98f
   1f930:	3c 2b                	cmp    $0x2b,%al
   1f932:	74 04                	je     0x1f938
   1f934:	3c 2d                	cmp    $0x2d,%al
   1f936:	75 57                	jne    0x1f98f
   1f938:	4e                   	dec    %si
   1f939:	eb 24                	jmp    0x1f95f
   1f93b:	80 3e 3e 38 00       	cmpb   $0x0,0x383e
   1f940:	74 16                	je     0x1f958
   1f942:	46                   	inc    %si
   1f943:	e8 9a 02             	call   0x1fbe0
   1f946:	4e                   	dec    %si
   1f947:	4e                   	dec    %si
   1f948:	3c 2b                	cmp    $0x2b,%al
   1f94a:	74 0c                	je     0x1f958
   1f94c:	3c 2d                	cmp    $0x2d,%al
   1f94e:	74 08                	je     0x1f958
   1f950:	3c 39                	cmp    $0x39,%al
   1f952:	77 05                	ja     0x1f959
   1f954:	3c 30                	cmp    $0x30,%al
   1f956:	72 01                	jb     0x1f959
   1f958:	c3                   	ret
   1f959:	58                   	pop    %ax
   1f95a:	eb 33                	jmp    0x1f98f
   1f95c:	e8 dc ff             	call   0x1f93b
   1f95f:	81 c9 02 04          	or     $0x402,%cx
   1f963:	eb 06                	jmp    0x1f96b
   1f965:	e8 d3 ff             	call   0x1f93b
   1f968:	80 c9 0e             	or     $0xe,%cl
   1f96b:	c7 06 3a 38 00 00    	movw   $0x0,0x383a
   1f971:	46                   	inc    %si
   1f972:	e8 f2 01             	call   0x1fb67
   1f975:	9f                   	lahf
   1f976:	50                   	push   %ax
   1f977:	e8 d0 01             	call   0x1fb4a
   1f97a:	f6 c5 02             	test   $0x2,%ch
   1f97d:	75 0a                	jne    0x1f989
   1f97f:	80 3e 3e 38 00       	cmpb   $0x0,0x383e
   1f984:	75 03                	jne    0x1f989
   1f986:	80 c9 40             	or     $0x40,%cl
   1f989:	58                   	pop    %ax
   1f98a:	9e                   	sahf
   1f98b:	75 02                	jne    0x1f98f
   1f98d:	f7 db                	neg    %bx
   1f98f:	f6 c5 01             	test   $0x1,%ch
   1f992:	74 0d                	je     0x1f9a1
   1f994:	80 e5 7f             	and    $0x7f,%ch
   1f997:	33 db                	xor    %bx,%bx
   1f999:	89 1e 36 38          	mov    %bx,0x3836
   1f99d:	89 1e 3a 38          	mov    %bx,0x383a
   1f9a1:	8b fb                	mov    %bx,%di
   1f9a3:	03 3e 36 38          	add    0x3836,%di
   1f9a7:	03 3e 3a 38          	add    0x383a,%di
   1f9ab:	f6 c5 10             	test   $0x10,%ch
   1f9ae:	75 04                	jne    0x1f9b4
   1f9b0:	2b 3e 3c 38          	sub    0x383c,%di
   1f9b4:	81 ff 3a 01          	cmp    $0x13a,%di
   1f9b8:	7e 03                	jle    0x1f9bd
===== 0x1FB67 =====
   1fb58:	d1 e3                	shl    $1,%bx
   1fb5a:	03 c3                	add    %bx,%ax
   1fb5c:	d1 e3                	shl    $1,%bx
   1fb5e:	d1 e3                	shl    $1,%bx
   1fb60:	03 d8                	add    %ax,%bx
   1fb62:	78 e3                	js     0x1fb47
   1fb64:	eb e4                	jmp    0x1fb4a
   1fb66:	c3                   	ret
   1fb67:	e8 76 00             	call   0x1fbe0
   1fb6a:	74 09                	je     0x1fb75
   1fb6c:	3c 2b                	cmp    $0x2b,%al
   1fb6e:	74 05                	je     0x1fb75
   1fb70:	3c 2d                	cmp    $0x2d,%al
   1fb72:	74 03                	je     0x1fb77
   1fb74:	4e                   	dec    %si
   1fb75:	0c ff                	or     $0xff,%al
   1fb77:	c3                   	ret
   1fb78:	4e                   	dec    %si
   1fb79:	f9                   	stc
   1fb7a:	c3                   	ret
   1fb7b:	e8 62 00             	call   0x1fbe0
   1fb7e:	74 f9                	je     0x1fb79
   1fb80:	2c 30                	sub    $0x30,%al
   1fb82:	72 f4                	jb     0x1fb78
   1fb84:	3c 09                	cmp    $0x9,%al
   1fb86:	7e 06                	jle    0x1fb8e
   1fb88:	2c 11                	sub    $0x11,%al
   1fb8a:	72 ec                	jb     0x1fb78
   1fb8c:	04 0a                	add    $0xa,%al
   1fb8e:	3a 06 38 38          	cmp    0x3838,%al
   1fb92:	7d e4                	jge    0x1fb78
   1fb94:	32 e4                	xor    %ah,%ah
   1fb96:	c3                   	ret
   1fb97:	46                   	inc    %si
   1fb98:	4e                   	dec    %si
   1fb99:	33 c0                	xor    %ax,%ax
   1fb9b:	80 cd 01             	or     $0x1,%ch
   1fb9e:	f9                   	stc
   1fb9f:	c3                   	ret
   1fba0:	f6 c5 28             	test   $0x28,%ch
   1fba3:	75 f3                	jne    0x1fb98
   1fba5:	80 0e 2c 38 80       	orb    $0x80,0x382c
   1fbaa:	eb ef                	jmp    0x1fb9b
   1fbac:	f6 c5 10             	test   $0x10,%ch
   1fbaf:	75 ef                	jne    0x1fba0
   1fbb1:	80 cd 10             	or     $0x10,%ch
   1fbb4:	f6 c5 01             	test   $0x1,%ch
   1fbb7:	75 de                	jne    0x1fb97
   1fbb9:	e8 24 00             	call   0x1fbe0
   1fbbc:	74 dd                	je     0x1fb9b
   1fbbe:	3c 2e                	cmp    $0x2e,%al
   1fbc0:	74 ea                	je     0x1fbac
   1fbc2:	2c 30                	sub    $0x30,%al
   1fbc4:	72 d2                	jb     0x1fb98
   1fbc6:	3c 09                	cmp    $0x9,%al
   1fbc8:	77 ce                	ja     0x1fb98
   1fbca:	b4 08                	mov    $0x8,%ah
   1fbcc:	f6 c5 10             	test   $0x10,%ch
   1fbcf:	75 06                	jne    0x1fbd7
   1fbd1:	ff 06 36 38          	incw   0x3836
   1fbd5:	b4 20                	mov    $0x20,%ah
   1fbd7:	0a ec                	or     %ah,%ch
   1fbd9:	ff 06 34 38          	incw   0x3834
   1fbdd:	32 e4                	xor    %ah,%ah
   1fbdf:	c3                   	ret
   1fbe0:	3b 36 32 38          	cmp    0x3832,%si
   1fbe4:	73 23                	jae    0x1fc09
   1fbe6:	ac                   	lods   %ds:(%si),%al
   1fbe7:	80 3e 3f 38 00       	cmpb   $0x0,0x383f
   1fbec:	74 10                	je     0x1fbfe
   1fbee:	3c 20                	cmp    $0x20,%al
   1fbf0:	74 ee                	je     0x1fbe0
   1fbf2:	3c 09                	cmp    $0x9,%al
   1fbf4:	74 ea                	je     0x1fbe0
   1fbf6:	3c 0a                	cmp    $0xa,%al
   1fbf8:	74 e6                	je     0x1fbe0
   1fbfa:	3c 0d                	cmp    $0xd,%al
   1fbfc:	74 e2                	je     0x1fbe0
   1fbfe:	3c 61                	cmp    $0x61,%al
   1fc00:	72 06                	jb     0x1fc08
   1fc02:	3c 7a                	cmp    $0x7a,%al
   1fc04:	77 02                	ja     0x1fc08
   1fc06:	24 5f                	and    $0x5f,%al
===== 0x1FBE0 =====
   1fbcc:	f6 c5 10             	test   $0x10,%ch
   1fbcf:	75 06                	jne    0x1fbd7
   1fbd1:	ff 06 36 38          	incw   0x3836
   1fbd5:	b4 20                	mov    $0x20,%ah
   1fbd7:	0a ec                	or     %ah,%ch
   1fbd9:	ff 06 34 38          	incw   0x3834
   1fbdd:	32 e4                	xor    %ah,%ah
   1fbdf:	c3                   	ret
   1fbe0:	3b 36 32 38          	cmp    0x3832,%si
   1fbe4:	73 23                	jae    0x1fc09
   1fbe6:	ac                   	lods   %ds:(%si),%al
   1fbe7:	80 3e 3f 38 00       	cmpb   $0x0,0x383f
   1fbec:	74 10                	je     0x1fbfe
   1fbee:	3c 20                	cmp    $0x20,%al
   1fbf0:	74 ee                	je     0x1fbe0
   1fbf2:	3c 09                	cmp    $0x9,%al
   1fbf4:	74 ea                	je     0x1fbe0
   1fbf6:	3c 0a                	cmp    $0xa,%al
   1fbf8:	74 e6                	je     0x1fbe0
   1fbfa:	3c 0d                	cmp    $0xd,%al
   1fbfc:	74 e2                	je     0x1fbe0
   1fbfe:	3c 61                	cmp    $0x61,%al
   1fc00:	72 06                	jb     0x1fc08
   1fc02:	3c 7a                	cmp    $0x7a,%al
   1fc04:	77 02                	ja     0x1fc08
   1fc06:	24 5f                	and    $0x5f,%al
   1fc08:	c3                   	ret
   1fc09:	32 c0                	xor    %al,%al
   1fc0b:	c3                   	ret
   1fc0c:	66 fc                	data32 cld
   1fc0e:	ff                   	(bad)
   1fc0f:	ff                   	(bad)
   1fc10:	ff                   	(bad)
   1fc11:	ff                   	(bad)
   1fc12:	ff                   	(bad)
   1fc13:	ff                   	(bad)
   1fc14:	fe                   	(bad)
   1fc15:	3f                   	aas
   1fc16:	cd cc                	int    $0xcc
   1fc18:	cc                   	int3
   1fc19:	cc                   	int3
   1fc1a:	cc                   	int3
   1fc1b:	cc                   	int3
   1fc1c:	cc                   	int3
   1fc1d:	cc                   	int3
   1fc1e:	fb                   	sti
   1fc1f:	3f                   	aas
   1fc20:	be 70 38             	mov    $0x3870,%si
   1fc23:	c7 04 01 30          	movw   $0x3001,(%si)
   1fc27:	33 c0                	xor    %ax,%ax
   1fc29:	8b d0                	mov    %ax,%dx
   1fc2b:	40                   	inc    %ax
   1fc2c:	b3 20                	mov    $0x20,%bl
   1fc2e:	07                   	pop    %es
   1fc2f:	c3                   	ret
   1fc30:	0b d2                	or     %dx,%dx
   1fc32:	75 0b                	jne    0x1fc3f
   1fc34:	80 e1 0f             	and    $0xf,%cl
   1fc37:	74 0b                	je     0x1fc44
   1fc39:	81 f9 08 ff          	cmp    $0xff08,%cx
   1fc3d:	74 0a                	je     0x1fc49
   1fc3f:	be 81 38             	mov    $0x3881,%si
   1fc42:	eb 08                	jmp    0x1fc4c
   1fc44:	be 87 38             	mov    $0x3887,%si
   1fc47:	eb 03                	jmp    0x1fc4c
   1fc49:	be 8d 38             	mov    $0x388d,%si
   1fc4c:	ba 01 00             	mov    $0x1,%dx
   1fc4f:	07                   	pop    %es
   1fc50:	33 c0                	xor    %ax,%ax
   1fc52:	c3                   	ret
   1fc53:	06                   	push   %es
   1fc54:	8c d8                	mov    %ds,%ax
   1fc56:	8e c0                	mov    %ax,%es
   1fc58:	fc                   	cld
   1fc59:	bf 64 38             	mov    $0x3864,%di
   1fc5c:	57                   	push   %di
   1fc5d:	b9 04 00             	mov    $0x4,%cx
   1fc60:	f3 a5                	rep movsw %ds:(%si),%es:(%di)
   1fc62:	5e                   	pop    %si
   1fc63:	8b 4c 06             	mov    0x6(%si),%cx
   1fc66:	80 64 07 7f          	andb   $0x7f,0x7(%si)
   1fc6a:	b3 20                	mov    $0x20,%bl
   1fc6c:	8b 04                	mov    (%si),%ax
