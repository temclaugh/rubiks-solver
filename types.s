	.literal16
	.align	4
_caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	4
_caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	_camlTypes__data_begin
_camlTypes__data_begin:
	.text
	.globl	_camlTypes__code_begin
_camlTypes__code_begin:
	nop
	.data
	.quad	0
	.globl	_camlTypes
_camlTypes:
	.text
	.align	4
	.globl	_camlTypes__entry
_camlTypes__entry:
	.cfi_startproc
.L100:
	movq	$1, %rax
	ret
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlTypes__code_end
_camlTypes__code_end:
	.data
	.globl	_camlTypes__data_end
_camlTypes__data_end:
	.long	0
	.globl	_camlTypes__frametable
_camlTypes__frametable:
	.quad	0
