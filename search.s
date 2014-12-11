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
	.quad	2048
	.globl	_camlSearch
_camlSearch:
	.space	16
	.data
	.quad	3319
_camlSearch__46:
	.quad	_caml_curry4
	.quad	9
	.quad	_camlSearch__bfs_1068
	.text
	.align	4
	.globl	_camlSearch__filter_1078
_camlSearch__filter_1078:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1966:
	movq	_camlSearch@GOTPCREL(%rip), %rdi
	movq	(%rdi), %rdi
	movq	16(%rdi), %rdi
	movq	16(%rbx), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__mem_1149
.L1967:
	movq	%rax, %rbx
	movq	$4, %rax
	subq	%rbx, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__fun_1116
_camlSearch__fun_1116:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1968:
	movq	%rax, %rdi
.L1969:	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1970
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	%rdi, (%rax)
	movq	24(%rbx), %rdi
	addq	$2, %rdi
	movq	%rdi, 8(%rax)
	movq	16(%rbx), %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlQueue__add_1018
	.cfi_adjust_cfa_offset	8
.L1970:	call	_caml_call_gc
.L1971:	jmp	.L1969
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__bfs_1068
_camlSearch__bfs_1068:
	.cfi_startproc
	subq	$72, %rsp
	.cfi_adjust_cfa_offset	72
.L1975:
	movq	%rax, %rdx
	movq	%rdx, 0(%rsp)
	movq	%rbx, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	$1, %rax
	movq	%rax, 8(%rsp)
.L1976:	subq	$48, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1977
	leaq	8(%r15), %rbx
	movq	%rbx, 48(%rsp)
	movq	$2048, -8(%rbx)
	movq	$1, (%rbx)
	movq	$1, 8(%rbx)
	leaq	24(%rbx), %rax
	movq	$2048, -8(%rax)
	movq	%rdx, (%rax)
	movq	$1, 8(%rax)
	call	_camlQueue__add_1018
.L1979:
	movq	0(%rsp), %rax
	call	_camlSet__singleton_1081
.L1980:
	movq	%rax, %rbx
.L1981:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1982
	leaq	8(%r15), %rax
	movq	%rax, 0(%rsp)
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
.L1973:
	movq	48(%rsp), %rax
	movq	(%rax), %rax
	cmpq	$1, %rax
	je	.L1972
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
	jne	.L1974
	movq	$3674160, %rax
	cvtsi2sdq	%rax, %xmm0
	sarq	$1, %rbx
	cvtsi2sdq	%rbx, %xmm1
	divsd	%xmm0, %xmm1
.L1984:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1985
	leaq	8(%r15), %rax
	movq	$1277, -8(%rax)
	movsd	%xmm1, (%rax)
	call	_camlPervasives__string_of_float_1132
.L1987:
	movq	%rax, %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	192(%rax), %rax
	call	_camlPervasives__output_string_1174
.L1988:
	movq	$1, %rax
	call	_camlPervasives__prerr_newline_1270
.L1989:
.L1974:
	movq	48(%rsp), %rax
	call	_camlQueue__take_1029
.L1990:
	movq	8(%rax), %rbx
	movq	%rbx, 56(%rsp)
	movq	(%rax), %rax
	movq	%rax, 32(%rsp)
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	(%rbx), %rbx
	movq	24(%rbx), %rdi
	movq	0(%rsp), %rbx
	movq	(%rbx), %rbx
	call	_camlSet__add_1074
.L1991:
	movq	0(%rsp), %rdi
	movq	%rax, %rsi
	call	_caml_modify
	movq	32(%rsp), %rax
	movq	56(%rsp), %rbx
	movq	16(%rsp), %rdi
	call	_caml_apply2
.L1992:
.L1993:	subq	$32, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1994
	leaq	8(%r15), %rax
	movq	$3319, -8(%rax)
	movq	_camlSearch__filter_1078@GOTPCREL(%rip), %rbx
	movq	%rbx, (%rax)
	movq	$3, 8(%rax)
	movq	0(%rsp), %rbx
	movq	%rbx, 16(%rax)
	call	_camlList__find_all_1200
