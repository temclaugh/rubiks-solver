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
	.quad	1792
	.globl	_camlCreateTable
_camlCreateTable:
	.quad	1
	.data
	.quad	4087
_camlCreateTable__69:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCreateTable__f_1011
	.data
	.quad	4092
_camlCreateTable__63:
	.ascii	"CreateTable.UsageError"
	.space	1
	.byte	1
	.data
	.quad	2828
_camlCreateTable__64:
	.quad	21
	.quad	1
	.data
	.quad	4868
_camlCreateTable__65:
	.quad	1
	.quad	1
	.quad	1
	.quad	_camlCreateTable__64
	.data
	.quad	2828
_camlCreateTable__66:
	.quad	89
	.quad	_camlCreateTable__65
	.data
	.quad	2044
_camlCreateTable__67:
	.ascii	",%d\12"
	.space	3
	.byte	3
	.data
	.quad	2816
_camlCreateTable__68:
	.quad	_camlCreateTable__66
	.quad	_camlCreateTable__67
	.text
	.align	4
	.globl	_camlCreateTable__f_1011
_camlCreateTable__f_1011:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2025:
	movq	%rbx, 0(%rsp)
	call	_camlCube__printCubeFlat_1055
.L2026:
	movq	_camlCreateTable__68@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L2027:
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
.L2032:
	call	_caml_alloc2
.L2033:
	leaq	8(%r15), %rdi
	movq	$2296, -8(%rdi)
	movq	_camlCreateTable__63@GOTPCREL(%rip), %rax
	movq	%rax, (%rdi)
	movq	$1, 8(%rdi)
	call	_caml_set_oo_id
	movq	_camlCreateTable@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlSys@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rax), %rdi
	movq	%rdi, %rsi
	shrq	$9, %rsi
	orq	$1, %rsi
	cmpq	$5, %rsi
	je	.L2031
	movq	(%rbx), %rax
	movq	%r14, %rsp
	popq	%r14
	ret
.L2031:
	cmpq	$2047, %rdi
	jbe	.L2034
	movq	8(%rax), %rax
	movq	-8(%rax), %rbx
	shrq	$10, %rbx
	cmpq	$2, %rbx
	jge	.L2030
	movq	(%rax), %rax
	movabsq	$32495402291982179, %rbx
	cmpq	%rbx, %rax
	jne	.L2030
	movq	$1, %rax
	call	_camlCube__cornerCube_1013
.L2035:
	jmp	.L2029
.L2030:
	movq	_camlCreateTable@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%r14, %rsp
	popq	%r14
	ret
.L2029:
	movq	_camlCube@GOTPCREL(%rip), %rdi
	movq	64(%rdi), %rbx
	movq	_camlCreateTable__69@GOTPCREL(%rip), %rsi
	movq	24(%rdi), %rdi
	call	_camlSearch__bfs_1071
.L2036:
.L2028:
	movq	$1, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L2034:	call	_caml_ml_array_bound_error
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
	.quad	5
	.quad	.L2036
	.word	16
	.word	0
	.align	3
	.quad	.L2035
	.word	16
	.word	0
	.align	3
	.quad	.L2033
	.word	16
	.word	0
	.align	3
	.quad	.L2027
	.word	17
	.word	1
	.word	0
	.align	3
	.set	L$set$1, (.L2037 - .) + 0x8c000000
	.long L$set$1
	.long	0x1b110
	.quad	.L2026
	.word	16
	.word	1
	.word	0
	.align	3
.L2037:
	.asciz	"printf.ml"
	.align	3
