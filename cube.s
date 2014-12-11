	.literal16
	.align	4
_caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	4
_caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	_camlCube__data_begin
_camlCube__data_begin:
	.text
	.globl	_camlCube__code_begin
_camlCube__code_begin:
	nop
	.data
	.quad	9984
	.globl	_camlCube
_camlCube:
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.quad	1
	.data
	.quad	3063
_camlCube__50:
	.quad	_camlCube__moves_1058
	.quad	3
	.data
	.quad	3063
_camlCube__51:
	.quad	_camlCube__printCubeFlat_1055
	.quad	3
	.data
	.quad	3063
_camlCube__52:
	.quad	_camlCube__printCube_1034
	.quad	3
	.data
	.quad	3063
_camlCube__53:
	.quad	_camlCube__color2string_1032
	.quad	3
	.data
	.quad	4087
_camlCube__54:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCube__cubeCompare_1027
	.data
	.quad	3063
_camlCube__55:
	.quad	_camlCube__cube2bytes_1023
	.quad	3
	.data
	.quad	3063
_camlCube__56:
	.quad	_camlCube__color2char_1021
	.quad	3
	.data
	.quad	3063
_camlCube__57:
	.quad	_camlCube__cornerCube_1013
	.quad	3
	.data
	.quad	3063
_camlCube__58:
	.quad	_camlCube__initCube_1008
	.quad	3
	.data
	.quad	3063
_camlCube__59:
	.quad	_camlCube__newLine_1039
	.quad	3
	.data
	.quad	4087
_camlCube__60:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCube__p_1036
	.data
	.quad	6912
_camlCube__22:
	.quad	3
	.quad	11
	.quad	7
	.quad	9
	.quad	5
	.quad	1
	.data
	.quad	2044
_camlCube__23:
	.ascii	"W"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__24:
	.ascii	"Y"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__25:
	.ascii	"R"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__26:
	.ascii	"O"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__27:
	.ascii	"B"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__28:
	.ascii	"G"
	.space	6
	.byte	6
	.data
	.quad	2044
_camlCube__29:
	.ascii	"_"
	.space	6
	.byte	6
	.data
	.quad	2816
_camlCube__30:
	.quad	3
	.quad	5
	.data
	.quad	2828
_camlCube__31:
	.quad	65
	.quad	1
	.data
	.quad	4868
_camlCube__32:
	.quad	1
	.quad	_camlCube__30
	.quad	1
	.quad	_camlCube__31
	.data
	.quad	2818
_camlCube__33:
	.quad	1
	.quad	_camlCube__32
	.data
	.quad	2044
_camlCube__34:
	.ascii	"%s%2d "
	.space	1
	.byte	1
	.data
	.quad	2816
_camlCube__35:
	.quad	_camlCube__33
	.quad	_camlCube__34
	.data
	.quad	2828
_camlCube__36:
	.quad	21
	.quad	1
	.data
	.quad	2044
_camlCube__37:
	.ascii	"\12"
	.space	6
	.byte	6
	.data
	.quad	2816
_camlCube__38:
	.quad	_camlCube__36
	.quad	_camlCube__37
	.data
	.quad	3068
_camlCube__39:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.quad	2827
_camlCube__40:
	.quad	_camlCube__39
	.quad	1
	.data
	.quad	3068
_camlCube__41:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.quad	2816
_camlCube__42:
	.quad	_camlCube__40
	.quad	_camlCube__41
	.data
	.quad	3068
_camlCube__43:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.quad	2827
_camlCube__44:
	.quad	_camlCube__43
	.quad	1
	.data
	.quad	3068
_camlCube__45:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.quad	2816
_camlCube__46:
	.quad	_camlCube__44
	.quad	_camlCube__45
	.data
	.quad	2818
_camlCube__47:
	.quad	1
	.quad	1
	.data
	.quad	2044
_camlCube__48:
	.ascii	"%s"
	.space	5
	.byte	5
	.data
	.quad	2816
_camlCube__49:
	.quad	_camlCube__47
	.quad	_camlCube__48
	.text
	.align	4
	.globl	_camlCube__loop_1015
_camlCube__loop_1015:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1851:
	movq	%rax, %rcx
	cmpq	$109, %rcx
	jne	.L1850
	movq	24(%rdi), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
	.align	2
.L1850:
	movq	$1, %rsi
	cmpq	$17, %rsi
	jg	.L1845
