	.literal16
	.align	4
_caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	4
_caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	_camlSearch__data_begin
_camlSearch__data_begin:
	.text
	.globl	_camlSearch__code_begin
_camlSearch__code_begin:
	nop
	.data
	.quad	3072
	.globl	_camlSearch
_camlSearch:
	.space	24
	.data
	.quad	3319
_camlSearch__47:
	.quad	_caml_curry4
	.quad	9
	.quad	_camlSearch__bfs_1069
	.data
	.globl	_camlSearch__46
	.quad	1276
_camlSearch__46:
	.ascii	">>>%d\12"
	.space	1
	.byte	1
	.text
	.align	4
	.globl	_camlSearch__nodeFilter_1080
_camlSearch__nodeFilter_1080:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1985:
	movq	%rbx, 0(%rsp)
	movq	%rdi, 8(%rsp)
	movq	40(%rdi), %rdi
	movq	%rax, %rsi
	movq	_caml_equal@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1986:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	cmpq	$1, %rax
	je	.L1984
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.align	2
.L1984:
	movq	8(%rsp), %rax
	movq	24(%rax), %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	call	*%rdi
.L1987:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	16(%rbx), %rdi
	movq	8(%rsp), %rbx
	movq	32(%rbx), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__mem_1149
.L1988:
	movq	%rax, %rbx
	movq	$4, %rax
	subq	%rbx, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__fun_1126
_camlSearch__fun_1126:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1989:
	movq	%rax, %rsi
.L1990:	subq	$32, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1991
	leaq	8(%r15), %rax
	movq	$3072, -8(%rax)
	movq	%rsi, (%rax)
	movq	%rbx, 8(%rax)
	movq	32(%rdi), %rbx
	addq	$2, %rbx
	movq	%rbx, 16(%rax)
	movq	24(%rdi), %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlQueue__add_1018
	.cfi_adjust_cfa_offset	8
