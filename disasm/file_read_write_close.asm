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
