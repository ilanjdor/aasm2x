	.file	"mystery4.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
.LFB0:
	leaq	4(%rdi), %rdx
	movl	(%rdi), %eax
	testl	%eax, %eax
	jle	.L5
	cmpl	4(%rdi), %esi
	je	.L6
	addq	$8, %rdi
	leal	-1(%rax), %eax
	leaq	4(%rdx,%rax,4), %rax
.L3:
	cmpq	%rax, %rdi
	je	.L8
	addq	$4, %rdi
	cmpl	%esi, -4(%rdi)
	jne	.L3
	movl	$1, %eax
	ret
.L8:
	movl	$0, %eax
	ret
.L5:
	movl	$0, %eax
	ret
.L6:
	movl	$1, %eax
	ret
.LFE0:
	.size	mystery, .-mystery
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~14.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
