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
	.quad	8192
	.globl	_camlCube
_camlCube:
	.space	64
	.data
	.quad	2295
_camlCube__36:
	.quad	_camlCube__moves_1075
	.quad	3
	.data
	.quad	2295
_camlCube__37:
	.quad	_camlCube__printCubeFlat_1072
	.quad	3
	.data
	.quad	2295
_camlCube__38:
	.quad	_camlCube__printCube_1030
	.quad	3
	.data
	.quad	2295
_camlCube__39:
	.quad	_camlCube__color2string_1028
	.quad	3
	.data
	.quad	3319
_camlCube__40:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCube__cubeCompare_1023
	.data
	.quad	2295
_camlCube__41:
	.quad	_camlCube__cube2string_1021
	.quad	3
	.data
	.quad	2295
_camlCube__42:
	.quad	_camlCube__cornerCube_1013
	.quad	3
	.data
	.quad	2295
_camlCube__43:
	.quad	_camlCube__initCube_1008
	.quad	3
	.data
	.quad	2295
_camlCube__44:
	.quad	_camlCube__newLine_1056
	.quad	3
	.data
	.quad	3319
_camlCube__45:
	.quad	_caml_curry2
	.quad	5
	.quad	_camlCube__p_1053
	.data
	.globl	_camlCube__22
	.quad	6144
_camlCube__22:
	.quad	3
	.quad	11
	.quad	7
	.quad	9
	.quad	5
	.quad	1
	.data
	.globl	_camlCube__23
	.quad	1276
_camlCube__23:
	.space	7
	.byte	7
	.data
	.globl	_camlCube__24
	.quad	1276
_camlCube__24:
	.ascii	"W"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__25
	.quad	1276
_camlCube__25:
	.ascii	"Y"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__26
	.quad	1276
_camlCube__26:
	.ascii	"R"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__27
	.quad	1276
_camlCube__27:
	.ascii	"O"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__28
	.quad	1276
_camlCube__28:
	.ascii	"B"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__29
	.quad	1276
_camlCube__29:
	.ascii	"G"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__30
	.quad	1276
_camlCube__30:
	.ascii	"_"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__31
	.quad	1276
_camlCube__31:
	.ascii	"%s%2d "
	.space	1
	.byte	1
	.data
	.globl	_camlCube__32
	.quad	1276
_camlCube__32:
	.ascii	"\12"
	.space	6
	.byte	6
	.data
	.globl	_camlCube__33
	.quad	2300
_camlCube__33:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.globl	_camlCube__34
	.quad	2300
_camlCube__34:
	.ascii	"            "
	.space	3
	.byte	3
	.data
	.globl	_camlCube__35
	.quad	1276
_camlCube__35:
	.ascii	"%s"
	.space	5
	.byte	5
	.text
	.align	4
	.globl	_camlCube__loop_1015
_camlCube__loop_1015:
	.cfi_startproc
.L1851:
	movq	%rax, %r8
	cmpq	$109, %r8
	jne	.L1850
	movq	24(%rdi), %rax
	ret
	.align	2
.L1850:
	movq	$1, %rsi
	cmpq	$17, %rsi
	jg	.L1845
.L1846:
	leaq	-1(%r8, %rsi), %rcx
	movq	%rcx, %rdx
	sarq	$1, %rdx
	movq	%rdx, %rax
	testq	%rax, %rax
	leaq	1(%rax), %rax
	cmovns	%rdx, %rax
	andq	$-2, %rax
	subq	%rax, %rdx
	leaq	1(%rdx, %rdx), %rax
	cmpq	$1, %rax
	sete	%al
	movzbq	%al, %rax
	leaq	1(%rax, %rax), %rax
	movq	$4, %rdx
	subq	%rax, %rdx
	cmpq	$1, %rdx
	je	.L1849
	cmpq	$1, %rbx
	jne	.L1848
.L1849:
	cmpq	$1, %rdx
	jne	.L1847
	cmpq	$1, %rbx
	je	.L1848
	jmp	.L1847
	.align	2
.L1848:
	movq	24(%rdi), %rax
	movq	-8(%rax), %rdx
	shrq	$9, %rdx
	cmpq	%rcx, %rdx
	jbe	.L1852
	movq	$13, -4(%rax, %rcx, 4)
.L1847:
	movq	%rsi, %rax
	addq	$2, %rsi
	cmpq	$17, %rax
	jne	.L1846
.L1845:
	movq	$4, %rsi
	subq	%rbx, %rsi
	movq	%r8, %rax
	addq	$18, %rax
	movq	%rsi, %rbx
	jmp	.L1851
