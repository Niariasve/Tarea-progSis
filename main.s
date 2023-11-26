	.file	"main.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"r"
.LC1:
	.string	"usuarios.txt"
.LC2:
	.string	"Error al abrir el archivo."
.LC3:
	.string	"%19s %19s %19s"
.LC4:
	.string	"administrador"
.LC5:
	.string	"1. crear usuario"
.LC6:
	.string	"2. actualizar usuario"
.LC7:
	.string	"3. salir"
.LC8:
	.string	"%d"
.LC9:
	.string	"bodeguero"
.LC10:
	.string	"1. crear producto"
.LC11:
	.string	"2. actualizar producto"
.LC12:
	.string	"vendedor"
.LC13:
	.string	"1.registrar venta"
.LC14:
	.string	"2. salir"
.LC15:
	.string	"No se han recibido parametros"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB51:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$216, %rsp
	.cfi_def_cfa_offset 272
	movq	%fs:40, %rax
	movq	%rax, 200(%rsp)
	xorl	%eax, %eax
	cmpl	$2, %edi
	jle	.L2
	movq	%rsi, %rbx
	leaq	.LC1(%rip), %rdi
	leaq	.LC0(%rip), %rsi
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L35
	movq	16(%rbx), %rax
	movq	8(%rbx), %r13
	leaq	128(%rsp), %rbx
	movq	%rax, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L5:
	movq	%rbp, %rdx
	movl	$70, %esi
	movq	%rbx, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L36
	leaq	32(%rsp), %r12
	leaq	96(%rsp), %r15
	movq	%rbx, %rdi
	xorl	%eax, %eax
	leaq	64(%rsp), %r14
	leaq	.LC3(%rip), %rsi
	movq	%r15, %r8
	movq	%r12, %rdx
	movq	%r14, %rcx
	call	__isoc99_sscanf@PLT
	movq	%r12, %rsi
	movq	%r13, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	movq	8(%rsp), %rdi
	movq	%r14, %rsi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	movabsq	$8391166453657461857, %rax
	cmpq	%rax, 96(%rsp)
	je	.L37
.L9:
	movabsq	$8243123779914723170, %rax
	cmpq	%rax, 96(%rsp)
	je	.L38
.L14:
	leaq	.LC12(%rip), %rsi
	movq	%r15, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L5
	leaq	.LC13(%rip), %rdi
	call	puts@PLT
	leaq	.LC14(%rip), %rdi
	call	puts@PLT
	xorl	%eax, %eax
	leaq	28(%rsp), %rsi
	leaq	.LC8(%rip), %rdi
	call	__isoc99_scanf@PLT
	cmpl	$1, 28(%rsp)
	jne	.L5
	xorl	%eax, %eax
	call	registrarVenta@PLT
	jmp	.L5
.L2:
	leaq	.LC15(%rip), %rdi
	call	puts@PLT
	orl	$-1, %eax
.L1:
	movq	200(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L39
	addq	$216, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L36:
	.cfi_restore_state
	movq	%rbp, %rdi
	call	fclose@PLT
	xorl	%eax, %eax
	jmp	.L1
.L37:
	cmpl	$1868849522, 104(%rsp)
	jne	.L9
	cmpw	$114, 108(%rsp)
	jne	.L9
	leaq	.LC5(%rip), %rdi
	call	puts@PLT
	leaq	.LC6(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	28(%rsp), %rsi
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	28(%rsp), %eax
	cmpl	$1, %eax
	je	.L40
	cmpl	$2, %eax
	jne	.L5
.L13:
	xorl	%eax, %eax
	call	actualizarUsuario@PLT
	jmp	.L5
.L38:
	cmpw	$111, 104(%rsp)
	jne	.L14
	leaq	.LC10(%rip), %rdi
	call	puts@PLT
	leaq	.LC11(%rip), %rdi
	call	puts@PLT
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	leaq	28(%rsp), %rsi
	leaq	.LC8(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movl	28(%rsp), %eax
	cmpl	$1, %eax
	je	.L41
	cmpl	$2, %eax
	jne	.L5
.L18:
	xorl	%eax, %eax
	call	actualizarProducto@PLT
	jmp	.L5
.L41:
	xorl	%eax, %eax
	call	crearProducto@PLT
	jmp	.L18
.L40:
	xorl	%eax, %eax
	call	crearUsuario@PLT
	jmp	.L13
.L39:
	call	__stack_chk_fail@PLT
.L35:
	leaq	.LC2(%rip), %rdi
	call	puts@PLT
	movl	$1, %eax
	jmp	.L1
	.cfi_endproc
.LFE51:
	.size	main, .-main
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
