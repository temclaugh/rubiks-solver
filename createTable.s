	.literal16
	.align	4
_caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	4
_caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	_camlCreateTable__data_begin
_camlCreateTable__data_begin:
	.text
	.globl	_camlCreateTable__code_begin
_camlCreateTable__code_begin:
	nop
	.data
	.quad	1024
	.globl	_camlCreateTable
_camlCreateTable:
	.space	8
	.data
	.quad	3319
_camlCreateTable__51:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCreateTable__f_1011
	.data
	.globl	_camlCreateTable__48
	.quad	3324
_camlCreateTable__48:
	.ascii	"CreateTable.UsageError"
	.space	1
	.byte	1
	.data
	.globl	_camlCreateTable__49
	.quad	1276
_camlCreateTable__49:
	.ascii	"corners"
	.byte	0
	.data
	.globl	_camlCreateTable__50
	.quad	1276
_camlCreateTable__50:
	.ascii	",%d\12"
	.space	3
	.byte	3
	.text
	.align	4
	.globl	_camlCreateTable__f_1011
_camlCreateTable__f_1011:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2034:
	movq	%rbx, 0(%rsp)
	call	_camlCube__printCubeFlat_1076
.L2035:
	movq	_camlCreateTable__50@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L2036:
	movq	%rax, %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	*%rdi
	.cfi_adjust_cfa_offset	8
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCreateTable__entry
_camlCreateTable__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2041:
	call	_caml_alloc1
.L2042:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	_camlCreateTable__48@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	_camlCreateTable@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlSys@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rax), %rax
	shrq	$9, %rax
	orq	$1, %rax
	cmpq	$5, %rax
	je	.L2040
	call	_caml_alloc1
.L2043:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	_camlCreateTable@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movq	%r14, %rsp
	popq	%r14
	ret
.L2040:
	movq	_camlSys@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rax), %rbx
	cmpq	$2047, %rbx
	jbe	.L2044
	movq	8(%rax), %rdi
	movq	_camlCreateTable__49@GOTPCREL(%rip), %rsi
	call	_caml_string_notequal
	cmpq	$1, %rax
	je	.L2039
	call	_caml_alloc1
.L2045:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	_camlCreateTable@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	%rbx, (%rax)
	movq	%r14, %rsp
	popq	%r14
	ret
.L2039:
	movq	$1, %rax
	call	_camlCube__cornerCube_1013
.L2046:
.L2038:
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	64(%rbx), %rbx
	movq	_camlCreateTable__51@GOTPCREL(%rip), %rsi
	movq	_camlCube@GOTPCREL(%rip), %rdi
	movq	24(%rdi), %rdi
	call	_camlSearch__bfs_1069
.L2047:
.L2037:
	movq	$1, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L2044:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlCreateTable__code_end
_camlCreateTable__code_end:
	.data
	.globl	_camlCreateTable__data_end
_camlCreateTable__data_end:
	.long	0
	.globl	_camlCreateTable__frametable
_camlCreateTable__frametable:
	.quad	7
	.quad	.L2047
	.word	16
	.word	0
	.align	3
	.quad	.L2046
	.word	16
	.word	0
	.align	3
	.quad	.L2045
	.word	16
	.word	0
	.align	3
	.quad	.L2043
	.word	16
	.word	0
	.align	3
	.quad	.L2042
	.word	16
	.word	0
	.align	3
	.quad	.L2036
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L2035
	.word	16
	.word	1
	.word	0
	.align	3
