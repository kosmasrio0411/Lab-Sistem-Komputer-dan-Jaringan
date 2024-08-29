
multiply_numbers.exe:     file format pei-x86-64


Disassembly of section .text:

0000000140001000 <__mingw_invalidParameterHandler>:
   140001000:	c3                   	ret
   140001001:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001008:	00 00 00 00 
   14000100c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001010 <pre_c_init>:
   140001010:	48 83 ec 28          	sub    $0x28,%rsp
   140001014:	48 8b 05 15 34 00 00 	mov    0x3415(%rip),%rax        # 140004430 <.refptr.__mingw_initltsdrot_force>
   14000101b:	31 c9                	xor    %ecx,%ecx
   14000101d:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001023:	48 8b 05 16 34 00 00 	mov    0x3416(%rip),%rax        # 140004440 <.refptr.__mingw_initltsdyn_force>
   14000102a:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   140001030:	48 8b 05 19 34 00 00 	mov    0x3419(%rip),%rax        # 140004450 <.refptr.__mingw_initltssuo_force>
   140001037:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   14000103d:	48 8b 05 6c 33 00 00 	mov    0x336c(%rip),%rax        # 1400043b0 <.refptr.__ImageBase>
   140001044:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   140001049:	75 0f                	jne    14000105a <pre_c_init+0x4a>
   14000104b:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   14000104f:	48 01 d0             	add    %rdx,%rax
   140001052:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140001058:	74 66                	je     1400010c0 <pre_c_init+0xb0>
   14000105a:	48 8b 05 bf 33 00 00 	mov    0x33bf(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   140001061:	89 0d a5 5f 00 00    	mov    %ecx,0x5fa5(%rip)        # 14000700c <managedapp>
   140001067:	8b 00                	mov    (%rax),%eax
   140001069:	85 c0                	test   %eax,%eax
   14000106b:	74 43                	je     1400010b0 <pre_c_init+0xa0>
   14000106d:	b9 02 00 00 00       	mov    $0x2,%ecx
   140001072:	e8 a1 15 00 00       	call   140002618 <__set_app_type>
   140001077:	e8 24 15 00 00       	call   1400025a0 <__p__fmode>
   14000107c:	48 8b 15 6d 34 00 00 	mov    0x346d(%rip),%rdx        # 1400044f0 <.refptr._fmode>
   140001083:	8b 12                	mov    (%rdx),%edx
   140001085:	89 10                	mov    %edx,(%rax)
   140001087:	e8 24 15 00 00       	call   1400025b0 <__p__commode>
   14000108c:	48 8b 15 3d 34 00 00 	mov    0x343d(%rip),%rdx        # 1400044d0 <.refptr._commode>
   140001093:	8b 12                	mov    (%rdx),%edx
   140001095:	89 10                	mov    %edx,(%rax)
   140001097:	e8 14 05 00 00       	call   1400015b0 <_setargv>
   14000109c:	48 8b 05 cd 32 00 00 	mov    0x32cd(%rip),%rax        # 140004370 <.refptr._MINGW_INSTALL_DEBUG_MATHERR>
   1400010a3:	83 38 01             	cmpl   $0x1,(%rax)
   1400010a6:	74 50                	je     1400010f8 <pre_c_init+0xe8>
   1400010a8:	31 c0                	xor    %eax,%eax
   1400010aa:	48 83 c4 28          	add    $0x28,%rsp
   1400010ae:	c3                   	ret
   1400010af:	90                   	nop
   1400010b0:	b9 01 00 00 00       	mov    $0x1,%ecx
   1400010b5:	e8 5e 15 00 00       	call   140002618 <__set_app_type>
   1400010ba:	eb bb                	jmp    140001077 <pre_c_init+0x67>
   1400010bc:	0f 1f 40 00          	nopl   0x0(%rax)
   1400010c0:	0f b7 50 18          	movzwl 0x18(%rax),%edx
   1400010c4:	66 81 fa 0b 01       	cmp    $0x10b,%dx
   1400010c9:	74 45                	je     140001110 <pre_c_init+0x100>
   1400010cb:	66 81 fa 0b 02       	cmp    $0x20b,%dx
   1400010d0:	75 88                	jne    14000105a <pre_c_init+0x4a>
   1400010d2:	83 b8 84 00 00 00 0e 	cmpl   $0xe,0x84(%rax)
   1400010d9:	0f 86 7b ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   1400010df:	8b 90 f8 00 00 00    	mov    0xf8(%rax),%edx
   1400010e5:	31 c9                	xor    %ecx,%ecx
   1400010e7:	85 d2                	test   %edx,%edx
   1400010e9:	0f 95 c1             	setne  %cl
   1400010ec:	e9 69 ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   1400010f1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400010f8:	48 8b 0d 11 34 00 00 	mov    0x3411(%rip),%rcx        # 140004510 <.refptr._matherr>
   1400010ff:	e8 1c 0c 00 00       	call   140001d20 <__mingw_setusermatherr>
   140001104:	31 c0                	xor    %eax,%eax
   140001106:	48 83 c4 28          	add    $0x28,%rsp
   14000110a:	c3                   	ret
   14000110b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001110:	83 78 74 0e          	cmpl   $0xe,0x74(%rax)
   140001114:	0f 86 40 ff ff ff    	jbe    14000105a <pre_c_init+0x4a>
   14000111a:	44 8b 80 e8 00 00 00 	mov    0xe8(%rax),%r8d
   140001121:	31 c9                	xor    %ecx,%ecx
   140001123:	45 85 c0             	test   %r8d,%r8d
   140001126:	0f 95 c1             	setne  %cl
   140001129:	e9 2c ff ff ff       	jmp    14000105a <pre_c_init+0x4a>
   14000112e:	66 90                	xchg   %ax,%ax

0000000140001130 <pre_cpp_init>:
   140001130:	48 83 ec 38          	sub    $0x38,%rsp
   140001134:	48 8b 05 e5 33 00 00 	mov    0x33e5(%rip),%rax        # 140004520 <.refptr._newmode>
   14000113b:	4c 8d 05 d6 5e 00 00 	lea    0x5ed6(%rip),%r8        # 140007018 <envp>
   140001142:	48 8d 15 d7 5e 00 00 	lea    0x5ed7(%rip),%rdx        # 140007020 <argv>
   140001149:	48 8d 0d d8 5e 00 00 	lea    0x5ed8(%rip),%rcx        # 140007028 <argc>
   140001150:	8b 00                	mov    (%rax),%eax
   140001152:	89 05 ac 5e 00 00    	mov    %eax,0x5eac(%rip)        # 140007004 <startinfo>
   140001158:	48 8b 05 81 33 00 00 	mov    0x3381(%rip),%rax        # 1400044e0 <.refptr._dowildcard>
   14000115f:	44 8b 08             	mov    (%rax),%r9d
   140001162:	48 8d 05 9b 5e 00 00 	lea    0x5e9b(%rip),%rax        # 140007004 <startinfo>
   140001169:	48 89 44 24 20       	mov    %rax,0x20(%rsp)
   14000116e:	e8 95 14 00 00       	call   140002608 <__getmainargs>
   140001173:	90                   	nop
   140001174:	48 83 c4 38          	add    $0x38,%rsp
   140001178:	c3                   	ret
   140001179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001180 <__tmainCRTStartup>:
   140001180:	41 54                	push   %r12
   140001182:	55                   	push   %rbp
   140001183:	57                   	push   %rdi
   140001184:	56                   	push   %rsi
   140001185:	53                   	push   %rbx
   140001186:	48 83 ec 20          	sub    $0x20,%rsp
   14000118a:	48 8b 1d df 32 00 00 	mov    0x32df(%rip),%rbx        # 140004470 <.refptr.__native_startup_lock>
   140001191:	48 8b 2d 38 70 00 00 	mov    0x7038(%rip),%rbp        # 1400081d0 <__imp_Sleep>
   140001198:	31 ff                	xor    %edi,%edi
   14000119a:	65 48 8b 04 25 30 00 	mov    %gs:0x30,%rax
   1400011a1:	00 00 
   1400011a3:	48 8b 70 08          	mov    0x8(%rax),%rsi
   1400011a7:	eb 17                	jmp    1400011c0 <__tmainCRTStartup+0x40>
   1400011a9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400011b0:	48 39 c6             	cmp    %rax,%rsi
   1400011b3:	0f 84 67 01 00 00    	je     140001320 <__tmainCRTStartup+0x1a0>
   1400011b9:	b9 e8 03 00 00       	mov    $0x3e8,%ecx
   1400011be:	ff d5                	call   *%rbp
   1400011c0:	48 89 f8             	mov    %rdi,%rax
   1400011c3:	f0 48 0f b1 33       	lock cmpxchg %rsi,(%rbx)
   1400011c8:	48 85 c0             	test   %rax,%rax
   1400011cb:	75 e3                	jne    1400011b0 <__tmainCRTStartup+0x30>
   1400011cd:	48 8b 35 ac 32 00 00 	mov    0x32ac(%rip),%rsi        # 140004480 <.refptr.__native_startup_state>
   1400011d4:	31 ff                	xor    %edi,%edi
   1400011d6:	8b 06                	mov    (%rsi),%eax
   1400011d8:	83 f8 01             	cmp    $0x1,%eax
   1400011db:	0f 84 56 01 00 00    	je     140001337 <__tmainCRTStartup+0x1b7>
   1400011e1:	8b 06                	mov    (%rsi),%eax
   1400011e3:	85 c0                	test   %eax,%eax
   1400011e5:	0f 84 b5 01 00 00    	je     1400013a0 <__tmainCRTStartup+0x220>
   1400011eb:	c7 05 13 5e 00 00 01 	movl   $0x1,0x5e13(%rip)        # 140007008 <has_cctor>
   1400011f2:	00 00 00 
   1400011f5:	8b 06                	mov    (%rsi),%eax
   1400011f7:	83 f8 01             	cmp    $0x1,%eax
   1400011fa:	0f 84 4c 01 00 00    	je     14000134c <__tmainCRTStartup+0x1cc>
   140001200:	85 ff                	test   %edi,%edi
   140001202:	0f 84 65 01 00 00    	je     14000136d <__tmainCRTStartup+0x1ed>
   140001208:	48 8b 05 d1 31 00 00 	mov    0x31d1(%rip),%rax        # 1400043e0 <.refptr.__dyn_tls_init_callback>
   14000120f:	48 8b 00             	mov    (%rax),%rax
   140001212:	48 85 c0             	test   %rax,%rax
   140001215:	74 0c                	je     140001223 <__tmainCRTStartup+0xa3>
   140001217:	45 31 c0             	xor    %r8d,%r8d
   14000121a:	ba 02 00 00 00       	mov    $0x2,%edx
   14000121f:	31 c9                	xor    %ecx,%ecx
   140001221:	ff d0                	call   *%rax
   140001223:	e8 58 07 00 00       	call   140001980 <_pei386_runtime_relocator>
   140001228:	48 8b 0d d1 32 00 00 	mov    0x32d1(%rip),%rcx        # 140004500 <.refptr._gnu_exception_handler>
   14000122f:	ff 15 93 6f 00 00    	call   *0x6f93(%rip)        # 1400081c8 <__imp_SetUnhandledExceptionFilter>
   140001235:	48 8b 15 24 32 00 00 	mov    0x3224(%rip),%rdx        # 140004460 <.refptr.__mingw_oldexcpt_handler>
   14000123c:	48 8d 0d bd fd ff ff 	lea    -0x243(%rip),%rcx        # 140001000 <__mingw_invalidParameterHandler>
   140001243:	48 89 02             	mov    %rax,(%rdx)
   140001246:	e8 85 13 00 00       	call   1400025d0 <_set_invalid_parameter_handler>
   14000124b:	e8 40 05 00 00       	call   140001790 <_fpreset>
   140001250:	8b 1d d2 5d 00 00    	mov    0x5dd2(%rip),%ebx        # 140007028 <argc>
   140001256:	8d 7b 01             	lea    0x1(%rbx),%edi
   140001259:	48 63 ff             	movslq %edi,%rdi
   14000125c:	48 c1 e7 03          	shl    $0x3,%rdi
   140001260:	48 89 f9             	mov    %rdi,%rcx
   140001263:	e8 10 14 00 00       	call   140002678 <malloc>
   140001268:	4c 8b 25 b1 5d 00 00 	mov    0x5db1(%rip),%r12        # 140007020 <argv>
   14000126f:	48 89 c5             	mov    %rax,%rbp
   140001272:	85 db                	test   %ebx,%ebx
   140001274:	0f 8e 46 01 00 00    	jle    1400013c0 <__tmainCRTStartup+0x240>
   14000127a:	48 83 ef 08          	sub    $0x8,%rdi
   14000127e:	31 db                	xor    %ebx,%ebx
   140001280:	49 8b 0c 1c          	mov    (%r12,%rbx,1),%rcx
   140001284:	e8 07 14 00 00       	call   140002690 <strlen>
   140001289:	48 8d 70 01          	lea    0x1(%rax),%rsi
   14000128d:	48 89 f1             	mov    %rsi,%rcx
   140001290:	e8 e3 13 00 00       	call   140002678 <malloc>
   140001295:	49 89 f0             	mov    %rsi,%r8
   140001298:	48 89 44 1d 00       	mov    %rax,0x0(%rbp,%rbx,1)
   14000129d:	49 8b 14 1c          	mov    (%r12,%rbx,1),%rdx
   1400012a1:	48 89 c1             	mov    %rax,%rcx
   1400012a4:	48 83 c3 08          	add    $0x8,%rbx
   1400012a8:	e8 d3 13 00 00       	call   140002680 <memcpy>
   1400012ad:	48 39 df             	cmp    %rbx,%rdi
   1400012b0:	75 ce                	jne    140001280 <__tmainCRTStartup+0x100>
   1400012b2:	48 01 ef             	add    %rbp,%rdi
   1400012b5:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
   1400012bc:	48 89 2d 5d 5d 00 00 	mov    %rbp,0x5d5d(%rip)        # 140007020 <argv>
   1400012c3:	e8 c8 02 00 00       	call   140001590 <__main>
   1400012c8:	48 8b 05 21 31 00 00 	mov    0x3121(%rip),%rax        # 1400043f0 <.refptr.__imp___initenv>
   1400012cf:	4c 8b 05 42 5d 00 00 	mov    0x5d42(%rip),%r8        # 140007018 <envp>
   1400012d6:	8b 0d 4c 5d 00 00    	mov    0x5d4c(%rip),%ecx        # 140007028 <argc>
   1400012dc:	48 8b 00             	mov    (%rax),%rax
   1400012df:	4c 89 00             	mov    %r8,(%rax)
   1400012e2:	48 8b 15 37 5d 00 00 	mov    0x5d37(%rip),%rdx        # 140007020 <argv>
   1400012e9:	e8 62 01 00 00       	call   140001450 <main>
   1400012ee:	8b 0d 18 5d 00 00    	mov    0x5d18(%rip),%ecx        # 14000700c <managedapp>
   1400012f4:	89 05 16 5d 00 00    	mov    %eax,0x5d16(%rip)        # 140007010 <mainret>
   1400012fa:	85 c9                	test   %ecx,%ecx
   1400012fc:	0f 84 c6 00 00 00    	je     1400013c8 <__tmainCRTStartup+0x248>
   140001302:	8b 15 00 5d 00 00    	mov    0x5d00(%rip),%edx        # 140007008 <has_cctor>
   140001308:	85 d2                	test   %edx,%edx
   14000130a:	74 74                	je     140001380 <__tmainCRTStartup+0x200>
   14000130c:	48 83 c4 20          	add    $0x20,%rsp
   140001310:	5b                   	pop    %rbx
   140001311:	5e                   	pop    %rsi
   140001312:	5f                   	pop    %rdi
   140001313:	5d                   	pop    %rbp
   140001314:	41 5c                	pop    %r12
   140001316:	c3                   	ret
   140001317:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000131e:	00 00 
   140001320:	48 8b 35 59 31 00 00 	mov    0x3159(%rip),%rsi        # 140004480 <.refptr.__native_startup_state>
   140001327:	bf 01 00 00 00       	mov    $0x1,%edi
   14000132c:	8b 06                	mov    (%rsi),%eax
   14000132e:	83 f8 01             	cmp    $0x1,%eax
   140001331:	0f 85 aa fe ff ff    	jne    1400011e1 <__tmainCRTStartup+0x61>
   140001337:	b9 1f 00 00 00       	mov    $0x1f,%ecx
   14000133c:	e8 e7 12 00 00       	call   140002628 <_amsg_exit>
   140001341:	8b 06                	mov    (%rsi),%eax
   140001343:	83 f8 01             	cmp    $0x1,%eax
   140001346:	0f 85 b4 fe ff ff    	jne    140001200 <__tmainCRTStartup+0x80>
   14000134c:	48 8b 15 4d 31 00 00 	mov    0x314d(%rip),%rdx        # 1400044a0 <.refptr.__xc_z>
   140001353:	48 8b 0d 36 31 00 00 	mov    0x3136(%rip),%rcx        # 140004490 <.refptr.__xc_a>
   14000135a:	e8 d9 12 00 00       	call   140002638 <_initterm>
   14000135f:	c7 06 02 00 00 00    	movl   $0x2,(%rsi)
   140001365:	85 ff                	test   %edi,%edi
   140001367:	0f 85 9b fe ff ff    	jne    140001208 <__tmainCRTStartup+0x88>
   14000136d:	31 c0                	xor    %eax,%eax
   14000136f:	48 87 03             	xchg   %rax,(%rbx)
   140001372:	e9 91 fe ff ff       	jmp    140001208 <__tmainCRTStartup+0x88>
   140001377:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000137e:	00 00 
   140001380:	e8 ab 12 00 00       	call   140002630 <_cexit>
   140001385:	8b 05 85 5c 00 00    	mov    0x5c85(%rip),%eax        # 140007010 <mainret>
   14000138b:	48 83 c4 20          	add    $0x20,%rsp
   14000138f:	5b                   	pop    %rbx
   140001390:	5e                   	pop    %rsi
   140001391:	5f                   	pop    %rdi
   140001392:	5d                   	pop    %rbp
   140001393:	41 5c                	pop    %r12
   140001395:	c3                   	ret
   140001396:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000139d:	00 00 00 
   1400013a0:	48 8b 15 19 31 00 00 	mov    0x3119(%rip),%rdx        # 1400044c0 <.refptr.__xi_z>
   1400013a7:	48 8b 0d 02 31 00 00 	mov    0x3102(%rip),%rcx        # 1400044b0 <.refptr.__xi_a>
   1400013ae:	c7 06 01 00 00 00    	movl   $0x1,(%rsi)
   1400013b4:	e8 7f 12 00 00       	call   140002638 <_initterm>
   1400013b9:	e9 37 fe ff ff       	jmp    1400011f5 <__tmainCRTStartup+0x75>
   1400013be:	66 90                	xchg   %ax,%ax
   1400013c0:	48 89 c7             	mov    %rax,%rdi
   1400013c3:	e9 ed fe ff ff       	jmp    1400012b5 <__tmainCRTStartup+0x135>
   1400013c8:	89 c1                	mov    %eax,%ecx
   1400013ca:	e8 89 12 00 00       	call   140002658 <exit>
   1400013cf:	90                   	nop

00000001400013d0 <WinMainCRTStartup>:
   1400013d0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013d4 <.l_startw>:
   1400013d4:	48 8b 05 45 30 00 00 	mov    0x3045(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013db:	c7 00 01 00 00 00    	movl   $0x1,(%rax)
   1400013e1:	e8 9a fd ff ff       	call   140001180 <__tmainCRTStartup>
   1400013e6:	90                   	nop

00000001400013e7 <.l_endw>:
   1400013e7:	90                   	nop
   1400013e8:	48 83 c4 28          	add    $0x28,%rsp
   1400013ec:	c3                   	ret
   1400013ed:	0f 1f 00             	nopl   (%rax)

00000001400013f0 <mainCRTStartup>:
   1400013f0:	48 83 ec 28          	sub    $0x28,%rsp

00000001400013f4 <.l_start>:
   1400013f4:	48 8b 05 25 30 00 00 	mov    0x3025(%rip),%rax        # 140004420 <.refptr.__mingw_app_type>
   1400013fb:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001401:	e8 7a fd ff ff       	call   140001180 <__tmainCRTStartup>
   140001406:	90                   	nop

0000000140001407 <.l_end>:
   140001407:	90                   	nop
   140001408:	48 83 c4 28          	add    $0x28,%rsp
   14000140c:	c3                   	ret
   14000140d:	0f 1f 00             	nopl   (%rax)

0000000140001410 <atexit>:
   140001410:	48 83 ec 28          	sub    $0x28,%rsp
   140001414:	e8 27 12 00 00       	call   140002640 <_onexit>
   140001419:	48 83 f8 01          	cmp    $0x1,%rax
   14000141d:	19 c0                	sbb    %eax,%eax
   14000141f:	48 83 c4 28          	add    $0x28,%rsp
   140001423:	c3                   	ret
   140001424:	90                   	nop
   140001425:	90                   	nop
   140001426:	90                   	nop
   140001427:	90                   	nop
   140001428:	90                   	nop
   140001429:	90                   	nop
   14000142a:	90                   	nop
   14000142b:	90                   	nop
   14000142c:	90                   	nop
   14000142d:	90                   	nop
   14000142e:	90                   	nop
   14000142f:	90                   	nop

0000000140001430 <__gcc_register_frame>:
   140001430:	48 8d 0d 09 00 00 00 	lea    0x9(%rip),%rcx        # 140001440 <__gcc_deregister_frame>
   140001437:	e9 d4 ff ff ff       	jmp    140001410 <atexit>
   14000143c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001440 <__gcc_deregister_frame>:
   140001440:	c3                   	ret
   140001441:	90                   	nop
   140001442:	90                   	nop
   140001443:	90                   	nop
   140001444:	90                   	nop
   140001445:	90                   	nop
   140001446:	90                   	nop
   140001447:	90                   	nop
   140001448:	90                   	nop
   140001449:	90                   	nop
   14000144a:	90                   	nop
   14000144b:	90                   	nop
   14000144c:	90                   	nop
   14000144d:	90                   	nop
   14000144e:	90                   	nop
   14000144f:	90                   	nop

0000000140001450 <main>:
   140001450:	55                   	push   %rbp
   140001451:	48 89 e5             	mov    %rsp,%rbp
   140001454:	48 83 ec 30          	sub    $0x30,%rsp
   140001458:	e8 33 01 00 00       	call   140001590 <__main>
   14000145d:	c7 45 fc 05 00 00 00 	movl   $0x5,-0x4(%rbp)
   140001464:	c7 45 f8 0a 00 00 00 	movl   $0xa,-0x8(%rbp)
   14000146b:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
   140001472:	8b 45 fc             	mov    -0x4(%rbp),%eax
   140001475:	0f af 45 f8          	imul   -0x8(%rbp),%eax
   140001479:	89 45 f4             	mov    %eax,-0xc(%rbp)
   14000147c:	48 8d 05 7d 2b 00 00 	lea    0x2b7d(%rip),%rax        # 140004000 <.rdata>
   140001483:	48 89 c2             	mov    %rax,%rdx
   140001486:	48 8b 05 f3 2e 00 00 	mov    0x2ef3(%rip),%rax        # 140004380 <__fu0__ZSt4cout>
   14000148d:	48 89 c1             	mov    %rax,%rcx
   140001490:	e8 2b 00 00 00       	call   1400014c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   140001495:	48 89 c1             	mov    %rax,%rcx
   140001498:	8b 45 f4             	mov    -0xc(%rbp),%eax
   14000149b:	89 c2                	mov    %eax,%edx
   14000149d:	e8 2e 00 00 00       	call   1400014d0 <_ZNSolsEi>
   1400014a2:	48 89 c1             	mov    %rax,%rcx
   1400014a5:	48 8b 05 e4 2e 00 00 	mov    0x2ee4(%rip),%rax        # 140004390 <.refptr._ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400014ac:	48 89 c2             	mov    %rax,%rdx
   1400014af:	e8 24 00 00 00       	call   1400014d8 <_ZNSolsEPFRSoS_E>
   1400014b4:	b8 00 00 00 00       	mov    $0x0,%eax
   1400014b9:	48 83 c4 30          	add    $0x30,%rsp
   1400014bd:	5d                   	pop    %rbp
   1400014be:	c3                   	ret
   1400014bf:	90                   	nop

00000001400014c0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>:
   1400014c0:	ff 25 1a 6e 00 00    	jmp    *0x6e1a(%rip)        # 1400082e0 <__imp__ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc>
   1400014c6:	90                   	nop
   1400014c7:	90                   	nop

00000001400014c8 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>:
   1400014c8:	ff 25 0a 6e 00 00    	jmp    *0x6e0a(%rip)        # 1400082d8 <__imp__ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_>
   1400014ce:	90                   	nop
   1400014cf:	90                   	nop

00000001400014d0 <_ZNSolsEi>:
   1400014d0:	ff 25 f2 6d 00 00    	jmp    *0x6df2(%rip)        # 1400082c8 <__imp__ZNSolsEi>
   1400014d6:	90                   	nop
   1400014d7:	90                   	nop

00000001400014d8 <_ZNSolsEPFRSoS_E>:
   1400014d8:	ff 25 e2 6d 00 00    	jmp    *0x6de2(%rip)        # 1400082c0 <__imp__ZNSolsEPFRSoS_E>
   1400014de:	90                   	nop
   1400014df:	90                   	nop

00000001400014e0 <__do_global_dtors>:
   1400014e0:	48 83 ec 28          	sub    $0x28,%rsp
   1400014e4:	48 8b 05 15 1b 00 00 	mov    0x1b15(%rip),%rax        # 140003000 <__data_start__>
   1400014eb:	48 8b 00             	mov    (%rax),%rax
   1400014ee:	48 85 c0             	test   %rax,%rax
   1400014f1:	74 22                	je     140001515 <__do_global_dtors+0x35>
   1400014f3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400014f8:	ff d0                	call   *%rax
   1400014fa:	48 8b 05 ff 1a 00 00 	mov    0x1aff(%rip),%rax        # 140003000 <__data_start__>
   140001501:	48 8d 50 08          	lea    0x8(%rax),%rdx
   140001505:	48 8b 40 08          	mov    0x8(%rax),%rax
   140001509:	48 89 15 f0 1a 00 00 	mov    %rdx,0x1af0(%rip)        # 140003000 <__data_start__>
   140001510:	48 85 c0             	test   %rax,%rax
   140001513:	75 e3                	jne    1400014f8 <__do_global_dtors+0x18>
   140001515:	48 83 c4 28          	add    $0x28,%rsp
   140001519:	c3                   	ret
   14000151a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001520 <__do_global_ctors>:
   140001520:	56                   	push   %rsi
   140001521:	53                   	push   %rbx
   140001522:	48 83 ec 28          	sub    $0x28,%rsp
   140001526:	48 8b 15 73 2e 00 00 	mov    0x2e73(%rip),%rdx        # 1400043a0 <.refptr.__CTOR_LIST__>
   14000152d:	48 8b 02             	mov    (%rdx),%rax
   140001530:	89 c1                	mov    %eax,%ecx
   140001532:	83 f8 ff             	cmp    $0xffffffff,%eax
   140001535:	74 39                	je     140001570 <__do_global_ctors+0x50>
   140001537:	85 c9                	test   %ecx,%ecx
   140001539:	74 20                	je     14000155b <__do_global_ctors+0x3b>
   14000153b:	89 c8                	mov    %ecx,%eax
   14000153d:	83 e9 01             	sub    $0x1,%ecx
   140001540:	48 8d 1c c2          	lea    (%rdx,%rax,8),%rbx
   140001544:	48 29 c8             	sub    %rcx,%rax
   140001547:	48 8d 74 c2 f8       	lea    -0x8(%rdx,%rax,8),%rsi
   14000154c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001550:	ff 13                	call   *(%rbx)
   140001552:	48 83 eb 08          	sub    $0x8,%rbx
   140001556:	48 39 f3             	cmp    %rsi,%rbx
   140001559:	75 f5                	jne    140001550 <__do_global_ctors+0x30>
   14000155b:	48 8d 0d 7e ff ff ff 	lea    -0x82(%rip),%rcx        # 1400014e0 <__do_global_dtors>
   140001562:	48 83 c4 28          	add    $0x28,%rsp
   140001566:	5b                   	pop    %rbx
   140001567:	5e                   	pop    %rsi
   140001568:	e9 a3 fe ff ff       	jmp    140001410 <atexit>
   14000156d:	0f 1f 00             	nopl   (%rax)
   140001570:	31 c0                	xor    %eax,%eax
   140001572:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001578:	44 8d 40 01          	lea    0x1(%rax),%r8d
   14000157c:	89 c1                	mov    %eax,%ecx
   14000157e:	4a 83 3c c2 00       	cmpq   $0x0,(%rdx,%r8,8)
   140001583:	4c 89 c0             	mov    %r8,%rax
   140001586:	75 f0                	jne    140001578 <__do_global_ctors+0x58>
   140001588:	eb ad                	jmp    140001537 <__do_global_ctors+0x17>
   14000158a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000140001590 <__main>:
   140001590:	8b 05 9a 5a 00 00    	mov    0x5a9a(%rip),%eax        # 140007030 <initialized>
   140001596:	85 c0                	test   %eax,%eax
   140001598:	74 06                	je     1400015a0 <__main+0x10>
   14000159a:	c3                   	ret
   14000159b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400015a0:	c7 05 86 5a 00 00 01 	movl   $0x1,0x5a86(%rip)        # 140007030 <initialized>
   1400015a7:	00 00 00 
   1400015aa:	e9 71 ff ff ff       	jmp    140001520 <__do_global_ctors>
   1400015af:	90                   	nop

00000001400015b0 <_setargv>:
   1400015b0:	31 c0                	xor    %eax,%eax
   1400015b2:	c3                   	ret
   1400015b3:	90                   	nop
   1400015b4:	90                   	nop
   1400015b5:	90                   	nop
   1400015b6:	90                   	nop
   1400015b7:	90                   	nop
   1400015b8:	90                   	nop
   1400015b9:	90                   	nop
   1400015ba:	90                   	nop
   1400015bb:	90                   	nop
   1400015bc:	90                   	nop
   1400015bd:	90                   	nop
   1400015be:	90                   	nop
   1400015bf:	90                   	nop

00000001400015c0 <__dyn_tls_dtor>:
   1400015c0:	48 83 ec 28          	sub    $0x28,%rsp
   1400015c4:	83 fa 03             	cmp    $0x3,%edx
   1400015c7:	74 17                	je     1400015e0 <__dyn_tls_dtor+0x20>
   1400015c9:	85 d2                	test   %edx,%edx
   1400015cb:	74 13                	je     1400015e0 <__dyn_tls_dtor+0x20>
   1400015cd:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015d2:	48 83 c4 28          	add    $0x28,%rsp
   1400015d6:	c3                   	ret
   1400015d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   1400015de:	00 00 
   1400015e0:	e8 7b 0a 00 00       	call   140002060 <__mingw_TLScallback>
   1400015e5:	b8 01 00 00 00       	mov    $0x1,%eax
   1400015ea:	48 83 c4 28          	add    $0x28,%rsp
   1400015ee:	c3                   	ret
   1400015ef:	90                   	nop

00000001400015f0 <__dyn_tls_init>:
   1400015f0:	56                   	push   %rsi
   1400015f1:	53                   	push   %rbx
   1400015f2:	48 83 ec 28          	sub    $0x28,%rsp
   1400015f6:	48 8b 05 63 2d 00 00 	mov    0x2d63(%rip),%rax        # 140004360 <.refptr._CRT_MT>
   1400015fd:	83 38 02             	cmpl   $0x2,(%rax)
   140001600:	74 06                	je     140001608 <__dyn_tls_init+0x18>
   140001602:	c7 00 02 00 00 00    	movl   $0x2,(%rax)
   140001608:	83 fa 02             	cmp    $0x2,%edx
   14000160b:	74 13                	je     140001620 <__dyn_tls_init+0x30>
   14000160d:	83 fa 01             	cmp    $0x1,%edx
   140001610:	74 4e                	je     140001660 <__dyn_tls_init+0x70>
   140001612:	b8 01 00 00 00       	mov    $0x1,%eax
   140001617:	48 83 c4 28          	add    $0x28,%rsp
   14000161b:	5b                   	pop    %rbx
   14000161c:	5e                   	pop    %rsi
   14000161d:	c3                   	ret
   14000161e:	66 90                	xchg   %ax,%ax
   140001620:	48 8d 1d 31 7a 00 00 	lea    0x7a31(%rip),%rbx        # 140009058 <__xd_z>
   140001627:	48 8d 35 2a 7a 00 00 	lea    0x7a2a(%rip),%rsi        # 140009058 <__xd_z>
   14000162e:	48 39 f3             	cmp    %rsi,%rbx
   140001631:	74 df                	je     140001612 <__dyn_tls_init+0x22>
   140001633:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001638:	48 8b 03             	mov    (%rbx),%rax
   14000163b:	48 85 c0             	test   %rax,%rax
   14000163e:	74 02                	je     140001642 <__dyn_tls_init+0x52>
   140001640:	ff d0                	call   *%rax
   140001642:	48 83 c3 08          	add    $0x8,%rbx
   140001646:	48 39 f3             	cmp    %rsi,%rbx
   140001649:	75 ed                	jne    140001638 <__dyn_tls_init+0x48>
   14000164b:	b8 01 00 00 00       	mov    $0x1,%eax
   140001650:	48 83 c4 28          	add    $0x28,%rsp
   140001654:	5b                   	pop    %rbx
   140001655:	5e                   	pop    %rsi
   140001656:	c3                   	ret
   140001657:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000165e:	00 00 
   140001660:	e8 fb 09 00 00       	call   140002060 <__mingw_TLScallback>
   140001665:	b8 01 00 00 00       	mov    $0x1,%eax
   14000166a:	48 83 c4 28          	add    $0x28,%rsp
   14000166e:	5b                   	pop    %rbx
   14000166f:	5e                   	pop    %rsi
   140001670:	c3                   	ret
   140001671:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001678:	00 00 00 00 
   14000167c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140001680 <__tlregdtor>:
   140001680:	31 c0                	xor    %eax,%eax
   140001682:	c3                   	ret
   140001683:	90                   	nop
   140001684:	90                   	nop
   140001685:	90                   	nop
   140001686:	90                   	nop
   140001687:	90                   	nop
   140001688:	90                   	nop
   140001689:	90                   	nop
   14000168a:	90                   	nop
   14000168b:	90                   	nop
   14000168c:	90                   	nop
   14000168d:	90                   	nop
   14000168e:	90                   	nop
   14000168f:	90                   	nop

0000000140001690 <_matherr>:
   140001690:	56                   	push   %rsi
   140001691:	53                   	push   %rbx
   140001692:	48 83 ec 78          	sub    $0x78,%rsp
   140001696:	0f 11 74 24 40       	movups %xmm6,0x40(%rsp)
   14000169b:	0f 11 7c 24 50       	movups %xmm7,0x50(%rsp)
   1400016a0:	44 0f 11 44 24 60    	movups %xmm8,0x60(%rsp)
   1400016a6:	83 39 06             	cmpl   $0x6,(%rcx)
   1400016a9:	0f 87 cd 00 00 00    	ja     14000177c <_matherr+0xec>
   1400016af:	8b 01                	mov    (%rcx),%eax
   1400016b1:	48 8d 15 ec 2a 00 00 	lea    0x2aec(%rip),%rdx        # 1400041a4 <.rdata+0x124>
   1400016b8:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   1400016bc:	48 01 d0             	add    %rdx,%rax
   1400016bf:	ff e0                	jmp    *%rax
   1400016c1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400016c8:	48 8d 1d d0 29 00 00 	lea    0x29d0(%rip),%rbx        # 14000409f <.rdata+0x1f>
   1400016cf:	f2 44 0f 10 41 20    	movsd  0x20(%rcx),%xmm8
   1400016d5:	f2 0f 10 79 18       	movsd  0x18(%rcx),%xmm7
   1400016da:	f2 0f 10 71 10       	movsd  0x10(%rcx),%xmm6
   1400016df:	48 8b 71 08          	mov    0x8(%rcx),%rsi
   1400016e3:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400016e8:	e8 f3 0e 00 00       	call   1400025e0 <__acrt_iob_func>
   1400016ed:	f2 44 0f 11 44 24 30 	movsd  %xmm8,0x30(%rsp)
   1400016f4:	49 89 d8             	mov    %rbx,%r8
   1400016f7:	48 8d 15 7a 2a 00 00 	lea    0x2a7a(%rip),%rdx        # 140004178 <.rdata+0xf8>
   1400016fe:	f2 0f 11 7c 24 28    	movsd  %xmm7,0x28(%rsp)
   140001704:	48 89 c1             	mov    %rax,%rcx
   140001707:	49 89 f1             	mov    %rsi,%r9
   14000170a:	f2 0f 11 74 24 20    	movsd  %xmm6,0x20(%rsp)
   140001710:	e8 4b 0f 00 00       	call   140002660 <fprintf>
   140001715:	90                   	nop
   140001716:	0f 10 74 24 40       	movups 0x40(%rsp),%xmm6
   14000171b:	0f 10 7c 24 50       	movups 0x50(%rsp),%xmm7
   140001720:	31 c0                	xor    %eax,%eax
   140001722:	44 0f 10 44 24 60    	movups 0x60(%rsp),%xmm8
   140001728:	48 83 c4 78          	add    $0x78,%rsp
   14000172c:	5b                   	pop    %rbx
   14000172d:	5e                   	pop    %rsi
   14000172e:	c3                   	ret
   14000172f:	90                   	nop
   140001730:	48 8d 1d 49 29 00 00 	lea    0x2949(%rip),%rbx        # 140004080 <.rdata>
   140001737:	eb 96                	jmp    1400016cf <_matherr+0x3f>
   140001739:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001740:	48 8d 1d 99 29 00 00 	lea    0x2999(%rip),%rbx        # 1400040e0 <.rdata+0x60>
   140001747:	eb 86                	jmp    1400016cf <_matherr+0x3f>
   140001749:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001750:	48 8d 1d 69 29 00 00 	lea    0x2969(%rip),%rbx        # 1400040c0 <.rdata+0x40>
   140001757:	e9 73 ff ff ff       	jmp    1400016cf <_matherr+0x3f>
   14000175c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001760:	48 8d 1d c9 29 00 00 	lea    0x29c9(%rip),%rbx        # 140004130 <.rdata+0xb0>
   140001767:	e9 63 ff ff ff       	jmp    1400016cf <_matherr+0x3f>
   14000176c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001770:	48 8d 1d 91 29 00 00 	lea    0x2991(%rip),%rbx        # 140004108 <.rdata+0x88>
   140001777:	e9 53 ff ff ff       	jmp    1400016cf <_matherr+0x3f>
   14000177c:	48 8d 1d e3 29 00 00 	lea    0x29e3(%rip),%rbx        # 140004166 <.rdata+0xe6>
   140001783:	e9 47 ff ff ff       	jmp    1400016cf <_matherr+0x3f>
   140001788:	90                   	nop
   140001789:	90                   	nop
   14000178a:	90                   	nop
   14000178b:	90                   	nop
   14000178c:	90                   	nop
   14000178d:	90                   	nop
   14000178e:	90                   	nop
   14000178f:	90                   	nop

0000000140001790 <_fpreset>:
   140001790:	db e3                	fninit
   140001792:	c3                   	ret
   140001793:	90                   	nop
   140001794:	90                   	nop
   140001795:	90                   	nop
   140001796:	90                   	nop
   140001797:	90                   	nop
   140001798:	90                   	nop
   140001799:	90                   	nop
   14000179a:	90                   	nop
   14000179b:	90                   	nop
   14000179c:	90                   	nop
   14000179d:	90                   	nop
   14000179e:	90                   	nop
   14000179f:	90                   	nop

00000001400017a0 <__report_error>:
   1400017a0:	56                   	push   %rsi
   1400017a1:	53                   	push   %rbx
   1400017a2:	48 83 ec 38          	sub    $0x38,%rsp
   1400017a6:	48 89 cb             	mov    %rcx,%rbx
   1400017a9:	48 8d 44 24 58       	lea    0x58(%rsp),%rax
   1400017ae:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017b3:	48 89 54 24 58       	mov    %rdx,0x58(%rsp)
   1400017b8:	4c 89 44 24 60       	mov    %r8,0x60(%rsp)
   1400017bd:	4c 89 4c 24 68       	mov    %r9,0x68(%rsp)
   1400017c2:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
   1400017c7:	e8 14 0e 00 00       	call   1400025e0 <__acrt_iob_func>
   1400017cc:	41 b8 1b 00 00 00    	mov    $0x1b,%r8d
   1400017d2:	ba 01 00 00 00       	mov    $0x1,%edx
   1400017d7:	48 8d 0d e2 29 00 00 	lea    0x29e2(%rip),%rcx        # 1400041c0 <.rdata>
   1400017de:	49 89 c1             	mov    %rax,%r9
   1400017e1:	e8 8a 0e 00 00       	call   140002670 <fwrite>
   1400017e6:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
   1400017eb:	b9 02 00 00 00       	mov    $0x2,%ecx
   1400017f0:	e8 eb 0d 00 00       	call   1400025e0 <__acrt_iob_func>
   1400017f5:	48 89 da             	mov    %rbx,%rdx
   1400017f8:	48 89 c1             	mov    %rax,%rcx
   1400017fb:	49 89 f0             	mov    %rsi,%r8
   1400017fe:	e8 9d 0e 00 00       	call   1400026a0 <vfprintf>
   140001803:	e8 40 0e 00 00       	call   140002648 <abort>
   140001808:	90                   	nop
   140001809:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140001810 <mark_section_writable>:
   140001810:	57                   	push   %rdi
   140001811:	56                   	push   %rsi
   140001812:	53                   	push   %rbx
   140001813:	48 83 ec 50          	sub    $0x50,%rsp
   140001817:	48 63 35 76 58 00 00 	movslq 0x5876(%rip),%rsi        # 140007094 <maxSections>
   14000181e:	48 89 cb             	mov    %rcx,%rbx
   140001821:	85 f6                	test   %esi,%esi
   140001823:	0f 8e 17 01 00 00    	jle    140001940 <mark_section_writable+0x130>
   140001829:	48 8b 05 68 58 00 00 	mov    0x5868(%rip),%rax        # 140007098 <the_secs>
   140001830:	45 31 c9             	xor    %r9d,%r9d
   140001833:	48 83 c0 18          	add    $0x18,%rax
   140001837:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000183e:	00 00 
   140001840:	4c 8b 00             	mov    (%rax),%r8
   140001843:	4c 39 c3             	cmp    %r8,%rbx
   140001846:	72 13                	jb     14000185b <mark_section_writable+0x4b>
   140001848:	48 8b 50 08          	mov    0x8(%rax),%rdx
   14000184c:	8b 52 08             	mov    0x8(%rdx),%edx
   14000184f:	49 01 d0             	add    %rdx,%r8
   140001852:	4c 39 c3             	cmp    %r8,%rbx
   140001855:	0f 82 8a 00 00 00    	jb     1400018e5 <mark_section_writable+0xd5>
   14000185b:	41 83 c1 01          	add    $0x1,%r9d
   14000185f:	48 83 c0 28          	add    $0x28,%rax
   140001863:	41 39 f1             	cmp    %esi,%r9d
   140001866:	75 d8                	jne    140001840 <mark_section_writable+0x30>
   140001868:	48 89 d9             	mov    %rbx,%rcx
   14000186b:	e8 10 0a 00 00       	call   140002280 <__mingw_GetSectionForAddress>
   140001870:	48 89 c7             	mov    %rax,%rdi
   140001873:	48 85 c0             	test   %rax,%rax
   140001876:	0f 84 e6 00 00 00    	je     140001962 <mark_section_writable+0x152>
   14000187c:	48 8b 05 15 58 00 00 	mov    0x5815(%rip),%rax        # 140007098 <the_secs>
   140001883:	48 8d 1c b6          	lea    (%rsi,%rsi,4),%rbx
   140001887:	48 c1 e3 03          	shl    $0x3,%rbx
   14000188b:	48 01 d8             	add    %rbx,%rax
   14000188e:	48 89 78 20          	mov    %rdi,0x20(%rax)
   140001892:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
   140001898:	e8 23 0b 00 00       	call   1400023c0 <_GetPEImageBase>
   14000189d:	8b 57 0c             	mov    0xc(%rdi),%edx
   1400018a0:	41 b8 30 00 00 00    	mov    $0x30,%r8d
   1400018a6:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   1400018aa:	48 8b 05 e7 57 00 00 	mov    0x57e7(%rip),%rax        # 140007098 <the_secs>
   1400018b1:	48 8d 54 24 20       	lea    0x20(%rsp),%rdx
   1400018b6:	48 89 4c 18 18       	mov    %rcx,0x18(%rax,%rbx,1)
   1400018bb:	ff 15 27 69 00 00    	call   *0x6927(%rip)        # 1400081e8 <__imp_VirtualQuery>
   1400018c1:	48 85 c0             	test   %rax,%rax
   1400018c4:	0f 84 7d 00 00 00    	je     140001947 <mark_section_writable+0x137>
   1400018ca:	8b 44 24 44          	mov    0x44(%rsp),%eax
   1400018ce:	8d 50 fc             	lea    -0x4(%rax),%edx
   1400018d1:	83 e2 fb             	and    $0xfffffffb,%edx
   1400018d4:	74 08                	je     1400018de <mark_section_writable+0xce>
   1400018d6:	8d 50 c0             	lea    -0x40(%rax),%edx
   1400018d9:	83 e2 bf             	and    $0xffffffbf,%edx
   1400018dc:	75 12                	jne    1400018f0 <mark_section_writable+0xe0>
   1400018de:	83 05 af 57 00 00 01 	addl   $0x1,0x57af(%rip)        # 140007094 <maxSections>
   1400018e5:	48 83 c4 50          	add    $0x50,%rsp
   1400018e9:	5b                   	pop    %rbx
   1400018ea:	5e                   	pop    %rsi
   1400018eb:	5f                   	pop    %rdi
   1400018ec:	c3                   	ret
   1400018ed:	0f 1f 00             	nopl   (%rax)
   1400018f0:	83 f8 02             	cmp    $0x2,%eax
   1400018f3:	48 8b 4c 24 20       	mov    0x20(%rsp),%rcx
   1400018f8:	48 8b 54 24 38       	mov    0x38(%rsp),%rdx
   1400018fd:	41 b8 40 00 00 00    	mov    $0x40,%r8d
   140001903:	b8 04 00 00 00       	mov    $0x4,%eax
   140001908:	44 0f 44 c0          	cmove  %eax,%r8d
   14000190c:	48 03 1d 85 57 00 00 	add    0x5785(%rip),%rbx        # 140007098 <the_secs>
   140001913:	48 89 4b 08          	mov    %rcx,0x8(%rbx)
   140001917:	49 89 d9             	mov    %rbx,%r9
   14000191a:	48 89 53 10          	mov    %rdx,0x10(%rbx)
   14000191e:	ff 15 bc 68 00 00    	call   *0x68bc(%rip)        # 1400081e0 <__imp_VirtualProtect>
   140001924:	85 c0                	test   %eax,%eax
   140001926:	75 b6                	jne    1400018de <mark_section_writable+0xce>
   140001928:	ff 15 82 68 00 00    	call   *0x6882(%rip)        # 1400081b0 <__imp_GetLastError>
   14000192e:	48 8d 0d 03 29 00 00 	lea    0x2903(%rip),%rcx        # 140004238 <.rdata+0x78>
   140001935:	89 c2                	mov    %eax,%edx
   140001937:	e8 64 fe ff ff       	call   1400017a0 <__report_error>
   14000193c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001940:	31 f6                	xor    %esi,%esi
   140001942:	e9 21 ff ff ff       	jmp    140001868 <mark_section_writable+0x58>
   140001947:	48 8b 05 4a 57 00 00 	mov    0x574a(%rip),%rax        # 140007098 <the_secs>
   14000194e:	8b 57 08             	mov    0x8(%rdi),%edx
   140001951:	48 8d 0d a8 28 00 00 	lea    0x28a8(%rip),%rcx        # 140004200 <.rdata+0x40>
   140001958:	4c 8b 44 18 18       	mov    0x18(%rax,%rbx,1),%r8
   14000195d:	e8 3e fe ff ff       	call   1400017a0 <__report_error>
   140001962:	48 89 da             	mov    %rbx,%rdx
   140001965:	48 8d 0d 74 28 00 00 	lea    0x2874(%rip),%rcx        # 1400041e0 <.rdata+0x20>
   14000196c:	e8 2f fe ff ff       	call   1400017a0 <__report_error>
   140001971:	90                   	nop
   140001972:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140001979:	00 00 00 00 
   14000197d:	0f 1f 00             	nopl   (%rax)

0000000140001980 <_pei386_runtime_relocator>:
   140001980:	55                   	push   %rbp
   140001981:	41 57                	push   %r15
   140001983:	41 56                	push   %r14
   140001985:	41 55                	push   %r13
   140001987:	41 54                	push   %r12
   140001989:	57                   	push   %rdi
   14000198a:	56                   	push   %rsi
   14000198b:	53                   	push   %rbx
   14000198c:	48 83 ec 48          	sub    $0x48,%rsp
   140001990:	48 8d 6c 24 40       	lea    0x40(%rsp),%rbp
   140001995:	44 8b 25 f4 56 00 00 	mov    0x56f4(%rip),%r12d        # 140007090 <was_init.0>
   14000199c:	45 85 e4             	test   %r12d,%r12d
   14000199f:	74 17                	je     1400019b8 <_pei386_runtime_relocator+0x38>
   1400019a1:	48 8d 65 08          	lea    0x8(%rbp),%rsp
   1400019a5:	5b                   	pop    %rbx
   1400019a6:	5e                   	pop    %rsi
   1400019a7:	5f                   	pop    %rdi
   1400019a8:	41 5c                	pop    %r12
   1400019aa:	41 5d                	pop    %r13
   1400019ac:	41 5e                	pop    %r14
   1400019ae:	41 5f                	pop    %r15
   1400019b0:	5d                   	pop    %rbp
   1400019b1:	c3                   	ret
   1400019b2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   1400019b8:	c7 05 ce 56 00 00 01 	movl   $0x1,0x56ce(%rip)        # 140007090 <was_init.0>
   1400019bf:	00 00 00 
   1400019c2:	e8 39 09 00 00       	call   140002300 <__mingw_GetSectionCount>
   1400019c7:	48 98                	cltq
   1400019c9:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   1400019cd:	48 8d 04 c5 0f 00 00 	lea    0xf(,%rax,8),%rax
   1400019d4:	00 
   1400019d5:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
   1400019d9:	e8 82 0b 00 00       	call   140002560 <___chkstk_ms>
   1400019de:	4c 8b 2d db 29 00 00 	mov    0x29db(%rip),%r13        # 1400043c0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST_END__>
   1400019e5:	48 8b 1d e4 29 00 00 	mov    0x29e4(%rip),%rbx        # 1400043d0 <.refptr.__RUNTIME_PSEUDO_RELOC_LIST__>
   1400019ec:	c7 05 9e 56 00 00 00 	movl   $0x0,0x569e(%rip)        # 140007094 <maxSections>
   1400019f3:	00 00 00 
   1400019f6:	48 29 c4             	sub    %rax,%rsp
   1400019f9:	48 8d 44 24 30       	lea    0x30(%rsp),%rax
   1400019fe:	48 89 05 93 56 00 00 	mov    %rax,0x5693(%rip)        # 140007098 <the_secs>
   140001a05:	4c 89 e8             	mov    %r13,%rax
   140001a08:	48 29 d8             	sub    %rbx,%rax
   140001a0b:	48 83 f8 07          	cmp    $0x7,%rax
   140001a0f:	7e 90                	jle    1400019a1 <_pei386_runtime_relocator+0x21>
   140001a11:	8b 13                	mov    (%rbx),%edx
   140001a13:	48 83 f8 0b          	cmp    $0xb,%rax
   140001a17:	0f 8f 03 01 00 00    	jg     140001b20 <_pei386_runtime_relocator+0x1a0>
   140001a1d:	8b 03                	mov    (%rbx),%eax
   140001a1f:	85 c0                	test   %eax,%eax
   140001a21:	0f 85 69 02 00 00    	jne    140001c90 <_pei386_runtime_relocator+0x310>
   140001a27:	8b 43 04             	mov    0x4(%rbx),%eax
   140001a2a:	85 c0                	test   %eax,%eax
   140001a2c:	0f 85 5e 02 00 00    	jne    140001c90 <_pei386_runtime_relocator+0x310>
   140001a32:	8b 53 08             	mov    0x8(%rbx),%edx
   140001a35:	83 fa 01             	cmp    $0x1,%edx
   140001a38:	0f 85 92 02 00 00    	jne    140001cd0 <_pei386_runtime_relocator+0x350>
   140001a3e:	48 83 c3 0c          	add    $0xc,%rbx
   140001a42:	4c 39 eb             	cmp    %r13,%rbx
   140001a45:	0f 83 56 ff ff ff    	jae    1400019a1 <_pei386_runtime_relocator+0x21>
   140001a4b:	4c 8b 35 5e 29 00 00 	mov    0x295e(%rip),%r14        # 1400043b0 <.refptr.__ImageBase>
   140001a52:	41 bf ff ff ff ff    	mov    $0xffffffff,%r15d
   140001a58:	eb 65                	jmp    140001abf <_pei386_runtime_relocator+0x13f>
   140001a5a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001a60:	83 f9 08             	cmp    $0x8,%ecx
   140001a63:	0f 84 d7 00 00 00    	je     140001b40 <_pei386_runtime_relocator+0x1c0>
   140001a69:	83 f9 10             	cmp    $0x10,%ecx
   140001a6c:	0f 85 50 02 00 00    	jne    140001cc2 <_pei386_runtime_relocator+0x342>
   140001a72:	0f b7 37             	movzwl (%rdi),%esi
   140001a75:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001a7b:	66 85 f6             	test   %si,%si
   140001a7e:	0f 89 cc 01 00 00    	jns    140001c50 <_pei386_runtime_relocator+0x2d0>
   140001a84:	48 81 ce 00 00 ff ff 	or     $0xffffffffffff0000,%rsi
   140001a8b:	48 29 c6             	sub    %rax,%rsi
   140001a8e:	4c 01 ce             	add    %r9,%rsi
   140001a91:	85 d2                	test   %edx,%edx
   140001a93:	75 12                	jne    140001aa7 <_pei386_runtime_relocator+0x127>
   140001a95:	48 81 fe 00 80 ff ff 	cmp    $0xffffffffffff8000,%rsi
   140001a9c:	7c 65                	jl     140001b03 <_pei386_runtime_relocator+0x183>
   140001a9e:	48 81 fe ff ff 00 00 	cmp    $0xffff,%rsi
   140001aa5:	7f 5c                	jg     140001b03 <_pei386_runtime_relocator+0x183>
   140001aa7:	48 89 f9             	mov    %rdi,%rcx
   140001aaa:	e8 61 fd ff ff       	call   140001810 <mark_section_writable>
   140001aaf:	66 89 37             	mov    %si,(%rdi)
   140001ab2:	48 83 c3 0c          	add    $0xc,%rbx
   140001ab6:	4c 39 eb             	cmp    %r13,%rbx
   140001ab9:	0f 83 d1 00 00 00    	jae    140001b90 <_pei386_runtime_relocator+0x210>
   140001abf:	8b 03                	mov    (%rbx),%eax
   140001ac1:	8b 53 08             	mov    0x8(%rbx),%edx
   140001ac4:	8b 7b 04             	mov    0x4(%rbx),%edi
   140001ac7:	4c 01 f0             	add    %r14,%rax
   140001aca:	0f b6 ca             	movzbl %dl,%ecx
   140001acd:	4c 8b 08             	mov    (%rax),%r9
   140001ad0:	4c 01 f7             	add    %r14,%rdi
   140001ad3:	83 f9 20             	cmp    $0x20,%ecx
   140001ad6:	0f 84 0c 01 00 00    	je     140001be8 <_pei386_runtime_relocator+0x268>
   140001adc:	76 82                	jbe    140001a60 <_pei386_runtime_relocator+0xe0>
   140001ade:	83 f9 40             	cmp    $0x40,%ecx
   140001ae1:	0f 85 db 01 00 00    	jne    140001cc2 <_pei386_runtime_relocator+0x342>
   140001ae7:	48 8b 37             	mov    (%rdi),%rsi
   140001aea:	89 d1                	mov    %edx,%ecx
   140001aec:	48 29 c6             	sub    %rax,%rsi
   140001aef:	4c 01 ce             	add    %r9,%rsi
   140001af2:	81 e1 c0 00 00 00    	and    $0xc0,%ecx
   140001af8:	0f 85 42 01 00 00    	jne    140001c40 <_pei386_runtime_relocator+0x2c0>
   140001afe:	48 85 f6             	test   %rsi,%rsi
   140001b01:	78 af                	js     140001ab2 <_pei386_runtime_relocator+0x132>
   140001b03:	48 89 74 24 20       	mov    %rsi,0x20(%rsp)
   140001b08:	89 ca                	mov    %ecx,%edx
   140001b0a:	49 89 f8             	mov    %rdi,%r8
   140001b0d:	48 8d 0d b4 27 00 00 	lea    0x27b4(%rip),%rcx        # 1400042c8 <.rdata+0x108>
   140001b14:	e8 87 fc ff ff       	call   1400017a0 <__report_error>
   140001b19:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140001b20:	85 d2                	test   %edx,%edx
   140001b22:	0f 85 68 01 00 00    	jne    140001c90 <_pei386_runtime_relocator+0x310>
   140001b28:	8b 43 04             	mov    0x4(%rbx),%eax
   140001b2b:	89 c2                	mov    %eax,%edx
   140001b2d:	0b 53 08             	or     0x8(%rbx),%edx
   140001b30:	0f 85 f4 fe ff ff    	jne    140001a2a <_pei386_runtime_relocator+0xaa>
   140001b36:	48 83 c3 0c          	add    $0xc,%rbx
   140001b3a:	e9 de fe ff ff       	jmp    140001a1d <_pei386_runtime_relocator+0x9d>
   140001b3f:	90                   	nop
   140001b40:	0f b6 37             	movzbl (%rdi),%esi
   140001b43:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001b49:	40 84 f6             	test   %sil,%sil
   140001b4c:	0f 89 26 01 00 00    	jns    140001c78 <_pei386_runtime_relocator+0x2f8>
   140001b52:	48 81 ce 00 ff ff ff 	or     $0xffffffffffffff00,%rsi
   140001b59:	48 29 c6             	sub    %rax,%rsi
   140001b5c:	4c 01 ce             	add    %r9,%rsi
   140001b5f:	85 d2                	test   %edx,%edx
   140001b61:	75 0f                	jne    140001b72 <_pei386_runtime_relocator+0x1f2>
   140001b63:	48 81 fe ff 00 00 00 	cmp    $0xff,%rsi
   140001b6a:	7f 97                	jg     140001b03 <_pei386_runtime_relocator+0x183>
   140001b6c:	48 83 fe 80          	cmp    $0xffffffffffffff80,%rsi
   140001b70:	7c 91                	jl     140001b03 <_pei386_runtime_relocator+0x183>
   140001b72:	48 89 f9             	mov    %rdi,%rcx
   140001b75:	48 83 c3 0c          	add    $0xc,%rbx
   140001b79:	e8 92 fc ff ff       	call   140001810 <mark_section_writable>
   140001b7e:	40 88 37             	mov    %sil,(%rdi)
   140001b81:	4c 39 eb             	cmp    %r13,%rbx
   140001b84:	0f 82 35 ff ff ff    	jb     140001abf <_pei386_runtime_relocator+0x13f>
   140001b8a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140001b90:	8b 15 fe 54 00 00    	mov    0x54fe(%rip),%edx        # 140007094 <maxSections>
   140001b96:	85 d2                	test   %edx,%edx
   140001b98:	0f 8e 03 fe ff ff    	jle    1400019a1 <_pei386_runtime_relocator+0x21>
   140001b9e:	48 8b 35 3b 66 00 00 	mov    0x663b(%rip),%rsi        # 1400081e0 <__imp_VirtualProtect>
   140001ba5:	31 db                	xor    %ebx,%ebx
   140001ba7:	48 8d 7d fc          	lea    -0x4(%rbp),%rdi
   140001bab:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001bb0:	48 8b 05 e1 54 00 00 	mov    0x54e1(%rip),%rax        # 140007098 <the_secs>
   140001bb7:	48 01 d8             	add    %rbx,%rax
   140001bba:	44 8b 00             	mov    (%rax),%r8d
   140001bbd:	45 85 c0             	test   %r8d,%r8d
   140001bc0:	74 0d                	je     140001bcf <_pei386_runtime_relocator+0x24f>
   140001bc2:	48 8b 50 10          	mov    0x10(%rax),%rdx
   140001bc6:	48 8b 48 08          	mov    0x8(%rax),%rcx
   140001bca:	49 89 f9             	mov    %rdi,%r9
   140001bcd:	ff d6                	call   *%rsi
   140001bcf:	41 83 c4 01          	add    $0x1,%r12d
   140001bd3:	48 83 c3 28          	add    $0x28,%rbx
   140001bd7:	44 3b 25 b6 54 00 00 	cmp    0x54b6(%rip),%r12d        # 140007094 <maxSections>
   140001bde:	7c d0                	jl     140001bb0 <_pei386_runtime_relocator+0x230>
   140001be0:	e9 bc fd ff ff       	jmp    1400019a1 <_pei386_runtime_relocator+0x21>
   140001be5:	0f 1f 00             	nopl   (%rax)
   140001be8:	8b 37                	mov    (%rdi),%esi
   140001bea:	81 e2 c0 00 00 00    	and    $0xc0,%edx
   140001bf0:	85 f6                	test   %esi,%esi
   140001bf2:	79 74                	jns    140001c68 <_pei386_runtime_relocator+0x2e8>
   140001bf4:	49 bb 00 00 00 00 ff 	movabs $0xffffffff00000000,%r11
   140001bfb:	ff ff ff 
   140001bfe:	4c 09 de             	or     %r11,%rsi
   140001c01:	48 29 c6             	sub    %rax,%rsi
   140001c04:	4c 01 ce             	add    %r9,%rsi
   140001c07:	85 d2                	test   %edx,%edx
   140001c09:	75 1c                	jne    140001c27 <_pei386_runtime_relocator+0x2a7>
   140001c0b:	4c 39 fe             	cmp    %r15,%rsi
   140001c0e:	0f 8f ef fe ff ff    	jg     140001b03 <_pei386_runtime_relocator+0x183>
   140001c14:	48 b8 ff ff ff 7f ff 	movabs $0xffffffff7fffffff,%rax
   140001c1b:	ff ff ff 
   140001c1e:	48 39 c6             	cmp    %rax,%rsi
   140001c21:	0f 8e dc fe ff ff    	jle    140001b03 <_pei386_runtime_relocator+0x183>
   140001c27:	48 89 f9             	mov    %rdi,%rcx
   140001c2a:	e8 e1 fb ff ff       	call   140001810 <mark_section_writable>
   140001c2f:	89 37                	mov    %esi,(%rdi)
   140001c31:	e9 7c fe ff ff       	jmp    140001ab2 <_pei386_runtime_relocator+0x132>
   140001c36:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001c3d:	00 00 00 
   140001c40:	48 89 f9             	mov    %rdi,%rcx
   140001c43:	e8 c8 fb ff ff       	call   140001810 <mark_section_writable>
   140001c48:	48 89 37             	mov    %rsi,(%rdi)
   140001c4b:	e9 62 fe ff ff       	jmp    140001ab2 <_pei386_runtime_relocator+0x132>
   140001c50:	48 29 c6             	sub    %rax,%rsi
   140001c53:	4c 01 ce             	add    %r9,%rsi
   140001c56:	85 d2                	test   %edx,%edx
   140001c58:	0f 84 37 fe ff ff    	je     140001a95 <_pei386_runtime_relocator+0x115>
   140001c5e:	e9 44 fe ff ff       	jmp    140001aa7 <_pei386_runtime_relocator+0x127>
   140001c63:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c68:	48 29 c6             	sub    %rax,%rsi
   140001c6b:	4c 01 ce             	add    %r9,%rsi
   140001c6e:	85 d2                	test   %edx,%edx
   140001c70:	74 99                	je     140001c0b <_pei386_runtime_relocator+0x28b>
   140001c72:	eb b3                	jmp    140001c27 <_pei386_runtime_relocator+0x2a7>
   140001c74:	0f 1f 40 00          	nopl   0x0(%rax)
   140001c78:	48 29 c6             	sub    %rax,%rsi
   140001c7b:	4c 01 ce             	add    %r9,%rsi
   140001c7e:	85 d2                	test   %edx,%edx
   140001c80:	0f 84 dd fe ff ff    	je     140001b63 <_pei386_runtime_relocator+0x1e3>
   140001c86:	e9 e7 fe ff ff       	jmp    140001b72 <_pei386_runtime_relocator+0x1f2>
   140001c8b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001c90:	4c 39 eb             	cmp    %r13,%rbx
   140001c93:	0f 83 08 fd ff ff    	jae    1400019a1 <_pei386_runtime_relocator+0x21>
   140001c99:	4c 8b 35 10 27 00 00 	mov    0x2710(%rip),%r14        # 1400043b0 <.refptr.__ImageBase>
   140001ca0:	8b 73 04             	mov    0x4(%rbx),%esi
   140001ca3:	8b 3b                	mov    (%rbx),%edi
   140001ca5:	48 83 c3 08          	add    $0x8,%rbx
   140001ca9:	4c 01 f6             	add    %r14,%rsi
   140001cac:	03 3e                	add    (%rsi),%edi
   140001cae:	48 89 f1             	mov    %rsi,%rcx
   140001cb1:	e8 5a fb ff ff       	call   140001810 <mark_section_writable>
   140001cb6:	89 3e                	mov    %edi,(%rsi)
   140001cb8:	4c 39 eb             	cmp    %r13,%rbx
   140001cbb:	72 e3                	jb     140001ca0 <_pei386_runtime_relocator+0x320>
   140001cbd:	e9 ce fe ff ff       	jmp    140001b90 <_pei386_runtime_relocator+0x210>
   140001cc2:	89 ca                	mov    %ecx,%edx
   140001cc4:	48 8d 0d cd 25 00 00 	lea    0x25cd(%rip),%rcx        # 140004298 <.rdata+0xd8>
   140001ccb:	e8 d0 fa ff ff       	call   1400017a0 <__report_error>
   140001cd0:	48 8d 0d 89 25 00 00 	lea    0x2589(%rip),%rcx        # 140004260 <.rdata+0xa0>
   140001cd7:	e8 c4 fa ff ff       	call   1400017a0 <__report_error>
   140001cdc:	90                   	nop
   140001cdd:	90                   	nop
   140001cde:	90                   	nop
   140001cdf:	90                   	nop

0000000140001ce0 <__mingw_raise_matherr>:
   140001ce0:	48 83 ec 58          	sub    $0x58,%rsp
   140001ce4:	48 8b 05 b5 53 00 00 	mov    0x53b5(%rip),%rax        # 1400070a0 <stUserMathErr>
   140001ceb:	66 0f 14 d3          	unpcklpd %xmm3,%xmm2
   140001cef:	48 85 c0             	test   %rax,%rax
   140001cf2:	74 25                	je     140001d19 <__mingw_raise_matherr+0x39>
   140001cf4:	f2 0f 10 84 24 80 00 	movsd  0x80(%rsp),%xmm0
   140001cfb:	00 00 
   140001cfd:	89 4c 24 20          	mov    %ecx,0x20(%rsp)
   140001d01:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
   140001d06:	48 89 54 24 28       	mov    %rdx,0x28(%rsp)
   140001d0b:	0f 11 54 24 30       	movups %xmm2,0x30(%rsp)
   140001d10:	f2 0f 11 44 24 40    	movsd  %xmm0,0x40(%rsp)
   140001d16:	ff d0                	call   *%rax
   140001d18:	90                   	nop
   140001d19:	48 83 c4 58          	add    $0x58,%rsp
   140001d1d:	c3                   	ret
   140001d1e:	66 90                	xchg   %ax,%ax

0000000140001d20 <__mingw_setusermatherr>:
   140001d20:	48 89 0d 79 53 00 00 	mov    %rcx,0x5379(%rip)        # 1400070a0 <stUserMathErr>
   140001d27:	e9 f4 08 00 00       	jmp    140002620 <__setusermatherr>
   140001d2c:	90                   	nop
   140001d2d:	90                   	nop
   140001d2e:	90                   	nop
   140001d2f:	90                   	nop

0000000140001d30 <_gnu_exception_handler>:
   140001d30:	53                   	push   %rbx
   140001d31:	48 83 ec 20          	sub    $0x20,%rsp
   140001d35:	48 8b 11             	mov    (%rcx),%rdx
   140001d38:	8b 02                	mov    (%rdx),%eax
   140001d3a:	48 89 cb             	mov    %rcx,%rbx
   140001d3d:	89 c1                	mov    %eax,%ecx
   140001d3f:	81 e1 ff ff ff 20    	and    $0x20ffffff,%ecx
   140001d45:	81 f9 43 43 47 20    	cmp    $0x20474343,%ecx
   140001d4b:	0f 84 bf 00 00 00    	je     140001e10 <_gnu_exception_handler+0xe0>
   140001d51:	3d 96 00 00 c0       	cmp    $0xc0000096,%eax
   140001d56:	77 47                	ja     140001d9f <_gnu_exception_handler+0x6f>
   140001d58:	3d 8b 00 00 c0       	cmp    $0xc000008b,%eax
   140001d5d:	76 61                	jbe    140001dc0 <_gnu_exception_handler+0x90>
   140001d5f:	05 73 ff ff 3f       	add    $0x3fffff73,%eax
   140001d64:	83 f8 09             	cmp    $0x9,%eax
   140001d67:	0f 87 93 00 00 00    	ja     140001e00 <_gnu_exception_handler+0xd0>
   140001d6d:	48 8d 15 ac 25 00 00 	lea    0x25ac(%rip),%rdx        # 140004320 <.rdata>
   140001d74:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
   140001d78:	48 01 d0             	add    %rdx,%rax
   140001d7b:	ff e0                	jmp    *%rax
   140001d7d:	0f 1f 00             	nopl   (%rax)
   140001d80:	31 d2                	xor    %edx,%edx
   140001d82:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001d87:	e8 fc 08 00 00       	call   140002688 <signal>
   140001d8c:	48 83 f8 01          	cmp    $0x1,%rax
   140001d90:	0f 84 3e 01 00 00    	je     140001ed4 <_gnu_exception_handler+0x1a4>
   140001d96:	48 85 c0             	test   %rax,%rax
   140001d99:	0f 85 01 01 00 00    	jne    140001ea0 <_gnu_exception_handler+0x170>
   140001d9f:	48 8b 05 1a 53 00 00 	mov    0x531a(%rip),%rax        # 1400070c0 <__mingw_oldexcpt_handler>
   140001da6:	48 85 c0             	test   %rax,%rax
   140001da9:	74 75                	je     140001e20 <_gnu_exception_handler+0xf0>
   140001dab:	48 89 d9             	mov    %rbx,%rcx
   140001dae:	48 83 c4 20          	add    $0x20,%rsp
   140001db2:	5b                   	pop    %rbx
   140001db3:	48 ff e0             	rex.W jmp *%rax
   140001db6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   140001dbd:	00 00 00 
   140001dc0:	3d 05 00 00 c0       	cmp    $0xc0000005,%eax
   140001dc5:	0f 84 a5 00 00 00    	je     140001e70 <_gnu_exception_handler+0x140>
   140001dcb:	76 63                	jbe    140001e30 <_gnu_exception_handler+0x100>
   140001dcd:	3d 08 00 00 c0       	cmp    $0xc0000008,%eax
   140001dd2:	74 2c                	je     140001e00 <_gnu_exception_handler+0xd0>
   140001dd4:	3d 1d 00 00 c0       	cmp    $0xc000001d,%eax
   140001dd9:	75 c4                	jne    140001d9f <_gnu_exception_handler+0x6f>
   140001ddb:	31 d2                	xor    %edx,%edx
   140001ddd:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001de2:	e8 a1 08 00 00       	call   140002688 <signal>
   140001de7:	48 83 f8 01          	cmp    $0x1,%rax
   140001deb:	0f 84 cf 00 00 00    	je     140001ec0 <_gnu_exception_handler+0x190>
   140001df1:	48 85 c0             	test   %rax,%rax
   140001df4:	74 a9                	je     140001d9f <_gnu_exception_handler+0x6f>
   140001df6:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001dfb:	ff d0                	call   *%rax
   140001dfd:	0f 1f 00             	nopl   (%rax)
   140001e00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   140001e05:	eb 1b                	jmp    140001e22 <_gnu_exception_handler+0xf2>
   140001e07:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e0e:	00 00 
   140001e10:	f6 42 04 01          	testb  $0x1,0x4(%rdx)
   140001e14:	0f 85 37 ff ff ff    	jne    140001d51 <_gnu_exception_handler+0x21>
   140001e1a:	eb e4                	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001e1c:	0f 1f 40 00          	nopl   0x0(%rax)
   140001e20:	31 c0                	xor    %eax,%eax
   140001e22:	48 83 c4 20          	add    $0x20,%rsp
   140001e26:	5b                   	pop    %rbx
   140001e27:	c3                   	ret
   140001e28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   140001e2f:	00 
   140001e30:	3d 02 00 00 80       	cmp    $0x80000002,%eax
   140001e35:	0f 85 64 ff ff ff    	jne    140001d9f <_gnu_exception_handler+0x6f>
   140001e3b:	eb c3                	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001e3d:	0f 1f 00             	nopl   (%rax)
   140001e40:	31 d2                	xor    %edx,%edx
   140001e42:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e47:	e8 3c 08 00 00       	call   140002688 <signal>
   140001e4c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e50:	0f 85 40 ff ff ff    	jne    140001d96 <_gnu_exception_handler+0x66>
   140001e56:	ba 01 00 00 00       	mov    $0x1,%edx
   140001e5b:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001e60:	e8 23 08 00 00       	call   140002688 <signal>
   140001e65:	eb 99                	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001e67:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e6e:	00 00 
   140001e70:	31 d2                	xor    %edx,%edx
   140001e72:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e77:	e8 0c 08 00 00       	call   140002688 <signal>
   140001e7c:	48 83 f8 01          	cmp    $0x1,%rax
   140001e80:	74 2a                	je     140001eac <_gnu_exception_handler+0x17c>
   140001e82:	48 85 c0             	test   %rax,%rax
   140001e85:	0f 84 14 ff ff ff    	je     140001d9f <_gnu_exception_handler+0x6f>
   140001e8b:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001e90:	ff d0                	call   *%rax
   140001e92:	e9 69 ff ff ff       	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001e97:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   140001e9e:	00 00 
   140001ea0:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ea5:	ff d0                	call   *%rax
   140001ea7:	e9 54 ff ff ff       	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001eac:	ba 01 00 00 00       	mov    $0x1,%edx
   140001eb1:	b9 0b 00 00 00       	mov    $0xb,%ecx
   140001eb6:	e8 cd 07 00 00       	call   140002688 <signal>
   140001ebb:	e9 40 ff ff ff       	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001ec0:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ec5:	b9 04 00 00 00       	mov    $0x4,%ecx
   140001eca:	e8 b9 07 00 00       	call   140002688 <signal>
   140001ecf:	e9 2c ff ff ff       	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001ed4:	ba 01 00 00 00       	mov    $0x1,%edx
   140001ed9:	b9 08 00 00 00       	mov    $0x8,%ecx
   140001ede:	e8 a5 07 00 00       	call   140002688 <signal>
   140001ee3:	e8 a8 f8 ff ff       	call   140001790 <_fpreset>
   140001ee8:	e9 13 ff ff ff       	jmp    140001e00 <_gnu_exception_handler+0xd0>
   140001eed:	90                   	nop
   140001eee:	90                   	nop
   140001eef:	90                   	nop

0000000140001ef0 <__mingwthr_run_key_dtors.part.0>:
   140001ef0:	41 54                	push   %r12
   140001ef2:	55                   	push   %rbp
   140001ef3:	57                   	push   %rdi
   140001ef4:	56                   	push   %rsi
   140001ef5:	53                   	push   %rbx
   140001ef6:	48 83 ec 20          	sub    $0x20,%rsp
   140001efa:	4c 8d 25 ff 51 00 00 	lea    0x51ff(%rip),%r12        # 140007100 <__mingwthr_cs>
   140001f01:	4c 89 e1             	mov    %r12,%rcx
   140001f04:	ff 15 9e 62 00 00    	call   *0x629e(%rip)        # 1400081a8 <__imp_EnterCriticalSection>
   140001f0a:	48 8b 1d cf 51 00 00 	mov    0x51cf(%rip),%rbx        # 1400070e0 <key_dtor_list>
   140001f11:	48 85 db             	test   %rbx,%rbx
   140001f14:	74 36                	je     140001f4c <__mingwthr_run_key_dtors.part.0+0x5c>
   140001f16:	48 8b 2d bb 62 00 00 	mov    0x62bb(%rip),%rbp        # 1400081d8 <__imp_TlsGetValue>
   140001f1d:	48 8b 3d 8c 62 00 00 	mov    0x628c(%rip),%rdi        # 1400081b0 <__imp_GetLastError>
   140001f24:	0f 1f 40 00          	nopl   0x0(%rax)
   140001f28:	8b 0b                	mov    (%rbx),%ecx
   140001f2a:	ff d5                	call   *%rbp
   140001f2c:	48 89 c6             	mov    %rax,%rsi
   140001f2f:	ff d7                	call   *%rdi
   140001f31:	48 85 f6             	test   %rsi,%rsi
   140001f34:	74 0d                	je     140001f43 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f36:	85 c0                	test   %eax,%eax
   140001f38:	75 09                	jne    140001f43 <__mingwthr_run_key_dtors.part.0+0x53>
   140001f3a:	48 8b 43 08          	mov    0x8(%rbx),%rax
   140001f3e:	48 89 f1             	mov    %rsi,%rcx
   140001f41:	ff d0                	call   *%rax
   140001f43:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   140001f47:	48 85 db             	test   %rbx,%rbx
   140001f4a:	75 dc                	jne    140001f28 <__mingwthr_run_key_dtors.part.0+0x38>
   140001f4c:	4c 89 e1             	mov    %r12,%rcx
   140001f4f:	48 83 c4 20          	add    $0x20,%rsp
   140001f53:	5b                   	pop    %rbx
   140001f54:	5e                   	pop    %rsi
   140001f55:	5f                   	pop    %rdi
   140001f56:	5d                   	pop    %rbp
   140001f57:	41 5c                	pop    %r12
   140001f59:	48 ff 25 60 62 00 00 	rex.W jmp *0x6260(%rip)        # 1400081c0 <__imp_LeaveCriticalSection>

0000000140001f60 <___w64_mingwthr_add_key_dtor>:
   140001f60:	57                   	push   %rdi
   140001f61:	56                   	push   %rsi
   140001f62:	53                   	push   %rbx
   140001f63:	48 83 ec 20          	sub    $0x20,%rsp
   140001f67:	8b 05 7b 51 00 00    	mov    0x517b(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001f6d:	89 cf                	mov    %ecx,%edi
   140001f6f:	48 89 d6             	mov    %rdx,%rsi
   140001f72:	85 c0                	test   %eax,%eax
   140001f74:	75 0a                	jne    140001f80 <___w64_mingwthr_add_key_dtor+0x20>
   140001f76:	31 c0                	xor    %eax,%eax
   140001f78:	48 83 c4 20          	add    $0x20,%rsp
   140001f7c:	5b                   	pop    %rbx
   140001f7d:	5e                   	pop    %rsi
   140001f7e:	5f                   	pop    %rdi
   140001f7f:	c3                   	ret
   140001f80:	ba 18 00 00 00       	mov    $0x18,%edx
   140001f85:	b9 01 00 00 00       	mov    $0x1,%ecx
   140001f8a:	e8 c1 06 00 00       	call   140002650 <calloc>
   140001f8f:	48 89 c3             	mov    %rax,%rbx
   140001f92:	48 85 c0             	test   %rax,%rax
   140001f95:	74 33                	je     140001fca <___w64_mingwthr_add_key_dtor+0x6a>
   140001f97:	48 89 70 08          	mov    %rsi,0x8(%rax)
   140001f9b:	48 8d 35 5e 51 00 00 	lea    0x515e(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001fa2:	89 38                	mov    %edi,(%rax)
   140001fa4:	48 89 f1             	mov    %rsi,%rcx
   140001fa7:	ff 15 fb 61 00 00    	call   *0x61fb(%rip)        # 1400081a8 <__imp_EnterCriticalSection>
   140001fad:	48 8b 05 2c 51 00 00 	mov    0x512c(%rip),%rax        # 1400070e0 <key_dtor_list>
   140001fb4:	48 89 f1             	mov    %rsi,%rcx
   140001fb7:	48 89 1d 22 51 00 00 	mov    %rbx,0x5122(%rip)        # 1400070e0 <key_dtor_list>
   140001fbe:	48 89 43 10          	mov    %rax,0x10(%rbx)
   140001fc2:	ff 15 f8 61 00 00    	call   *0x61f8(%rip)        # 1400081c0 <__imp_LeaveCriticalSection>
   140001fc8:	eb ac                	jmp    140001f76 <___w64_mingwthr_add_key_dtor+0x16>
   140001fca:	83 c8 ff             	or     $0xffffffff,%eax
   140001fcd:	eb a9                	jmp    140001f78 <___w64_mingwthr_add_key_dtor+0x18>
   140001fcf:	90                   	nop

0000000140001fd0 <___w64_mingwthr_remove_key_dtor>:
   140001fd0:	56                   	push   %rsi
   140001fd1:	53                   	push   %rbx
   140001fd2:	48 83 ec 28          	sub    $0x28,%rsp
   140001fd6:	8b 05 0c 51 00 00    	mov    0x510c(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   140001fdc:	89 cb                	mov    %ecx,%ebx
   140001fde:	85 c0                	test   %eax,%eax
   140001fe0:	75 0e                	jne    140001ff0 <___w64_mingwthr_remove_key_dtor+0x20>
   140001fe2:	31 c0                	xor    %eax,%eax
   140001fe4:	48 83 c4 28          	add    $0x28,%rsp
   140001fe8:	5b                   	pop    %rbx
   140001fe9:	5e                   	pop    %rsi
   140001fea:	c3                   	ret
   140001feb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   140001ff0:	48 8d 35 09 51 00 00 	lea    0x5109(%rip),%rsi        # 140007100 <__mingwthr_cs>
   140001ff7:	48 89 f1             	mov    %rsi,%rcx
   140001ffa:	ff 15 a8 61 00 00    	call   *0x61a8(%rip)        # 1400081a8 <__imp_EnterCriticalSection>
   140002000:	48 8b 0d d9 50 00 00 	mov    0x50d9(%rip),%rcx        # 1400070e0 <key_dtor_list>
   140002007:	48 85 c9             	test   %rcx,%rcx
   14000200a:	74 27                	je     140002033 <___w64_mingwthr_remove_key_dtor+0x63>
   14000200c:	31 d2                	xor    %edx,%edx
   14000200e:	eb 0b                	jmp    14000201b <___w64_mingwthr_remove_key_dtor+0x4b>
   140002010:	48 89 ca             	mov    %rcx,%rdx
   140002013:	48 85 c0             	test   %rax,%rax
   140002016:	74 1b                	je     140002033 <___w64_mingwthr_remove_key_dtor+0x63>
   140002018:	48 89 c1             	mov    %rax,%rcx
   14000201b:	8b 01                	mov    (%rcx),%eax
   14000201d:	39 d8                	cmp    %ebx,%eax
   14000201f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   140002023:	75 eb                	jne    140002010 <___w64_mingwthr_remove_key_dtor+0x40>
   140002025:	48 85 d2             	test   %rdx,%rdx
   140002028:	74 1e                	je     140002048 <___w64_mingwthr_remove_key_dtor+0x78>
   14000202a:	48 89 42 10          	mov    %rax,0x10(%rdx)
   14000202e:	e8 35 06 00 00       	call   140002668 <free>
   140002033:	48 89 f1             	mov    %rsi,%rcx
   140002036:	ff 15 84 61 00 00    	call   *0x6184(%rip)        # 1400081c0 <__imp_LeaveCriticalSection>
   14000203c:	31 c0                	xor    %eax,%eax
   14000203e:	48 83 c4 28          	add    $0x28,%rsp
   140002042:	5b                   	pop    %rbx
   140002043:	5e                   	pop    %rsi
   140002044:	c3                   	ret
   140002045:	0f 1f 00             	nopl   (%rax)
   140002048:	48 89 05 91 50 00 00 	mov    %rax,0x5091(%rip)        # 1400070e0 <key_dtor_list>
   14000204f:	eb dd                	jmp    14000202e <___w64_mingwthr_remove_key_dtor+0x5e>
   140002051:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   140002058:	00 00 00 00 
   14000205c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002060 <__mingw_TLScallback>:
   140002060:	53                   	push   %rbx
   140002061:	48 83 ec 20          	sub    $0x20,%rsp
   140002065:	83 fa 02             	cmp    $0x2,%edx
   140002068:	0f 84 b2 00 00 00    	je     140002120 <__mingw_TLScallback+0xc0>
   14000206e:	77 30                	ja     1400020a0 <__mingw_TLScallback+0x40>
   140002070:	85 d2                	test   %edx,%edx
   140002072:	74 4c                	je     1400020c0 <__mingw_TLScallback+0x60>
   140002074:	8b 05 6e 50 00 00    	mov    0x506e(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   14000207a:	85 c0                	test   %eax,%eax
   14000207c:	0f 84 be 00 00 00    	je     140002140 <__mingw_TLScallback+0xe0>
   140002082:	c7 05 5c 50 00 00 01 	movl   $0x1,0x505c(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002089:	00 00 00 
   14000208c:	b8 01 00 00 00       	mov    $0x1,%eax
   140002091:	48 83 c4 20          	add    $0x20,%rsp
   140002095:	5b                   	pop    %rbx
   140002096:	c3                   	ret
   140002097:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000209e:	00 00 
   1400020a0:	83 fa 03             	cmp    $0x3,%edx
   1400020a3:	75 e7                	jne    14000208c <__mingw_TLScallback+0x2c>
   1400020a5:	8b 05 3d 50 00 00    	mov    0x503d(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020ab:	85 c0                	test   %eax,%eax
   1400020ad:	74 dd                	je     14000208c <__mingw_TLScallback+0x2c>
   1400020af:	e8 3c fe ff ff       	call   140001ef0 <__mingwthr_run_key_dtors.part.0>
   1400020b4:	eb d6                	jmp    14000208c <__mingw_TLScallback+0x2c>
   1400020b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400020bd:	00 00 00 
   1400020c0:	8b 05 22 50 00 00    	mov    0x5022(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020c6:	85 c0                	test   %eax,%eax
   1400020c8:	75 66                	jne    140002130 <__mingw_TLScallback+0xd0>
   1400020ca:	8b 05 18 50 00 00    	mov    0x5018(%rip),%eax        # 1400070e8 <__mingwthr_cs_init>
   1400020d0:	83 f8 01             	cmp    $0x1,%eax
   1400020d3:	75 b7                	jne    14000208c <__mingw_TLScallback+0x2c>
   1400020d5:	48 8b 1d 04 50 00 00 	mov    0x5004(%rip),%rbx        # 1400070e0 <key_dtor_list>
   1400020dc:	48 85 db             	test   %rbx,%rbx
   1400020df:	74 18                	je     1400020f9 <__mingw_TLScallback+0x99>
   1400020e1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400020e8:	48 89 d9             	mov    %rbx,%rcx
   1400020eb:	48 8b 5b 10          	mov    0x10(%rbx),%rbx
   1400020ef:	e8 74 05 00 00       	call   140002668 <free>
   1400020f4:	48 85 db             	test   %rbx,%rbx
   1400020f7:	75 ef                	jne    1400020e8 <__mingw_TLScallback+0x88>
   1400020f9:	48 8d 0d 00 50 00 00 	lea    0x5000(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002100:	48 c7 05 d5 4f 00 00 	movq   $0x0,0x4fd5(%rip)        # 1400070e0 <key_dtor_list>
   140002107:	00 00 00 00 
   14000210b:	c7 05 d3 4f 00 00 00 	movl   $0x0,0x4fd3(%rip)        # 1400070e8 <__mingwthr_cs_init>
   140002112:	00 00 00 
   140002115:	ff 15 85 60 00 00    	call   *0x6085(%rip)        # 1400081a0 <__IAT_start__>
   14000211b:	e9 6c ff ff ff       	jmp    14000208c <__mingw_TLScallback+0x2c>
   140002120:	e8 6b f6 ff ff       	call   140001790 <_fpreset>
   140002125:	b8 01 00 00 00       	mov    $0x1,%eax
   14000212a:	48 83 c4 20          	add    $0x20,%rsp
   14000212e:	5b                   	pop    %rbx
   14000212f:	c3                   	ret
   140002130:	e8 bb fd ff ff       	call   140001ef0 <__mingwthr_run_key_dtors.part.0>
   140002135:	eb 93                	jmp    1400020ca <__mingw_TLScallback+0x6a>
   140002137:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000213e:	00 00 
   140002140:	48 8d 0d b9 4f 00 00 	lea    0x4fb9(%rip),%rcx        # 140007100 <__mingwthr_cs>
   140002147:	ff 15 6b 60 00 00    	call   *0x606b(%rip)        # 1400081b8 <__imp_InitializeCriticalSection>
   14000214d:	e9 30 ff ff ff       	jmp    140002082 <__mingw_TLScallback+0x22>
   140002152:	90                   	nop
   140002153:	90                   	nop
   140002154:	90                   	nop
   140002155:	90                   	nop
   140002156:	90                   	nop
   140002157:	90                   	nop
   140002158:	90                   	nop
   140002159:	90                   	nop
   14000215a:	90                   	nop
   14000215b:	90                   	nop
   14000215c:	90                   	nop
   14000215d:	90                   	nop
   14000215e:	90                   	nop
   14000215f:	90                   	nop

0000000140002160 <_ValidateImageBase>:
   140002160:	31 c0                	xor    %eax,%eax
   140002162:	66 81 39 4d 5a       	cmpw   $0x5a4d,(%rcx)
   140002167:	75 0f                	jne    140002178 <_ValidateImageBase+0x18>
   140002169:	48 63 51 3c          	movslq 0x3c(%rcx),%rdx
   14000216d:	48 01 d1             	add    %rdx,%rcx
   140002170:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   140002176:	74 08                	je     140002180 <_ValidateImageBase+0x20>
   140002178:	c3                   	ret
   140002179:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002180:	31 c0                	xor    %eax,%eax
   140002182:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   140002188:	0f 94 c0             	sete   %al
   14000218b:	c3                   	ret
   14000218c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000140002190 <_FindPESection>:
   140002190:	48 63 41 3c          	movslq 0x3c(%rcx),%rax
   140002194:	48 01 c1             	add    %rax,%rcx
   140002197:	0f b7 41 14          	movzwl 0x14(%rcx),%eax
   14000219b:	44 0f b7 41 06       	movzwl 0x6(%rcx),%r8d
   1400021a0:	48 8d 44 01 18       	lea    0x18(%rcx,%rax,1),%rax
   1400021a5:	66 45 85 c0          	test   %r8w,%r8w
   1400021a9:	74 32                	je     1400021dd <_FindPESection+0x4d>
   1400021ab:	41 8d 48 ff          	lea    -0x1(%r8),%ecx
   1400021af:	48 8d 0c 89          	lea    (%rcx,%rcx,4),%rcx
   1400021b3:	4c 8d 4c c8 28       	lea    0x28(%rax,%rcx,8),%r9
   1400021b8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400021bf:	00 
   1400021c0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400021c4:	4c 89 c1             	mov    %r8,%rcx
   1400021c7:	4c 39 c2             	cmp    %r8,%rdx
   1400021ca:	72 08                	jb     1400021d4 <_FindPESection+0x44>
   1400021cc:	03 48 08             	add    0x8(%rax),%ecx
   1400021cf:	48 39 ca             	cmp    %rcx,%rdx
   1400021d2:	72 0b                	jb     1400021df <_FindPESection+0x4f>
   1400021d4:	48 83 c0 28          	add    $0x28,%rax
   1400021d8:	4c 39 c8             	cmp    %r9,%rax
   1400021db:	75 e3                	jne    1400021c0 <_FindPESection+0x30>
   1400021dd:	31 c0                	xor    %eax,%eax
   1400021df:	c3                   	ret

00000001400021e0 <_FindPESectionByName>:
   1400021e0:	57                   	push   %rdi
   1400021e1:	56                   	push   %rsi
   1400021e2:	53                   	push   %rbx
   1400021e3:	48 83 ec 20          	sub    $0x20,%rsp
   1400021e7:	48 89 ce             	mov    %rcx,%rsi
   1400021ea:	e8 a1 04 00 00       	call   140002690 <strlen>
   1400021ef:	48 83 f8 08          	cmp    $0x8,%rax
   1400021f3:	77 7b                	ja     140002270 <_FindPESectionByName+0x90>
   1400021f5:	48 8b 15 b4 21 00 00 	mov    0x21b4(%rip),%rdx        # 1400043b0 <.refptr.__ImageBase>
   1400021fc:	31 db                	xor    %ebx,%ebx
   1400021fe:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   140002203:	75 59                	jne    14000225e <_FindPESectionByName+0x7e>
   140002205:	48 63 42 3c          	movslq 0x3c(%rdx),%rax
   140002209:	48 01 d0             	add    %rdx,%rax
   14000220c:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   140002212:	75 4a                	jne    14000225e <_FindPESectionByName+0x7e>
   140002214:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000221a:	75 42                	jne    14000225e <_FindPESectionByName+0x7e>
   14000221c:	0f b7 50 14          	movzwl 0x14(%rax),%edx
   140002220:	48 8d 5c 10 18       	lea    0x18(%rax,%rdx,1),%rbx
   140002225:	0f b7 50 06          	movzwl 0x6(%rax),%edx
   140002229:	66 85 d2             	test   %dx,%dx
   14000222c:	74 42                	je     140002270 <_FindPESectionByName+0x90>
   14000222e:	8d 42 ff             	lea    -0x1(%rdx),%eax
   140002231:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002235:	48 8d 7c c3 28       	lea    0x28(%rbx,%rax,8),%rdi
   14000223a:	eb 0d                	jmp    140002249 <_FindPESectionByName+0x69>
   14000223c:	0f 1f 40 00          	nopl   0x0(%rax)
   140002240:	48 83 c3 28          	add    $0x28,%rbx
   140002244:	48 39 fb             	cmp    %rdi,%rbx
   140002247:	74 27                	je     140002270 <_FindPESectionByName+0x90>
   140002249:	41 b8 08 00 00 00    	mov    $0x8,%r8d
   14000224f:	48 89 f2             	mov    %rsi,%rdx
   140002252:	48 89 d9             	mov    %rbx,%rcx
   140002255:	e8 3e 04 00 00       	call   140002698 <strncmp>
   14000225a:	85 c0                	test   %eax,%eax
   14000225c:	75 e2                	jne    140002240 <_FindPESectionByName+0x60>
   14000225e:	48 89 d8             	mov    %rbx,%rax
   140002261:	48 83 c4 20          	add    $0x20,%rsp
   140002265:	5b                   	pop    %rbx
   140002266:	5e                   	pop    %rsi
   140002267:	5f                   	pop    %rdi
   140002268:	c3                   	ret
   140002269:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002270:	31 db                	xor    %ebx,%ebx
   140002272:	48 89 d8             	mov    %rbx,%rax
   140002275:	48 83 c4 20          	add    $0x20,%rsp
   140002279:	5b                   	pop    %rbx
   14000227a:	5e                   	pop    %rsi
   14000227b:	5f                   	pop    %rdi
   14000227c:	c3                   	ret
   14000227d:	0f 1f 00             	nopl   (%rax)

0000000140002280 <__mingw_GetSectionForAddress>:
   140002280:	48 8b 15 29 21 00 00 	mov    0x2129(%rip),%rdx        # 1400043b0 <.refptr.__ImageBase>
   140002287:	31 c0                	xor    %eax,%eax
   140002289:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000228e:	75 10                	jne    1400022a0 <__mingw_GetSectionForAddress+0x20>
   140002290:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002294:	49 01 d0             	add    %rdx,%r8
   140002297:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000229e:	74 08                	je     1400022a8 <__mingw_GetSectionForAddress+0x28>
   1400022a0:	c3                   	ret
   1400022a1:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   1400022a8:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400022af:	75 ef                	jne    1400022a0 <__mingw_GetSectionForAddress+0x20>
   1400022b1:	41 0f b7 40 14       	movzwl 0x14(%r8),%eax
   1400022b6:	48 29 d1             	sub    %rdx,%rcx
   1400022b9:	49 8d 44 00 18       	lea    0x18(%r8,%rax,1),%rax
   1400022be:	45 0f b7 40 06       	movzwl 0x6(%r8),%r8d
   1400022c3:	66 45 85 c0          	test   %r8w,%r8w
   1400022c7:	74 34                	je     1400022fd <__mingw_GetSectionForAddress+0x7d>
   1400022c9:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   1400022cd:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   1400022d1:	4c 8d 4c d0 28       	lea    0x28(%rax,%rdx,8),%r9
   1400022d6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400022dd:	00 00 00 
   1400022e0:	44 8b 40 0c          	mov    0xc(%rax),%r8d
   1400022e4:	4c 89 c2             	mov    %r8,%rdx
   1400022e7:	4c 39 c1             	cmp    %r8,%rcx
   1400022ea:	72 08                	jb     1400022f4 <__mingw_GetSectionForAddress+0x74>
   1400022ec:	03 50 08             	add    0x8(%rax),%edx
   1400022ef:	48 39 d1             	cmp    %rdx,%rcx
   1400022f2:	72 ac                	jb     1400022a0 <__mingw_GetSectionForAddress+0x20>
   1400022f4:	48 83 c0 28          	add    $0x28,%rax
   1400022f8:	4c 39 c8             	cmp    %r9,%rax
   1400022fb:	75 e3                	jne    1400022e0 <__mingw_GetSectionForAddress+0x60>
   1400022fd:	31 c0                	xor    %eax,%eax
   1400022ff:	c3                   	ret

0000000140002300 <__mingw_GetSectionCount>:
   140002300:	48 8b 05 a9 20 00 00 	mov    0x20a9(%rip),%rax        # 1400043b0 <.refptr.__ImageBase>
   140002307:	31 c9                	xor    %ecx,%ecx
   140002309:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   14000230e:	75 0f                	jne    14000231f <__mingw_GetSectionCount+0x1f>
   140002310:	48 63 50 3c          	movslq 0x3c(%rax),%rdx
   140002314:	48 01 d0             	add    %rdx,%rax
   140002317:	81 38 50 45 00 00    	cmpl   $0x4550,(%rax)
   14000231d:	74 09                	je     140002328 <__mingw_GetSectionCount+0x28>
   14000231f:	89 c8                	mov    %ecx,%eax
   140002321:	c3                   	ret
   140002322:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
   140002328:	66 81 78 18 0b 02    	cmpw   $0x20b,0x18(%rax)
   14000232e:	75 ef                	jne    14000231f <__mingw_GetSectionCount+0x1f>
   140002330:	0f b7 48 06          	movzwl 0x6(%rax),%ecx
   140002334:	89 c8                	mov    %ecx,%eax
   140002336:	c3                   	ret
   140002337:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
   14000233e:	00 00 

0000000140002340 <_FindPESectionExec>:
   140002340:	4c 8b 05 69 20 00 00 	mov    0x2069(%rip),%r8        # 1400043b0 <.refptr.__ImageBase>
   140002347:	31 c0                	xor    %eax,%eax
   140002349:	66 41 81 38 4d 5a    	cmpw   $0x5a4d,(%r8)
   14000234f:	75 0f                	jne    140002360 <_FindPESectionExec+0x20>
   140002351:	49 63 50 3c          	movslq 0x3c(%r8),%rdx
   140002355:	4c 01 c2             	add    %r8,%rdx
   140002358:	81 3a 50 45 00 00    	cmpl   $0x4550,(%rdx)
   14000235e:	74 08                	je     140002368 <_FindPESectionExec+0x28>
   140002360:	c3                   	ret
   140002361:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002368:	66 81 7a 18 0b 02    	cmpw   $0x20b,0x18(%rdx)
   14000236e:	75 f0                	jne    140002360 <_FindPESectionExec+0x20>
   140002370:	0f b7 42 14          	movzwl 0x14(%rdx),%eax
   140002374:	44 0f b7 42 06       	movzwl 0x6(%rdx),%r8d
   140002379:	48 8d 44 02 18       	lea    0x18(%rdx,%rax,1),%rax
   14000237e:	66 45 85 c0          	test   %r8w,%r8w
   140002382:	74 2c                	je     1400023b0 <_FindPESectionExec+0x70>
   140002384:	41 8d 50 ff          	lea    -0x1(%r8),%edx
   140002388:	48 8d 14 92          	lea    (%rdx,%rdx,4),%rdx
   14000238c:	48 8d 54 d0 28       	lea    0x28(%rax,%rdx,8),%rdx
   140002391:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002398:	f6 40 27 20          	testb  $0x20,0x27(%rax)
   14000239c:	74 09                	je     1400023a7 <_FindPESectionExec+0x67>
   14000239e:	48 85 c9             	test   %rcx,%rcx
   1400023a1:	74 bd                	je     140002360 <_FindPESectionExec+0x20>
   1400023a3:	48 83 e9 01          	sub    $0x1,%rcx
   1400023a7:	48 83 c0 28          	add    $0x28,%rax
   1400023ab:	48 39 c2             	cmp    %rax,%rdx
   1400023ae:	75 e8                	jne    140002398 <_FindPESectionExec+0x58>
   1400023b0:	31 c0                	xor    %eax,%eax
   1400023b2:	c3                   	ret
   1400023b3:	66 66 2e 0f 1f 84 00 	data16 cs nopw 0x0(%rax,%rax,1)
   1400023ba:	00 00 00 00 
   1400023be:	66 90                	xchg   %ax,%ax

00000001400023c0 <_GetPEImageBase>:
   1400023c0:	48 8b 05 e9 1f 00 00 	mov    0x1fe9(%rip),%rax        # 1400043b0 <.refptr.__ImageBase>
   1400023c7:	31 d2                	xor    %edx,%edx
   1400023c9:	66 81 38 4d 5a       	cmpw   $0x5a4d,(%rax)
   1400023ce:	75 0f                	jne    1400023df <_GetPEImageBase+0x1f>
   1400023d0:	48 63 48 3c          	movslq 0x3c(%rax),%rcx
   1400023d4:	48 01 c1             	add    %rax,%rcx
   1400023d7:	81 39 50 45 00 00    	cmpl   $0x4550,(%rcx)
   1400023dd:	74 09                	je     1400023e8 <_GetPEImageBase+0x28>
   1400023df:	48 89 d0             	mov    %rdx,%rax
   1400023e2:	c3                   	ret
   1400023e3:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
   1400023e8:	66 81 79 18 0b 02    	cmpw   $0x20b,0x18(%rcx)
   1400023ee:	48 0f 44 d0          	cmove  %rax,%rdx
   1400023f2:	48 89 d0             	mov    %rdx,%rax
   1400023f5:	c3                   	ret
   1400023f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400023fd:	00 00 00 

0000000140002400 <_IsNonwritableInCurrentImage>:
   140002400:	48 8b 15 a9 1f 00 00 	mov    0x1fa9(%rip),%rdx        # 1400043b0 <.refptr.__ImageBase>
   140002407:	31 c0                	xor    %eax,%eax
   140002409:	66 81 3a 4d 5a       	cmpw   $0x5a4d,(%rdx)
   14000240e:	75 10                	jne    140002420 <_IsNonwritableInCurrentImage+0x20>
   140002410:	4c 63 42 3c          	movslq 0x3c(%rdx),%r8
   140002414:	49 01 d0             	add    %rdx,%r8
   140002417:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   14000241e:	74 08                	je     140002428 <_IsNonwritableInCurrentImage+0x28>
   140002420:	c3                   	ret
   140002421:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
   140002428:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   14000242f:	75 ef                	jne    140002420 <_IsNonwritableInCurrentImage+0x20>
   140002431:	48 29 d1             	sub    %rdx,%rcx
   140002434:	45 0f b7 48 06       	movzwl 0x6(%r8),%r9d
   140002439:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   14000243e:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   140002443:	66 45 85 c9          	test   %r9w,%r9w
   140002447:	74 d7                	je     140002420 <_IsNonwritableInCurrentImage+0x20>
   140002449:	41 8d 41 ff          	lea    -0x1(%r9),%eax
   14000244d:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
   140002451:	4c 8d 4c c2 28       	lea    0x28(%rdx,%rax,8),%r9
   140002456:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   14000245d:	00 00 00 
   140002460:	44 8b 42 0c          	mov    0xc(%rdx),%r8d
   140002464:	4c 89 c0             	mov    %r8,%rax
   140002467:	4c 39 c1             	cmp    %r8,%rcx
   14000246a:	72 08                	jb     140002474 <_IsNonwritableInCurrentImage+0x74>
   14000246c:	03 42 08             	add    0x8(%rdx),%eax
   14000246f:	48 39 c1             	cmp    %rax,%rcx
   140002472:	72 0c                	jb     140002480 <_IsNonwritableInCurrentImage+0x80>
   140002474:	48 83 c2 28          	add    $0x28,%rdx
   140002478:	4c 39 ca             	cmp    %r9,%rdx
   14000247b:	75 e3                	jne    140002460 <_IsNonwritableInCurrentImage+0x60>
   14000247d:	31 c0                	xor    %eax,%eax
   14000247f:	c3                   	ret
   140002480:	8b 42 24             	mov    0x24(%rdx),%eax
   140002483:	f7 d0                	not    %eax
   140002485:	c1 e8 1f             	shr    $0x1f,%eax
   140002488:	c3                   	ret
   140002489:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000140002490 <__mingw_enum_import_library_names>:
   140002490:	4c 8b 1d 19 1f 00 00 	mov    0x1f19(%rip),%r11        # 1400043b0 <.refptr.__ImageBase>
   140002497:	45 31 c9             	xor    %r9d,%r9d
   14000249a:	66 41 81 3b 4d 5a    	cmpw   $0x5a4d,(%r11)
   1400024a0:	75 10                	jne    1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024a2:	4d 63 43 3c          	movslq 0x3c(%r11),%r8
   1400024a6:	4d 01 d8             	add    %r11,%r8
   1400024a9:	41 81 38 50 45 00 00 	cmpl   $0x4550,(%r8)
   1400024b0:	74 0e                	je     1400024c0 <__mingw_enum_import_library_names+0x30>
   1400024b2:	4c 89 c8             	mov    %r9,%rax
   1400024b5:	c3                   	ret
   1400024b6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024bd:	00 00 00 
   1400024c0:	66 41 81 78 18 0b 02 	cmpw   $0x20b,0x18(%r8)
   1400024c7:	75 e9                	jne    1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024c9:	41 8b 80 90 00 00 00 	mov    0x90(%r8),%eax
   1400024d0:	85 c0                	test   %eax,%eax
   1400024d2:	74 de                	je     1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024d4:	41 0f b7 50 14       	movzwl 0x14(%r8),%edx
   1400024d9:	45 0f b7 50 06       	movzwl 0x6(%r8),%r10d
   1400024de:	49 8d 54 10 18       	lea    0x18(%r8,%rdx,1),%rdx
   1400024e3:	66 45 85 d2          	test   %r10w,%r10w
   1400024e7:	74 c9                	je     1400024b2 <__mingw_enum_import_library_names+0x22>
   1400024e9:	45 8d 42 ff          	lea    -0x1(%r10),%r8d
   1400024ed:	4f 8d 04 80          	lea    (%r8,%r8,4),%r8
   1400024f1:	4e 8d 54 c2 28       	lea    0x28(%rdx,%r8,8),%r10
   1400024f6:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
   1400024fd:	00 00 00 
   140002500:	44 8b 4a 0c          	mov    0xc(%rdx),%r9d
   140002504:	4d 89 c8             	mov    %r9,%r8
   140002507:	4c 39 c8             	cmp    %r9,%rax
   14000250a:	72 09                	jb     140002515 <__mingw_enum_import_library_names+0x85>
   14000250c:	44 03 42 08          	add    0x8(%rdx),%r8d
   140002510:	4c 39 c0             	cmp    %r8,%rax
   140002513:	72 13                	jb     140002528 <__mingw_enum_import_library_names+0x98>
   140002515:	48 83 c2 28          	add    $0x28,%rdx
   140002519:	49 39 d2             	cmp    %rdx,%r10
   14000251c:	75 e2                	jne    140002500 <__mingw_enum_import_library_names+0x70>
   14000251e:	45 31 c9             	xor    %r9d,%r9d
   140002521:	4c 89 c8             	mov    %r9,%rax
   140002524:	c3                   	ret
   140002525:	0f 1f 00             	nopl   (%rax)
   140002528:	4c 01 d8             	add    %r11,%rax
   14000252b:	eb 0a                	jmp    140002537 <__mingw_enum_import_library_names+0xa7>
   14000252d:	0f 1f 00             	nopl   (%rax)
   140002530:	83 e9 01             	sub    $0x1,%ecx
   140002533:	48 83 c0 14          	add    $0x14,%rax
   140002537:	44 8b 40 04          	mov    0x4(%rax),%r8d
   14000253b:	45 85 c0             	test   %r8d,%r8d
   14000253e:	75 07                	jne    140002547 <__mingw_enum_import_library_names+0xb7>
   140002540:	8b 50 0c             	mov    0xc(%rax),%edx
   140002543:	85 d2                	test   %edx,%edx
   140002545:	74 d7                	je     14000251e <__mingw_enum_import_library_names+0x8e>
   140002547:	85 c9                	test   %ecx,%ecx
   140002549:	7f e5                	jg     140002530 <__mingw_enum_import_library_names+0xa0>
   14000254b:	44 8b 48 0c          	mov    0xc(%rax),%r9d
   14000254f:	4d 01 d9             	add    %r11,%r9
   140002552:	4c 89 c8             	mov    %r9,%rax
   140002555:	c3                   	ret
   140002556:	90                   	nop
   140002557:	90                   	nop
   140002558:	90                   	nop
   140002559:	90                   	nop
   14000255a:	90                   	nop
   14000255b:	90                   	nop
   14000255c:	90                   	nop
   14000255d:	90                   	nop
   14000255e:	90                   	nop
   14000255f:	90                   	nop

0000000140002560 <___chkstk_ms>:
   140002560:	51                   	push   %rcx
   140002561:	50                   	push   %rax
   140002562:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002568:	48 8d 4c 24 18       	lea    0x18(%rsp),%rcx
   14000256d:	72 19                	jb     140002588 <___chkstk_ms+0x28>
   14000256f:	48 81 e9 00 10 00 00 	sub    $0x1000,%rcx
   140002576:	48 83 09 00          	orq    $0x0,(%rcx)
   14000257a:	48 2d 00 10 00 00    	sub    $0x1000,%rax
   140002580:	48 3d 00 10 00 00    	cmp    $0x1000,%rax
   140002586:	77 e7                	ja     14000256f <___chkstk_ms+0xf>
   140002588:	48 29 c1             	sub    %rax,%rcx
   14000258b:	48 83 09 00          	orq    $0x0,(%rcx)
   14000258f:	58                   	pop    %rax
   140002590:	59                   	pop    %rcx
   140002591:	c3                   	ret
   140002592:	90                   	nop
   140002593:	90                   	nop
   140002594:	90                   	nop
   140002595:	90                   	nop
   140002596:	90                   	nop
   140002597:	90                   	nop
   140002598:	90                   	nop
   140002599:	90                   	nop
   14000259a:	90                   	nop
   14000259b:	90                   	nop
   14000259c:	90                   	nop
   14000259d:	90                   	nop
   14000259e:	90                   	nop
   14000259f:	90                   	nop

00000001400025a0 <__p__fmode>:
   1400025a0:	48 8b 05 69 1e 00 00 	mov    0x1e69(%rip),%rax        # 140004410 <.refptr.__imp__fmode>
   1400025a7:	48 8b 00             	mov    (%rax),%rax
   1400025aa:	c3                   	ret
   1400025ab:	90                   	nop
   1400025ac:	90                   	nop
   1400025ad:	90                   	nop
   1400025ae:	90                   	nop
   1400025af:	90                   	nop

00000001400025b0 <__p__commode>:
   1400025b0:	48 8b 05 49 1e 00 00 	mov    0x1e49(%rip),%rax        # 140004400 <.refptr.__imp__commode>
   1400025b7:	48 8b 00             	mov    (%rax),%rax
   1400025ba:	c3                   	ret
   1400025bb:	90                   	nop
   1400025bc:	90                   	nop
   1400025bd:	90                   	nop
   1400025be:	90                   	nop
   1400025bf:	90                   	nop

00000001400025c0 <_get_invalid_parameter_handler>:
   1400025c0:	48 8b 05 a9 4b 00 00 	mov    0x4ba9(%rip),%rax        # 140007170 <handler>
   1400025c7:	c3                   	ret
   1400025c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400025cf:	00 

00000001400025d0 <_set_invalid_parameter_handler>:
   1400025d0:	48 89 c8             	mov    %rcx,%rax
   1400025d3:	48 87 05 96 4b 00 00 	xchg   %rax,0x4b96(%rip)        # 140007170 <handler>
   1400025da:	c3                   	ret
   1400025db:	90                   	nop
   1400025dc:	90                   	nop
   1400025dd:	90                   	nop
   1400025de:	90                   	nop
   1400025df:	90                   	nop

00000001400025e0 <__acrt_iob_func>:
   1400025e0:	53                   	push   %rbx
   1400025e1:	48 83 ec 20          	sub    $0x20,%rsp
   1400025e5:	89 cb                	mov    %ecx,%ebx
   1400025e7:	e8 24 00 00 00       	call   140002610 <__iob_func>
   1400025ec:	89 d9                	mov    %ebx,%ecx
   1400025ee:	48 8d 14 49          	lea    (%rcx,%rcx,2),%rdx
   1400025f2:	48 c1 e2 04          	shl    $0x4,%rdx
   1400025f6:	48 01 d0             	add    %rdx,%rax
   1400025f9:	48 83 c4 20          	add    $0x20,%rsp
   1400025fd:	5b                   	pop    %rbx
   1400025fe:	c3                   	ret
   1400025ff:	90                   	nop

0000000140002600 <__C_specific_handler>:
   140002600:	ff 25 f2 5b 00 00    	jmp    *0x5bf2(%rip)        # 1400081f8 <__imp___C_specific_handler>
   140002606:	90                   	nop
   140002607:	90                   	nop

0000000140002608 <__getmainargs>:
   140002608:	ff 25 f2 5b 00 00    	jmp    *0x5bf2(%rip)        # 140008200 <__imp___getmainargs>
   14000260e:	90                   	nop
   14000260f:	90                   	nop

0000000140002610 <__iob_func>:
   140002610:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008210 <__imp___iob_func>
   140002616:	90                   	nop
   140002617:	90                   	nop

0000000140002618 <__set_app_type>:
   140002618:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008218 <__imp___set_app_type>
   14000261e:	90                   	nop
   14000261f:	90                   	nop

0000000140002620 <__setusermatherr>:
   140002620:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008220 <__imp___setusermatherr>
   140002626:	90                   	nop
   140002627:	90                   	nop

0000000140002628 <_amsg_exit>:
   140002628:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008228 <__imp__amsg_exit>
   14000262e:	90                   	nop
   14000262f:	90                   	nop

0000000140002630 <_cexit>:
   140002630:	ff 25 fa 5b 00 00    	jmp    *0x5bfa(%rip)        # 140008230 <__imp__cexit>
   140002636:	90                   	nop
   140002637:	90                   	nop

0000000140002638 <_initterm>:
   140002638:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008248 <__imp__initterm>
   14000263e:	90                   	nop
   14000263f:	90                   	nop

0000000140002640 <_onexit>:
   140002640:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008250 <__imp__onexit>
   140002646:	90                   	nop
   140002647:	90                   	nop

0000000140002648 <abort>:
   140002648:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008258 <__imp_abort>
   14000264e:	90                   	nop
   14000264f:	90                   	nop

0000000140002650 <calloc>:
   140002650:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008260 <__imp_calloc>
   140002656:	90                   	nop
   140002657:	90                   	nop

0000000140002658 <exit>:
   140002658:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008268 <__imp_exit>
   14000265e:	90                   	nop
   14000265f:	90                   	nop

0000000140002660 <fprintf>:
   140002660:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008270 <__imp_fprintf>
   140002666:	90                   	nop
   140002667:	90                   	nop

0000000140002668 <free>:
   140002668:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008278 <__imp_free>
   14000266e:	90                   	nop
   14000266f:	90                   	nop

0000000140002670 <fwrite>:
   140002670:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008280 <__imp_fwrite>
   140002676:	90                   	nop
   140002677:	90                   	nop

0000000140002678 <malloc>:
   140002678:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008288 <__imp_malloc>
   14000267e:	90                   	nop
   14000267f:	90                   	nop

0000000140002680 <memcpy>:
   140002680:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008290 <__imp_memcpy>
   140002686:	90                   	nop
   140002687:	90                   	nop

0000000140002688 <signal>:
   140002688:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 140008298 <__imp_signal>
   14000268e:	90                   	nop
   14000268f:	90                   	nop

0000000140002690 <strlen>:
   140002690:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 1400082a0 <__imp_strlen>
   140002696:	90                   	nop
   140002697:	90                   	nop

0000000140002698 <strncmp>:
   140002698:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 1400082a8 <__imp_strncmp>
   14000269e:	90                   	nop
   14000269f:	90                   	nop

00000001400026a0 <vfprintf>:
   1400026a0:	ff 25 0a 5c 00 00    	jmp    *0x5c0a(%rip)        # 1400082b0 <__imp_vfprintf>
   1400026a6:	90                   	nop
   1400026a7:	90                   	nop
   1400026a8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
   1400026af:	00 

00000001400026b0 <VirtualQuery>:
   1400026b0:	ff 25 32 5b 00 00    	jmp    *0x5b32(%rip)        # 1400081e8 <__imp_VirtualQuery>
   1400026b6:	90                   	nop
   1400026b7:	90                   	nop

00000001400026b8 <VirtualProtect>:
   1400026b8:	ff 25 22 5b 00 00    	jmp    *0x5b22(%rip)        # 1400081e0 <__imp_VirtualProtect>
   1400026be:	90                   	nop
   1400026bf:	90                   	nop

00000001400026c0 <TlsGetValue>:
   1400026c0:	ff 25 12 5b 00 00    	jmp    *0x5b12(%rip)        # 1400081d8 <__imp_TlsGetValue>
   1400026c6:	90                   	nop
   1400026c7:	90                   	nop

00000001400026c8 <Sleep>:
   1400026c8:	ff 25 02 5b 00 00    	jmp    *0x5b02(%rip)        # 1400081d0 <__imp_Sleep>
   1400026ce:	90                   	nop
   1400026cf:	90                   	nop

00000001400026d0 <SetUnhandledExceptionFilter>:
   1400026d0:	ff 25 f2 5a 00 00    	jmp    *0x5af2(%rip)        # 1400081c8 <__imp_SetUnhandledExceptionFilter>
   1400026d6:	90                   	nop
   1400026d7:	90                   	nop

00000001400026d8 <LeaveCriticalSection>:
   1400026d8:	ff 25 e2 5a 00 00    	jmp    *0x5ae2(%rip)        # 1400081c0 <__imp_LeaveCriticalSection>
   1400026de:	90                   	nop
   1400026df:	90                   	nop

00000001400026e0 <InitializeCriticalSection>:
   1400026e0:	ff 25 d2 5a 00 00    	jmp    *0x5ad2(%rip)        # 1400081b8 <__imp_InitializeCriticalSection>
   1400026e6:	90                   	nop
   1400026e7:	90                   	nop

00000001400026e8 <GetLastError>:
   1400026e8:	ff 25 c2 5a 00 00    	jmp    *0x5ac2(%rip)        # 1400081b0 <__imp_GetLastError>
   1400026ee:	90                   	nop
   1400026ef:	90                   	nop

00000001400026f0 <EnterCriticalSection>:
   1400026f0:	ff 25 b2 5a 00 00    	jmp    *0x5ab2(%rip)        # 1400081a8 <__imp_EnterCriticalSection>
   1400026f6:	90                   	nop
   1400026f7:	90                   	nop

00000001400026f8 <DeleteCriticalSection>:
   1400026f8:	ff 25 a2 5a 00 00    	jmp    *0x5aa2(%rip)        # 1400081a0 <__IAT_start__>
   1400026fe:	90                   	nop
   1400026ff:	90                   	nop

0000000140002700 <register_frame_ctor>:
   140002700:	e9 2b ed ff ff       	jmp    140001430 <__gcc_register_frame>
   140002705:	90                   	nop
   140002706:	90                   	nop
   140002707:	90                   	nop
   140002708:	90                   	nop
   140002709:	90                   	nop
   14000270a:	90                   	nop
   14000270b:	90                   	nop
   14000270c:	90                   	nop
   14000270d:	90                   	nop
   14000270e:	90                   	nop
   14000270f:	90                   	nop

0000000140002710 <__CTOR_LIST__>:
   140002710:	ff                   	(bad)
   140002711:	ff                   	(bad)
   140002712:	ff                   	(bad)
   140002713:	ff                   	(bad)
   140002714:	ff                   	(bad)
   140002715:	ff                   	(bad)
   140002716:	ff                   	(bad)
   140002717:	ff                   	.byte 0xff

0000000140002718 <.ctors.65535>:
   140002718:	00 27                	add    %ah,(%rdi)
   14000271a:	00 40 01             	add    %al,0x1(%rax)
	...

0000000140002728 <__DTOR_LIST__>:
   140002728:	ff                   	(bad)
   140002729:	ff                   	(bad)
   14000272a:	ff                   	(bad)
   14000272b:	ff                   	(bad)
   14000272c:	ff                   	(bad)
   14000272d:	ff                   	(bad)
   14000272e:	ff                   	(bad)
   14000272f:	ff 00                	incl   (%rax)
   140002731:	00 00                	add    %al,(%rax)
   140002733:	00 00                	add    %al,(%rax)
   140002735:	00 00                	add    %al,(%rax)
	...