.L1852:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__iter_1026
_camlCube__iter_1026:
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
	.globl	_camlCube__p_1053
_camlCube__p_1053:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1880:
	movq	%rax, 0(%rsp)
	movq	%rbx, 8(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
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
	.globl	_camlCube__newLine_1056
_camlCube__newLine_1056:
	.cfi_startproc
.L1882:
	movq	_camlCube__32@GOTPCREL(%rip), %rax
	jmp	_camlPrintf__printf_1369
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__fun_1112
_camlCube__fun_1112:
	.cfi_startproc
.L1883:
	movq	%rax, %rdi
	movq	16(%rbx), %rax
	movq	(%rdi), %rsi
	movq	%rdi, %rbx
	jmp	*%rsi
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__initCube_1008
_camlCube__initCube_1008:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1888:
	movq	$13, %rsi
	movq	$109, %rdi
	movq	_caml_make_vect@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1889:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	movq	%rax, 0(%rsp)
	movq	_camlCube__22@GOTPCREL(%rip), %rdi
	movq	_caml_obj_dup@GOTPCREL(%rip), %rax
	call	_caml_c_call
.L1890:
	movq	_caml_young_ptr@GOTPCREL(%rip), %r11
	movq    (%r11), %r15
	movq	$1, %rbx
	cmpq	$11, %rbx
	jg	.L1884
.L1885:
	movq	$1, %rdi
	cmpq	$17, %rdi
	jg	.L1886
.L1887:
	movq	-8(%rax), %rsi
	shrq	$9, %rsi
	cmpq	%rbx, %rsi
	jbe	.L1891
	movq	-4(%rax, %rbx, 4), %rsi
	movq	%rbx, %rdx
	sarq	$1, %rdx
	imulq	$18, %rdx
	addq	%rdi, %rdx
	movq	0(%rsp), %r8
	movq	-8(%r8), %rcx
	shrq	$9, %rcx
	cmpq	%rdx, %rcx
	jbe	.L1891
	movq	%rsi, -4(%r8, %rdx, 4)
	movq	%rdi, %rsi
	addq	$2, %rdi
	cmpq	$17, %rsi
	jne	.L1887
.L1886:
	movq	%rbx, %rdi
	addq	$2, %rbx
	cmpq	$11, %rdi
	jne	.L1885
.L1884:
	movq	0(%rsp), %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1891:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cornerCube_1013
_camlCube__cornerCube_1013:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1892:
	movq	$1, %rax
	call	_camlCube__initCube_1008
.L1893:
	movq	%rax, %rbx
.L1894:	subq	$40, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1895
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
.L1895:	call	_caml_call_gc
.L1896:	jmp	.L1894
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cube2string_1021
_camlCube__cube2string_1021:
	.cfi_startproc
.L1897:
	movq	_camlCube__23@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__cubeCompare_1023
_camlCube__cubeCompare_1023:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1898:
	movq	%rax, %rdi
.L1899:	subq	$40, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1900
	leaq	8(%r15), %rsi
	movq	$4343, -8(%rsi)
	movq	_camlCube__iter_1026@GOTPCREL(%rip), %rax
	movq	%rax, (%rsi)
	movq	$3, 8(%rsi)
	movq	%rdi, 16(%rsi)
	movq	%rbx, 24(%rsi)
	movq	$1, %rax
	movq	%rsi, %rbx
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlCube__iter_1026
	.cfi_adjust_cfa_offset	8
.L1900:	call	_caml_call_gc
.L1901:	jmp	.L1899
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__color2string_1028
_camlCube__color2string_1028:
	.cfi_startproc
.L1909:
	sarq	$1, %rax
	leaq	.L1910(%rip), %rdx
	movslq	(%rdx, %rax, 4), %rax
	addq	%rax, %rdx
	jmp	*%rdx
	.const
	.align	2
.L1910:	.long	.L1908 - .L1910
	.long	.L1907 - .L1910
	.long	.L1906 - .L1910
	.long	.L1905 - .L1910
	.long	.L1904 - .L1910
	.long	.L1903 - .L1910
	.long	.L1902 - .L1910
	.text
	.align	2
.L1908:
	movq	_camlCube__24@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1907:
	movq	_camlCube__25@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1906:
	movq	_camlCube__26@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1905:
	movq	_camlCube__27@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1904:
	movq	_camlCube__28@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1903:
	movq	_camlCube__29@GOTPCREL(%rip), %rax
	ret
	.align	2
.L1902:
	movq	_camlCube__30@GOTPCREL(%rip), %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__printCube_1030
_camlCube__printCube_1030:
	.cfi_startproc
	subq	$40, %rsp
	.cfi_adjust_cfa_offset	40
.L1929:
	movq	%rax, 32(%rsp)
	movq	_camlCube__45@GOTPCREL(%rip), %rax
	movq	_camlCube__44@GOTPCREL(%rip), %rax
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1925
	movq	%rax, 0(%rsp)
.L1926:
	movq	_camlCube__33@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1930:
	movq	$1, %rax
	movq	%rax, 24(%rsp)
	cmpq	$5, %rax
	jg	.L1927
.L1928:
	movq	0(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	addq	%rax, %rbx
	movq	%rbx, 16(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rax
	shrq	$9, %rax
	cmpq	%rbx, %rax
	jbe	.L1931
	movq	-4(%rdi, %rbx, 4), %rax
	call	_camlCube__color2string_1028
.L1932:
	movq	%rax, 8(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1933:
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	movq	16(%rsp), %rbx
	call	_caml_apply2
.L1934:
	movq	24(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 24(%rsp)
	cmpq	$5, %rbx
	jne	.L1928
.L1927:
	movq	_camlCube__32@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1935:
	movq	0(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 0(%rsp)
	cmpq	$5, %rax
	jne	.L1926
.L1925:
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1915
	movq	%rax, 24(%rsp)
.L1916:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1923
.L1924:
	movq	24(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	18(%rbx, %rax), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1931
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1028
.L1936:
	movq	%rax, 0(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1937:
	movq	%rax, %rdi
	movq	0(%rsp), %rax
	movq	8(%rsp), %rbx
	call	_caml_apply2
.L1938:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1924
.L1923:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1921
.L1922:
	movq	24(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	36(%rbx, %rax), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1931
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1028
.L1939:
	movq	%rax, 0(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1940:
	movq	%rax, %rdi
	movq	0(%rsp), %rax
	movq	8(%rsp), %rbx
	call	_caml_apply2
.L1941:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1922
.L1921:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1919
.L1920:
	movq	24(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	54(%rbx, %rax), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1931
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1028
.L1942:
	movq	%rax, 0(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1943:
	movq	%rax, %rdi
	movq	0(%rsp), %rax
	movq	8(%rsp), %rbx
	call	_caml_apply2
.L1944:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1920
.L1919:
	movq	$1, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rax
	jg	.L1917
.L1918:
	movq	24(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	72(%rbx, %rax), %rax
	movq	%rax, 8(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1931
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1028
.L1945:
	movq	%rax, 0(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1946:
	movq	%rax, %rdi
	movq	0(%rsp), %rax
	movq	8(%rsp), %rbx
	call	_caml_apply2
.L1947:
	movq	16(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 16(%rsp)
	cmpq	$5, %rbx
	jne	.L1918
.L1917:
	movq	_camlCube__32@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1948:
	movq	24(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 24(%rsp)
	cmpq	$5, %rax
	jne	.L1916
.L1915:
	movq	$1, %rax
	cmpq	$5, %rax
	jg	.L1911
	movq	%rax, 0(%rsp)
.L1912:
	movq	_camlCube__34@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1949:
	movq	$1, %rax
	movq	%rax, 24(%rsp)
	cmpq	$5, %rax
	jg	.L1913
.L1914:
	movq	0(%rsp), %rbx
	sarq	$1, %rbx
	imulq	$6, %rbx
	leaq	90(%rbx, %rax), %rax
	movq	%rax, 16(%rsp)
	movq	32(%rsp), %rdi
	movq	-8(%rdi), %rbx
	shrq	$9, %rbx
	cmpq	%rax, %rbx
	jbe	.L1931
	movq	-4(%rdi, %rax, 4), %rax
	call	_camlCube__color2string_1028
.L1950:
	movq	%rax, 8(%rsp)
	movq	_camlCube__31@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1951:
	movq	%rax, %rdi
	movq	8(%rsp), %rax
	movq	16(%rsp), %rbx
	call	_caml_apply2
.L1952:
	movq	24(%rsp), %rax
	movq	%rax, %rbx
	addq	$2, %rax
	movq	%rax, 24(%rsp)
	cmpq	$5, %rbx
	jne	.L1914
.L1913:
	movq	_camlCube__32@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1953:
	movq	0(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 0(%rsp)
	cmpq	$5, %rax
	jne	.L1912
.L1911:
	movq	_camlCube__32@GOTPCREL(%rip), %rax
	addq	$40, %rsp
	.cfi_adjust_cfa_offset	-40
	jmp	_camlPrintf__printf_1369
	.cfi_adjust_cfa_offset	40
.L1931:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__printCubeFlat_1072
_camlCube__printCubeFlat_1072:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1956:
	movq	$1, %rbx
	cmpq	$107, %rbx
	jg	.L1954
	movq	%rbx, 16(%rsp)
	movq	%rax, 0(%rsp)
.L1955:
	movq	_camlCube__35@GOTPCREL(%rip), %rax
	call	_camlPrintf__printf_1369
.L1957:
	movq	%rax, 8(%rsp)
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	shrq	$9, %rax
	movq	16(%rsp), %rdi
	cmpq	%rdi, %rax
	jbe	.L1958
	movq	-4(%rbx, %rdi, 4), %rax
	call	_camlCube__color2string_1028
.L1959:
	movq	8(%rsp), %rbx
	movq	(%rbx), %rdi
	call	*%rdi
.L1960:
	movq	16(%rsp), %rbx
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 16(%rsp)
	cmpq	$107, %rax
	jne	.L1955
.L1954:
	movq	$1, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1958:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__moves_1075
_camlCube__moves_1075:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1961:
	movq	%rax, %rdi
.L1962:	subq	$464, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1963
	leaq	8(%r15), %rax
	movq	$2048, -8(%rax)
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	160(%rbx), %rbx
	movq	%rbx, (%rax)
	movq	$1, 8(%rax)
	leaq	24(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rsi
	movq	152(%rsi), %rsi
	movq	%rsi, (%rbx)
	movq	%rax, 8(%rbx)
	leaq	48(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	144(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	72(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	136(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	96(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	128(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	120(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	120(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	144(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	112(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	168(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	104(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	192(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	96(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	216(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	88(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	240(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	80(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	264(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	72(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	288(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	64(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	312(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	56(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	336(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	360(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	leaq	384(%rax), %rsi
	movq	$2048, -8(%rsi)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	32(%rdx), %rdx
	movq	%rdx, (%rsi)
	movq	%rbx, 8(%rsi)
	leaq	408(%rax), %rbx
	movq	$2048, -8(%rbx)
	movq	_camlTurns@GOTPCREL(%rip), %rdx
	movq	24(%rdx), %rdx
	movq	%rdx, (%rbx)
	movq	%rsi, 8(%rbx)
	addq	$432, %rax
	movq	$3319, -8(%rax)
	movq	_camlCube__fun_1112@GOTPCREL(%rip), %rsi
	movq	%rsi, (%rax)
	movq	$3, 8(%rax)
	movq	%rdi, 16(%rax)
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	jmp	_camlList__map_1040
	.cfi_adjust_cfa_offset	8
.L1963:	call	_caml_call_gc
.L1964:	jmp	.L1962
	.cfi_endproc
	.text
	.align	4
	.globl	_camlCube__entry
_camlCube__entry:
	.cfi_startproc
.L1965:
	movq	_camlCube__43@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlCube__42@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 8(%rbx)
	movq	_camlCube__41@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 16(%rbx)
	movq	_camlCube__40@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 24(%rbx)
	movq	_camlCube__39@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 32(%rbx)
	movq	_camlCube__38@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 40(%rbx)
	movq	_camlCube__37@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 48(%rbx)
	movq	_camlCube__36@GOTPCREL(%rip), %rax
	movq	_camlCube@GOTPCREL(%rip), %rbx
	movq	%rax, 56(%rbx)
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
	.quad	39
	.quad	.L1964
	.word	16
	.word	1
	.word	5
	.align	3
	.quad	.L1960
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1959
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L1957
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1953
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1952
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1951
	.word	48
	.word	2
	.word	8
	.word	32
	.align	3
	.quad	.L1950
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1949
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1948
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1947
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1946
	.word	48
	.word	2
	.word	0
	.word	32
	.align	3
	.quad	.L1945
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1944
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1943
	.word	48
	.word	2
	.word	0
	.word	32
	.align	3
	.quad	.L1942
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1941
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1940
	.word	48
	.word	2
	.word	0
	.word	32
	.align	3
	.quad	.L1939
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1938
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1937
	.word	48
	.word	2
	.word	0
	.word	32
	.align	3
	.quad	.L1936
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1935
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1934
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1933
	.word	48
	.word	2
	.word	32
	.word	8
	.align	3
	.quad	.L1932
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1930
	.word	48
	.word	1
	.word	32
	.align	3
	.quad	.L1901
	.word	16
	.word	2
	.word	3
	.word	5
	.align	3
	.quad	.L1896
	.word	16
	.word	1
	.word	3
	.align	3
	.quad	.L1893
	.word	16
	.word	0
	.align	3
	.quad	.L1890
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1889
	.word	16
	.word	0
	.align	3
	.quad	.L1881
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
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