.L1991:	call	_caml_call_gc
.L1992:	jmp	.L1990
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__bfs_1069
_camlSearch__bfs_1069:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_adjust_cfa_offset	72
.L1996:
	movq	%rax, %rdx
	movq	%rdx, 0(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	$1, %rax
	movq	%rax, 8(%rsp)
.L1997:	subq	$56, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1998
	leaq	8(%r15), %rbx
	movq	%rbx, 56(%rsp)
	movq	$2048, -8(%rbx)
	movq	$1, (%rbx)
	movq	$1, 8(%rbx)
	leaq	24(%rbx), %rax
	movq	$3072, -8(%rax)
	movq	$13, (%rax)
	movq	%rdx, 8(%rax)
	movq	$1, 16(%rax)
	call	_camlQueue__add_1018
.L2000:
	movq	24(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	call	*%rdi
.L2001:
	call	_camlSet__singleton_1081
.L2002:
	movq	%rax, %rbx
.L2003:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2004
	leaq	8(%r15), %rax
	movq	%rax, 0(%rsp)
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
.L1994:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L1993
	movq	8(%rsp), %rbx
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	movq	$1000, %rcx
	movq	%rbx, %rax
	sarq	$1, %rax
	cqto
	idivq	%rcx
	leaq	1(%rdx, %rdx), %rax
	cmpq	$1, %rax
	jne	.L1995
	movq	$88179840, %rax
	cvtsi2sdq	%rax, %xmm0
	sarq	$1, %rbx
	cvtsi2sdq	%rbx, %xmm1
	divsd	%xmm0, %xmm1
.L2006:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2007
	leaq	8(%r15), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm1, (%rax)
	call	_camlPervasives__string_of_float_1132
.L2009:
	movq	%rax, %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	192(%rax), %rax
	call	_camlPervasives__output_string_1174
.L2010:
	movq	$1, %rax
	call	_camlPervasives__prerr_newline_1270
.L2011:
.L1995:
	movq	56(%rsp), %rax
	call	_camlQueue__take_1029
.L2012:
	movq	16(%rax), %rbx
	movq	%rbx, 64(%rsp)
	movq	8(%rax), %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	movq	24(%rsp), %rbx
	movq	(%rbx), %rsi
	movq	%rdi, %rax
	call	*%rsi
.L2013:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	24(%rbx), %rdi
	movq	0(%rsp), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__add_1074
.L2014:
	movq	0(%rsp), %rdi
	movq	%rax, %rsi
	call	_caml_modify
	movq	48(%rsp), %rax
	movq	64(%rsp), %rbx
	movq	16(%rsp), %rdi
	call	_caml_apply2
.L2015:
.L2016:	subq	$56, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2017
	leaq	8(%r15), %rax
	movq	$6391, -8(%rax)
	movq	_caml_tuplify2@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	$-3, 8(%rax)
	movq	_camlSearch__nodeFilter_1080@GOTPCREL(%rip), %rbx
	movq	%rbx, 16(%rax)
	movq	24(%rsp), %rbx
	movq	%rbx, 24(%rax)
	movq	0(%rsp), %rbx
	movq	%rbx, 32(%rax)
	movq	32(%rsp), %rbx
	movq	%rbx, 40(%rax)
	call	_camlList__find_all_1200
.L2019:
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
.L2020:
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L2021:
	movq	%rax, 48(%rsp)
	movq	_camlSearch__46@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L2022:
	movq	%rax, 32(%rsp)
	movq	$1, %rax
	movq	48(%rsp), %rbx
	call	_camlList__length_aux_1008
.L2023:
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L2024:
.L2025:	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2026
	leaq	8(%r15), %rax
	movq	$5367, -8(%rax)
	movq	_caml_tuplify2@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	$-3, 8(%rax)
	movq	_camlSearch__fun_1126@GOTPCREL(%rip), %rbx
	movq	%rbx, 16(%rax)
	movq	56(%rsp), %rbx
	movq	%rbx, 24(%rax)
	movq	64(%rsp), %rbx
	movq	%rbx, 32(%rax)
	movq	48(%rsp), %rbx
	call	_camlList__iter_1061
.L2028:
	jmp	.L1994
	.align	2
.L1993:
	movq	$1, %rax
	addq	$72, %rsp
	.cfi_adjust_cfa_offset	-72
	ret
	.cfi_adjust_cfa_offset	72
.L2026:	call	_caml_call_gc
.L2027:	jmp	.L2025
.L2017:	call	_caml_call_gc
.L2018:	jmp	.L2016
.L2007:	call	_caml_call_gc
.L2008:	jmp	.L2006
.L2004:	call	_caml_call_gc
.L2005:	jmp	.L2003
.L1998:	call	_caml_call_gc
.L1999:	jmp	.L1997
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__entry
_camlSearch__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2029:
	movq	_camlString@GOTPCREL(%rip), %rax
	movq	176(%rax), %rbx
	call	_caml_alloc1
.L2030:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
	call	_camlSet__fun_1869
.L2031:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlSearch@GOTPCREL(%rip), %rax
	movq	$176359681, 8(%rax)
	movq	_camlSearch__47@GOTPCREL(%rip), %rax
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	%rax, 16(%rbx)
	movq	$1, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlSearch__code_end
_camlSearch__code_end:
	.data
	.globl	_camlSearch__data_end
_camlSearch__data_end:
	.long	0
	.globl	_camlSearch__frametable
_camlSearch__frametable:
	.quad	28
	.quad	.L2031
	.word	16
	.word	0
	.align	3
	.quad	.L2030
	.word	16
	.word	1
	.word	3
	.align	3
	.quad	.L2028
	.word	80
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.quad	.L2027
	.word	80
	.word	7
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.word	64
	.word	48
	.align	3
	.quad	.L2024
	.word	80
	.word	7
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.word	64
	.word	48
	.align	3
	.quad	.L2023
	.word	81
	.word	8
	.word	16
	.word	24
	.word	0
	.word	40
	.word	32
	.word	56
	.word	64
	.word	48
	.align	3
	.set	L$set$1, (.L2032 - .) + 0x74000000
	.long L$set$1
	.long	0x140f0
	.quad	.L2022
	.word	80
	.word	7
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.word	64
	.word	48
	.align	3
	.quad	.L2021
	.word	80
	.word	6
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.word	64
	.align	3
	.quad	.L2020
	.word	80
	.word	7
	.word	16
	.word	24
	.word	0
	.word	40
	.word	32
	.word	56
	.word	64
	.align	3
	.quad	.L2019
	.word	80
	.word	7
	.word	16
	.word	24
	.word	0
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	.L2018
	.word	80
	.word	8
	.word	16
	.word	24
	.word	0
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	.L2015
	.word	80
	.word	8
	.word	16
	.word	24
	.word	0
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	.L2014
	.word	80
	.word	8
	.word	16
	.word	24
	.word	0
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	.L2013
	.word	80
	.word	8
	.word	16
	.word	24
	.word	0
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.align	3
	.quad	.L2012
	.word	80
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.quad	.L2011
	.word	80
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.quad	.L2010
	.word	81
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.set	L$set$2, (.L2033 - .) + 0xf0000000
	.long L$set$2
	.long	0x17b140
	.quad	.L2009
	.word	81
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.set	L$set$3, (.L2033 - .) + 0xf0000000
	.long L$set$3
	.long	0x17b290
	.quad	.L2008
	.word	80
	.word	5
	.word	16
	.word	24
	.word	0
	.word	40
	.word	56
	.align	3
	.quad	.L2005
	.word	80
	.word	5
	.word	16
	.word	24
	.word	40
	.word	56
	.word	3
	.align	3
	.quad	.L2002
	.word	80
	.word	4
	.word	16
	.word	24
	.word	40
	.word	56
	.align	3
	.quad	.L2001
	.word	80
	.word	4
	.word	16
	.word	24
	.word	40
	.word	56
	.align	3
	.quad	.L2000
	.word	80
	.word	5
	.word	0
	.word	16
	.word	24
	.word	40
	.word	56
	.align	3
	.quad	.L1999
	.word	80
	.word	5
	.word	0
	.word	16
	.word	24
	.word	40
	.word	9
	.align	3
	.quad	.L1992
	.word	16
	.word	3
	.word	5
	.word	3
	.word	7
	.align	3
	.quad	.L1988
	.word	32
	.word	0
	.align	3
	.quad	.L1987
	.word	32
	.word	1
	.word	8
	.align	3
	.quad	.L1986
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
.L2032:
	.asciz	"list.ml"
	.align	3
.L2033:
	.asciz	"pervasives.ml"
	.align	3
