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
	.quad	3840
	.globl	_camlSearch
_camlSearch:
	.quad	1
	.quad	1
	.quad	1
	.data
	.quad	4087
_camlSearch__62:
	.quad	_caml_curry4
	.quad	9
	.quad	_camlSearch__bfs_1071
	.data
	.quad	2045
_camlSearch__61:
	.quad	0x4195061200000000
	.text
	.align	4
	.globl	_camlSearch__nodeFilter_1084
_camlSearch__nodeFilter_1084:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1980:
	movq	%rbx, 0(%rsp)
	movq	%rdi, 8(%rsp)
	movq	40(%rdi), %rdi
	movq	%rax, %rsi
	movq	_caml_equal@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1981:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	cmpq	$1, %rax
	je	.L1979
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.align	2
.L1979:
	movq	8(%rsp), %rax
	movq	24(%rax), %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	call	*%rdi
.L1982:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	16(%rbx), %rdi
	movq	8(%rsp), %rbx
	movq	32(%rbx), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__mem_1150
.L1983:
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
.L1984:
	movq	16(%rbx), %rbx
	jmp	_camlQueue__add_1018
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__bfs_1071
_camlSearch__bfs_1071:
	.cfi_startproc
	subq	$88, %rsp
	.cfi_adjust_cfa_offset	88
.L1990:
	movq	%rax, %rdx
	movq	%rdx, 0(%rsp)
	movq	%rbx, 40(%rsp)
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
.L1991:	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1992
	leaq	8(%r15), %rbx
	movq	%rbx, 56(%rsp)
	movq	$2048, -8(%rbx)
	movq	$1, (%rbx)
	movq	$1, 8(%rbx)
	leaq	24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	$13, (%rax)
	movq	%rdx, 8(%rax)
	call	_camlQueue__add_1018
