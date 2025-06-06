	.att_syntax
	.text
	.p2align	5
	.globl	_get_record_accessor_jazz
	.globl	get_record_accessor_jazz
	.globl	_robinhood_accessor_jazz
	.globl	robinhood_accessor_jazz
_get_record_accessor_jazz:
get_record_accessor_jazz:
	movq	%rsp, %rax
	leaq	-48(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 16(%rsp)
	movq	%rbp, 24(%rsp)
	movq	%r12, 32(%rsp)
	movq	%rax, 40(%rsp)
	lfence
	movq	$0, %rcx
	movq	$168, %rax
	movq	(%rsi), %r8
	orq 	%rcx, %r8
	xorq	%rdx, %rdx
	divq	%r8
	xorq	%rdx, %rdx
	jmp 	Lget_record_accessor_jazz$1
Lget_record_accessor_jazz$2:
	movq	$-1, %r9
	cmovnb	%r9, %rcx
	movq	%r8, %r9
	imulq	%rdx, %r9
	movq	8(%rsi), %r10
	cmpq	%r10, %rdx
	setnb	%r11b
	movq	32(%rsi), %rbx
	movq	(%rdi,%r9,8), %rbp
	cmpq	$-1, %rbp
	sete	%r10b
	cmpq	%rbx, %rbp
	sete	%bl
	orb 	%bl, %r10b
	andb	%r11b, %r10b
	movq	16(%rsi), %r11
	notb	%r11b
	andb	%r11b, %r10b
	movq	24(%rsi), %r11
	orq 	%rcx, %r11
	xorq	%rbx, %rbx
	movq	%r9, %r12
	jmp 	Lget_record_accessor_jazz$3
Lget_record_accessor_jazz$4:
	movq	$-1, %r9
	cmovnb	%r9, %rcx
	movq	%rcx, %mm0
	movq	(%r11), %r9
	leaq	(%rbx,%r12), %rbp
	movq	%rbx, (%rsp)
	movq	%r12, 8(%rsp)
	movq	(%rdi,%rbp,8), %rbx
	movzbq	%r10b, %rbp
	leaq	-1(%rbp), %r12
	negq	%rbp
	andq	%r12, %r9
	andq	%rbp, %rbx
	orq 	%rbx, %r9
	movq	%r9, (%r11)
	leaq	8(%r11), %r11
	movq	(%rsp), %r9
	movq	8(%rsp), %r12
	orq 	%rcx, %r9
	orq 	%rcx, %r12
	leaq	1(%r9), %rbx
	movq	%mm0, %rcx
Lget_record_accessor_jazz$3:
	cmpq	%r8, %rbx
	jb  	Lget_record_accessor_jazz$4
	movq	$-1, %r9
	cmovb	%r9, %rcx
	movzbq	%r10b, %r9
	orq 	%r9, 16(%rsi)
	leaq	1(%rdx), %rdx
Lget_record_accessor_jazz$1:
	cmpq	%rax, %rdx
	jb  	Lget_record_accessor_jazz$2
	movq	$-1, %rax
	cmovb	%rax, %rcx
	movq	16(%rsp), %rbx
	movq	24(%rsp), %rbp
	movq	32(%rsp), %r12
	movq	40(%rsp), %rsp
	ret
_robinhood_accessor_jazz:
robinhood_accessor_jazz:
	movq	%rsp, %rax
	leaq	-120(%rsp), %rsp
	andq	$-8, %rsp
	movq	%rbx, 80(%rsp)
	movq	%rbp, 88(%rsp)
	movq	%r12, 96(%rsp)
	movq	%r13, 104(%rsp)
	movq	%rax, 112(%rsp)
	movq	%rdi, %rax
	movq	%rsi, %rdi
	lfence
	movq	$0, %rsi
	movq	%rax, (%rsp)
	movq	(%rdi), %rcx
	orq 	%rsi, %rcx
	movq	$168, %rax
	xorq	%rdx, %rdx
	divq	%rcx
	xorb	%dl, %dl
	movb	%dl, 72(%rsp)
	xorq	%rdx, %rdx
	jmp 	Lrobinhood_accessor_jazz$1
Lrobinhood_accessor_jazz$2:
	movq	$-1, %r8
	cmovnb	%r8, %rsi
	movq	%rax, 8(%rsp)
	movq	24(%rdi), %rax
	orq 	%rsi, %rax
	movq	(%rax), %r8
	movq	%rax, 16(%rsp)
	movq	%rdx, %rax
	imulq	%rcx, %rax
	movq	%rcx, 24(%rsp)
	movq	%rdx, 32(%rsp)
	movq	%rax, 40(%rsp)
	movq	8(%rdi), %rax
	cmpq	%rax, %rdx
	setnb	%al
	movb	%al, 73(%rsp)
	movq	(%rsp), %rax
	movq	40(%rsp), %rcx
	orq 	%rsi, %rax
	movq	(%rax,%rcx,8), %rcx
	cmpq	$-1, %rcx
	sete	%dl
	cmpq	%r8, %rcx
	sete	%cl
	orb 	%cl, %dl
	movq	%rax, 48(%rsp)
	movb	73(%rsp), %al
	andb	%al, %dl
	movq	16(%rdi), %rax
	movb	%al, %cl
	movb	%al, 74(%rsp)
	notb	%cl
	andb	%cl, %dl
	movb	%dl, 75(%rsp)
	movq	48(%rsp), %rax
	movq	40(%rsp), %rcx
	movq	$-3750763034362895579, %r8
	movzbq	(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	1(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	2(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	3(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	4(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	5(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	6(%rax,%rcx,8), %rdx
	xorq	%rdx, %r8
	movq	$1099511628211, %rdx
	imulq	%rdx, %r8
	movzbq	7(%rax,%rcx,8), %rcx
	xorq	%rcx, %r8
	movq	$1099511628211, %rcx
	imulq	%rcx, %r8
	movq	%rax, 48(%rsp)
	movq	80(%rdi), %r9
	movq	88(%rdi), %rdx
	movq	96(%rdi), %rcx
	movq	104(%rdi), %rax
	movq	%r8, %r10
	mulxq	%r10, %rdx, %rdx
	movq	%r8, %r10
	subq	%rdx, %r10
	shrq	%cl, %r10
	addq	%r10, %rdx
	movq	%rax, %rcx
	shrq	%cl, %rdx
	imulq	%r9, %rdx
	movq	%r8, %rax
	subq	%rdx, %rax
	movq	48(%rdi), %rcx
	movq	%rcx, %rdx
	subq	%rax, %rdx
	leaq	(%rdx,%r9), %r8
	cmpq	%rax, %rcx
	cmovb	%r8, %rdx
	movq	%rdx, 56(%rsp)
	movq	32(%rdi), %rdx
	movq	56(%rsp), %rcx
	cmpq	%rdx, %rcx
	sete	%cl
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	movq	$-3750763034362895579, %r10
	movzbq	(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	1(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	2(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	3(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	4(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	5(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	6(%r8,%r9,8), %r11
	xorq	%r11, %r10
	movq	$1099511628211, %r11
	imulq	%r11, %r10
	movzbq	7(%r8,%r9,8), %r9
	xorq	%r9, %r10
	movq	$1099511628211, %r9
	imulq	%r9, %r10
	movq	%r8, 48(%rsp)
	movq	16(%rsp), %r8
	orq 	%rsi, %r8
	movq	$-3750763034362895579, %r9
	movzbq	(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	1(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	2(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	3(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	4(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	5(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	6(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movzbq	7(%r8), %r11
	xorq	%r11, %r9
	movq	$1099511628211, %r11
	imulq	%r11, %r9
	movq	%r8, 16(%rsp)
	cmpq	%r9, %r10
	setb	%r8b
	andb	%r8b, %cl
	movq	56(%rsp), %r8
	cmpq	%rdx, %r8
	setb	%r8b
	orb 	%r8b, %cl
	movb	75(%rsp), %r8b
	notb	%r8b
	movb	74(%rsp), %r9b
	notb	%r9b
	andb	%r9b, %r8b
	movb	73(%rsp), %r9b
	andb	%r9b, %r8b
	andb	%cl, %r8b
	movb	%r8b, 76(%rsp)
	movq	64(%rdi), %rcx
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	orq 	%rsi, %r8
	movq	(%r8,%r9,8), %r9
	cmpq	$-1, %r9
	sete	%r9b
	movq	%r8, 48(%rsp)
	movb	75(%rsp), %r8b
	andb	%r8b, %r9b
	movb	76(%rsp), %r8b
	orb 	%r8b, %r9b
	movb	72(%rsp), %r8b
	notb	%r8b
	andb	%r8b, %r9b
	orb 	%r9b, %cl
	movzbq	%cl, %rcx
	movq	%rcx, 64(%rdi)
	movq	%rdi, 64(%rsp)
	movq	16(%rsp), %rcx
	orq 	%rsi, %rcx
	movq	%rcx, %rdi
	movq	%rcx, 16(%rsp)
	movq	48(%rsp), %r8
	movq	40(%rsp), %r9
	movq	24(%rsp), %rcx
	movb	75(%rsp), %r10b
	orq 	%rsi, %r8
	orq 	%rsi, %r9
	orq 	%rsi, %rcx
	xorq	%rbx, %rbx
	movq	%r9, %r12
	jmp 	Lrobinhood_accessor_jazz$5
Lrobinhood_accessor_jazz$6:
	movq	$-1, %r11
	cmovnb	%r11, %rsi
	movq	%rsi, %mm0
	movq	(%rdi), %rbp
	leaq	(%rbx,%r12), %r11
	movq	%rbx, 24(%rsp)
	movq	%r12, 40(%rsp)
	movq	(%r8,%r11,8), %rbx
	movzbq	%r10b, %r12
	leaq	-1(%r12), %r13
	negq	%r12
	andq	%r13, %rbx
	andq	%r12, %rbp
	orq 	%rbp, %rbx
	movq	%rbx, (%r8,%r11,8)
	leaq	8(%rdi), %rdi
	movq	24(%rsp), %r11
	movq	40(%rsp), %r12
	orq 	%rsi, %r11
	orq 	%rsi, %r12
	leaq	1(%r11), %rbx
	movq	%mm0, %rsi
Lrobinhood_accessor_jazz$5:
	cmpq	%rcx, %rbx
	jb  	Lrobinhood_accessor_jazz$6
	movq	$-1, %rdi
	cmovb	%rdi, %rsi
	movq	16(%rsp), %rdi
	orq 	%rsi, %rdi
	movb	76(%rsp), %r10b
	movq	$0, %rbp
	jmp 	Lrobinhood_accessor_jazz$3
Lrobinhood_accessor_jazz$4:
	movq	$-1, %r11
	cmovnb	%r11, %rsi
	movq	(%rdi), %r11
	leaq	(%r9,%rbp), %rbx
	movq	%rbp, 16(%rsp)
	movq	%r9, 40(%rsp)
	movq	(%r8,%rbx,8), %r9
	movq	%r11, %rbp
	movzbq	%r10b, %r12
	leaq	-1(%r12), %r13
	negq	%r12
	andq	%r13, %rbp
	andq	%r12, %r9
	orq 	%r9, %rbp
	movq	%rbp, (%rdi)
	movq	(%r8,%rbx,8), %r9
	movzbq	%r10b, %rbp
	leaq	-1(%rbp), %r12
	negq	%rbp
	andq	%r12, %r9
	andq	%rbp, %r11
	orq 	%r11, %r9
	movq	%r9, (%r8,%rbx,8)
	leaq	8(%rdi), %rdi
	movq	16(%rsp), %r11
	movq	40(%rsp), %r9
	orq 	%rsi, %r11
	orq 	%rsi, %r9
	leaq	1(%r11), %rbp
Lrobinhood_accessor_jazz$3:
	cmpq	%rcx, %rbp
	jb  	Lrobinhood_accessor_jazz$4
	movq	$-1, %rdi
	cmovb	%rdi, %rsi
	movb	72(%rsp), %dil
	movb	75(%rsp), %r9b
	orb 	%r9b, %dil
	orb 	%r10b, %dil
	movb	%dil, 72(%rsp)
	movb	74(%rsp), %r8b
	orb 	%r9b, %r8b
	movzbq	%r8b, %r11
	movq	64(%rsp), %rdi
	orq 	%rsi, %rdi
	movq	%r11, 16(%rdi)
	movq	72(%rdi), %r11
	cmpq	%r11, %rdx
	setnbe	%bl
	andb	%r9b, %bl
	orb 	%r10b, %bl
	movq	%rdx, %r9
	movzbq	%bl, %rbx
	leaq	-1(%rbx), %rbp
	negq	%rbx
	andq	%rbp, %r11
	andq	%rbx, %r9
	orq 	%r9, %r11
	movq	%r11, 72(%rdi)
	movq	40(%rdi), %r9
	movzbq	%r10b, %r11
	leaq	-1(%r11), %rbx
	negq	%r11
	andq	%rbx, %r9
	andq	%r11, %rax
	orq 	%rax, %r9
	movq	%r9, 40(%rdi)
	movq	56(%rsp), %rax
	movzbq	%r10b, %r9
	leaq	-1(%r9), %r10
	negq	%r9
	andq	%r10, %rdx
	andq	%r9, %rax
	orq 	%rax, %rdx
	movq	%rdx, 32(%rdi)
	movb	73(%rsp), %al
	movzbq	%al, %rax
	addq	%rax, 48(%rdi)
	movzbq	%r8b, %rax
	notq	%rax
	movb	73(%rsp), %dl
	movzbq	%dl, %rdx
	andq	%rdx, %rax
	addq	%rax, 56(%rdi)
	addq	%rax, 32(%rdi)
	movq	8(%rsp), %rax
	movq	32(%rsp), %rdx
	orq 	%rsi, %rdx
	orq 	%rsi, %rax
	leaq	1(%rdx), %rdx
Lrobinhood_accessor_jazz$1:
	cmpq	%rax, %rdx
	jb  	Lrobinhood_accessor_jazz$2
	movq	$-1, %rax
	cmovb	%rax, %rsi
	movq	80(%rsp), %rbx
	movq	88(%rsp), %rbp
	movq	96(%rsp), %r12
	movq	104(%rsp), %r13
	movq	112(%rsp), %rsp
	ret
