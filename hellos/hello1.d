
hello：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400468 <_init>:
  400468:	48 83 ec 08          	sub    $0x8,%rsp
  40046c:	48 8b 05 85 0b 20 00 	mov    0x200b85(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400473:	48 85 c0             	test   %rax,%rax
  400476:	74 05                	je     40047d <_init+0x15>
  400478:	e8 83 00 00 00       	callq  400500 <sleep@plt+0x10>
  40047d:	48 83 c4 08          	add    $0x8,%rsp
  400481:	c3                   	retq   

Disassembly of section .plt:

0000000000400490 <puts@plt-0x10>:
  400490:	ff 35 72 0b 20 00    	pushq  0x200b72(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400496:	ff 25 74 0b 20 00    	jmpq   *0x200b74(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40049c:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004004a0 <puts@plt>:
  4004a0:	ff 25 72 0b 20 00    	jmpq   *0x200b72(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  4004a6:	68 00 00 00 00       	pushq  $0x0
  4004ab:	e9 e0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004b0 <printf@plt>:
  4004b0:	ff 25 6a 0b 20 00    	jmpq   *0x200b6a(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  4004b6:	68 01 00 00 00       	pushq  $0x1
  4004bb:	e9 d0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004c0 <__libc_start_main@plt>:
  4004c0:	ff 25 62 0b 20 00    	jmpq   *0x200b62(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  4004c6:	68 02 00 00 00       	pushq  $0x2
  4004cb:	e9 c0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004d0 <getchar@plt>:
  4004d0:	ff 25 5a 0b 20 00    	jmpq   *0x200b5a(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  4004d6:	68 03 00 00 00       	pushq  $0x3
  4004db:	e9 b0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004e0 <exit@plt>:
  4004e0:	ff 25 52 0b 20 00    	jmpq   *0x200b52(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  4004e6:	68 04 00 00 00       	pushq  $0x4
  4004eb:	e9 a0 ff ff ff       	jmpq   400490 <_init+0x28>

00000000004004f0 <sleep@plt>:
  4004f0:	ff 25 4a 0b 20 00    	jmpq   *0x200b4a(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  4004f6:	68 05 00 00 00       	pushq  $0x5
  4004fb:	e9 90 ff ff ff       	jmpq   400490 <_init+0x28>

Disassembly of section .plt.got:

0000000000400500 <.plt.got>:
  400500:	ff 25 f2 0a 20 00    	jmpq   *0x200af2(%rip)        # 600ff8 <_DYNAMIC+0x1d0>
  400506:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400510 <_start>:
  400510:	31 ed                	xor    %ebp,%ebp
  400512:	49 89 d1             	mov    %rdx,%r9
  400515:	5e                   	pop    %rsi
  400516:	48 89 e2             	mov    %rsp,%rdx
  400519:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40051d:	50                   	push   %rax
  40051e:	54                   	push   %rsp
  40051f:	49 c7 c0 00 07 40 00 	mov    $0x400700,%r8
  400526:	48 c7 c1 90 06 40 00 	mov    $0x400690,%rcx
  40052d:	48 c7 c7 06 06 40 00 	mov    $0x400606,%rdi
  400534:	e8 87 ff ff ff       	callq  4004c0 <__libc_start_main@plt>
  400539:	f4                   	hlt    
  40053a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400540 <deregister_tm_clones>:
  400540:	b8 67 10 60 00       	mov    $0x601067,%eax
  400545:	55                   	push   %rbp
  400546:	48 2d 60 10 60 00    	sub    $0x601060,%rax
  40054c:	48 83 f8 0e          	cmp    $0xe,%rax
  400550:	48 89 e5             	mov    %rsp,%rbp
  400553:	76 1b                	jbe    400570 <deregister_tm_clones+0x30>
  400555:	b8 00 00 00 00       	mov    $0x0,%eax
  40055a:	48 85 c0             	test   %rax,%rax
  40055d:	74 11                	je     400570 <deregister_tm_clones+0x30>
  40055f:	5d                   	pop    %rbp
  400560:	bf 60 10 60 00       	mov    $0x601060,%edi
  400565:	ff e0                	jmpq   *%rax
  400567:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  40056e:	00 00 
  400570:	5d                   	pop    %rbp
  400571:	c3                   	retq   
  400572:	0f 1f 40 00          	nopl   0x0(%rax)
  400576:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40057d:	00 00 00 

0000000000400580 <register_tm_clones>:
  400580:	be 60 10 60 00       	mov    $0x601060,%esi
  400585:	55                   	push   %rbp
  400586:	48 81 ee 60 10 60 00 	sub    $0x601060,%rsi
  40058d:	48 c1 fe 03          	sar    $0x3,%rsi
  400591:	48 89 e5             	mov    %rsp,%rbp
  400594:	48 89 f0             	mov    %rsi,%rax
  400597:	48 c1 e8 3f          	shr    $0x3f,%rax
  40059b:	48 01 c6             	add    %rax,%rsi
  40059e:	48 d1 fe             	sar    %rsi
  4005a1:	74 15                	je     4005b8 <register_tm_clones+0x38>
  4005a3:	b8 00 00 00 00       	mov    $0x0,%eax
  4005a8:	48 85 c0             	test   %rax,%rax
  4005ab:	74 0b                	je     4005b8 <register_tm_clones+0x38>
  4005ad:	5d                   	pop    %rbp
  4005ae:	bf 60 10 60 00       	mov    $0x601060,%edi
  4005b3:	ff e0                	jmpq   *%rax
  4005b5:	0f 1f 00             	nopl   (%rax)
  4005b8:	5d                   	pop    %rbp
  4005b9:	c3                   	retq   
  4005ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004005c0 <__do_global_dtors_aux>:
  4005c0:	80 3d 95 0a 20 00 00 	cmpb   $0x0,0x200a95(%rip)        # 60105c <_edata>
  4005c7:	75 11                	jne    4005da <__do_global_dtors_aux+0x1a>
  4005c9:	55                   	push   %rbp
  4005ca:	48 89 e5             	mov    %rsp,%rbp
  4005cd:	e8 6e ff ff ff       	callq  400540 <deregister_tm_clones>
  4005d2:	5d                   	pop    %rbp
  4005d3:	c6 05 82 0a 20 00 01 	movb   $0x1,0x200a82(%rip)        # 60105c <_edata>
  4005da:	f3 c3                	repz retq 
  4005dc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004005e0 <frame_dummy>:
  4005e0:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  4005e5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  4005e9:	75 05                	jne    4005f0 <frame_dummy+0x10>
  4005eb:	eb 93                	jmp    400580 <register_tm_clones>
  4005ed:	0f 1f 00             	nopl   (%rax)
  4005f0:	b8 00 00 00 00       	mov    $0x0,%eax
  4005f5:	48 85 c0             	test   %rax,%rax
  4005f8:	74 f1                	je     4005eb <frame_dummy+0xb>
  4005fa:	55                   	push   %rbp
  4005fb:	48 89 e5             	mov    %rsp,%rbp
  4005fe:	ff d0                	callq  *%rax
  400600:	5d                   	pop    %rbp
  400601:	e9 7a ff ff ff       	jmpq   400580 <register_tm_clones>

0000000000400606 <main>:
  400606:	55                   	push   %rbp
  400607:	48 89 e5             	mov    %rsp,%rbp
  40060a:	48 83 ec 20          	sub    $0x20,%rsp
  40060e:	89 7d ec             	mov    %edi,-0x14(%rbp)
  400611:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  400615:	83 7d ec 03          	cmpl   $0x3,-0x14(%rbp)
  400619:	74 14                	je     40062f <main+0x29>
  40061b:	bf 14 07 40 00       	mov    $0x400714,%edi
  400620:	e8 7b fe ff ff       	callq  4004a0 <puts@plt>
  400625:	bf 01 00 00 00       	mov    $0x1,%edi
  40062a:	e8 b1 fe ff ff       	callq  4004e0 <exit@plt>
  40062f:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  400636:	eb 39                	jmp    400671 <main+0x6b>
  400638:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40063c:	48 83 c0 10          	add    $0x10,%rax
  400640:	48 8b 10             	mov    (%rax),%rdx
  400643:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400647:	48 83 c0 08          	add    $0x8,%rax
  40064b:	48 8b 00             	mov    (%rax),%rax
  40064e:	48 89 c6             	mov    %rax,%rsi
  400651:	bf 32 07 40 00       	mov    $0x400732,%edi
  400656:	b8 00 00 00 00       	mov    $0x0,%eax
  40065b:	e8 50 fe ff ff       	callq  4004b0 <printf@plt>
  400660:	8b 05 f2 09 20 00    	mov    0x2009f2(%rip),%eax        # 601058 <sleepsecs>
  400666:	89 c7                	mov    %eax,%edi
  400668:	e8 83 fe ff ff       	callq  4004f0 <sleep@plt>
  40066d:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  400671:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  400675:	7e c1                	jle    400638 <main+0x32>
  400677:	e8 54 fe ff ff       	callq  4004d0 <getchar@plt>
  40067c:	b8 00 00 00 00       	mov    $0x0,%eax
  400681:	c9                   	leaveq 
  400682:	c3                   	retq   
  400683:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40068a:	00 00 00 
  40068d:	0f 1f 00             	nopl   (%rax)

0000000000400690 <__libc_csu_init>:
  400690:	41 57                	push   %r15
  400692:	41 56                	push   %r14
  400694:	41 89 ff             	mov    %edi,%r15d
  400697:	41 55                	push   %r13
  400699:	41 54                	push   %r12
  40069b:	4c 8d 25 6e 07 20 00 	lea    0x20076e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4006a2:	55                   	push   %rbp
  4006a3:	48 8d 2d 6e 07 20 00 	lea    0x20076e(%rip),%rbp        # 600e18 <__init_array_end>
  4006aa:	53                   	push   %rbx
  4006ab:	49 89 f6             	mov    %rsi,%r14
  4006ae:	49 89 d5             	mov    %rdx,%r13
  4006b1:	4c 29 e5             	sub    %r12,%rbp
  4006b4:	48 83 ec 08          	sub    $0x8,%rsp
  4006b8:	48 c1 fd 03          	sar    $0x3,%rbp
  4006bc:	e8 a7 fd ff ff       	callq  400468 <_init>
  4006c1:	48 85 ed             	test   %rbp,%rbp
  4006c4:	74 20                	je     4006e6 <__libc_csu_init+0x56>
  4006c6:	31 db                	xor    %ebx,%ebx
  4006c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4006cf:	00 
  4006d0:	4c 89 ea             	mov    %r13,%rdx
  4006d3:	4c 89 f6             	mov    %r14,%rsi
  4006d6:	44 89 ff             	mov    %r15d,%edi
  4006d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4006dd:	48 83 c3 01          	add    $0x1,%rbx
  4006e1:	48 39 eb             	cmp    %rbp,%rbx
  4006e4:	75 ea                	jne    4006d0 <__libc_csu_init+0x40>
  4006e6:	48 83 c4 08          	add    $0x8,%rsp
  4006ea:	5b                   	pop    %rbx
  4006eb:	5d                   	pop    %rbp
  4006ec:	41 5c                	pop    %r12
  4006ee:	41 5d                	pop    %r13
  4006f0:	41 5e                	pop    %r14
  4006f2:	41 5f                	pop    %r15
  4006f4:	c3                   	retq   
  4006f5:	90                   	nop
  4006f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4006fd:	00 00 00 

0000000000400700 <__libc_csu_fini>:
  400700:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400704 <_fini>:
  400704:	48 83 ec 08          	sub    $0x8,%rsp
  400708:	48 83 c4 08          	add    $0x8,%rsp
  40070c:	c3                   	retq   