.L1996:
	movq	%rax, 40(%rsp)
	movq	24(%rsp), %rbx
	movq	(%rbx), %rdi
	movq	32(%rsp), %rax
	call	*%rdi
.L1997:
	movq	40(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L1998:
	movq	%rax, %rbx
.L1999:	subq	$40, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L2000
	leaq	8(%r15), %rax
	movq	$4343, -8(%rax)
	movq	_camlSearch__fun_1116@GOTPCREL(%rip), %rdi
	movq	%rdi, (%rax)
	movq	$3, 8(%rax)
	movq	48(%rsp), %rdi
	movq	%rdi, 16(%rax)
	movq	56(%rsp), %rdi
	movq	%rdi, 24(%rax)
	call	_camlList__iter_1061
.L2002:
	jmp	.L1973
	.align	2
.L1972:
	movq	$1, %rax
	addq	$72, %rsp
	.cfi_adjust_cfa_offset	-72
	ret
	.cfi_adjust_cfa_offset	72
.L2000:	call	_caml_call_gc
.L2001:	jmp	.L1999
.L1994:	call	_caml_call_gc
.L1995:	jmp	.L1993
.L1985:	call	_caml_call_gc
.L1986:	jmp	.L1984
.L1982:	call	_caml_call_gc
.L1983:	jmp	.L1981
.L1977:	call	_caml_call_gc
.L1978:	jmp	.L1976
	.cfi_endproc
	.text
	.align	4
	.globl	_camlSearch__entry
_camlSearch__entry:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L2003:
	movq	_camlCube@GOTPCREL(%rip), %rax
	movq	24(%rax), %rbx
	call	_caml_alloc1
.L2004:
	leaq	8(%r15), %rax
	movq	$1024, -8(%rax)
	movq	%rbx, (%rax)
	call	_camlSet__fun_1869
.L2005:
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlSearch__46@GOTPCREL(%rip), %rax
	movq	_camlSearch@GOTPCREL(%rip), %rbx
	movq	%rax, 8(%rbx)
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
	.quad	21
	.quad	.L2005
	.word	16
	.word	0
	.align	3
	.quad	.L2004
	.word	16
	.word	1
	.word	3
	.align	3
	.quad	.L2002
	.word	80
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.quad	.L2001
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	48
	.word	56
	.word	3
	.align	3
	.quad	.L1998
	.word	80
	.word	5
	.word	16
	.word	0
	.word	24
	.word	48
	.word	56
	.align	3
	.quad	.L1997
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	40
	.word	48
	.word	56
	.align	3
	.quad	.L1996
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	32
	.word	48
	.word	56
	.align	3
	.quad	.L1995
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	32
	.word	48
	.word	56
	.align	3
	.quad	.L1992
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	32
	.word	48
	.word	56
	.align	3
	.quad	.L1991
	.word	80
	.word	6
	.word	16
	.word	0
	.word	24
	.word	32
	.word	48
	.word	56
	.align	3
	.quad	.L1990
	.word	80
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.quad	.L1989
	.word	80
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.quad	.L1988
	.word	81
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.set	L$set$1, (.L2006 - .) + 0xf0000000
	.long L$set$1
	.long	0x17b140
	.quad	.L1987
	.word	81
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.set	L$set$2, (.L2006 - .) + 0xf0000000
	.long L$set$2
	.long	0x17b290
	.quad	.L1986
	.word	80
	.word	4
	.word	16
	.word	0
	.word	24
	.word	48
	.align	3
	.quad	.L1983
	.word	80
	.word	4
	.word	16
	.word	24
	.word	48
	.word	3
	.align	3
	.quad	.L1980
	.word	80
	.word	3
	.word	16
	.word	24
	.word	48
	.align	3
	.quad	.L1979
	.word	80
	.word	4
	.word	0
	.word	16
	.word	24
	.word	48
	.align	3
	.quad	.L1978
	.word	80
	.word	4
	.word	0
	.word	16
	.word	24
	.word	9
	.align	3
	.quad	.L1971
	.word	16
	.word	2
	.word	3
	.word	5
	.align	3
	.quad	.L1967
	.word	16
	.word	0
	.align	3
.L2006:
	.asciz	"pervasives.ml"
	.align	3
