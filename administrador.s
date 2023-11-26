	.file	"administrador.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"a"
.LC1:
	.string	"usuarios.txt"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"Ingrese el nombre de usuario: "
	.section	.rodata.str1.1
.LC3:
	.string	"%s"
.LC4:
	.string	"Ingrese la contrase\303\261a: "
	.section	.rodata.str1.8
	.align 8
.LC5:
	.string	"Ingrese el tipo de usuario (vendedor/bodeguero): "
	.section	.rodata.str1.1
.LC6:
	.string	"%s %s %s\n"
.LC7:
	.string	"Error al abrir el archivo."
	.text
	.p2align 4
	.globl	crearUsuario
	.type	crearUsuario, @function
crearUsuario:
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
	subq	$96, %rsp
	.cfi_def_cfa_offset 144
	movq	%fs:40, %rax
	movq	%rax, 88(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	movq	%rax, %rbp
	testq	%rax, %rax
	je	.L2
	movl	$1, %edi
	movq	%rsp, %r13
	leaq	32(%rsp), %rbx
	xorl	%eax, %eax
	leaq	.LC3(%rip), %r12
	leaq	.LC2(%rip), %rsi
	call	__printf_chk@PLT
	movq	%r13, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	.LC4(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	movq	%rbx, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	64(%rsp), %r14
	leaq	.LC5(%rip), %rsi
	xorl	%eax, %eax
	movl	$1, %edi
	call	__printf_chk@PLT
	movq	%r14, %rsi
	movq	%r12, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	movq	%r14, %r9
	movq	%rbx, %r8
	movq	%r13, %rcx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	__fprintf_chk@PLT
.L3:
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	88(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L7
	addq	$96, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
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
	ret
.L2:
	.cfi_restore_state
	leaq	.LC7(%rip), %rdi
	call	puts@PLT
	jmp	.L3
.L7:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE51:
	.size	crearUsuario, .-crearUsuario
	.section	.rodata.str1.1
.LC8:
	.string	"r"
.LC9:
	.string	"w"
.LC10:
	.string	"usuarios_temp.txt"
	.section	.rodata.str1.8
	.align 8
.LC11:
	.string	"Ingrese el usuario que quiere modificar: "
	.section	.rodata.str1.1
.LC12:
	.string	"%19s"
	.section	.rodata.str1.8
	.align 8
.LC13:
	.string	"Ingrese la nueva contrase\303\261a: "
	.section	.rodata.str1.1
.LC14:
	.string	"Ingrese el nuevo tipo: "
	.text
	.p2align 4
	.globl	actualizarUsuario
	.type	actualizarUsuario, @function
actualizarUsuario:
.LFB52:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	leaq	.LC8(%rip), %rsi
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
	subq	$232, %rsp
	.cfi_def_cfa_offset 288
	movq	%fs:40, %rax
	movq	%rax, 216(%rsp)
	xorl	%eax, %eax
	call	fopen@PLT
	leaq	.LC9(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	movq	%rax, %rbp
	call	fopen@PLT
	movq	%rax, %r12
	testq	%rbp, %rbp
	je	.L11
	testq	%rax, %rax
	je	.L28
	leaq	.LC11(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	leaq	16(%rsp), %r14
	leaq	.LC3(%rip), %r13
	call	__printf_chk@PLT
	movq	%r14, %rsi
	movq	%r13, %rdi
	xorl	%eax, %eax
	call	__isoc99_scanf@PLT
	leaq	144(%rsp), %rbx
	.p2align 4,,10
	.p2align 3
.L14:
	movq	%rbp, %rdx
	movl	$70, %esi
	movq	%rbx, %rdi
	call	fgets@PLT
	testq	%rax, %rax
	je	.L29
	leaq	48(%rsp), %r15
	leaq	.LC12(%rip), %rsi
	movq	%rbx, %rdi
	xorl	%eax, %eax
	movq	%r15, %rdx
	call	__isoc99_sscanf@PLT
	movq	%r15, %rsi
	movq	%r14, %rdi
	call	strcmp@PLT
	testl	%eax, %eax
	jne	.L15
	leaq	.LC13(%rip), %rsi
	movl	$1, %edi
	call	__printf_chk@PLT
	leaq	112(%rsp), %r8
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r8, %rsi
	movq	%r8, 8(%rsp)
	call	__isoc99_scanf@PLT
	leaq	.LC14(%rip), %rsi
	movl	$1, %edi
	xorl	%eax, %eax
	call	__printf_chk@PLT
	leaq	80(%rsp), %r9
	movq	%r13, %rdi
	xorl	%eax, %eax
	movq	%r9, %rsi
	movq	%r9, (%rsp)
	call	__isoc99_scanf@PLT
	movq	(%rsp), %r9
	movq	8(%rsp), %r8
	xorl	%eax, %eax
	movq	%r15, %rcx
	leaq	.LC6(%rip), %rdx
	movl	$1, %esi
	movq	%r12, %rdi
	call	__fprintf_chk@PLT
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L15:
	movq	%r12, %rsi
	movq	%rbx, %rdi
	call	fputs@PLT
	jmp	.L14
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%rbp, %rdi
	call	fclose@PLT
	movq	%r12, %rdi
	call	fclose@PLT
	leaq	.LC1(%rip), %rdi
	call	remove@PLT
	leaq	.LC1(%rip), %rsi
	leaq	.LC10(%rip), %rdi
	call	rename@PLT
	movq	216(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L27
	addq	$232, %rsp
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
.L28:
	.cfi_restore_state
	testq	%rbp, %rbp
	je	.L11
	movq	%rbp, %rdi
	call	fclose@PLT
.L11:
	testq	%r12, %r12
	je	.L12
	movq	%r12, %rdi
	call	fclose@PLT
.L12:
	movq	216(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L27
	addq	$232, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	leaq	.LC7(%rip), %rdi
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
.L27:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE52:
	.size	actualizarUsuario, .-actualizarUsuario
	.ident	"GCC: (GNU) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
