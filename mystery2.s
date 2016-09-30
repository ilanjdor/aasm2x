	.file	"mystery2.c"
	.text
	.globl	mysteryN
	.type	mysteryN, @function
mysteryN:
.LFB23:
	testq	%rdi, %rdi
	je	.L5
	cmpl	(%rdi), %esi
	je	.L8
.L3:
	movq	8(%rdi), %rdi
	testq	%rdi, %rdi
	je	.L9
	cmpl	%esi, (%rdi)
	jne	.L3
	movl	$1, %eax
	ret
.L9:
	movl	$0, %eax
	ret
.L5:
	movl	$0, %eax
	ret
.L8:
	movl	$1, %eax
	ret
.LFE23:
	.size	mysteryN, .-mysteryN
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~14.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
