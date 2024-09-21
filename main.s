	.file	"main.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "x value : %i\12\0"
LC1:
	.ascii "y value : %i\12\0"
LC2:
	.ascii "z value : %i\12\0"
LC3:
	.ascii "Amit online\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
	pushl	%ebp
	movl	%esp, %ebp
	andl	$-16, %esp
	subl	$32, %esp
	call	___main
	movl	$10, 24(%esp)
	movl	$15, 20(%esp)
	movl	$30, 16(%esp)
	movl	24(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_printf
	movl	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
	movl	16(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC2, (%esp)
	call	_printf
	movl	$0, 28(%esp)
	jmp	L2
L3:
	movl	$LC3, (%esp)
	call	_printf
	addl	$1, 28(%esp)
L2:
	cmpl	$9, 28(%esp)
	jle	L3
	movl	$0, %eax
	leave
	ret
	.ident	"GCC: (tdm-1) 4.9.2"
	.def	_printf;	.scl	2;	.type	32;	.endef
