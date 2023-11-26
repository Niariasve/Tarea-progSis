	.file	"vendedor.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a"
.LC1:
	.string	"ventas.txt"
.LC2:
	.string	"Error al abrir el archivo"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC3:
	.string	"Ingrese el codigo del producto: "
	.section	.rodata.str1.1
.LC4:
	.string	"%d"
.LC5:
	.string	"%d %lf %19s %d %19s %19s"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Ingrese el nombre del vendedor: "
	.section	.rodata.str1.1
.LC7:
	.string	"%s"
.LC8:
	.string	"Ingrese la fecha de venta: "
.LC9:
	.string	"Ingrese el precio de venta: "
.LC10:
	.string	"%lf"
.LC11:
	.string	"Ingrese el local de venta: "
.LC12:
	.string	"%s %0.2lf %s %s\n"
	.text
	.p2align 4
	.globl	registrarVenta
	.type	registrarVenta, @function
registrarVenta:
.LFB51:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
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
	subq	$376, %rsp
	.cfi_def_cfa_offset 432
	movq	%fs:40, %rax
	movq	%rax, 360(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	testq	%rax, %rax
	je	.L12
	leaq	.LC3(%rip), %rsi
	movl	$1, %edi
	movq	%rax, %rbp
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	36(%rsp), %rsi
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	256(%rsp), %rbx
	leaq	.LC5(%rip), %r12
	leaq	.LC6(%rip), %r15
	leaq	.LC7(%rip), %r13
	leaq	.LC8(%rip), %r14
	jmp	.L5
	.p2align 4,,10
	.p2align 3
.L6:
	leaq	48(%rsp), %rcx
	leaq	40(%rsp), %rdx
	movq	%r12, %rsi
	movq	%rbx, %rdi
	leaq	128(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 440
	leaq	104(%rsp), %rax
	pushq	%rax
	.cfi_def_cfa_offset 448
	xorl	%eax, %eax
	leaq	60(%rsp), %r9
	leaq	80(%rsp), %r8
	call	__isoc99_sscanf@PLT
	popq	%rax
	.cfi_def_cfa_offset 440
	popq	%rdx
	.cfi_def_cfa_offset 432
	movl	36(%rsp), %eax
	cmpl	%eax, 40(%rsp)
	je	.L13
.L5:
	movq	%rbp, %rdx
	movl	$100, %esi
	movq	%rbx, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	jne	.L6
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L10
	addq	$376, %rsp
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
	.p2align 4,,10
	.p2align 3
.L13:
	.cfi_restore_state
	movq	%r15, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	160(%rsp), %rcx
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%rcx, %rsi
	movq	%rcx, 24(%rsp)
	call	__isoc99_scanf@PLT
	movq	%r14, %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	192(%rsp), %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r8, %rsi
	movq	%r8, 16(%rsp)
	call	__isoc99_scanf@PLT
	leaq	.LC9(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	56(%rsp), %rsi
	leaq	.LC10(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	224(%rsp), %r9
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r9, %rsi
	movq	%r9, 8(%rsp)
	call	__isoc99_scanf@PLT
	movq	8(%rsp), %r9
	movq	16(%rsp), %r8
	movq	%rbp, %rdi
	movsd	56(%rsp), %xmm0
	movq	24(%rsp), %rcx
	movl	$1, %esi
	leaq	.LC12(%rip), %rdx
	movl	$1, %eax
	call	__fprintf_chk@PLT
	movl	36(%rsp), %edi
	xorl	%eax, %eax
	call	disminuirInventario@PLT
	jmp	.L5
.L12:
	xorl	%edi, %edi
	call	fclose@PLT
	movq	360(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L10
	addq	$376, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC2(%rip), %rdi
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
	jmp	puts@PLT
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE51:
	.size	registrarVenta, .-registrarVenta
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