.L1846:
	leaq	-1(%rcx, %rsi), %rdx
	movq	%rdx, %rax
	sarq	$1, %rax
	movq	%rax, %r8
	shrq	$63, %r8
	movq	%rax, %r9
	addq	%r8, %r9
	andq	$-2, %r9
	subq	%r9, %rax
	leaq	1(%rax, %rax), %rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax, %rax), %rax
	movq	$4, %r8
	subq	%rax, %r8
	cmpq	$1, %r8
	je	.L1849
	cmpq	$1, %rbx
	jne	.L1848
.L1849:
	cmpq	$1, %r8
	jne	.L1847
	cmpq	$1, %rbx
	je	.L1848
	jmp	.L1847
	.align	2
.L1848:
	movq	24(%rdi), %rax
	movq	-8(%rax), %r8
	shrq	$9, %r8
	cmpq	%rdx, %r8
	jbe	.L1852
	movq	$13, -4(%rax, %rdx, 4)
.L1847:
	movq	%rsi, %rax
	addq	$2, %rsi
	cmpq	$17, %rax
	jne	.L1846
.L1845:
	movq	$4, %rsi
	subq	%rbx, %rsi
	movq	%rcx, %rax
	addq	$18, %rax
	movq	%rsi, %rbx
	jmp	.L1851
.L1852:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__iter_1030
_camlCube__iter_1030:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1864:
	movq	%rax, %rdx
	cmpq	$109, %rdx
	jne	.L1863
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.align	2
.L1863:
	movq	%rbx, 8(%rsp)
	movq	%rdx, 0(%rsp)
	movq	24(%rbx), %rdi
	movq	-8(%rdi), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdx, %rsi
	jbe	.L1865
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1862
	movq	-4(%rdi, %rdx, 4), %rsi
	jmp	.L1861
	.align	2
