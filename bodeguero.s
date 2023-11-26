	.file	"bodeguero.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a"
.LC1:
	.string	"productos.txt"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Ingrese el codigo del producto: "
	.section	.rodata.str1.1
.LC3:
	.string	"%d"
	.section	.rodata.str1.8
	.align 8
.LC4:
	.string	"Ingrese el nombre del producto: "
	.section	.rodata.str1.1
.LC5:
	.string	"%s"
	.section	.rodata.str1.8
	.align 8
.LC6:
	.string	"Ingrese el precio del producto: "
	.section	.rodata.str1.1
.LC7:
	.string	"%lf"
	.section	.rodata.str1.8
	.align 8
.LC8:
	.string	"Ingrese la cantidad del producto: "
	.align 8
.LC9:
	.string	"Ingrese la categoria del producto: "
	.align 8
.LC10:
	.string	"Ingrese la marca del producto: "
	.section	.rodata.str1.1
.LC11:
	.string	"%d %0.2lf %s %d %s %s\n"
	.text
	.p2align 4
	.globl	crearProducto
	.type	crearProducto, @function
crearProducto:
.LFB51:
	.cfi_startproc
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	leaq	.LC0(%rip), %rsi
	leaq	.LC1(%rip), %rdi
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	subq	$112, %rsp
	.cfi_def_cfa_offset 160
	movq	%fs:40, %rax
	movq	%rax, 104(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L2
	leaq	.LC3(%rip), %r13
	leaq	.LC2(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rsp, %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	16(%rsp), %rbx
	movl	$1, %edi
	leaq	.LC5(%rip), %r12
	leaq	.LC4(%rip), %rsi
	xorl	%eax, %eax
	leaq	80(%rsp), %r14
	call	__printf_chk@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC6(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	8(%rsp), %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC8(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	4(%rsp), %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	48(%rsp), %r13
	leaq	.LC9(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC10(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	pushq	%r14
	.cfi_def_cfa_offset 168
	movq	%rbx, %r8
	movl	$1, %esi
	pushq	%r13
	.cfi_def_cfa_offset 176
	movl	20(%rsp), %r9d
	movq	%rbp, %rdi
	leaq	.LC11(%rip), %rdx
	movsd	24(%rsp), %xmm0
	movl	16(%rsp), %ecx
	movl	$1, %eax
	call	__fprintf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 168
	popq	%rdx
	.cfi_def_cfa_offset 160
.L2:
	movq	104(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L10
	addq	$112, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	movq	%rbp, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	jmp	fclose@PLT
.L10:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE51:
	.size	crearProducto, .-crearProducto
	.section	.rodata.str1.1
.LC12:
	.string	"r"
.LC13:
	.string	"w"
.LC14:
	.string	"productos_temp.txt"
.LC15:
	.string	"Error al abrir el archivo"
	.section	.rodata.str1.8
	.align 8
.LC16:
	.string	"Ingrese el codigo del producto que desea modificar: "
	.section	.rodata.str1.1
.LC17:
	.string	"%d %lf %19s %d %19s %19s"
	.section	.rodata.str1.8
	.align 8
.LC18:
	.string	"Ingrese el nuevo precio del producto: "
	.align 8
.LC19:
	.string	"Ingrese la nueva cantidad del producto: "
	.text
	.p2align 4
	.globl	actualizarProducto
	.type	actualizarProducto, @function
actualizarProducto:
.LFB52:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC12(%rip), %rsi
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
	subq	$264, %rsp
	.cfi_def_cfa_offset 320
	movq	%fs:40, %rax
	movq	%rax, 248(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	leaq	.LC13(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movq	%rax, %r13
	call	fopen@PLT
	movq	%rax, %r14
	testq	%r13, %r13
	je	.L14
	testq	%rax, %rax
	je	.L31
	leaq	.LC16(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	36(%rsp), %rsi
	xorl	%eax, %eax
	leaq	.LC3(%rip), %rdi
	call	__isoc99_scanf@PLT
	leaq	144(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L17:
	movq	%r13, %rdx
	movl	$100, %esi
	movq	%rbx, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L32
	leaq	112(%rsp), %rax
	leaq	32(%rsp), %r12
	movq	%rbx, %rdi
	movq	%rax, (%rsp)
	leaq	48(%rsp), %rbp
	movq	%r12, %r9
	leaq	40(%rsp), %r15
	leaq	28(%rsp), %rdx
	pushq	%rax
	.cfi_def_cfa_offset 328
	movq	%r15, %rcx
	leaq	.LC17(%rip), %rsi
	movq	%rbp, %r8
	leaq	88(%rsp), %rax
	movq	%rax, 16(%rsp)
	pushq	%rax
	.cfi_def_cfa_offset 336
	xorl	%eax, %eax
	call	__isoc99_sscanf@PLT
	popq	%rcx
	.cfi_def_cfa_offset 328
	popq	%rsi
	.cfi_def_cfa_offset 320
	movl	36(%rsp), %eax
	cmpl	%eax, 28(%rsp)
	je	.L33
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	fputs@PLT
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L33:
	leaq	.LC18(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%r15, %rsi
	leaq	.LC7(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC19(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%r12, %rsi
	leaq	.LC3(%rip), %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	pushq	(%rsp)
	.cfi_def_cfa_offset 328
	movq	%rbp, %r8
	movl	$1, %esi
	pushq	16(%rsp)
	.cfi_def_cfa_offset 336
	leaq	.LC11(%rip), %rdx
	movq	%r14, %rdi
	movl	$1, %eax
	movl	48(%rsp), %r9d
	movsd	56(%rsp), %xmm0
	movl	44(%rsp), %ecx
	call	__fprintf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 328
	popq	%rdx
	.cfi_def_cfa_offset 320
	jmp	.L17
	.p2align 4,,10
	.p2align 3
.L32:
	movq	%r13, %rdi
	call	fclose@PLT
	movq	%r14, %rdi
	call	fclose@PLT
	leaq	.LC1(%rip), %rdi
	call	remove@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	rename@PLT
	movq	248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$264, %rsp
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
.L31:
	.cfi_restore_state
	testq	%r13, %r13
	je	.L14
	movq	%r13, %rdi
	call	fclose@PLT
.L14:
	testq	%r14, %r14
	je	.L15
	movq	%r14, %rdi
	call	fclose@PLT
.L15:
	movq	248(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L30
	addq	$264, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC15(%rip), %rdi
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
.L30:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE52:
	.size	actualizarProducto, .-actualizarProducto
	.p2align 4
	.globl	disminuirInventario
	.type	disminuirInventario, @function
disminuirInventario:
.LFB53:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC12(%rip), %rsi
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
	subq	$248, %rsp
	.cfi_def_cfa_offset 304
	movl	%edi, 12(%rsp)
	leaq	.LC1(%rip), %rdi
	movq	%fs:40, %rax
	movq	%rax, 232(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	leaq	.LC13(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	movq	%rax, %rbp
	call	fopen@PLT
	movq	%rax, %r13
	testq	%rbp, %rbp
	je	.L37
	testq	%rax, %rax
	je	.L53
	leaq	128(%rsp), %rbx
	leaq	20(%rsp), %r15
	.p2align 4,,10
	.p2align 3
.L35:
	movq	%rbp, %rdx
	movl	$100, %esi
	movq	%rbx, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L56
	leaq	96(%rsp), %r11
	leaq	32(%rsp), %r12
	xorl	%eax, %eax
	movq	%r15, %r9
	leaq	24(%rsp), %rcx
	leaq	16(%rsp), %rdx
	pushq	%r11
	.cfi_def_cfa_offset 312
	movq	%r12, %r8
	leaq	.LC17(%rip), %rsi
	movq	%rbx, %rdi
	leaq	72(%rsp), %r14
	movq	%r11, 8(%rsp)
	pushq	%r14
	.cfi_def_cfa_offset 320
	call	__isoc99_sscanf@PLT
	popq	%rcx
	.cfi_def_cfa_offset 312
	popq	%rsi
	.cfi_def_cfa_offset 304
	movl	12(%rsp), %eax
	cmpl	%eax, 16(%rsp)
	movq	(%rsp), %r11
	je	.L57
	movq	%r13, %rsi
	movq	%rbx, %rdi
	call	fputs@PLT
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L57:
	movq	%r12, %r8
	movl	$1, %esi
	movq	%r13, %rdi
	movl	$1, %eax
	movsd	24(%rsp), %xmm0
	subsd	.LC20(%rip), %xmm0
	leaq	.LC11(%rip), %rdx
	movsd	%xmm0, 24(%rsp)
	pushq	%r11
	.cfi_def_cfa_offset 312
	pushq	%r14
	.cfi_def_cfa_offset 320
	movl	36(%rsp), %r9d
	movl	28(%rsp), %ecx
	call	__fprintf_chk@PLT
	popq	%rax
	.cfi_def_cfa_offset 312
	popq	%rdx
	.cfi_def_cfa_offset 304
	jmp	.L35
	.p2align 4,,10
	.p2align 3
.L56:
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	%r13, %rdi
	call	fclose@PLT
	leaq	.LC1(%rip), %rdi
	call	remove@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC14(%rip), %rdi
	call	rename@PLT
.L34:
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L55
	addq	$248, %rsp
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
.L53:
	.cfi_restore_state
	testq	%rbp, %rbp
	je	.L37
	movq	%rbp, %rdi
	call	fclose@PLT
.L37:
	testq	%r13, %r13
	je	.L34
	movq	232(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L55
	addq	$248, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movq	%r13, %rdi
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
	jmp	fclose@PLT
.L55:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE53:
	.size	disminuirInventario, .-disminuirInventario
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC20:
	.long	0
	.long	1072693248
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