.L1994:
	movq	16(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	0(%rsp), %rax
	call	*%rdi
.L1995:
	call	_camlSet__singleton_1082
.L1996:
	movq	%rax, %rbx
.L1997:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1998
	leaq	8(%r15), %rax
	movq	%rax, 24(%rsp)
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
	movq	$1, %rax
	movq	%rax, 0(%rsp)
	movq	$1, %rax
	movq	%rax, 64(%rsp)
.L1986:
	movq	56(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L1985
	movq	$3, %rbx
	movq	%rbx, 72(%rsp)
	movq	%rax, 80(%rsp)
	cmpq	%rax, %rbx
	jg	.L1987
.L1988:
	movq	56(%rsp), %rax
	call	_camlQueue__take_1029
.L2000:
	movq	8(%rax), %rdi
	movq	%rdi, 48(%rsp)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	movq	16(%rsp), %rbx
	movq	(%rbx), %rsi
	movq	%rdi, %rax
	call	*%rsi
.L2001:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	24(%rbx), %rdi
	movq	24(%rsp), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__add_1075
.L2002:
	movq	24(%rsp), %rdi
	movq	%rax, %rsi
	call	_caml_modify
	movq	48(%rsp), %rax
	movq	0(%rsp), %rbx
	movq	8(%rsp), %rdi
	call	_caml_apply2
.L2003:
.L2004:	subq	$56, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2005
	leaq	8(%r15), %rax
	movq	$6391, -8(%rax)
	movq	_caml_tuplify2@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	$-3, 8(%rax)
	movq	_camlSearch__nodeFilter_1084@GOTPCREL(%rip), %rbx
	movq	%rbx, 16(%rax)
	movq	16(%rsp), %rbx
	movq	%rbx, 24(%rax)
	movq	24(%rsp), %rbx
	movq	%rbx, 32(%rax)
	movq	32(%rsp), %rbx
	movq	%rbx, 40(%rax)
	call	_camlList__find_all_1200
.L2007:
	movq	%rax, 32(%rsp)
	movq	40(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	48(%rsp), %rax
	call	*%rdi
.L2008:
	movq	32(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L2009:
	movq	%rax, %rbx
.L2010:	subq	$32, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2011
	leaq	8(%r15), %rax
	movq	$3319, -8(%rax)
	movq	_camlSearch__fun_1126@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	56(%rsp), %rdi
	movq	%rdi, 16(%rax)
	call	_camlList__iter_1061
.L2013:
	movq	64(%rsp), %rbx
	addq	$2, %rbx
	movq	%rbx, 64(%rsp)
	sarq	$1, %rbx
	movq	%rbx, %rdi
	shrq	$63, %rdi
	movabsq	$2361183241434822607, %rsi
	movq	%rbx, %rax
	imulq	%rsi
	sarq	$7, %rdx
	addq	%rdi, %rdx
	imulq	$1000, %rdx
	movq	%rbx, %rax
	subq	%rdx, %rax
	leaq	1(%rax, %rax), %rax
	cmpq	$1, %rax
	jne	.L1989
	movsd	.L2014(%rip), %xmm0
	cvtsi2sdq	%rbx, %xmm1
	divsd	%xmm0, %xmm1
.L2015:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2016
	leaq	8(%r15), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm1, (%rax)
	call	_camlPervasives__string_of_float_1152
.L2018:
	movq	%rax, %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	192(%rax), %rax
	call	_camlPervasives__output_string_1198
.L2019:
	movq	$1, %rax
	call	_camlPervasives__prerr_newline_1307
.L2020:
.L1989:
	movq	72(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 72(%rsp)
	movq	80(%rsp), %rbx
	cmpq	%rbx, %rax
	jne	.L1988
.L1987:
	movq	0(%rsp), %rax
	addq	$2, %rax
	movq	%rax, 0(%rsp)
	jmp	.L1986
	.align	2
.L1985:
	movq	$1, %rax
	addq	$88, %rsp
	.cfi_adjust_cfa_offset	-88
	ret
	.cfi_adjust_cfa_offset	88
.L2016:	call	_caml_call_gc
.L2017:	jmp	.L2015
.L2011:	call	_caml_call_gc
.L2012:	jmp	.L2010
.L2005:	call	_caml_call_gc
.L2006:	jmp	.L2004
.L1998:	call	_caml_call_gc
.L1999:	jmp	.L1997
.L1992:	call	_caml_call_gc
.L1993:	jmp	.L1991
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__entry
_camlSearch__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2021:
	movq	_camlString@GOTPCREL(%rip), %rax
	movq	192(%rax), %rbx
	call	_caml_alloc1
.L2022:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
	call	_camlSet__fun_2002
.L2023:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	$176359681, 8(%rbx)
	movq	_camlSearch__62@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	$1, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
	.cfi_endproc
	.data
	.literal8
.L2014:	.quad	0x4195061200000000
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
	.quad	24
	.quad	.L2023
	.word	16
	.word	0
	.align	3
	.quad	.L2022
	.word	16
	.word	1
	.word	3
	.align	3
	.quad	.L2020
	.word	96
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.quad	.L2019
	.word	97
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.set	L$set$1, (.L2024 - .) + 0xf0000000
	.long L$set$1
	.long	0x1ad140
	.quad	.L2018
	.word	97
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.set	L$set$2, (.L2024 - .) + 0xf0000000
	.long L$set$2
	.long	0x1ad290
	.quad	.L2017
	.word	96
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.quad	.L2013
	.word	96
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.quad	.L2012
	.word	96
	.word	7
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.word	3
	.align	3
	.quad	.L2009
	.word	96
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.quad	.L2008
	.word	96
	.word	7
	.word	8
	.word	16
	.word	24
	.word	40
	.word	32
	.word	56
	.word	80
	.align	3
	.quad	.L2007
	.word	96
	.word	7
	.word	8
	.word	16
	.word	24
	.word	40
	.word	48
	.word	56
	.word	80
	.align	3
	.quad	.L2006
	.word	96
	.word	8
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	80
	.align	3
	.quad	.L2003
	.word	96
	.word	8
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	80
	.align	3
	.quad	.L2002
	.word	96
	.word	8
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	80
	.align	3
	.quad	.L2001
	.word	96
	.word	8
	.word	8
	.word	16
	.word	24
	.word	32
	.word	40
	.word	48
	.word	56
	.word	80
	.align	3
	.quad	.L2000
	.word	96
	.word	6
	.word	8
	.word	16
	.word	24
	.word	40
	.word	56
	.word	80
	.align	3
	.quad	.L1999
	.word	96
	.word	5
	.word	8
	.word	16
	.word	40
	.word	56
	.word	3
	.align	3
	.quad	.L1996
	.word	96
	.word	4
	.word	8
	.word	16
	.word	40
	.word	56
	.align	3
	.quad	.L1995
	.word	96
	.word	4
	.word	8
	.word	16
	.word	40
	.word	56
	.align	3
	.quad	.L1994
	.word	96
	.word	5
	.word	0
	.word	8
	.word	16
	.word	40
	.word	56
	.align	3
	.quad	.L1993
	.word	96
	.word	5
	.word	0
	.word	8
	.word	16
	.word	40
	.word	9
	.align	3
	.quad	.L1983
	.word	32
	.word	0
	.align	3
	.quad	.L1982
	.word	32
	.word	1
	.word	8
	.align	3
	.quad	.L1981
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
.L2024:
	.asciz	"pervasives.ml"
	.align	3
