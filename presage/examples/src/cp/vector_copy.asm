
cp:     file format elf64-x86-64


Disassembly of section .init:

0000000000400418 <_init>:
_init():
  400418:	48 83 ec 08          	sub    $0x8,%rsp
  40041c:	48 8b 05 d5 0b 20 00 	mov    0x200bd5(%rip),%rax        # 600ff8 <_DYNAMIC+0x1d0>
  400423:	48 85 c0             	test   %rax,%rax
  400426:	74 05                	je     40042d <_init+0x15>
  400428:	e8 33 00 00 00       	callq  400460 <__gmon_start__@plt>
  40042d:	48 83 c4 08          	add    $0x8,%rsp
  400431:	c3                   	retq   

Disassembly of section .plt:

0000000000400440 <__libc_start_main@plt-0x10>:
  400440:	ff 35 c2 0b 20 00    	pushq  0x200bc2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400446:	ff 25 c4 0b 20 00    	jmpq   *0x200bc4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40044c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400450 <__libc_start_main@plt>:
  400450:	ff 25 c2 0b 20 00    	jmpq   *0x200bc2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400456:	68 00 00 00 00       	pushq  $0x0
  40045b:	e9 e0 ff ff ff       	jmpq   400440 <_init+0x28>

0000000000400460 <__gmon_start__@plt>:
  400460:	ff 25 ba 0b 20 00    	jmpq   *0x200bba(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400466:	68 01 00 00 00       	pushq  $0x1
  40046b:	e9 d0 ff ff ff       	jmpq   400440 <_init+0x28>

0000000000400470 <strtol@plt>:
  400470:	ff 25 b2 0b 20 00    	jmpq   *0x200bb2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400476:	68 02 00 00 00       	pushq  $0x2
  40047b:	e9 c0 ff ff ff       	jmpq   400440 <_init+0x28>

0000000000400480 <rand@plt>:
  400480:	ff 25 aa 0b 20 00    	jmpq   *0x200baa(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400486:	68 03 00 00 00       	pushq  $0x3
  40048b:	e9 b0 ff ff ff       	jmpq   400440 <_init+0x28>

Disassembly of section .text:

0000000000400490 <_start>:
_start():
  400490:	31 ed                	xor    %ebp,%ebp
  400492:	49 89 d1             	mov    %rdx,%r9
  400495:	5e                   	pop    %rsi
  400496:	48 89 e2             	mov    %rsp,%rdx
  400499:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  40049d:	50                   	push   %rax
  40049e:	54                   	push   %rsp
  40049f:	49 c7 c0 20 08 40 00 	mov    $0x400820,%r8
  4004a6:	48 c7 c1 b0 07 40 00 	mov    $0x4007b0,%rcx
  4004ad:	48 c7 c7 80 07 40 00 	mov    $0x400780,%rdi
  4004b4:	e8 97 ff ff ff       	callq  400450 <__libc_start_main@plt>
  4004b9:	f4                   	hlt    
  4004ba:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

00000000004004c0 <deregister_tm_clones>:
deregister_tm_clones():
  4004c0:	b8 4f 10 60 00       	mov    $0x60104f,%eax
  4004c5:	55                   	push   %rbp
  4004c6:	48 2d 48 10 60 00    	sub    $0x601048,%rax
  4004cc:	48 83 f8 0e          	cmp    $0xe,%rax
  4004d0:	48 89 e5             	mov    %rsp,%rbp
  4004d3:	76 1b                	jbe    4004f0 <deregister_tm_clones+0x30>
  4004d5:	b8 00 00 00 00       	mov    $0x0,%eax
  4004da:	48 85 c0             	test   %rax,%rax
  4004dd:	74 11                	je     4004f0 <deregister_tm_clones+0x30>
  4004df:	5d                   	pop    %rbp
  4004e0:	bf 48 10 60 00       	mov    $0x601048,%edi
  4004e5:	ff e0                	jmpq   *%rax
  4004e7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  4004ee:	00 00 
  4004f0:	5d                   	pop    %rbp
  4004f1:	c3                   	retq   
  4004f2:	0f 1f 40 00          	nopl   0x0(%rax)
  4004f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4004fd:	00 00 00 

0000000000400500 <register_tm_clones>:
register_tm_clones():
  400500:	be 48 10 60 00       	mov    $0x601048,%esi
  400505:	55                   	push   %rbp
  400506:	48 81 ee 48 10 60 00 	sub    $0x601048,%rsi
  40050d:	48 c1 fe 03          	sar    $0x3,%rsi
  400511:	48 89 e5             	mov    %rsp,%rbp
  400514:	48 89 f0             	mov    %rsi,%rax
  400517:	48 c1 e8 3f          	shr    $0x3f,%rax
  40051b:	48 01 c6             	add    %rax,%rsi
  40051e:	48 d1 fe             	sar    %rsi
  400521:	74 15                	je     400538 <register_tm_clones+0x38>
  400523:	b8 00 00 00 00       	mov    $0x0,%eax
  400528:	48 85 c0             	test   %rax,%rax
  40052b:	74 0b                	je     400538 <register_tm_clones+0x38>
  40052d:	5d                   	pop    %rbp
  40052e:	bf 48 10 60 00       	mov    $0x601048,%edi
  400533:	ff e0                	jmpq   *%rax
  400535:	0f 1f 00             	nopl   (%rax)
  400538:	5d                   	pop    %rbp
  400539:	c3                   	retq   
  40053a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400540 <__do_global_dtors_aux>:
__do_global_dtors_aux():
  400540:	80 3d 01 0b 20 00 00 	cmpb   $0x0,0x200b01(%rip)        # 601048 <__TMC_END__>
  400547:	75 11                	jne    40055a <__do_global_dtors_aux+0x1a>
  400549:	55                   	push   %rbp
  40054a:	48 89 e5             	mov    %rsp,%rbp
  40054d:	e8 6e ff ff ff       	callq  4004c0 <deregister_tm_clones>
  400552:	5d                   	pop    %rbp
  400553:	c6 05 ee 0a 20 00 01 	movb   $0x1,0x200aee(%rip)        # 601048 <__TMC_END__>
  40055a:	f3 c3                	repz retq 
  40055c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400560 <frame_dummy>:
frame_dummy():
  400560:	bf 20 0e 60 00       	mov    $0x600e20,%edi
  400565:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400569:	75 05                	jne    400570 <frame_dummy+0x10>
  40056b:	eb 93                	jmp    400500 <register_tm_clones>
  40056d:	0f 1f 00             	nopl   (%rax)
  400570:	b8 00 00 00 00       	mov    $0x0,%eax
  400575:	48 85 c0             	test   %rax,%rax
  400578:	74 f1                	je     40056b <frame_dummy+0xb>
  40057a:	55                   	push   %rbp
  40057b:	48 89 e5             	mov    %rsp,%rbp
  40057e:	ff d0                	callq  *%rax
  400580:	5d                   	pop    %rbp
  400581:	e9 7a ff ff ff       	jmpq   400500 <register_tm_clones>
  400586:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40058d:	00 00 00 

0000000000400590 <init>:
init():
  400590:	55                   	push   %rbp
  400591:	53                   	push   %rbx
  400592:	50                   	push   %rax
  400593:	89 f5                	mov    %esi,%ebp
  400595:	48 89 fb             	mov    %rdi,%rbx
  400598:	85 ed                	test   %ebp,%ebp
  40059a:	7e 1c                	jle    4005b8 <init+0x28>
  40059c:	0f 1f 40 00          	nopl   0x0(%rax)
  4005a0:	e8 db fe ff ff       	callq  400480 <rand@plt>
  4005a5:	0f 57 c0             	xorps  %xmm0,%xmm0
  4005a8:	f2 0f 2a c0          	cvtsi2sd %eax,%xmm0
  4005ac:	f2 0f 11 03          	movsd  %xmm0,(%rbx)
  4005b0:	48 83 c3 08          	add    $0x8,%rbx
  4005b4:	ff cd                	dec    %ebp
  4005b6:	75 e8                	jne    4005a0 <init+0x10>
  4005b8:	48 83 c4 08          	add    $0x8,%rsp
  4005bc:	5b                   	pop    %rbx
  4005bd:	5d                   	pop    %rbp
  4005be:	c3                   	retq   
  4005bf:	90                   	nop

00000000004005c0 <cp>:
cp():
  4005c0:	85 d2                	test   %edx,%edx
  4005c2:	0f 8e ab 01 00 00    	jle    400773 <cp+0x1b3>
  4005c8:	8d 42 ff             	lea    -0x1(%rdx),%eax
  4005cb:	4c 8d 48 01          	lea    0x1(%rax),%r9
  4005cf:	31 c9                	xor    %ecx,%ecx
  4005d1:	49 83 f9 03          	cmp    $0x3,%r9
  4005d5:	0f 86 ec 00 00 00    	jbe    4006c7 <cp+0x107>
  4005db:	31 c9                	xor    %ecx,%ecx
  4005dd:	49 b8 fc ff ff ff 01 	movabs $0x1fffffffc,%r8
  4005e4:	00 00 00 
  4005e7:	4d 21 c8             	and    %r9,%r8
  4005ea:	0f 84 d7 00 00 00    	je     4006c7 <cp+0x107>
  4005f0:	4c 8d 14 c6          	lea    (%rsi,%rax,8),%r10
  4005f4:	31 c9                	xor    %ecx,%ecx
  4005f6:	49 39 fa             	cmp    %rdi,%r10
  4005f9:	72 0d                	jb     400608 <cp+0x48>
  4005fb:	48 8d 04 c7          	lea    (%rdi,%rax,8),%rax
  4005ff:	48 39 f0             	cmp    %rsi,%rax
  400602:	0f 83 bf 00 00 00    	jae    4006c7 <cp+0x107>
  400608:	4d 8d 58 fc          	lea    -0x4(%r8),%r11
  40060c:	49 c1 eb 02          	shr    $0x2,%r11
  400610:	49 8d 4b 01          	lea    0x1(%r11),%rcx
  400614:	41 89 ca             	mov    %ecx,%r10d
  400617:	41 83 e2 03          	and    $0x3,%r10d
  40061b:	31 c0                	xor    %eax,%eax
  40061d:	4c 39 d1             	cmp    %r10,%rcx
  400620:	74 66                	je     400688 <cp+0xc8>
  400622:	49 8d 4a ff          	lea    -0x1(%r10),%rcx
  400626:	4c 29 d9             	sub    %r11,%rcx
  400629:	31 c0                	xor    %eax,%eax
  40062b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  400630:	0f 10 04 c6          	movups (%rsi,%rax,8),%xmm0
  400634:	0f 10 4c c6 10       	movups 0x10(%rsi,%rax,8),%xmm1
  400639:	0f 11 04 c7          	movups %xmm0,(%rdi,%rax,8)
  40063d:	0f 11 4c c7 10       	movups %xmm1,0x10(%rdi,%rax,8)
  400642:	0f 10 44 c6 20       	movups 0x20(%rsi,%rax,8),%xmm0
  400647:	0f 10 4c c6 30       	movups 0x30(%rsi,%rax,8),%xmm1
  40064c:	0f 11 44 c7 20       	movups %xmm0,0x20(%rdi,%rax,8)
  400651:	0f 11 4c c7 30       	movups %xmm1,0x30(%rdi,%rax,8)
  400656:	0f 10 44 c6 40       	movups 0x40(%rsi,%rax,8),%xmm0
  40065b:	0f 10 4c c6 50       	movups 0x50(%rsi,%rax,8),%xmm1
  400660:	0f 11 44 c7 40       	movups %xmm0,0x40(%rdi,%rax,8)
  400665:	0f 11 4c c7 50       	movups %xmm1,0x50(%rdi,%rax,8)
  40066a:	0f 10 44 c6 60       	movups 0x60(%rsi,%rax,8),%xmm0
  40066f:	0f 10 4c c6 70       	movups 0x70(%rsi,%rax,8),%xmm1
  400674:	0f 11 44 c7 60       	movups %xmm0,0x60(%rdi,%rax,8)
  400679:	0f 11 4c c7 70       	movups %xmm1,0x70(%rdi,%rax,8)
  40067e:	48 83 c0 10          	add    $0x10,%rax
  400682:	48 83 c1 04          	add    $0x4,%rcx
  400686:	75 a8                	jne    400630 <cp+0x70>
  400688:	4d 85 d2             	test   %r10,%r10
  40068b:	74 2e                	je     4006bb <cp+0xfb>
  40068d:	48 8d 4c c7 10       	lea    0x10(%rdi,%rax,8),%rcx
  400692:	48 8d 44 c6 10       	lea    0x10(%rsi,%rax,8),%rax
  400697:	49 f7 da             	neg    %r10
  40069a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  4006a0:	0f 10 40 f0          	movups -0x10(%rax),%xmm0
  4006a4:	0f 10 08             	movups (%rax),%xmm1
  4006a7:	0f 11 41 f0          	movups %xmm0,-0x10(%rcx)
  4006ab:	0f 11 09             	movups %xmm1,(%rcx)
  4006ae:	48 83 c1 20          	add    $0x20,%rcx
  4006b2:	48 83 c0 20          	add    $0x20,%rax
  4006b6:	49 ff c2             	inc    %r10
  4006b9:	75 e5                	jne    4006a0 <cp+0xe0>
  4006bb:	4d 39 c1             	cmp    %r8,%r9
  4006be:	4c 89 c1             	mov    %r8,%rcx
  4006c1:	0f 84 ac 00 00 00    	je     400773 <cp+0x1b3>
  4006c7:	44 8d 42 01          	lea    0x1(%rdx),%r8d
  4006cb:	89 c8                	mov    %ecx,%eax
  4006cd:	83 c8 01             	or     $0x1,%eax
  4006d0:	41 29 c0             	sub    %eax,%r8d
  4006d3:	45 89 c1             	mov    %r8d,%r9d
  4006d6:	41 83 e1 07          	and    $0x7,%r9d
  4006da:	45 39 c8             	cmp    %r9d,%r8d
  4006dd:	74 67                	je     400746 <cp+0x186>
  4006df:	44 29 ca             	sub    %r9d,%edx
  4006e2:	66 66 66 66 66 2e 0f 	data16 data16 data16 data16 nopw %cs:0x0(%rax,%rax,1)
  4006e9:	1f 84 00 00 00 00 00 
  4006f0:	48 8b 04 ce          	mov    (%rsi,%rcx,8),%rax
  4006f4:	48 89 04 cf          	mov    %rax,(%rdi,%rcx,8)
  4006f8:	48 8b 44 ce 08       	mov    0x8(%rsi,%rcx,8),%rax
  4006fd:	48 89 44 cf 08       	mov    %rax,0x8(%rdi,%rcx,8)
  400702:	48 8b 44 ce 10       	mov    0x10(%rsi,%rcx,8),%rax
  400707:	48 89 44 cf 10       	mov    %rax,0x10(%rdi,%rcx,8)
  40070c:	48 8b 44 ce 18       	mov    0x18(%rsi,%rcx,8),%rax
  400711:	48 89 44 cf 18       	mov    %rax,0x18(%rdi,%rcx,8)
  400716:	48 8b 44 ce 20       	mov    0x20(%rsi,%rcx,8),%rax
  40071b:	48 89 44 cf 20       	mov    %rax,0x20(%rdi,%rcx,8)
  400720:	48 8b 44 ce 28       	mov    0x28(%rsi,%rcx,8),%rax
  400725:	48 89 44 cf 28       	mov    %rax,0x28(%rdi,%rcx,8)
  40072a:	48 8b 44 ce 30       	mov    0x30(%rsi,%rcx,8),%rax
  40072f:	48 89 44 cf 30       	mov    %rax,0x30(%rdi,%rcx,8)
  400734:	48 8b 44 ce 38       	mov    0x38(%rsi,%rcx,8),%rax
  400739:	48 89 44 cf 38       	mov    %rax,0x38(%rdi,%rcx,8)
  40073e:	48 83 c1 08          	add    $0x8,%rcx
  400742:	39 ca                	cmp    %ecx,%edx
  400744:	75 aa                	jne    4006f0 <cp+0x130>
  400746:	45 85 c9             	test   %r9d,%r9d
  400749:	74 28                	je     400773 <cp+0x1b3>
  40074b:	48 8d 14 cf          	lea    (%rdi,%rcx,8),%rdx
  40074f:	48 8d 0c ce          	lea    (%rsi,%rcx,8),%rcx
  400753:	41 f7 d9             	neg    %r9d
  400756:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40075d:	00 00 00 
  400760:	48 8b 31             	mov    (%rcx),%rsi
  400763:	48 89 32             	mov    %rsi,(%rdx)
  400766:	48 83 c2 08          	add    $0x8,%rdx
  40076a:	48 83 c1 08          	add    $0x8,%rcx
  40076e:	41 ff c1             	inc    %r9d
  400771:	75 ed                	jne    400760 <cp+0x1a0>
  400773:	c3                   	retq   
  400774:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  40077b:	00 00 00 00 00 

0000000000400780 <main>:
main():
  400780:	53                   	push   %rbx
  400781:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400785:	31 f6                	xor    %esi,%esi
  400787:	ba 0a 00 00 00       	mov    $0xa,%edx
  40078c:	e8 df fc ff ff       	callq  400470 <strtol@plt>
  400791:	48 89 c3             	mov    %rax,%rbx
  400794:	85 db                	test   %ebx,%ebx
  400796:	7e 11                	jle    4007a9 <main+0x29>
  400798:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40079f:	00 
  4007a0:	e8 db fc ff ff       	callq  400480 <rand@plt>
  4007a5:	ff cb                	dec    %ebx
  4007a7:	75 f7                	jne    4007a0 <main+0x20>
  4007a9:	31 c0                	xor    %eax,%eax
  4007ab:	5b                   	pop    %rbx
  4007ac:	c3                   	retq   
  4007ad:	0f 1f 00             	nopl   (%rax)

00000000004007b0 <__libc_csu_init>:
__libc_csu_init():
  4007b0:	41 57                	push   %r15
  4007b2:	41 56                	push   %r14
  4007b4:	41 89 ff             	mov    %edi,%r15d
  4007b7:	41 55                	push   %r13
  4007b9:	41 54                	push   %r12
  4007bb:	4c 8d 25 4e 06 20 00 	lea    0x20064e(%rip),%r12        # 600e10 <__frame_dummy_init_array_entry>
  4007c2:	55                   	push   %rbp
  4007c3:	48 8d 2d 4e 06 20 00 	lea    0x20064e(%rip),%rbp        # 600e18 <__init_array_end>
  4007ca:	53                   	push   %rbx
  4007cb:	49 89 f6             	mov    %rsi,%r14
  4007ce:	49 89 d5             	mov    %rdx,%r13
  4007d1:	31 db                	xor    %ebx,%ebx
  4007d3:	4c 29 e5             	sub    %r12,%rbp
  4007d6:	48 83 ec 08          	sub    $0x8,%rsp
  4007da:	48 c1 fd 03          	sar    $0x3,%rbp
  4007de:	e8 35 fc ff ff       	callq  400418 <_init>
  4007e3:	48 85 ed             	test   %rbp,%rbp
  4007e6:	74 1e                	je     400806 <__libc_csu_init+0x56>
  4007e8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4007ef:	00 
  4007f0:	4c 89 ea             	mov    %r13,%rdx
  4007f3:	4c 89 f6             	mov    %r14,%rsi
  4007f6:	44 89 ff             	mov    %r15d,%edi
  4007f9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  4007fd:	48 83 c3 01          	add    $0x1,%rbx
  400801:	48 39 eb             	cmp    %rbp,%rbx
  400804:	75 ea                	jne    4007f0 <__libc_csu_init+0x40>
  400806:	48 83 c4 08          	add    $0x8,%rsp
  40080a:	5b                   	pop    %rbx
  40080b:	5d                   	pop    %rbp
  40080c:	41 5c                	pop    %r12
  40080e:	41 5d                	pop    %r13
  400810:	41 5e                	pop    %r14
  400812:	41 5f                	pop    %r15
  400814:	c3                   	retq   
  400815:	90                   	nop
  400816:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40081d:	00 00 00 

0000000000400820 <__libc_csu_fini>:
__libc_csu_fini():
  400820:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000400824 <_fini>:
_fini():
  400824:	48 83 ec 08          	sub    $0x8,%rsp
  400828:	48 83 c4 08          	add    $0x8,%rsp
  40082c:	c3                   	retq   
