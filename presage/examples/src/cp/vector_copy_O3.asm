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
