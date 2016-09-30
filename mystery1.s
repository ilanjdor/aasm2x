	.file	"mystery1.c"
	.text
	.globl	mystery
	.type	mystery, @function
mystery:
.LFB0:
	leaq	4(%rdi), %r8
	movl	(%rdi), %edx
	subl	$1, %edx
	js	.L7
	movl	%edx, %eax
	shrl	$31, %eax
	addl	%edx, %eax
	sarl	%eax
	movl	%eax, %ecx
	cltq
	movl	(%r8,%rax,4), %eax
	cmpl	%eax, %esi
	je	.L8
	movl	$0, %edi
	jmp	.L3
.L4:
	leal	-1(%rcx), %edx
.L5:
	cmpl	%edx, %edi
	jg	.L10
	leal	(%rdi,%rdx), %ecx
	movl	%ecx, %eax
	shrl	$31, %eax
	addl	%ecx, %eax
	sarl	%eax
	movl	%eax, %ecx
	cltq
	movl	(%r8,%rax,4), %eax
	cmpl	%esi, %eax
	je	.L9
.L3:
	cmpl	%eax, %esi
	jle	.L4
	leal	1(%rcx), %edi
	jmp	.L5
.L10:
	movl	$0, %eax
	ret
.L7:
	movl	$0, %eax
	ret
.L8:
	movl	$1, %eax
	ret
.L9:
	movl	$1, %eax
	ret
.LFE0:
	.size	mystery, .-mystery
	.ident	"GCC: (Ubuntu 6.2.0-3ubuntu11~14.04) 6.2.0 20160901"
	.section	.note.GNU-stack,"",@progbits
