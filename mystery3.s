	.file	"mystery3.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
.LFB23:
	testq	%rdi, %rdi
	je	.L7
	movl	(%rdi), %eax
	cmpl	%eax, %esi
	jne	.L3
	movl	$1, %eax
	ret
.L4:
	movq	8(%rdi), %rdi
.L5:
	testq	%rdi, %rdi
	je	.L10
	movl	(%rdi), %eax
	cmpl	%esi, %eax
	je	.L9
.L3:
	cmpl	%eax, %esi
	jle	.L4
	movq	16(%rdi), %rdi
	jmp	.L5
.L10:
	movl	$0, %eax
	ret
.L7:
	movl	$0, %eax
	ret
.L9:
	movl	$1, %eax
	ret
.LFE23:
	.size	mystery, .-mystery
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~14.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