.L1862:
.L1866:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1867
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdi, %rdx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1861:
	movq	16(%rbx), %rbx
	movq	-8(%rbx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rdx, %rdi
	jbe	.L1865
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1860
	movq	-4(%rbx, %rdx, 4), %rdi
	jmp	.L1859
	.align	2
.L1860:
.L1869:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1870
	leaq	8(%r15), %rdi
	movq	$1277, -8(%rdi)
	movsd	-4(%rbx, %rdx, 4), %xmm0
	movsd	%xmm0, (%rdi)
.L1859:
	movq	_caml_lessthan@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1872:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	cmpq	$1, %rax
	je	.L1858
	movq	$-1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.align	2
.L1858:
	movq	8(%rsp), %rdx
	movq	24(%rdx), %rdi
	movq	-8(%rdi), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	movq	0(%rsp), %rbx
	cmpq	%rbx, %rsi
	jbe	.L1865
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1857
	movq	-4(%rdi, %rbx, 4), %rsi
	jmp	.L1856
	.align	2
.L1857:
.L1873:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1874
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdi, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1856:
	movq	16(%rdx), %rdi
	movq	-8(%rdi), %rax
	movq	%rax, %rdx
	shrq	$9, %rdx
	cmpq	%rbx, %rdx
	jbe	.L1865
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1855
	movq	-4(%rdi, %rbx, 4), %rdi
	jmp	.L1854
	.align	2
.L1855:
.L1876:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1877
	leaq	8(%r15), %rax
	movq	$1277, -8(%rax)
	movsd	-4(%rdi, %rbx, 4), %xmm0
	movsd	%xmm0, (%rax)
	movq	%rax, %rdi
.L1854:
	movq	_caml_greaterthan@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1879:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	cmpq	$1, %rax
	je	.L1853
	movq	$3, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
	.align	2
.L1853:
	movq	0(%rsp), %rax
	addq	$2, %rax
	movq	8(%rsp), %rbx
	jmp	.L1864
.L1877:	call	_caml_call_gc
.L1878:	jmp	.L1876
.L1874:	call	_caml_call_gc
.L1875:	jmp	.L1873
.L1870:	call	_caml_call_gc
.L1871:	jmp	.L1869
.L1867:	call	_caml_call_gc
.L1868:	jmp	.L1866
.L1865:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__p_1036
_camlCube__p_1036:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1880:
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	movq	_camlCube__35@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1881:
	movq	%rax, %rdi
	movq	0(%rsp), %rax
	movq	8(%rsp), %rbx
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	jmp	_caml_apply2
	.cfi_adjust_cfa_offset	24
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__newLine_1039
_camlCube__newLine_1039:
	.cfi_startproc
.L1882:
	movq	_camlCube__38@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	jmp	_camlPrintf__fprintf_1025
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__fun_1096
_camlCube__fun_1096:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1883:
	movq	%rax, 0(%rsp)
	movq	24(%rdi), %rax
	movq	(%rbx), %rdi
	call	*%rdi
.L1884:
	movq	%rax, %rbx
.L1885:	subq	$24, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1886
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	0(%rsp), %rdi
	movq	%rdi, (%rax)
	movq	%rbx, 8(%rax)
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1886:	call	_caml_call_gc
.L1887:	jmp	.L1885
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__initCube_1008
_camlCube__initCube_1008:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1892:
	movq	$13, %rsi
	movq	$109, %rdi
	movq	_caml_make_vect@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1893:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	movq	%rax, 0(%rsp)
	movq	_camlCube__22@GOTPCREL(%rip), %rdi
	movq	_caml_obj_dup@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1894:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	movq	$1, %rbx
	cmpq	$11, %rbx
	jg	.L1888
.L1889:
	movq	$1, %rdi
	cmpq	$17, %rdi
	jg	.L1890
.L1891:
	movq	-8(%rax), %rsi
	shrq	$9, %rsi
	cmpq	%rbx, %rsi
	jbe	.L1895
	movq	-4(%rax, %rbx, 4), %rsi
	movq	%rbx, %rdx
	sarq	$1, %rdx
	imulq	$18, %rdx
	addq	%rdi, %rdx
	movq	0(%rsp), %r8
	movq	-8(%r8), %rcx
	shrq	$9, %rcx
	cmpq	%rdx, %rcx
	jbe	.L1895
	movq	%rsi, -4(%r8, %rdx, 4)
	movq	%rdi, %rsi
	addq	$2, %rdi
	cmpq	$17, %rsi
	jne	.L1891
.L1890:
	movq	%rbx, %rdi
	addq	$2, %rbx
	cmpq	$11, %rdi
	jne	.L1889
.L1888:
	movq	0(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1895:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cornerCube_1013
_camlCube__cornerCube_1013:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1896:
	movq	$1, %rax
	call	_camlCube__initCube_1008
.L1897:
	movq	%rax, %rbx
.L1898:	subq	$40, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1899
	leaq	8(%r15), %rdi
	movq	$4343, -8(%rdi)
	movq	_caml_curry2@GOTPCREL(%rip), %rax
	movq	%rax, (%rdi)
	movq	$5, 8(%rdi)
	movq	_camlCube__loop_1015@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rdi)
	movq	%rbx, 24(%rdi)
	movq	$3, %rbx
	movq	$1, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlCube__loop_1015
	.cfi_adjust_cfa_offset	8
.L1899:	call	_caml_call_gc
.L1900:	jmp	.L1898
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__color2char_1021
_camlCube__color2char_1021:
	.cfi_startproc
.L1908:
	sarq	$1, %rax
	leaq	.L1909(%rip), %rdx
	movslq	(%rdx, %rax, 4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.const
	.align	2
.L1909:	.long	.L1907 - .L1909
	.long	.L1906 - .L1909
	.long	.L1905 - .L1909
	.long	.L1904 - .L1909
	.long	.L1903 - .L1909
	.long	.L1902 - .L1909
	.long	.L1901 - .L1909
	.text
	.align	2
.L1907:
	movq	$175, %rax
	ret
	.align	2
.L1906:
	movq	$179, %rax
	ret
	.align	2
.L1905:
	movq	$165, %rax
	ret
	.align	2
.L1904:
	movq	$159, %rax
	ret
	.align	2
.L1903:
	movq	$133, %rax
	ret
	.align	2
.L1902:
	movq	$143, %rax
	ret
	.align	2
.L1901:
	movq	$191, %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cube2bytes_1023
_camlCube__cube2bytes_1023:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_adjust_cfa_offset	40
.L1912:
	movq	%rax, 0(%rsp)
	movq	$109, %rdi
	movq	_caml_create_string@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1913:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	movq	%rax, %rbx
	movq	$1, %rax
	cmpq	$107, %rax
	jg	.L1910
	movq	%rax, 24(%rsp)
	movq	%rbx, 16(%rsp)
.L1911:
	movq	%rax, %rdi
	sarq	$1, %rdi
	movq	%rdi, 8(%rsp)
	movq	-8(%rbx), %rsi
	shrq	$10, %rsi
	leaq	-1(, %rsi, 8), %rsi
	movzbq	(%rbx, %rsi), %rbx
	subq	%rbx, %rsi
	cmpq	%rdi, %rsi
	jbe	.L1914
	movq	0(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1914
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2char_1021
.L1915:
	sarq	$1, %rax
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rbx
	movb	%al, (%rbx, %rdi)
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	addq	$2, %rax
	movq	%rax, 24(%rsp)
	cmpq	$107, %rdi
	jne	.L1911
.L1910:
	movq	%rbx, %rax
	addq	$40, %rsp
	.cfi_adjust_cfa_offset	-40
	ret
	.cfi_adjust_cfa_offset	40
.L1914:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cubeCompare_1027
_camlCube__cubeCompare_1027:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1916:
	movq	%rax, %rdi
.L1917:	subq	$40, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1918
	leaq	8(%r15), %rsi
	movq	$4343, -8(%rsi)
	movq	_camlCube__iter_1030@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movq	$3, 8(%rsi)
	movq	%rdi, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	$1, %rax
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlCube__iter_1030
	.cfi_adjust_cfa_offset	8
.L1918:	call	_caml_call_gc
.L1919:	jmp	.L1917
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__color2string_1032
_camlCube__color2string_1032:
	.cfi_startproc
.L1927:
	sarq	$1, %rax
	leaq	.L1928(%rip), %rdx
	movslq	(%rdx, %rax, 4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.const
	.align	2
.L1928:	.long	.L1926 - .L1928
	.long	.L1925 - .L1928
	.long	.L1924 - .L1928
	.long	.L1923 - .L1928
	.long	.L1922 - .L1928
	.long	.L1921 - .L1928
	.long	.L1920 - .L1928
	.text
	.align	2
.L1926:
	movq	_camlCube__23@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1925:
	movq	_camlCube__24@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1924:
	movq	_camlCube__25@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1923:
	movq	_camlCube__26@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1922:
	movq	_camlCube__27@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1921:
	movq	_camlCube__28@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1920:
	movq	_camlCube__29@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__printCube_1034
_camlCube__printCube_1034:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_adjust_cfa_offset	40
.L1947:
	movq	%rax, 24(%rsp)
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1943
	movq	%rax, 0(%rsp)
.L1944:
	movq	_camlCube__42@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1948:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1945
.L1946:
	movq	0(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	addq	%rax, %rbx
	movq	%rbx, 8(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rax
	shrq	$9, %rax
	cmpq	%rbx, %rax
	jbe	.L1949
	movq	-4(%rdi, %rbx, 4), %rax
	call	_camlCube__color2string_1032
.L1950:
	movq	8(%rsp), %rbx
	call	_camlCube__p_1036
.L1951:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1946
.L1945:
	movq	_camlCube__38@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1952:
	movq	0(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 0(%rsp)
	cmpq	$5, %rax
	jne	.L1944
.L1943:
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1933
	movq	%rax, 16(%rsp)
.L1934:
	movq	$1, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rax
	jg	.L1941
.L1942:
	movq	16(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	18(%rbx, %rax), %rax
	movq	%rax, 0(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1949
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1032
.L1953:
	movq	0(%rsp), %rbx
	call	_camlCube__p_1036
.L1954:
	movq	8(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rbx
	jne	.L1942
.L1941:
	movq	$1, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rax
	jg	.L1939
.L1940:
	movq	16(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	36(%rbx, %rax), %rax
	movq	%rax, 0(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1949
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1032
.L1955:
	movq	0(%rsp), %rbx
	call	_camlCube__p_1036
.L1956:
	movq	8(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rbx
	jne	.L1940
.L1939:
	movq	$1, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rax
	jg	.L1937
.L1938:
	movq	16(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	54(%rbx, %rax), %rax
	movq	%rax, 0(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1949
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1032
.L1957:
	movq	0(%rsp), %rbx
	call	_camlCube__p_1036
.L1958:
	movq	8(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rbx
	jne	.L1938
.L1937:
	movq	$1, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rax
	jg	.L1935
.L1936:
	movq	16(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	72(%rbx, %rax), %rax
	movq	%rax, 0(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1949
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1032
.L1959:
	movq	0(%rsp), %rbx
	call	_camlCube__p_1036
.L1960:
	movq	8(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 8(%rsp)
	cmpq	$5, %rbx
	jne	.L1936
.L1935:
	movq	_camlCube__38@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1961:
	movq	16(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 16(%rsp)
	cmpq	$5, %rax
	jne	.L1934
.L1933:
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1929
	movq	%rax, 0(%rsp)
.L1930:
	movq	_camlCube__46@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1962:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1931
.L1932:
	movq	0(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	90(%rbx, %rax), %rax
	movq	%rax, 8(%rsp)
	movq	24(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1949
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1032
.L1963:
	movq	8(%rsp), %rbx
	call	_camlCube__p_1036
.L1964:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1932
.L1931:
	movq	_camlCube__38@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1965:
	movq	0(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 0(%rsp)
	cmpq	$5, %rax
	jne	.L1930
.L1929:
	movq	_camlCube__38@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	addq	$40, %rsp
	.cfi_adjust_cfa_offset	-40
	jmp	_camlPrintf__fprintf_1025
	.cfi_adjust_cfa_offset	40
.L1949:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__printCubeFlat_1055
_camlCube__printCubeFlat_1055:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1968:
	movq	$1, %rbx
	cmpq	$107, %rbx
	jg	.L1966
	movq	%rbx, 16(%rsp)
	movq	%rax, 0(%rsp)
.L1967:
	movq	_camlCube__49@GOTPCREL(%rip), %rbx
	movq	_camlPervasives@GOTPCREL(%rip), %rax
	movq	184(%rax), %rax
	call	_camlPrintf__fprintf_1025
.L1969:
	movq	%rax, 8(%rsp)
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	shrq	$9, %rax
	movq	16(%rsp), %rdi
	cmpq	%rdi, %rax
	jbe	.L1970
	movq	-4(%rbx, %rdi, 4), %rax
	call	_camlCube__color2string_1032
.L1971:
	movq	8(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L1972:
	movq	16(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 16(%rsp)
	cmpq	$107, %rax
	jne	.L1967
.L1966:
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1970:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__moves_1058
_camlCube__moves_1058:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1973:
	movq	%rax, %rdi
.L1974:	subq	$904, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1975
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	$11, (%rax)
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	160(%rbx), %rsi
	movq	%rsi, 8(%rax)
	leaq	24(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	%rax, (%rsi)
	movq	$1, 8(%rsi)
	leaq	48(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	$11, (%rdx)
	movq	152(%rbx), %rcx
	movq	%rcx, 8(%rdx)
	leaq	72(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rdx, (%rcx)
	movq	%rsi, 8(%rcx)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$11, (%rsi)
	movq	144(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	120(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$9, (%rsi)
	movq	136(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	168(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$9, (%rsi)
	movq	128(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	216(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	240(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$9, (%rsi)
	movq	120(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	264(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	288(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$7, (%rsi)
	movq	112(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	312(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	336(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$7, (%rsi)
	movq	104(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	360(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	384(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$7, (%rsi)
	movq	96(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	408(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	432(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$5, (%rsi)
	movq	88(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	456(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	480(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$5, (%rsi)
	movq	80(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	504(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	528(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$5, (%rsi)
	movq	72(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	552(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	576(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$3, (%rsi)
	movq	64(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	600(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	624(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$3, (%rsi)
	movq	56(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	648(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	672(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$3, (%rsi)
	movq	48(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	696(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	720(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$1, (%rsi)
	movq	40(%rbx), %rcx
	movq	%rcx, 8(%rsi)
	leaq	744(%rax), %rcx
	movq	$2048, -8(%rcx)
	movq	%rsi, (%rcx)
	movq	%rdx, 8(%rcx)
	leaq	768(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$1, (%rsi)
	movq	32(%rbx), %rdx
	movq	%rdx, 8(%rsi)
	leaq	792(%rax), %rdx
	movq	$2048, -8(%rdx)
	movq	%rsi, (%rdx)
	movq	%rcx, 8(%rdx)
	leaq	816(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	$1, (%rsi)
	movq	24(%rbx), %rbx
	movq	%rbx, 8(%rsi)
	leaq	840(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	%rsi, (%rbx)
	movq	%rdx, 8(%rbx)
	addq	$864, %rax
	movq	$4343, -8(%rax)
	movq	_caml_tuplify2@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rax)
	movq	$-3, 8(%rax)
	movq	_camlCube__fun_1096@GOTPCREL(%rip), %rsi
	movq	%rsi, 16(%rax)
	movq	%rdi, 24(%rax)
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlList__map_1040
	.cfi_adjust_cfa_offset	8
.L1975:	call	_caml_call_gc
.L1976:	jmp	.L1974
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__entry
_camlCube__entry:
	.cfi_startproc
.L1977:
	movq	_camlCube__58@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlCube__57@GOTPCREL(%rip), %rax
	movq	%rax, 8(%rbx)
	movq	_camlCube__56@GOTPCREL(%rip), %rax
	movq	%rax, 16(%rbx)
	movq	_camlCube__55@GOTPCREL(%rip), %rax
	movq	%rax, 24(%rbx)
	movq	_camlCube__54@GOTPCREL(%rip), %rax
	movq	%rax, 32(%rbx)
	movq	_camlCube__53@GOTPCREL(%rip), %rax
	movq	%rax, 40(%rbx)
	movq	_camlCube__52@GOTPCREL(%rip), %rax
	movq	%rax, 48(%rbx)
	movq	_camlCube__51@GOTPCREL(%rip), %rax
	movq	%rax, 56(%rbx)
	movq	_camlCube__50@GOTPCREL(%rip), %rax
	movq	%rax, 64(%rbx)
	movq	$1, %rax
	ret
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlCube__code_end
_camlCube__code_end:
	.data
	.globl	_camlCube__data_end
_camlCube__data_end:
	.long	0
	.globl	_camlCube__frametable
_camlCube__frametable:
	.quad	37
	.quad	.L1976
	.word	16
	.word	1
	.word	5
	.align	3
	.quad	.L1972
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1971
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L1969
	.word	33
	.word	1
	.word	0
	.align	3
	.set	L$set$1, (.L1978 - .) + 0x8c000000
	.long L$set$1
	.long	0x1b110
	.quad	.L1965
	.word	49
	.word	1
	.word	24
	.align	3
	.set	L$set$2, (.L1978 - .) + 0x8c000000
	.long L$set$2
	.long	0x1b110
	.quad	.L1964
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1963
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1962
	.word	49
	.word	1
	.word	24
	.align	3
	.set	L$set$3, (.L1978 - .) + 0x8c000000
	.long L$set$3
	.long	0x1b110
	.quad	.L1961
	.word	49
	.word	1
	.word	24
	.align	3
	.set	L$set$4, (.L1978 - .) + 0x8c000000
	.long L$set$4
	.long	0x1b110
	.quad	.L1960
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1959
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1958
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1957
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1956
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1955
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1954
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1953
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1952
	.word	49
	.word	1
	.word	24
	.align	3
	.set	L$set$5, (.L1978 - .) + 0x8c000000
	.long L$set$5
	.long	0x1b110
	.quad	.L1951
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1950
	.word	48
	.word	1
	.word	24
	.align	3
	.quad	.L1948
	.word	49
	.word	1
	.word	24
	.align	3
	.set	L$set$6, (.L1978 - .) + 0x8c000000
	.long L$set$6
	.long	0x1b110
	.quad	.L1919
	.word	16
	.word	2
	.word	3
	.word	5
	.align	3
	.quad	.L1915
	.word	48
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1913
	.word	48
	.word	1
	.word	0
	.align	3
	.quad	.L1900
	.word	16
	.word	1
	.word	3
	.align	3
	.quad	.L1897
	.word	16
	.word	0
	.align	3
	.quad	.L1894
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1893
	.word	16
	.word	0
	.align	3
	.quad	.L1887
	.word	16
	.word	2
	.word	0
	.word	3
	.align	3
	.quad	.L1884
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1881
	.word	33
	.word	2
	.word	0
	.word	8
	.align	3
	.set	L$set$7, (.L1978 - .) + 0x8c000000
	.long L$set$7
	.long	0x1b110
	.quad	.L1879
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L1878
	.word	32
	.word	5
	.word	3
	.word	0
	.word	8
	.word	5
	.word	7
	.align	3
	.quad	.L1875
	.word	32
	.word	5
	.word	3
	.word	9
	.word	0
	.word	8
	.word	5
	.align	3
	.quad	.L1872
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L1871
	.word	32
	.word	5
	.word	0
	.word	8
	.word	3
	.word	7
	.word	9
	.align	3
	.quad	.L1868
	.word	32
	.word	5
	.word	0
	.word	8
	.word	5
	.word	3
	.word	9
	.align	3
.L1978:
	.asciz	"printf.ml"
	.align	3
