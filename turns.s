	.literal16
	.align	4
_caml_negf_mask:	.quad   0x8000000000000000, 0
	.align	4
_caml_absf_mask:	.quad   0x7FFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
	.data
	.globl	_camlTurns__data_begin
_camlTurns__data_begin:
	.text
	.globl	_camlTurns__code_begin
_camlTurns__code_begin:
	nop
	.data
	.quad	21504
	.globl	_camlTurns
_camlTurns:
	.space	168
	.data
	.quad	2295
_camlTurns__1:
	.quad	_camlTurns__b2_1099
	.quad	3
	.data
	.quad	2295
_camlTurns__2:
	.quad	_camlTurns__b$27_1094
	.quad	3
	.data
	.quad	2295
_camlTurns__3:
	.quad	_camlTurns__b_1089
	.quad	3
	.data
	.quad	2295
_camlTurns__4:
	.quad	_camlTurns__f2_1084
	.quad	3
	.data
	.quad	2295
_camlTurns__5:
	.quad	_camlTurns__f$27_1079
	.quad	3
	.data
	.quad	2295
_camlTurns__6:
	.quad	_camlTurns__f_1074
	.quad	3
	.data
	.quad	2295
_camlTurns__7:
	.quad	_camlTurns__r2_1069
	.quad	3
	.data
	.quad	2295
_camlTurns__8:
	.quad	_camlTurns__r$27_1064
	.quad	3
	.data
	.quad	2295
_camlTurns__9:
	.quad	_camlTurns__r_1059
	.quad	3
	.data
	.quad	2295
_camlTurns__10:
	.quad	_camlTurns__l2_1054
	.quad	3
	.data
	.quad	2295
_camlTurns__11:
	.quad	_camlTurns__l$27_1049
	.quad	3
	.data
	.quad	2295
_camlTurns__12:
	.quad	_camlTurns__l_1044
	.quad	3
	.data
	.quad	2295
_camlTurns__13:
	.quad	_camlTurns__d2_1039
	.quad	3
	.data
	.quad	2295
_camlTurns__14:
	.quad	_camlTurns__d$27_1034
	.quad	3
	.data
	.quad	2295
_camlTurns__15:
	.quad	_camlTurns__d_1029
	.quad	3
	.data
	.quad	2295
_camlTurns__16:
	.quad	_camlTurns__u2_1024
	.quad	3
	.data
	.quad	2295
_camlTurns__17:
	.quad	_camlTurns__u$27_1019
	.quad	3
	.data
	.quad	2295
_camlTurns__18:
	.quad	_camlTurns__u_1014
	.quad	3
	.data
	.quad	2295
_camlTurns__19:
	.quad	_camlTurns__oneEighty_1012
	.quad	3
	.data
	.quad	2295
_camlTurns__20:
	.quad	_camlTurns__counterClockwise_1010
	.quad	3
	.data
	.quad	2295
_camlTurns__21:
	.quad	_camlTurns__clockwise_1008
	.quad	3
	.text
	.align	4
	.globl	_camlTurns__clockwise_1008
_camlTurns__clockwise_1008:
	.cfi_startproc
.L101:
	movq	%rax, %rbx
	movq	$3, %rcx
	movq	%rbx, %rax
	sarq	$1, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rdi
	movq	$3, %rcx
	movq	%rbx, %rax
	sarq	$1, %rax
	cqto
	idivq	%rcx
	imulq	$6, %rdx
	movq	$13, %rax
	subq	%rdx, %rax
	leaq	(%rax, %rdi, 2), %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__counterClockwise_1010
_camlTurns__counterClockwise_1010:
	.cfi_startproc
.L102:
	movq	%rax, %rbx
	movq	$3, %rcx
	movq	%rbx, %rax
	sarq	$1, %rax
	cqto
	idivq	%rcx
	movq	%rdx, %rdi
	imulq	$6, %rdi
	movq	$3, %rcx
	movq	%rbx, %rax
	sarq	$1, %rax
	cqto
	idivq	%rcx
	movq	%rax, %rbx
	salq	$1, %rbx
	movq	$5, %rax
	subq	%rbx, %rax
	addq	%rdi, %rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__oneEighty_1012
_camlTurns__oneEighty_1012:
	.cfi_startproc
.L103:
	movq	%rax, %rbx
	movq	$17, %rax
	subq	%rbx, %rax
	incq	%rax
	ret
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__u_1014
_camlTurns__u_1014:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L158:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L159:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L152
	movq	%rbx, 16(%rsp)
	movq	%r12, 8(%rsp)
.L153:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L160:
	movq	%rax, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L157
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L156
	.align	2
.L157:
.L162:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L163
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L156:
	movq	8(%rsp), %r12
	movq	-8(%r12), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	movq	16(%rsp), %rbx
	cmpq	%rbx, %rdi
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L155
	leaq	-4(%r12, %rbx, 4), %rdi
	call	_caml_modify
	jmp	.L154
	.align	2
.L155:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rbx, 4)
.L154:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 16(%rsp)
	cmpq	$17, %rax
	jne	.L153
.L152:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L151
	movq	144(%rbx), %rsi
	jmp	.L150
	.align	2
.L151:
.L165:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L166
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L150:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L149
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L148
	.align	2
.L149:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L148:
	movq	-8(%rbx), %rax
	cmpq	$20479, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L147
	movq	152(%rbx), %rsi
	jmp	.L146
	.align	2
.L147:
.L168:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L169
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	152(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L146:
	movq	-8(%r12), %rax
	cmpq	$11263, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L145
	movq	%r12, %rdi
	addq	$80, %rdi
	call	_caml_modify
	jmp	.L144
	.align	2
.L145:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 80(%r12)
.L144:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L143
	movq	160(%rbx), %rsi
	jmp	.L142
	.align	2
.L143:
.L171:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L172
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L142:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L141
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L140
	.align	2
.L141:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L140:
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L139
	movq	216(%rbx), %rsi
	jmp	.L138
	.align	2
.L139:
.L174:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L175
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L138:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L137
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L136
	.align	2
.L137:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L136:
	movq	-8(%rbx), %rax
	cmpq	$29695, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L135
	movq	224(%rbx), %rsi
	jmp	.L134
	.align	2
.L135:
.L177:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L178
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	224(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L134:
	movq	-8(%r12), %rax
	cmpq	$20479, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L133
	movq	%r12, %rdi
	addq	$152, %rdi
	call	_caml_modify
	jmp	.L132
	.align	2
.L133:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 152(%r12)
.L132:
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L131
	movq	232(%rbx), %rsi
	jmp	.L130
	.align	2
.L131:
.L180:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L181
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L130:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L129
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L128
	.align	2
.L129:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L128:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L127
	movq	288(%rbx), %rsi
	jmp	.L126
	.align	2
.L127:
.L183:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L184
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L126:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L125
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L124
	.align	2
.L125:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L124:
	movq	-8(%rbx), %rax
	cmpq	$38911, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L123
	movq	296(%rbx), %rsi
	jmp	.L122
	.align	2
.L123:
.L186:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L187
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	296(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L122:
	movq	-8(%r12), %rax
	cmpq	$29695, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L121
	movq	%r12, %rdi
	addq	$224, %rdi
	call	_caml_modify
	jmp	.L120
	.align	2
.L121:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 224(%r12)
.L120:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L119
	movq	304(%rbx), %rsi
	jmp	.L118
	.align	2
.L119:
.L189:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L190
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L118:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L117
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L116
	.align	2
.L117:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L116:
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L115
	movq	72(%rbx), %rsi
	jmp	.L114
	.align	2
.L115:
.L192:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L193
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L114:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L113
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L112
	.align	2
.L113:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L112:
	movq	-8(%rbx), %rax
	cmpq	$11263, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L111
	movq	80(%rbx), %rsi
	jmp	.L110
	.align	2
.L111:
.L195:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L196
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	80(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L110:
	movq	-8(%r12), %rax
	cmpq	$38911, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L109
	movq	%r12, %rdi
	addq	$296, %rdi
	call	_caml_modify
	jmp	.L108
	.align	2
.L109:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 296(%r12)
.L108:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L107
	movq	88(%rbx), %rsi
	jmp	.L106
	.align	2
.L107:
.L198:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L199
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L106:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L161
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L105
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L104
	.align	2
.L105:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L104:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L199:	call	_caml_call_gc
.L200:	jmp	.L198
.L196:	call	_caml_call_gc
.L197:	jmp	.L195
.L193:	call	_caml_call_gc
.L194:	jmp	.L192
.L190:	call	_caml_call_gc
.L191:	jmp	.L189
.L187:	call	_caml_call_gc
.L188:	jmp	.L186
.L184:	call	_caml_call_gc
.L185:	jmp	.L183
.L181:	call	_caml_call_gc
.L182:	jmp	.L180
.L178:	call	_caml_call_gc
.L179:	jmp	.L177
.L175:	call	_caml_call_gc
.L176:	jmp	.L174
.L172:	call	_caml_call_gc
.L173:	jmp	.L171
.L169:	call	_caml_call_gc
.L170:	jmp	.L168
.L166:	call	_caml_call_gc
.L167:	jmp	.L165
.L163:	call	_caml_call_gc
.L164:	jmp	.L162
.L161:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__u$27_1019
_camlTurns__u$27_1019:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L255:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L256:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L249
	movq	%rbx, 16(%rsp)
	movq	%r12, 8(%rsp)
.L250:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L257:
	movq	%rax, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L254
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L253
	.align	2
.L254:
.L259:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L260
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L253:
	movq	8(%rsp), %r12
	movq	-8(%r12), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	movq	16(%rsp), %rbx
	cmpq	%rbx, %rdi
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L252
	leaq	-4(%r12, %rbx, 4), %rdi
	call	_caml_modify
	jmp	.L251
	.align	2
.L252:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rbx, 4)
.L251:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 16(%rsp)
	cmpq	$17, %rax
	jne	.L250
.L249:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L248
	movq	72(%rbx), %rsi
	jmp	.L247
	.align	2
.L248:
.L262:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L263
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L247:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L246
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L245
	.align	2
.L246:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L245:
	movq	-8(%rbx), %rax
	cmpq	$11263, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L244
	movq	80(%rbx), %rsi
	jmp	.L243
	.align	2
.L244:
.L265:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L266
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	80(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L243:
	movq	-8(%r12), %rax
	cmpq	$20479, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L242
	movq	%r12, %rdi
	addq	$152, %rdi
	call	_caml_modify
	jmp	.L241
	.align	2
.L242:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 152(%r12)
.L241:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L240
	movq	88(%rbx), %rsi
	jmp	.L239
	.align	2
.L240:
.L268:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L269
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L239:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L238
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L237
	.align	2
.L238:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L237:
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L236
	movq	144(%rbx), %rsi
	jmp	.L235
	.align	2
.L236:
.L271:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L272
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L235:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L234
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L233
	.align	2
.L234:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L233:
	movq	-8(%rbx), %rax
	cmpq	$20479, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L232
	movq	152(%rbx), %rsi
	jmp	.L231
	.align	2
.L232:
.L274:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L275
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	152(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L231:
	movq	-8(%r12), %rax
	cmpq	$29695, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L230
	movq	%r12, %rdi
	addq	$224, %rdi
	call	_caml_modify
	jmp	.L229
	.align	2
.L230:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 224(%r12)
.L229:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L228
	movq	160(%rbx), %rsi
	jmp	.L227
	.align	2
.L228:
.L277:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L278
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L227:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L226
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L225
	.align	2
.L226:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L225:
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L224
	movq	216(%rbx), %rsi
	jmp	.L223
	.align	2
.L224:
.L280:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L281
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L223:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L222
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L221
	.align	2
.L222:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L221:
	movq	-8(%rbx), %rax
	cmpq	$29695, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L220
	movq	224(%rbx), %rsi
	jmp	.L219
	.align	2
.L220:
.L283:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L284
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	224(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L219:
	movq	-8(%r12), %rax
	cmpq	$38911, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L218
	movq	%r12, %rdi
	addq	$296, %rdi
	call	_caml_modify
	jmp	.L217
	.align	2
.L218:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 296(%r12)
.L217:
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L216
	movq	232(%rbx), %rsi
	jmp	.L215
	.align	2
.L216:
.L286:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L287
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L215:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L214
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L213
	.align	2
.L214:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L213:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L212
	movq	288(%rbx), %rsi
	jmp	.L211
	.align	2
.L212:
.L289:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L290
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L211:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L210
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L209
	.align	2
.L210:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L209:
	movq	-8(%rbx), %rax
	cmpq	$38911, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L208
	movq	296(%rbx), %rsi
	jmp	.L207
	.align	2
.L208:
.L292:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L293
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	296(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L207:
	movq	-8(%r12), %rax
	cmpq	$11263, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L206
	movq	%r12, %rdi
	addq	$80, %rdi
	call	_caml_modify
	jmp	.L205
	.align	2
.L206:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 80(%r12)
.L205:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L204
	movq	304(%rbx), %rsi
	jmp	.L203
	.align	2
.L204:
.L295:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L296
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L203:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L258
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L202
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L201
	.align	2
.L202:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L201:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L296:	call	_caml_call_gc
.L297:	jmp	.L295
.L293:	call	_caml_call_gc
.L294:	jmp	.L292
.L290:	call	_caml_call_gc
.L291:	jmp	.L289
.L287:	call	_caml_call_gc
.L288:	jmp	.L286
.L284:	call	_caml_call_gc
.L285:	jmp	.L283
.L281:	call	_caml_call_gc
.L282:	jmp	.L280
.L278:	call	_caml_call_gc
.L279:	jmp	.L277
.L275:	call	_caml_call_gc
.L276:	jmp	.L274
.L272:	call	_caml_call_gc
.L273:	jmp	.L271
.L269:	call	_caml_call_gc
.L270:	jmp	.L268
.L266:	call	_caml_call_gc
.L267:	jmp	.L265
.L263:	call	_caml_call_gc
.L264:	jmp	.L262
.L260:	call	_caml_call_gc
.L261:	jmp	.L259
.L258:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__u2_1024
_camlTurns__u2_1024:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L352:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L353:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L346
.L347:
	movq	$17, %rdi
	subq	%rbx, %rdi
	incq	%rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L351
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L350
	.align	2
.L351:
.L355:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L356
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L350:
	movq	-8(%r12), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L349
	leaq	-4(%r12, %rbx, 4), %rdi
	call	_caml_modify
	jmp	.L348
	.align	2
.L349:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rbx, 4)
.L348:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L347
.L346:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L345
	movq	216(%rbx), %rsi
	jmp	.L344
	.align	2
.L345:
.L358:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L359
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L344:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L343
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L342
	.align	2
.L343:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L342:
	movq	-8(%rbx), %rax
	cmpq	$29695, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L341
	movq	224(%rbx), %rsi
	jmp	.L340
	.align	2
.L341:
.L361:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L362
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	224(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L340:
	movq	-8(%r12), %rax
	cmpq	$11263, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L339
	movq	%r12, %rdi
	addq	$80, %rdi
	call	_caml_modify
	jmp	.L338
	.align	2
.L339:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 80(%r12)
.L338:
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L337
	movq	232(%rbx), %rsi
	jmp	.L336
	.align	2
.L337:
.L364:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L365
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L336:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L335
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L334
	.align	2
.L335:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L334:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L333
	movq	288(%rbx), %rsi
	jmp	.L332
	.align	2
.L333:
.L367:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L368
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L332:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L331
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L330
	.align	2
.L331:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L330:
	movq	-8(%rbx), %rax
	cmpq	$38911, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L329
	movq	296(%rbx), %rsi
	jmp	.L328
	.align	2
.L329:
.L370:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L371
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	296(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L328:
	movq	-8(%r12), %rax
	cmpq	$20479, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L327
	movq	%r12, %rdi
	addq	$152, %rdi
	call	_caml_modify
	jmp	.L326
	.align	2
.L327:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 152(%r12)
.L326:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L325
	movq	304(%rbx), %rsi
	jmp	.L324
	.align	2
.L325:
.L373:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L374
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L324:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L323
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L322
	.align	2
.L323:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L322:
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L321
	movq	72(%rbx), %rsi
	jmp	.L320
	.align	2
.L321:
.L376:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L377
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L320:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L319
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L318
	.align	2
.L319:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L318:
	movq	-8(%rbx), %rax
	cmpq	$11263, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L317
	movq	80(%rbx), %rsi
	jmp	.L316
	.align	2
.L317:
.L379:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L380
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	80(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L316:
	movq	-8(%r12), %rax
	cmpq	$29695, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L315
	movq	%r12, %rdi
	addq	$224, %rdi
	call	_caml_modify
	jmp	.L314
	.align	2
.L315:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 224(%r12)
.L314:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L313
	movq	88(%rbx), %rsi
	jmp	.L312
	.align	2
.L313:
.L382:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L383
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L312:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L311
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L310
	.align	2
.L311:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L310:
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L309
	movq	144(%rbx), %rsi
	jmp	.L308
	.align	2
.L309:
.L385:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L386
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L308:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L307
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L306
	.align	2
.L307:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L306:
	movq	-8(%rbx), %rax
	cmpq	$20479, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L305
	movq	152(%rbx), %rsi
	jmp	.L304
	.align	2
.L305:
.L388:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L389
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	152(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L304:
	movq	-8(%r12), %rax
	cmpq	$38911, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L303
	movq	%r12, %rdi
	addq	$296, %rdi
	call	_caml_modify
	jmp	.L302
	.align	2
.L303:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 296(%r12)
.L302:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L301
	movq	160(%rbx), %rsi
	jmp	.L300
	.align	2
.L301:
.L391:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L392
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L300:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L354
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L299
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L298
	.align	2
.L299:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L298:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L392:	call	_caml_call_gc
.L393:	jmp	.L391
.L389:	call	_caml_call_gc
.L390:	jmp	.L388
.L386:	call	_caml_call_gc
.L387:	jmp	.L385
.L383:	call	_caml_call_gc
.L384:	jmp	.L382
.L380:	call	_caml_call_gc
.L381:	jmp	.L379
.L377:	call	_caml_call_gc
.L378:	jmp	.L376
.L374:	call	_caml_call_gc
.L375:	jmp	.L373
.L371:	call	_caml_call_gc
.L372:	jmp	.L370
.L368:	call	_caml_call_gc
.L369:	jmp	.L367
.L365:	call	_caml_call_gc
.L366:	jmp	.L364
.L362:	call	_caml_call_gc
.L363:	jmp	.L361
.L359:	call	_caml_call_gc
.L360:	jmp	.L358
.L356:	call	_caml_call_gc
.L357:	jmp	.L355
.L354:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__d_1029
_camlTurns__d_1029:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L448:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L449:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L442
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L443:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L450:
	movq	%rax, %rbx
	addq	$90, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L447
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L446
	.align	2
.L447:
.L452:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L453
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L446:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$90, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L451
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L445
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L444
	.align	2
.L445:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L444:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L443
.L442:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L441
	movq	120(%rbx), %rsi
	jmp	.L440
	.align	2
.L441:
.L455:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L456
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L440:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L439
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L438
	.align	2
.L439:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L438:
	movq	-8(%rbx), %rax
	cmpq	$17407, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L437
	movq	128(%rbx), %rsi
	jmp	.L436
	.align	2
.L437:
.L458:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L459
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	128(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L436:
	movq	-8(%r12), %rax
	cmpq	$26623, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L435
	movq	%r12, %rdi
	addq	$200, %rdi
	call	_caml_modify
	jmp	.L434
	.align	2
.L435:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 200(%r12)
.L434:
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L433
	movq	136(%rbx), %rsi
	jmp	.L432
	.align	2
.L433:
.L461:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L462
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L432:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L431
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L430
	.align	2
.L431:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L430:
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L429
	movq	192(%rbx), %rsi
	jmp	.L428
	.align	2
.L429:
.L464:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L465
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L428:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L427
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L426
	.align	2
.L427:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L426:
	movq	-8(%rbx), %rax
	cmpq	$26623, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L425
	movq	200(%rbx), %rsi
	jmp	.L424
	.align	2
.L425:
.L467:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L468
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	200(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L424:
	movq	-8(%r12), %rax
	cmpq	$35839, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L423
	movq	%r12, %rdi
	addq	$272, %rdi
	call	_caml_modify
	jmp	.L422
	.align	2
.L423:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 272(%r12)
.L422:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L421
	movq	208(%rbx), %rsi
	jmp	.L420
	.align	2
.L421:
.L470:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L471
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L420:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L419
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L418
	.align	2
.L419:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L418:
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L417
	movq	264(%rbx), %rsi
	jmp	.L416
	.align	2
.L417:
.L473:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L474
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L416:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L415
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L414
	.align	2
.L415:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L414:
	movq	-8(%rbx), %rax
	cmpq	$35839, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L413
	movq	272(%rbx), %rsi
	jmp	.L412
	.align	2
.L413:
.L476:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L477
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	272(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L412:
	movq	-8(%r12), %rax
	cmpq	$45055, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L411
	movq	%r12, %rdi
	addq	$344, %rdi
	call	_caml_modify
	jmp	.L410
	.align	2
.L411:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 344(%r12)
.L410:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L409
	movq	280(%rbx), %rsi
	jmp	.L408
	.align	2
.L409:
.L479:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L480
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L408:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L407
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L406
	.align	2
.L407:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L406:
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L405
	movq	336(%rbx), %rsi
	jmp	.L404
	.align	2
.L405:
.L482:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L483
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L404:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L403
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L402
	.align	2
.L403:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L402:
	movq	-8(%rbx), %rax
	cmpq	$45055, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L401
	movq	344(%rbx), %rsi
	jmp	.L400
	.align	2
.L401:
.L485:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L486
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	344(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L400:
	movq	-8(%r12), %rax
	cmpq	$17407, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L399
	movq	%r12, %rdi
	addq	$128, %rdi
	call	_caml_modify
	jmp	.L398
	.align	2
.L399:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 128(%r12)
.L398:
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L397
	movq	352(%rbx), %rsi
	jmp	.L396
	.align	2
.L397:
.L488:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L489
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L396:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L451
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L395
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L394
	.align	2
.L395:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L394:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L489:	call	_caml_call_gc
.L490:	jmp	.L488
.L486:	call	_caml_call_gc
.L487:	jmp	.L485
.L483:	call	_caml_call_gc
.L484:	jmp	.L482
.L480:	call	_caml_call_gc
.L481:	jmp	.L479
.L477:	call	_caml_call_gc
.L478:	jmp	.L476
.L474:	call	_caml_call_gc
.L475:	jmp	.L473
.L471:	call	_caml_call_gc
.L472:	jmp	.L470
.L468:	call	_caml_call_gc
.L469:	jmp	.L467
.L465:	call	_caml_call_gc
.L466:	jmp	.L464
.L462:	call	_caml_call_gc
.L463:	jmp	.L461
.L459:	call	_caml_call_gc
.L460:	jmp	.L458
.L456:	call	_caml_call_gc
.L457:	jmp	.L455
.L453:	call	_caml_call_gc
.L454:	jmp	.L452
.L451:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__d$27_1034
_camlTurns__d$27_1034:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L545:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L546:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L539
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L540:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L547:
	movq	%rax, %rbx
	addq	$90, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L544
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L543
	.align	2
.L544:
.L549:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L550
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L543:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$90, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L548
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L542
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L541
	.align	2
.L542:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L541:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L540
.L539:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L538
	movq	192(%rbx), %rsi
	jmp	.L537
	.align	2
.L538:
.L552:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L553
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L537:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L536
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L535
	.align	2
.L536:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L535:
	movq	-8(%rbx), %rax
	cmpq	$26623, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L534
	movq	200(%rbx), %rsi
	jmp	.L533
	.align	2
.L534:
.L555:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L556
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	200(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L533:
	movq	-8(%r12), %rax
	cmpq	$17407, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L532
	movq	%r12, %rdi
	addq	$128, %rdi
	call	_caml_modify
	jmp	.L531
	.align	2
.L532:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 128(%r12)
.L531:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L530
	movq	208(%rbx), %rsi
	jmp	.L529
	.align	2
.L530:
.L558:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L559
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L529:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L528
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L527
	.align	2
.L528:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L527:
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L526
	movq	264(%rbx), %rsi
	jmp	.L525
	.align	2
.L526:
.L561:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L562
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L525:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L524
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L523
	.align	2
.L524:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L523:
	movq	-8(%rbx), %rax
	cmpq	$35839, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L522
	movq	272(%rbx), %rsi
	jmp	.L521
	.align	2
.L522:
.L564:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L565
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	272(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L521:
	movq	-8(%r12), %rax
	cmpq	$26623, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L520
	movq	%r12, %rdi
	addq	$200, %rdi
	call	_caml_modify
	jmp	.L519
	.align	2
.L520:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 200(%r12)
.L519:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L518
	movq	280(%rbx), %rsi
	jmp	.L517
	.align	2
.L518:
.L567:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L568
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L517:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L516
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L515
	.align	2
.L516:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L515:
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L514
	movq	336(%rbx), %rsi
	jmp	.L513
	.align	2
.L514:
.L570:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L571
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L513:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L512
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L511
	.align	2
.L512:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L511:
	movq	-8(%rbx), %rax
	cmpq	$45055, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L510
	movq	344(%rbx), %rsi
	jmp	.L509
	.align	2
.L510:
.L573:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L574
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	344(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L509:
	movq	-8(%r12), %rax
	cmpq	$35839, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L508
	movq	%r12, %rdi
	addq	$272, %rdi
	call	_caml_modify
	jmp	.L507
	.align	2
.L508:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 272(%r12)
.L507:
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L506
	movq	352(%rbx), %rsi
	jmp	.L505
	.align	2
.L506:
.L576:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L577
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L505:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L504
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L503
	.align	2
.L504:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L503:
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L502
	movq	120(%rbx), %rsi
	jmp	.L501
	.align	2
.L502:
.L579:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L580
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L501:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L500
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L499
	.align	2
.L500:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L499:
	movq	-8(%rbx), %rax
	cmpq	$17407, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L498
	movq	128(%rbx), %rsi
	jmp	.L497
	.align	2
.L498:
.L582:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L583
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	128(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L497:
	movq	-8(%r12), %rax
	cmpq	$45055, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L496
	movq	%r12, %rdi
	addq	$344, %rdi
	call	_caml_modify
	jmp	.L495
	.align	2
.L496:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 344(%r12)
.L495:
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L494
	movq	136(%rbx), %rsi
	jmp	.L493
	.align	2
.L494:
.L585:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L586
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L493:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L548
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L492
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L491
	.align	2
.L492:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L491:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L586:	call	_caml_call_gc
.L587:	jmp	.L585
.L583:	call	_caml_call_gc
.L584:	jmp	.L582
.L580:	call	_caml_call_gc
.L581:	jmp	.L579
.L577:	call	_caml_call_gc
.L578:	jmp	.L576
.L574:	call	_caml_call_gc
.L575:	jmp	.L573
.L571:	call	_caml_call_gc
.L572:	jmp	.L570
.L568:	call	_caml_call_gc
.L569:	jmp	.L567
.L565:	call	_caml_call_gc
.L566:	jmp	.L564
.L562:	call	_caml_call_gc
.L563:	jmp	.L561
.L559:	call	_caml_call_gc
.L560:	jmp	.L558
.L556:	call	_caml_call_gc
.L557:	jmp	.L555
.L553:	call	_caml_call_gc
.L554:	jmp	.L552
.L550:	call	_caml_call_gc
.L551:	jmp	.L549
.L548:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__d2_1039
_camlTurns__d2_1039:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L642:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L643:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L636
.L637:
	movq	$17, %rdi
	subq	%rbx, %rdi
	addq	$91, %rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L641
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L640
	.align	2
.L641:
.L645:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L646
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L640:
	movq	%rbx, %rax
	addq	$90, %rax
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L644
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L639
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L638
	.align	2
.L639:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L638:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L637
.L636:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L635
	movq	264(%rbx), %rsi
	jmp	.L634
	.align	2
.L635:
.L648:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L649
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L634:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L633
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L632
	.align	2
.L633:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L632:
	movq	-8(%rbx), %rax
	cmpq	$35839, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L631
	movq	272(%rbx), %rsi
	jmp	.L630
	.align	2
.L631:
.L651:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L652
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	272(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L630:
	movq	-8(%r12), %rax
	cmpq	$17407, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L629
	movq	%r12, %rdi
	addq	$128, %rdi
	call	_caml_modify
	jmp	.L628
	.align	2
.L629:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 128(%r12)
.L628:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L627
	movq	280(%rbx), %rsi
	jmp	.L626
	.align	2
.L627:
.L654:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L655
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L626:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L625
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L624
	.align	2
.L625:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L624:
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L623
	movq	336(%rbx), %rsi
	jmp	.L622
	.align	2
.L623:
.L657:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L658
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L622:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L621
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L620
	.align	2
.L621:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L620:
	movq	-8(%rbx), %rax
	cmpq	$45055, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L619
	movq	344(%rbx), %rsi
	jmp	.L618
	.align	2
.L619:
.L660:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L661
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	344(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L618:
	movq	-8(%r12), %rax
	cmpq	$26623, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L617
	movq	%r12, %rdi
	addq	$200, %rdi
	call	_caml_modify
	jmp	.L616
	.align	2
.L617:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 200(%r12)
.L616:
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L615
	movq	352(%rbx), %rsi
	jmp	.L614
	.align	2
.L615:
.L663:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L664
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L614:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L613
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L612
	.align	2
.L613:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L612:
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L611
	movq	120(%rbx), %rsi
	jmp	.L610
	.align	2
.L611:
.L666:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L667
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L610:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L609
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L608
	.align	2
.L609:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L608:
	movq	-8(%rbx), %rax
	cmpq	$17407, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L607
	movq	128(%rbx), %rsi
	jmp	.L606
	.align	2
.L607:
.L669:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L670
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	128(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L606:
	movq	-8(%r12), %rax
	cmpq	$35839, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L605
	movq	%r12, %rdi
	addq	$272, %rdi
	call	_caml_modify
	jmp	.L604
	.align	2
.L605:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 272(%r12)
.L604:
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L603
	movq	136(%rbx), %rsi
	jmp	.L602
	.align	2
.L603:
.L672:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L673
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L602:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L601
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L600
	.align	2
.L601:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L600:
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L599
	movq	192(%rbx), %rsi
	jmp	.L598
	.align	2
.L599:
.L675:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L676
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L598:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L597
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L596
	.align	2
.L597:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L596:
	movq	-8(%rbx), %rax
	cmpq	$26623, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L595
	movq	200(%rbx), %rsi
	jmp	.L594
	.align	2
.L595:
.L678:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L679
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	200(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L594:
	movq	-8(%r12), %rax
	cmpq	$45055, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L593
	movq	%r12, %rdi
	addq	$344, %rdi
	call	_caml_modify
	jmp	.L592
	.align	2
.L593:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 344(%r12)
.L592:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L591
	movq	208(%rbx), %rsi
	jmp	.L590
	.align	2
.L591:
.L681:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L682
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L590:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L644
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L589
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L588
	.align	2
.L589:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L588:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L682:	call	_caml_call_gc
.L683:	jmp	.L681
.L679:	call	_caml_call_gc
.L680:	jmp	.L678
.L676:	call	_caml_call_gc
.L677:	jmp	.L675
.L673:	call	_caml_call_gc
.L674:	jmp	.L672
.L670:	call	_caml_call_gc
.L671:	jmp	.L669
.L667:	call	_caml_call_gc
.L668:	jmp	.L666
.L664:	call	_caml_call_gc
.L665:	jmp	.L663
.L661:	call	_caml_call_gc
.L662:	jmp	.L660
.L658:	call	_caml_call_gc
.L659:	jmp	.L657
.L655:	call	_caml_call_gc
.L656:	jmp	.L654
.L652:	call	_caml_call_gc
.L653:	jmp	.L651
.L649:	call	_caml_call_gc
.L650:	jmp	.L648
.L646:	call	_caml_call_gc
.L647:	jmp	.L645
.L644:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__l_1044
_camlTurns__l_1044:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L738:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L739:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L732
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L733:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L740:
	movq	%rax, %rbx
	addq	$18, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L737
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L736
	.align	2
.L737:
.L742:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L743
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L736:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$18, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L741
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L735
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L734
	.align	2
.L735:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L734:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L733
.L732:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L731
	movq	352(%rbx), %rsi
	jmp	.L730
	.align	2
.L731:
.L745:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L746
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L730:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L729
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L728
	.align	2
.L729:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L728:
	movq	-8(%rbx), %rax
	cmpq	$43007, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L727
	movq	328(%rbx), %rsi
	jmp	.L726
	.align	2
.L727:
.L748:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L749
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	328(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L726:
	movq	-8(%r12), %rax
	cmpq	$4095, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L725
	movq	%r12, %rdi
	addq	$24, %rdi
	call	_caml_modify
	jmp	.L724
	.align	2
.L725:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 24(%r12)
.L724:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L723
	movq	304(%rbx), %rsi
	jmp	.L722
	.align	2
.L723:
.L751:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L752
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L722:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L721
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L720
	.align	2
.L721:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L720:
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L719
	movq	(%rbx), %rsi
	jmp	.L718
	.align	2
.L719:
.L754:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L755
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L718:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L717
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L716
	.align	2
.L717:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L716:
	movq	-8(%rbx), %rax
	cmpq	$4095, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L715
	movq	24(%rbx), %rsi
	jmp	.L714
	.align	2
.L715:
.L757:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L758
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	24(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L714:
	movq	-8(%r12), %rax
	cmpq	$22527, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L713
	movq	%r12, %rdi
	addq	$168, %rdi
	call	_caml_modify
	jmp	.L712
	.align	2
.L713:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 168(%r12)
.L712:
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L711
	movq	48(%rbx), %rsi
	jmp	.L710
	.align	2
.L711:
.L760:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L761
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L710:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L709
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L708
	.align	2
.L709:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L708:
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L707
	movq	144(%rbx), %rsi
	jmp	.L706
	.align	2
.L707:
.L763:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L764
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L706:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L705
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L704
	.align	2
.L705:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L704:
	movq	-8(%rbx), %rax
	cmpq	$22527, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L703
	movq	168(%rbx), %rsi
	jmp	.L702
	.align	2
.L703:
.L766:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L767
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	168(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L702:
	movq	-8(%r12), %rax
	cmpq	$50175, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L701
	movq	%r12, %rdi
	addq	$384, %rdi
	call	_caml_modify
	jmp	.L700
	.align	2
.L701:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 384(%r12)
.L700:
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L699
	movq	192(%rbx), %rsi
	jmp	.L698
	.align	2
.L699:
.L769:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L770
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L698:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L697
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L696
	.align	2
.L697:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L696:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L695
	movq	360(%rbx), %rsi
	jmp	.L694
	.align	2
.L695:
.L772:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L773
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L694:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L693
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L692
	.align	2
.L693:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L692:
	movq	-8(%rbx), %rax
	cmpq	$50175, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L691
	movq	384(%rbx), %rsi
	jmp	.L690
	.align	2
.L691:
.L775:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L776
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	384(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L690:
	movq	-8(%r12), %rax
	cmpq	$43007, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L689
	movq	%r12, %rdi
	addq	$328, %rdi
	call	_caml_modify
	jmp	.L688
	.align	2
.L689:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 328(%r12)
.L688:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L687
	movq	408(%rbx), %rsi
	jmp	.L686
	.align	2
.L687:
.L778:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L779
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L686:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L741
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L685
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L684
	.align	2
.L685:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L684:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L779:	call	_caml_call_gc
.L780:	jmp	.L778
.L776:	call	_caml_call_gc
.L777:	jmp	.L775
.L773:	call	_caml_call_gc
.L774:	jmp	.L772
.L770:	call	_caml_call_gc
.L771:	jmp	.L769
.L767:	call	_caml_call_gc
.L768:	jmp	.L766
.L764:	call	_caml_call_gc
.L765:	jmp	.L763
.L761:	call	_caml_call_gc
.L762:	jmp	.L760
.L758:	call	_caml_call_gc
.L759:	jmp	.L757
.L755:	call	_caml_call_gc
.L756:	jmp	.L754
.L752:	call	_caml_call_gc
.L753:	jmp	.L751
.L749:	call	_caml_call_gc
.L750:	jmp	.L748
.L746:	call	_caml_call_gc
.L747:	jmp	.L745
.L743:	call	_caml_call_gc
.L744:	jmp	.L742
.L741:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__l$27_1049
_camlTurns__l$27_1049:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L835:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L836:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L829
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L830:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L837:
	movq	%rax, %rbx
	addq	$18, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L834
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L833
	.align	2
.L834:
.L839:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L840
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L833:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$18, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L838
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L832
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L831
	.align	2
.L832:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L831:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L830
.L829:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L828
	movq	(%rbx), %rsi
	jmp	.L827
	.align	2
.L828:
.L842:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L843
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L827:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L826
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L825
	.align	2
.L826:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L825:
	movq	-8(%rbx), %rax
	cmpq	$4095, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L824
	movq	24(%rbx), %rsi
	jmp	.L823
	.align	2
.L824:
.L845:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L846
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	24(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L823:
	movq	-8(%r12), %rax
	cmpq	$43007, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L822
	movq	%r12, %rdi
	addq	$328, %rdi
	call	_caml_modify
	jmp	.L821
	.align	2
.L822:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 328(%r12)
.L821:
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L820
	movq	48(%rbx), %rsi
	jmp	.L819
	.align	2
.L820:
.L848:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L849
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L819:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L818
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L817
	.align	2
.L818:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L817:
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L816
	movq	144(%rbx), %rsi
	jmp	.L815
	.align	2
.L816:
.L851:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L852
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L815:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L814
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L813
	.align	2
.L814:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L813:
	movq	-8(%rbx), %rax
	cmpq	$22527, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L812
	movq	168(%rbx), %rsi
	jmp	.L811
	.align	2
.L812:
.L854:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L855
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	168(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L811:
	movq	-8(%r12), %rax
	cmpq	$4095, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L810
	movq	%r12, %rdi
	addq	$24, %rdi
	call	_caml_modify
	jmp	.L809
	.align	2
.L810:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 24(%r12)
.L809:
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L808
	movq	192(%rbx), %rsi
	jmp	.L807
	.align	2
.L808:
.L857:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L858
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L807:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L806
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L805
	.align	2
.L806:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L805:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L804
	movq	360(%rbx), %rsi
	jmp	.L803
	.align	2
.L804:
.L860:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L861
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L803:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L802
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L801
	.align	2
.L802:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L801:
	movq	-8(%rbx), %rax
	cmpq	$50175, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L800
	movq	384(%rbx), %rsi
	jmp	.L799
	.align	2
.L800:
.L863:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L864
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	384(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L799:
	movq	-8(%r12), %rax
	cmpq	$22527, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L798
	movq	%r12, %rdi
	addq	$168, %rdi
	call	_caml_modify
	jmp	.L797
	.align	2
.L798:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 168(%r12)
.L797:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L796
	movq	408(%rbx), %rsi
	jmp	.L795
	.align	2
.L796:
.L866:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L867
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L795:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L794
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L793
	.align	2
.L794:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L793:
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L792
	movq	352(%rbx), %rsi
	jmp	.L791
	.align	2
.L792:
.L869:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L870
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L791:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L790
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L789
	.align	2
.L790:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L789:
	movq	-8(%rbx), %rax
	cmpq	$43007, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L788
	movq	328(%rbx), %rsi
	jmp	.L787
	.align	2
.L788:
.L872:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L873
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	328(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L787:
	movq	-8(%r12), %rax
	cmpq	$50175, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L786
	movq	%r12, %rdi
	addq	$384, %rdi
	call	_caml_modify
	jmp	.L785
	.align	2
.L786:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 384(%r12)
.L785:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L784
	movq	304(%rbx), %rsi
	jmp	.L783
	.align	2
.L784:
.L875:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L876
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L783:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L838
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L782
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L781
	.align	2
.L782:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L781:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L876:	call	_caml_call_gc
.L877:	jmp	.L875
.L873:	call	_caml_call_gc
.L874:	jmp	.L872
.L870:	call	_caml_call_gc
.L871:	jmp	.L869
.L867:	call	_caml_call_gc
.L868:	jmp	.L866
.L864:	call	_caml_call_gc
.L865:	jmp	.L863
.L861:	call	_caml_call_gc
.L862:	jmp	.L860
.L858:	call	_caml_call_gc
.L859:	jmp	.L857
.L855:	call	_caml_call_gc
.L856:	jmp	.L854
.L852:	call	_caml_call_gc
.L853:	jmp	.L851
.L849:	call	_caml_call_gc
.L850:	jmp	.L848
.L846:	call	_caml_call_gc
.L847:	jmp	.L845
.L843:	call	_caml_call_gc
.L844:	jmp	.L842
.L840:	call	_caml_call_gc
.L841:	jmp	.L839
.L838:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__l2_1054
_camlTurns__l2_1054:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L932:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L933:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L926
.L927:
	movq	$17, %rdi
	subq	%rbx, %rdi
	addq	$19, %rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L931
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L930
	.align	2
.L931:
.L935:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L936
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L930:
	movq	%rbx, %rax
	addq	$18, %rax
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L934
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L929
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L928
	.align	2
.L929:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L928:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L927
.L926:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$19455, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L925
	movq	144(%rbx), %rsi
	jmp	.L924
	.align	2
.L925:
.L938:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L939
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	144(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L924:
	movq	-8(%r12), %rax
	cmpq	$46079, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L923
	movq	%r12, %rdi
	addq	$352, %rdi
	call	_caml_modify
	jmp	.L922
	.align	2
.L923:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 352(%r12)
.L922:
	movq	-8(%rbx), %rax
	cmpq	$22527, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L921
	movq	168(%rbx), %rsi
	jmp	.L920
	.align	2
.L921:
.L941:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L942
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	168(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L920:
	movq	-8(%r12), %rax
	cmpq	$43007, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L919
	movq	%r12, %rdi
	addq	$328, %rdi
	call	_caml_modify
	jmp	.L918
	.align	2
.L919:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 328(%r12)
.L918:
	movq	-8(%rbx), %rax
	cmpq	$25599, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L917
	movq	192(%rbx), %rsi
	jmp	.L916
	.align	2
.L917:
.L944:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L945
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	192(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L916:
	movq	-8(%r12), %rax
	cmpq	$39935, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L915
	movq	%r12, %rdi
	addq	$304, %rdi
	call	_caml_modify
	jmp	.L914
	.align	2
.L915:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 304(%r12)
.L914:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L913
	movq	360(%rbx), %rsi
	jmp	.L912
	.align	2
.L913:
.L947:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L948
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L912:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L911
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L910
	.align	2
.L911:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L910:
	movq	-8(%rbx), %rax
	cmpq	$50175, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L909
	movq	384(%rbx), %rsi
	jmp	.L908
	.align	2
.L909:
.L950:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L951
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	384(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L908:
	movq	-8(%r12), %rax
	cmpq	$4095, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L907
	movq	%r12, %rdi
	addq	$24, %rdi
	call	_caml_modify
	jmp	.L906
	.align	2
.L907:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 24(%r12)
.L906:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L905
	movq	408(%rbx), %rsi
	jmp	.L904
	.align	2
.L905:
.L953:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L954
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L904:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L903
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L902
	.align	2
.L903:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L902:
	movq	-8(%rbx), %rax
	cmpq	$46079, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L901
	movq	352(%rbx), %rsi
	jmp	.L900
	.align	2
.L901:
.L956:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L957
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	352(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L900:
	movq	-8(%r12), %rax
	cmpq	$19455, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L899
	movq	%r12, %rdi
	addq	$144, %rdi
	call	_caml_modify
	jmp	.L898
	.align	2
.L899:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 144(%r12)
.L898:
	movq	-8(%rbx), %rax
	cmpq	$43007, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L897
	movq	328(%rbx), %rsi
	jmp	.L896
	.align	2
.L897:
.L959:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L960
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	328(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L896:
	movq	-8(%r12), %rax
	cmpq	$22527, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L895
	movq	%r12, %rdi
	addq	$168, %rdi
	call	_caml_modify
	jmp	.L894
	.align	2
.L895:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 168(%r12)
.L894:
	movq	-8(%rbx), %rax
	cmpq	$39935, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L893
	movq	304(%rbx), %rsi
	jmp	.L892
	.align	2
.L893:
.L962:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L963
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	304(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L892:
	movq	-8(%r12), %rax
	cmpq	$25599, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L891
	movq	%r12, %rdi
	addq	$192, %rdi
	call	_caml_modify
	jmp	.L890
	.align	2
.L891:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 192(%r12)
.L890:
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L889
	movq	(%rbx), %rsi
	jmp	.L888
	.align	2
.L889:
.L965:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L966
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L888:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L887
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L886
	.align	2
.L887:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L886:
	movq	-8(%rbx), %rax
	cmpq	$4095, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L885
	movq	24(%rbx), %rsi
	jmp	.L884
	.align	2
.L885:
.L968:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L969
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	24(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L884:
	movq	-8(%r12), %rax
	cmpq	$50175, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L883
	movq	%r12, %rdi
	addq	$384, %rdi
	call	_caml_modify
	jmp	.L882
	.align	2
.L883:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 384(%r12)
.L882:
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L881
	movq	48(%rbx), %rsi
	jmp	.L880
	.align	2
.L881:
.L971:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L972
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L880:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L934
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L879
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L878
	.align	2
.L879:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L878:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L972:	call	_caml_call_gc
.L973:	jmp	.L971
.L969:	call	_caml_call_gc
.L970:	jmp	.L968
.L966:	call	_caml_call_gc
.L967:	jmp	.L965
.L963:	call	_caml_call_gc
.L964:	jmp	.L962
.L960:	call	_caml_call_gc
.L961:	jmp	.L959
.L957:	call	_caml_call_gc
.L958:	jmp	.L956
.L954:	call	_caml_call_gc
.L955:	jmp	.L953
.L951:	call	_caml_call_gc
.L952:	jmp	.L950
.L948:	call	_caml_call_gc
.L949:	jmp	.L947
.L945:	call	_caml_call_gc
.L946:	jmp	.L944
.L942:	call	_caml_call_gc
.L943:	jmp	.L941
.L939:	call	_caml_call_gc
.L940:	jmp	.L938
.L936:	call	_caml_call_gc
.L937:	jmp	.L935
.L934:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__r_1059
_camlTurns__r_1059:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1028:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1029:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1022
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1023:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L1030:
	movq	%rax, %rbx
	addq	$54, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1027
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1026
	.align	2
.L1027:
.L1032:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1033
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1026:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$54, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1031
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1025
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1024
	.align	2
.L1025:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1024:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1023
.L1022:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1021
	movq	16(%rbx), %rsi
	jmp	.L1020
	.align	2
.L1021:
.L1035:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1036
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1020:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1019
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L1018
	.align	2
.L1019:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L1018:
	movq	-8(%rbx), %rax
	cmpq	$6143, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1017
	movq	40(%rbx), %rsi
	jmp	.L1016
	.align	2
.L1017:
.L1038:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1039
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	40(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1016:
	movq	-8(%r12), %rax
	cmpq	$40959, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1015
	movq	%r12, %rdi
	addq	$312, %rdi
	call	_caml_modify
	jmp	.L1014
	.align	2
.L1015:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 312(%r12)
.L1014:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1013
	movq	64(%rbx), %rsi
	jmp	.L1012
	.align	2
.L1013:
.L1041:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1042
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1012:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1011
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L1010
	.align	2
.L1011:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L1010:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1009
	movq	160(%rbx), %rsi
	jmp	.L1008
	.align	2
.L1009:
.L1044:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1045
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1008:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1007
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1006
	.align	2
.L1007:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1006:
	movq	-8(%rbx), %rax
	cmpq	$24575, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1005
	movq	184(%rbx), %rsi
	jmp	.L1004
	.align	2
.L1005:
.L1047:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1048
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	184(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1004:
	movq	-8(%r12), %rax
	cmpq	$6143, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1003
	movq	%r12, %rdi
	addq	$40, %rdi
	call	_caml_modify
	jmp	.L1002
	.align	2
.L1003:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 40(%r12)
.L1002:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1001
	movq	208(%rbx), %rsi
	jmp	.L1000
	.align	2
.L1001:
.L1050:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1051
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1000:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L999
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L998
	.align	2
.L999:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L998:
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L997
	movq	376(%rbx), %rsi
	jmp	.L996
	.align	2
.L997:
.L1053:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1054
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L996:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L995
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L994
	.align	2
.L995:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L994:
	movq	-8(%rbx), %rax
	cmpq	$52223, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L993
	movq	400(%rbx), %rsi
	jmp	.L992
	.align	2
.L993:
.L1056:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1057
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	400(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L992:
	movq	-8(%r12), %rax
	cmpq	$24575, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L991
	movq	%r12, %rdi
	addq	$184, %rdi
	call	_caml_modify
	jmp	.L990
	.align	2
.L991:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 184(%r12)
.L990:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L989
	movq	424(%rbx), %rsi
	jmp	.L988
	.align	2
.L989:
.L1059:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1060
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L988:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L987
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L986
	.align	2
.L987:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L986:
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L985
	movq	336(%rbx), %rsi
	jmp	.L984
	.align	2
.L985:
.L1062:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1063
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L984:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L983
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L982
	.align	2
.L983:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L982:
	movq	-8(%rbx), %rax
	cmpq	$40959, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L981
	movq	312(%rbx), %rsi
	jmp	.L980
	.align	2
.L981:
.L1065:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1066
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	312(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L980:
	movq	-8(%r12), %rax
	cmpq	$52223, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L979
	movq	%r12, %rdi
	addq	$400, %rdi
	call	_caml_modify
	jmp	.L978
	.align	2
.L979:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 400(%r12)
.L978:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L977
	movq	288(%rbx), %rsi
	jmp	.L976
	.align	2
.L977:
.L1068:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1069
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L976:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1031
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L975
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L974
	.align	2
.L975:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L974:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1069:	call	_caml_call_gc
.L1070:	jmp	.L1068
.L1066:	call	_caml_call_gc
.L1067:	jmp	.L1065
.L1063:	call	_caml_call_gc
.L1064:	jmp	.L1062
.L1060:	call	_caml_call_gc
.L1061:	jmp	.L1059
.L1057:	call	_caml_call_gc
.L1058:	jmp	.L1056
.L1054:	call	_caml_call_gc
.L1055:	jmp	.L1053
.L1051:	call	_caml_call_gc
.L1052:	jmp	.L1050
.L1048:	call	_caml_call_gc
.L1049:	jmp	.L1047
.L1045:	call	_caml_call_gc
.L1046:	jmp	.L1044
.L1042:	call	_caml_call_gc
.L1043:	jmp	.L1041
.L1039:	call	_caml_call_gc
.L1040:	jmp	.L1038
.L1036:	call	_caml_call_gc
.L1037:	jmp	.L1035
.L1033:	call	_caml_call_gc
.L1034:	jmp	.L1032
.L1031:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__r$27_1064
_camlTurns__r$27_1064:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1125:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1126:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1119
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1120:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L1127:
	movq	%rax, %rbx
	addq	$54, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1124
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1123
	.align	2
.L1124:
.L1129:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1130
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1123:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$54, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1128
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1122
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1121
	.align	2
.L1122:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1121:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1120
.L1119:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1118
	movq	336(%rbx), %rsi
	jmp	.L1117
	.align	2
.L1118:
.L1132:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1133
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1117:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1116
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1115
	.align	2
.L1116:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1115:
	movq	-8(%rbx), %rax
	cmpq	$40959, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1114
	movq	312(%rbx), %rsi
	jmp	.L1113
	.align	2
.L1114:
.L1135:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1136
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	312(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1113:
	movq	-8(%r12), %rax
	cmpq	$6143, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1112
	movq	%r12, %rdi
	addq	$40, %rdi
	call	_caml_modify
	jmp	.L1111
	.align	2
.L1112:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 40(%r12)
.L1111:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1110
	movq	288(%rbx), %rsi
	jmp	.L1109
	.align	2
.L1110:
.L1138:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1139
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1109:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1108
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L1107
	.align	2
.L1108:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L1107:
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1106
	movq	16(%rbx), %rsi
	jmp	.L1105
	.align	2
.L1106:
.L1141:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1142
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1105:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1104
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L1103
	.align	2
.L1104:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L1103:
	movq	-8(%rbx), %rax
	cmpq	$6143, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1102
	movq	40(%rbx), %rsi
	jmp	.L1101
	.align	2
.L1102:
.L1144:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1145
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	40(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1101:
	movq	-8(%r12), %rax
	cmpq	$24575, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1100
	movq	%r12, %rdi
	addq	$184, %rdi
	call	_caml_modify
	jmp	.L1099
	.align	2
.L1100:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 184(%r12)
.L1099:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1098
	movq	64(%rbx), %rsi
	jmp	.L1097
	.align	2
.L1098:
.L1147:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1148
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1097:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1096
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L1095
	.align	2
.L1096:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L1095:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1094
	movq	160(%rbx), %rsi
	jmp	.L1093
	.align	2
.L1094:
.L1150:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1151
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1093:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1092
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L1091
	.align	2
.L1092:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L1091:
	movq	-8(%rbx), %rax
	cmpq	$24575, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1090
	movq	184(%rbx), %rsi
	jmp	.L1089
	.align	2
.L1090:
.L1153:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1154
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	184(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1089:
	movq	-8(%r12), %rax
	cmpq	$52223, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1088
	movq	%r12, %rdi
	addq	$400, %rdi
	call	_caml_modify
	jmp	.L1087
	.align	2
.L1088:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 400(%r12)
.L1087:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1086
	movq	208(%rbx), %rsi
	jmp	.L1085
	.align	2
.L1086:
.L1156:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1157
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1085:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1084
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L1083
	.align	2
.L1084:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L1083:
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1082
	movq	376(%rbx), %rsi
	jmp	.L1081
	.align	2
.L1082:
.L1159:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1160
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1081:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1080
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L1079
	.align	2
.L1080:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L1079:
	movq	-8(%rbx), %rax
	cmpq	$52223, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1078
	movq	400(%rbx), %rsi
	jmp	.L1077
	.align	2
.L1078:
.L1162:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1163
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	400(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1077:
	movq	-8(%r12), %rax
	cmpq	$40959, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1076
	movq	%r12, %rdi
	addq	$312, %rdi
	call	_caml_modify
	jmp	.L1075
	.align	2
.L1076:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 312(%r12)
.L1075:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1074
	movq	424(%rbx), %rsi
	jmp	.L1073
	.align	2
.L1074:
.L1165:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1166
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1073:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L1128
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1072
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L1071
	.align	2
.L1072:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L1071:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1166:	call	_caml_call_gc
.L1167:	jmp	.L1165
.L1163:	call	_caml_call_gc
.L1164:	jmp	.L1162
.L1160:	call	_caml_call_gc
.L1161:	jmp	.L1159
.L1157:	call	_caml_call_gc
.L1158:	jmp	.L1156
.L1154:	call	_caml_call_gc
.L1155:	jmp	.L1153
.L1151:	call	_caml_call_gc
.L1152:	jmp	.L1150
.L1148:	call	_caml_call_gc
.L1149:	jmp	.L1147
.L1145:	call	_caml_call_gc
.L1146:	jmp	.L1144
.L1142:	call	_caml_call_gc
.L1143:	jmp	.L1141
.L1139:	call	_caml_call_gc
.L1140:	jmp	.L1138
.L1136:	call	_caml_call_gc
.L1137:	jmp	.L1135
.L1133:	call	_caml_call_gc
.L1134:	jmp	.L1132
.L1130:	call	_caml_call_gc
.L1131:	jmp	.L1129
.L1128:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__r2_1069
_camlTurns__r2_1069:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1222:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1223:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1216
.L1217:
	movq	$17, %rdi
	subq	%rbx, %rdi
	addq	$55, %rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1221
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L1220
	.align	2
.L1221:
.L1225:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1226
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1220:
	movq	%rbx, %rax
	addq	$54, %rax
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1224
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1219
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1218
	.align	2
.L1219:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1218:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L1217
.L1216:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1215
	movq	376(%rbx), %rsi
	jmp	.L1214
	.align	2
.L1215:
.L1228:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1229
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1214:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1213
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1212
	.align	2
.L1213:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1212:
	movq	-8(%rbx), %rax
	cmpq	$52223, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1211
	movq	400(%rbx), %rsi
	jmp	.L1210
	.align	2
.L1211:
.L1231:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1232
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	400(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1210:
	movq	-8(%r12), %rax
	cmpq	$6143, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1209
	movq	%r12, %rdi
	addq	$40, %rdi
	call	_caml_modify
	jmp	.L1208
	.align	2
.L1209:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 40(%r12)
.L1208:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1207
	movq	424(%rbx), %rsi
	jmp	.L1206
	.align	2
.L1207:
.L1234:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1235
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1206:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1205
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L1204
	.align	2
.L1205:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L1204:
	movq	-8(%rbx), %rax
	cmpq	$44031, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1203
	movq	336(%rbx), %rsi
	jmp	.L1202
	.align	2
.L1203:
.L1237:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1238
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	336(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1202:
	movq	-8(%r12), %rax
	cmpq	$21503, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1201
	movq	%r12, %rdi
	addq	$160, %rdi
	call	_caml_modify
	jmp	.L1200
	.align	2
.L1201:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 160(%r12)
.L1200:
	movq	-8(%rbx), %rax
	cmpq	$40959, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1199
	movq	312(%rbx), %rsi
	jmp	.L1198
	.align	2
.L1199:
.L1240:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1241
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	312(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1198:
	movq	-8(%r12), %rax
	cmpq	$24575, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1197
	movq	%r12, %rdi
	addq	$184, %rdi
	call	_caml_modify
	jmp	.L1196
	.align	2
.L1197:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 184(%r12)
.L1196:
	movq	-8(%rbx), %rax
	cmpq	$37887, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1195
	movq	288(%rbx), %rsi
	jmp	.L1194
	.align	2
.L1195:
.L1243:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1244
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	288(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1194:
	movq	-8(%r12), %rax
	cmpq	$27647, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1193
	movq	%r12, %rdi
	addq	$208, %rdi
	call	_caml_modify
	jmp	.L1192
	.align	2
.L1193:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 208(%r12)
.L1192:
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1191
	movq	16(%rbx), %rsi
	jmp	.L1190
	.align	2
.L1191:
.L1246:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1247
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1190:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1189
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L1188
	.align	2
.L1189:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L1188:
	movq	-8(%rbx), %rax
	cmpq	$6143, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1187
	movq	40(%rbx), %rsi
	jmp	.L1186
	.align	2
.L1187:
.L1249:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1250
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	40(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1186:
	movq	-8(%r12), %rax
	cmpq	$52223, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1185
	movq	%r12, %rdi
	addq	$400, %rdi
	call	_caml_modify
	jmp	.L1184
	.align	2
.L1185:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 400(%r12)
.L1184:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1183
	movq	64(%rbx), %rsi
	jmp	.L1182
	.align	2
.L1183:
.L1252:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1253
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1182:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1181
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L1180
	.align	2
.L1181:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L1180:
	movq	-8(%rbx), %rax
	cmpq	$21503, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1179
	movq	160(%rbx), %rsi
	jmp	.L1178
	.align	2
.L1179:
.L1255:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1256
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	160(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1178:
	movq	-8(%r12), %rax
	cmpq	$44031, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1177
	movq	%r12, %rdi
	addq	$336, %rdi
	call	_caml_modify
	jmp	.L1176
	.align	2
.L1177:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 336(%r12)
.L1176:
	movq	-8(%rbx), %rax
	cmpq	$24575, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1175
	movq	184(%rbx), %rsi
	jmp	.L1174
	.align	2
.L1175:
.L1258:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1259
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	184(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1174:
	movq	-8(%r12), %rax
	cmpq	$40959, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1173
	movq	%r12, %rdi
	addq	$312, %rdi
	call	_caml_modify
	jmp	.L1172
	.align	2
.L1173:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 312(%r12)
.L1172:
	movq	-8(%rbx), %rax
	cmpq	$27647, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1171
	movq	208(%rbx), %rsi
	jmp	.L1170
	.align	2
.L1171:
.L1261:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1262
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	208(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1170:
	movq	-8(%r12), %rax
	cmpq	$37887, %rax
	jbe	.L1224
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1169
	movq	%r12, %rdi
	addq	$288, %rdi
	call	_caml_modify
	jmp	.L1168
	.align	2
.L1169:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 288(%r12)
.L1168:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1262:	call	_caml_call_gc
.L1263:	jmp	.L1261
.L1259:	call	_caml_call_gc
.L1260:	jmp	.L1258
.L1256:	call	_caml_call_gc
.L1257:	jmp	.L1255
.L1253:	call	_caml_call_gc
.L1254:	jmp	.L1252
.L1250:	call	_caml_call_gc
.L1251:	jmp	.L1249
.L1247:	call	_caml_call_gc
.L1248:	jmp	.L1246
.L1244:	call	_caml_call_gc
.L1245:	jmp	.L1243
.L1241:	call	_caml_call_gc
.L1242:	jmp	.L1240
.L1238:	call	_caml_call_gc
.L1239:	jmp	.L1237
.L1235:	call	_caml_call_gc
.L1236:	jmp	.L1234
.L1232:	call	_caml_call_gc
.L1233:	jmp	.L1231
.L1229:	call	_caml_call_gc
.L1230:	jmp	.L1228
.L1226:	call	_caml_call_gc
.L1227:	jmp	.L1225
.L1224:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__f_1074
_camlTurns__f_1074:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1318:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1319:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1312
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1313:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L1320:
	movq	%rax, %rbx
	addq	$36, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1317
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1316
	.align	2
.L1317:
.L1322:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1323
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1316:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$36, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1321
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1315
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1314
	.align	2
.L1315:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1314:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1313
.L1312:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1311
	movq	136(%rbx), %rsi
	jmp	.L1310
	.align	2
.L1311:
.L1325:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1326
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1310:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1309
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L1308
	.align	2
.L1309:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L1308:
	movq	-8(%rbx), %rax
	cmpq	$15359, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1307
	movq	112(%rbx), %rsi
	jmp	.L1306
	.align	2
.L1307:
.L1328:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1329
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	112(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1306:
	movq	-8(%r12), %rax
	cmpq	$8191, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1305
	movq	%r12, %rdi
	addq	$56, %rdi
	call	_caml_modify
	jmp	.L1304
	.align	2
.L1305:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 56(%r12)
.L1304:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1303
	movq	88(%rbx), %rsi
	jmp	.L1302
	.align	2
.L1303:
.L1331:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1332
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1302:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1301
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L1300
	.align	2
.L1301:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L1300:
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1299
	movq	376(%rbx), %rsi
	jmp	.L1298
	.align	2
.L1299:
.L1334:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1335
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1298:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1297
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L1296
	.align	2
.L1297:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L1296:
	movq	-8(%rbx), %rax
	cmpq	$48127, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1295
	movq	368(%rbx), %rsi
	jmp	.L1294
	.align	2
.L1295:
.L1337:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1338
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	368(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1294:
	movq	-8(%r12), %rax
	cmpq	$15359, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1293
	movq	%r12, %rdi
	addq	$112, %rdi
	call	_caml_modify
	jmp	.L1292
	.align	2
.L1293:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 112(%r12)
.L1292:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1291
	movq	360(%rbx), %rsi
	jmp	.L1290
	.align	2
.L1291:
.L1340:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1341
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1290:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1289
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L1288
	.align	2
.L1289:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L1288:
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1287
	movq	216(%rbx), %rsi
	jmp	.L1286
	.align	2
.L1287:
.L1343:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1344
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1286:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1285
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L1284
	.align	2
.L1285:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L1284:
	movq	-8(%rbx), %rax
	cmpq	$31743, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1283
	movq	240(%rbx), %rsi
	jmp	.L1282
	.align	2
.L1283:
.L1346:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1347
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	240(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1282:
	movq	-8(%r12), %rax
	cmpq	$48127, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1281
	movq	%r12, %rdi
	addq	$368, %rdi
	call	_caml_modify
	jmp	.L1280
	.align	2
.L1281:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 368(%r12)
.L1280:
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1279
	movq	264(%rbx), %rsi
	jmp	.L1278
	.align	2
.L1279:
.L1349:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1350
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1278:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1277
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L1276
	.align	2
.L1277:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L1276:
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1275
	movq	48(%rbx), %rsi
	jmp	.L1274
	.align	2
.L1275:
.L1352:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1353
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1274:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1273
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L1272
	.align	2
.L1273:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L1272:
	movq	-8(%rbx), %rax
	cmpq	$8191, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1271
	movq	56(%rbx), %rsi
	jmp	.L1270
	.align	2
.L1271:
.L1355:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1356
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	56(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1270:
	movq	-8(%r12), %rax
	cmpq	$31743, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1269
	movq	%r12, %rdi
	addq	$240, %rdi
	call	_caml_modify
	jmp	.L1268
	.align	2
.L1269:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 240(%r12)
.L1268:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1267
	movq	64(%rbx), %rsi
	jmp	.L1266
	.align	2
.L1267:
.L1358:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1359
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1266:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L1321
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1265
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L1264
	.align	2
.L1265:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L1264:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1359:	call	_caml_call_gc
.L1360:	jmp	.L1358
.L1356:	call	_caml_call_gc
.L1357:	jmp	.L1355
.L1353:	call	_caml_call_gc
.L1354:	jmp	.L1352
.L1350:	call	_caml_call_gc
.L1351:	jmp	.L1349
.L1347:	call	_caml_call_gc
.L1348:	jmp	.L1346
.L1344:	call	_caml_call_gc
.L1345:	jmp	.L1343
.L1341:	call	_caml_call_gc
.L1342:	jmp	.L1340
.L1338:	call	_caml_call_gc
.L1339:	jmp	.L1337
.L1335:	call	_caml_call_gc
.L1336:	jmp	.L1334
.L1332:	call	_caml_call_gc
.L1333:	jmp	.L1331
.L1329:	call	_caml_call_gc
.L1330:	jmp	.L1328
.L1326:	call	_caml_call_gc
.L1327:	jmp	.L1325
.L1323:	call	_caml_call_gc
.L1324:	jmp	.L1322
.L1321:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__f$27_1079
_camlTurns__f$27_1079:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1415:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1416:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1409
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1410:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L1417:
	movq	%rax, %rbx
	addq	$36, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1414
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1413
	.align	2
.L1414:
.L1419:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1420
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1413:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$36, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1418
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1412
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1411
	.align	2
.L1412:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1411:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1410
.L1409:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1408
	movq	48(%rbx), %rsi
	jmp	.L1407
	.align	2
.L1408:
.L1422:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1423
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1407:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1406
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L1405
	.align	2
.L1406:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L1405:
	movq	-8(%rbx), %rax
	cmpq	$8191, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1404
	movq	56(%rbx), %rsi
	jmp	.L1403
	.align	2
.L1404:
.L1425:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1426
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	56(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1403:
	movq	-8(%r12), %rax
	cmpq	$15359, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1402
	movq	%r12, %rdi
	addq	$112, %rdi
	call	_caml_modify
	jmp	.L1401
	.align	2
.L1402:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 112(%r12)
.L1401:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1400
	movq	64(%rbx), %rsi
	jmp	.L1399
	.align	2
.L1400:
.L1428:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1429
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1399:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1398
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L1397
	.align	2
.L1398:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L1397:
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1396
	movq	136(%rbx), %rsi
	jmp	.L1395
	.align	2
.L1396:
.L1431:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1432
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1395:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1394
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L1393
	.align	2
.L1394:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L1393:
	movq	-8(%rbx), %rax
	cmpq	$15359, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1392
	movq	112(%rbx), %rsi
	jmp	.L1391
	.align	2
.L1392:
.L1434:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1435
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	112(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1391:
	movq	-8(%r12), %rax
	cmpq	$48127, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1390
	movq	%r12, %rdi
	addq	$368, %rdi
	call	_caml_modify
	jmp	.L1389
	.align	2
.L1390:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 368(%r12)
.L1389:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1388
	movq	88(%rbx), %rsi
	jmp	.L1387
	.align	2
.L1388:
.L1437:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1438
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1387:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1386
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L1385
	.align	2
.L1386:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L1385:
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1384
	movq	376(%rbx), %rsi
	jmp	.L1383
	.align	2
.L1384:
.L1440:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1441
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1383:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1382
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L1381
	.align	2
.L1382:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L1381:
	movq	-8(%rbx), %rax
	cmpq	$48127, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1380
	movq	368(%rbx), %rsi
	jmp	.L1379
	.align	2
.L1380:
.L1443:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1444
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	368(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1379:
	movq	-8(%r12), %rax
	cmpq	$31743, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1378
	movq	%r12, %rdi
	addq	$240, %rdi
	call	_caml_modify
	jmp	.L1377
	.align	2
.L1378:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 240(%r12)
.L1377:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1376
	movq	360(%rbx), %rsi
	jmp	.L1375
	.align	2
.L1376:
.L1446:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1447
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1375:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1374
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L1373
	.align	2
.L1374:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L1373:
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1372
	movq	216(%rbx), %rsi
	jmp	.L1371
	.align	2
.L1372:
.L1449:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1450
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1371:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1370
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L1369
	.align	2
.L1370:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L1369:
	movq	-8(%rbx), %rax
	cmpq	$31743, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1368
	movq	240(%rbx), %rsi
	jmp	.L1367
	.align	2
.L1368:
.L1452:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1453
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	240(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1367:
	movq	-8(%r12), %rax
	cmpq	$8191, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1366
	movq	%r12, %rdi
	addq	$56, %rdi
	call	_caml_modify
	jmp	.L1365
	.align	2
.L1366:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 56(%r12)
.L1365:
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1364
	movq	264(%rbx), %rsi
	jmp	.L1363
	.align	2
.L1364:
.L1455:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1456
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1363:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1418
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1362
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L1361
	.align	2
.L1362:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L1361:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1456:	call	_caml_call_gc
.L1457:	jmp	.L1455
.L1453:	call	_caml_call_gc
.L1454:	jmp	.L1452
.L1450:	call	_caml_call_gc
.L1451:	jmp	.L1449
.L1447:	call	_caml_call_gc
.L1448:	jmp	.L1446
.L1444:	call	_caml_call_gc
.L1445:	jmp	.L1443
.L1441:	call	_caml_call_gc
.L1442:	jmp	.L1440
.L1438:	call	_caml_call_gc
.L1439:	jmp	.L1437
.L1435:	call	_caml_call_gc
.L1436:	jmp	.L1434
.L1432:	call	_caml_call_gc
.L1433:	jmp	.L1431
.L1429:	call	_caml_call_gc
.L1430:	jmp	.L1428
.L1426:	call	_caml_call_gc
.L1427:	jmp	.L1425
.L1423:	call	_caml_call_gc
.L1424:	jmp	.L1422
.L1420:	call	_caml_call_gc
.L1421:	jmp	.L1419
.L1418:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__f2_1084
_camlTurns__f2_1084:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1512:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1513:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1506
.L1507:
	movq	$17, %rdi
	subq	%rbx, %rdi
	addq	$37, %rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1511
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L1510
	.align	2
.L1511:
.L1515:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1516
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1510:
	movq	%rbx, %rax
	addq	$36, %rax
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1514
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1509
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1508
	.align	2
.L1509:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1508:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L1507
.L1506:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$28671, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1505
	movq	216(%rbx), %rsi
	jmp	.L1504
	.align	2
.L1505:
.L1518:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1519
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	216(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1504:
	movq	-8(%r12), %rax
	cmpq	$18431, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1503
	movq	%r12, %rdi
	addq	$136, %rdi
	call	_caml_modify
	jmp	.L1502
	.align	2
.L1503:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 136(%r12)
.L1502:
	movq	-8(%rbx), %rax
	cmpq	$31743, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1501
	movq	240(%rbx), %rsi
	jmp	.L1500
	.align	2
.L1501:
.L1521:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1522
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	240(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1500:
	movq	-8(%r12), %rax
	cmpq	$15359, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1499
	movq	%r12, %rdi
	addq	$112, %rdi
	call	_caml_modify
	jmp	.L1498
	.align	2
.L1499:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 112(%r12)
.L1498:
	movq	-8(%rbx), %rax
	cmpq	$34815, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1497
	movq	264(%rbx), %rsi
	jmp	.L1496
	.align	2
.L1497:
.L1524:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1525
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	264(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1496:
	movq	-8(%r12), %rax
	cmpq	$12287, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1495
	movq	%r12, %rdi
	addq	$88, %rdi
	call	_caml_modify
	jmp	.L1494
	.align	2
.L1495:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 88(%r12)
.L1494:
	movq	-8(%rbx), %rax
	cmpq	$7167, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1493
	movq	48(%rbx), %rsi
	jmp	.L1492
	.align	2
.L1493:
.L1527:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1528
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	48(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1492:
	movq	-8(%r12), %rax
	cmpq	$49151, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1491
	movq	%r12, %rdi
	addq	$376, %rdi
	call	_caml_modify
	jmp	.L1490
	.align	2
.L1491:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 376(%r12)
.L1490:
	movq	-8(%rbx), %rax
	cmpq	$8191, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1489
	movq	56(%rbx), %rsi
	jmp	.L1488
	.align	2
.L1489:
.L1530:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1531
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	56(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1488:
	movq	-8(%r12), %rax
	cmpq	$48127, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1487
	movq	%r12, %rdi
	addq	$368, %rdi
	call	_caml_modify
	jmp	.L1486
	.align	2
.L1487:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 368(%r12)
.L1486:
	movq	-8(%rbx), %rax
	cmpq	$9215, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1485
	movq	64(%rbx), %rsi
	jmp	.L1484
	.align	2
.L1485:
.L1533:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1534
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	64(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1484:
	movq	-8(%r12), %rax
	cmpq	$47103, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1483
	movq	%r12, %rdi
	addq	$360, %rdi
	call	_caml_modify
	jmp	.L1482
	.align	2
.L1483:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 360(%r12)
.L1482:
	movq	-8(%rbx), %rax
	cmpq	$18431, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1481
	movq	136(%rbx), %rsi
	jmp	.L1480
	.align	2
.L1481:
.L1536:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1537
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	136(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1480:
	movq	-8(%r12), %rax
	cmpq	$28671, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1479
	movq	%r12, %rdi
	addq	$216, %rdi
	call	_caml_modify
	jmp	.L1478
	.align	2
.L1479:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 216(%r12)
.L1478:
	movq	-8(%rbx), %rax
	cmpq	$15359, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1477
	movq	112(%rbx), %rsi
	jmp	.L1476
	.align	2
.L1477:
.L1539:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1540
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	112(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1476:
	movq	-8(%r12), %rax
	cmpq	$31743, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1475
	movq	%r12, %rdi
	addq	$240, %rdi
	call	_caml_modify
	jmp	.L1474
	.align	2
.L1475:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 240(%r12)
.L1474:
	movq	-8(%rbx), %rax
	cmpq	$12287, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1473
	movq	88(%rbx), %rsi
	jmp	.L1472
	.align	2
.L1473:
.L1542:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1543
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	88(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1472:
	movq	-8(%r12), %rax
	cmpq	$34815, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1471
	movq	%r12, %rdi
	addq	$264, %rdi
	call	_caml_modify
	jmp	.L1470
	.align	2
.L1471:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 264(%r12)
.L1470:
	movq	-8(%rbx), %rax
	cmpq	$49151, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1469
	movq	376(%rbx), %rsi
	jmp	.L1468
	.align	2
.L1469:
.L1545:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1546
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	376(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1468:
	movq	-8(%r12), %rax
	cmpq	$7167, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1467
	movq	%r12, %rdi
	addq	$48, %rdi
	call	_caml_modify
	jmp	.L1466
	.align	2
.L1467:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 48(%r12)
.L1466:
	movq	-8(%rbx), %rax
	cmpq	$48127, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1465
	movq	368(%rbx), %rsi
	jmp	.L1464
	.align	2
.L1465:
.L1548:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1549
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	368(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1464:
	movq	-8(%r12), %rax
	cmpq	$8191, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1463
	movq	%r12, %rdi
	addq	$56, %rdi
	call	_caml_modify
	jmp	.L1462
	.align	2
.L1463:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 56(%r12)
.L1462:
	movq	-8(%rbx), %rax
	cmpq	$47103, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1461
	movq	360(%rbx), %rsi
	jmp	.L1460
	.align	2
.L1461:
.L1551:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1552
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	360(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1460:
	movq	-8(%r12), %rax
	cmpq	$9215, %rax
	jbe	.L1514
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1459
	movq	%r12, %rdi
	addq	$64, %rdi
	call	_caml_modify
	jmp	.L1458
	.align	2
.L1459:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 64(%r12)
.L1458:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1552:	call	_caml_call_gc
.L1553:	jmp	.L1551
.L1549:	call	_caml_call_gc
.L1550:	jmp	.L1548
.L1546:	call	_caml_call_gc
.L1547:	jmp	.L1545
.L1543:	call	_caml_call_gc
.L1544:	jmp	.L1542
.L1540:	call	_caml_call_gc
.L1541:	jmp	.L1539
.L1537:	call	_caml_call_gc
.L1538:	jmp	.L1536
.L1534:	call	_caml_call_gc
.L1535:	jmp	.L1533
.L1531:	call	_caml_call_gc
.L1532:	jmp	.L1530
.L1528:	call	_caml_call_gc
.L1529:	jmp	.L1527
.L1525:	call	_caml_call_gc
.L1526:	jmp	.L1524
.L1522:	call	_caml_call_gc
.L1523:	jmp	.L1521
.L1519:	call	_caml_call_gc
.L1520:	jmp	.L1518
.L1516:	call	_caml_call_gc
.L1517:	jmp	.L1515
.L1514:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__b_1089
_camlTurns__b_1089:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1608:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1609:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1602
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1603:
	movq	%rbx, %rax
	call	_camlTurns__clockwise_1008
.L1610:
	movq	%rax, %rbx
	addq	$72, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1607
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1606
	.align	2
.L1607:
.L1612:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1613
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1606:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$72, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1611
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1605
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1604
	.align	2
.L1605:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1604:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1603
.L1602:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1601
	movq	232(%rbx), %rsi
	jmp	.L1600
	.align	2
.L1601:
.L1615:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1616
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1600:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1599
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L1598
	.align	2
.L1599:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L1598:
	movq	-8(%rbx), %rax
	cmpq	$33791, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1597
	movq	256(%rbx), %rsi
	jmp	.L1596
	.align	2
.L1597:
.L1618:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1619
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	256(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1596:
	movq	-8(%r12), %rax
	cmpq	$2047, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1595
	movq	%r12, %rdi
	addq	$8, %rdi
	call	_caml_modify
	jmp	.L1594
	.align	2
.L1595:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 8(%r12)
.L1594:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1593
	movq	280(%rbx), %rsi
	jmp	.L1592
	.align	2
.L1593:
.L1621:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1622
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1592:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1591
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1590
	.align	2
.L1591:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1590:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1589
	movq	424(%rbx), %rsi
	jmp	.L1588
	.align	2
.L1589:
.L1624:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1625
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1588:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1587
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L1586
	.align	2
.L1587:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L1586:
	movq	-8(%rbx), %rax
	cmpq	$54271, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1585
	movq	416(%rbx), %rsi
	jmp	.L1584
	.align	2
.L1585:
.L1627:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1628
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	416(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1584:
	movq	-8(%r12), %rax
	cmpq	$33791, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1583
	movq	%r12, %rdi
	addq	$256, %rdi
	call	_caml_modify
	jmp	.L1582
	.align	2
.L1583:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 256(%r12)
.L1582:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1581
	movq	408(%rbx), %rsi
	jmp	.L1580
	.align	2
.L1581:
.L1630:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1631
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1580:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1579
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L1578
	.align	2
.L1579:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L1578:
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1577
	movq	120(%rbx), %rsi
	jmp	.L1576
	.align	2
.L1577:
.L1633:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1634
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1576:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1575
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L1574
	.align	2
.L1575:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L1574:
	movq	-8(%rbx), %rax
	cmpq	$13311, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1573
	movq	96(%rbx), %rsi
	jmp	.L1572
	.align	2
.L1573:
.L1636:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1637
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	96(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1572:
	movq	-8(%r12), %rax
	cmpq	$54271, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1571
	movq	%r12, %rdi
	addq	$416, %rdi
	call	_caml_modify
	jmp	.L1570
	.align	2
.L1571:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 416(%r12)
.L1570:
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1569
	movq	72(%rbx), %rsi
	jmp	.L1568
	.align	2
.L1569:
.L1639:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1640
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1568:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1567
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L1566
	.align	2
.L1567:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L1566:
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1565
	movq	(%rbx), %rsi
	jmp	.L1564
	.align	2
.L1565:
.L1642:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1643
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1564:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1563
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L1562
	.align	2
.L1563:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L1562:
	movq	-8(%rbx), %rax
	cmpq	$2047, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1561
	movq	8(%rbx), %rsi
	jmp	.L1560
	.align	2
.L1561:
.L1645:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1646
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	8(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1560:
	movq	-8(%r12), %rax
	cmpq	$13311, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1559
	movq	%r12, %rdi
	addq	$96, %rdi
	call	_caml_modify
	jmp	.L1558
	.align	2
.L1559:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 96(%r12)
.L1558:
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1557
	movq	16(%rbx), %rsi
	jmp	.L1556
	.align	2
.L1557:
.L1648:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1649
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1556:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L1611
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1555
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L1554
	.align	2
.L1555:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L1554:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1649:	call	_caml_call_gc
.L1650:	jmp	.L1648
.L1646:	call	_caml_call_gc
.L1647:	jmp	.L1645
.L1643:	call	_caml_call_gc
.L1644:	jmp	.L1642
.L1640:	call	_caml_call_gc
.L1641:	jmp	.L1639
.L1637:	call	_caml_call_gc
.L1638:	jmp	.L1636
.L1634:	call	_caml_call_gc
.L1635:	jmp	.L1633
.L1631:	call	_caml_call_gc
.L1632:	jmp	.L1630
.L1628:	call	_caml_call_gc
.L1629:	jmp	.L1627
.L1625:	call	_caml_call_gc
.L1626:	jmp	.L1624
.L1622:	call	_caml_call_gc
.L1623:	jmp	.L1621
.L1619:	call	_caml_call_gc
.L1620:	jmp	.L1618
.L1616:	call	_caml_call_gc
.L1617:	jmp	.L1615
.L1613:	call	_caml_call_gc
.L1614:	jmp	.L1612
.L1611:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__b$27_1094
_camlTurns__b$27_1094:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_adjust_cfa_offset	24
.L1705:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1706:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1699
	movq	%rbx, 8(%rsp)
	movq	%r12, 16(%rsp)
.L1700:
	movq	%rbx, %rax
	call	_camlTurns__counterClockwise_1010
.L1707:
	movq	%rax, %rbx
	addq	$72, %rbx
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rdi
	shrq	$9, %rdi
	cmpq	%rbx, %rdi
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1704
	movq	-4(%rdx, %rbx, 4), %rsi
	jmp	.L1703
	.align	2
.L1704:
.L1709:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1710
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rbx, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1703:
	movq	8(%rsp), %rbx
	movq	%rbx, %rax
	addq	$72, %rax
	movq	16(%rsp), %r12
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1708
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1702
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1701
	.align	2
.L1702:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1701:
	movq	%rbx, %rax
	addq	$2, %rbx
	movq	%rbx, 8(%rsp)
	cmpq	$17, %rax
	jne	.L1700
.L1699:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1698
	movq	(%rbx), %rsi
	jmp	.L1697
	.align	2
.L1698:
.L1712:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1713
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1697:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1696
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L1695
	.align	2
.L1696:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L1695:
	movq	-8(%rbx), %rax
	cmpq	$2047, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1694
	movq	8(%rbx), %rsi
	jmp	.L1693
	.align	2
.L1694:
.L1715:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1716
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	8(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1693:
	movq	-8(%r12), %rax
	cmpq	$33791, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1692
	movq	%r12, %rdi
	addq	$256, %rdi
	call	_caml_modify
	jmp	.L1691
	.align	2
.L1692:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 256(%r12)
.L1691:
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1690
	movq	16(%rbx), %rsi
	jmp	.L1689
	.align	2
.L1690:
.L1718:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1719
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1689:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1688
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L1687
	.align	2
.L1688:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L1687:
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1686
	movq	232(%rbx), %rsi
	jmp	.L1685
	.align	2
.L1686:
.L1721:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1722
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1685:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1684
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L1683
	.align	2
.L1684:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L1683:
	movq	-8(%rbx), %rax
	cmpq	$33791, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1682
	movq	256(%rbx), %rsi
	jmp	.L1681
	.align	2
.L1682:
.L1724:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1725
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	256(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1681:
	movq	-8(%r12), %rax
	cmpq	$54271, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1680
	movq	%r12, %rdi
	addq	$416, %rdi
	call	_caml_modify
	jmp	.L1679
	.align	2
.L1680:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 416(%r12)
.L1679:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1678
	movq	280(%rbx), %rsi
	jmp	.L1677
	.align	2
.L1678:
.L1727:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1728
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1677:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1676
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L1675
	.align	2
.L1676:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L1675:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1674
	movq	424(%rbx), %rsi
	jmp	.L1673
	.align	2
.L1674:
.L1730:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1731
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1673:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1672
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L1671
	.align	2
.L1672:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L1671:
	movq	-8(%rbx), %rax
	cmpq	$54271, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1670
	movq	416(%rbx), %rsi
	jmp	.L1669
	.align	2
.L1670:
.L1733:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1734
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	416(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1669:
	movq	-8(%r12), %rax
	cmpq	$13311, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1668
	movq	%r12, %rdi
	addq	$96, %rdi
	call	_caml_modify
	jmp	.L1667
	.align	2
.L1668:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 96(%r12)
.L1667:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1666
	movq	408(%rbx), %rsi
	jmp	.L1665
	.align	2
.L1666:
.L1736:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1737
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1665:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1664
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L1663
	.align	2
.L1664:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L1663:
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1662
	movq	120(%rbx), %rsi
	jmp	.L1661
	.align	2
.L1662:
.L1739:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1740
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1661:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1660
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L1659
	.align	2
.L1660:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L1659:
	movq	-8(%rbx), %rax
	cmpq	$13311, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1658
	movq	96(%rbx), %rsi
	jmp	.L1657
	.align	2
.L1658:
.L1742:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1743
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	96(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1657:
	movq	-8(%r12), %rax
	cmpq	$2047, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1656
	movq	%r12, %rdi
	addq	$8, %rdi
	call	_caml_modify
	jmp	.L1655
	.align	2
.L1656:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 8(%r12)
.L1655:
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1654
	movq	72(%rbx), %rsi
	jmp	.L1653
	.align	2
.L1654:
.L1745:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1746
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1653:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1708
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1652
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1651
	.align	2
.L1652:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1651:
	movq	%r12, %rax
	addq	$24, %rsp
	.cfi_adjust_cfa_offset	-24
	ret
	.cfi_adjust_cfa_offset	24
.L1746:	call	_caml_call_gc
.L1747:	jmp	.L1745
.L1743:	call	_caml_call_gc
.L1744:	jmp	.L1742
.L1740:	call	_caml_call_gc
.L1741:	jmp	.L1739
.L1737:	call	_caml_call_gc
.L1738:	jmp	.L1736
.L1734:	call	_caml_call_gc
.L1735:	jmp	.L1733
.L1731:	call	_caml_call_gc
.L1732:	jmp	.L1730
.L1728:	call	_caml_call_gc
.L1729:	jmp	.L1727
.L1725:	call	_caml_call_gc
.L1726:	jmp	.L1724
.L1722:	call	_caml_call_gc
.L1723:	jmp	.L1721
.L1719:	call	_caml_call_gc
.L1720:	jmp	.L1718
.L1716:	call	_caml_call_gc
.L1717:	jmp	.L1715
.L1713:	call	_caml_call_gc
.L1714:	jmp	.L1712
.L1710:	call	_caml_call_gc
.L1711:	jmp	.L1709
.L1708:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__b2_1099
_camlTurns__b2_1099:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_adjust_cfa_offset	8
.L1802:
	movq	%rax, 0(%rsp)
	call	_camlArray__copy_1031
.L1803:
	movq	%rax, %r12
	movq	$1, %rbx
	cmpq	$17, %rbx
	jg	.L1796
.L1797:
	movq	$17, %rdi
	subq	%rbx, %rdi
	addq	$73, %rdi
	movq	0(%rsp), %rdx
	movq	-8(%rdx), %rax
	movq	%rax, %rsi
	shrq	$9, %rsi
	cmpq	%rdi, %rsi
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1801
	movq	-4(%rdx, %rdi, 4), %rsi
	jmp	.L1800
	.align	2
.L1801:
.L1805:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1806
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	-4(%rdx, %rdi, 4), %xmm0
	movsd	%xmm0, (%rsi)
.L1800:
	movq	%rbx, %rax
	addq	$72, %rax
	movq	-8(%r12), %rdi
	movq	%rdi, %rdx
	shrq	$9, %rdx
	cmpq	%rax, %rdx
	jbe	.L1804
	andq	$255, %rdi
	cmpq	$254, %rdi
	je	.L1799
	leaq	-4(%r12, %rax, 4), %rdi
	call	_caml_modify
	jmp	.L1798
	.align	2
.L1799:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, -4(%r12, %rax, 4)
.L1798:
	movq	%rbx, %rax
	addq	$2, %rbx
	cmpq	$17, %rax
	jne	.L1797
.L1796:
	movq	0(%rsp), %rbx
	movq	-8(%rbx), %rax
	cmpq	$16383, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1795
	movq	120(%rbx), %rsi
	jmp	.L1794
	.align	2
.L1795:
.L1808:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1809
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	120(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1794:
	movq	-8(%r12), %rax
	cmpq	$30719, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1793
	movq	%r12, %rdi
	addq	$232, %rdi
	call	_caml_modify
	jmp	.L1792
	.align	2
.L1793:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 232(%r12)
.L1792:
	movq	-8(%rbx), %rax
	cmpq	$13311, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1791
	movq	96(%rbx), %rsi
	jmp	.L1790
	.align	2
.L1791:
.L1811:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1812
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	96(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1790:
	movq	-8(%r12), %rax
	cmpq	$33791, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1789
	movq	%r12, %rdi
	addq	$256, %rdi
	call	_caml_modify
	jmp	.L1788
	.align	2
.L1789:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 256(%r12)
.L1788:
	movq	-8(%rbx), %rax
	cmpq	$10239, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1787
	movq	72(%rbx), %rsi
	jmp	.L1786
	.align	2
.L1787:
.L1814:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1815
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	72(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1786:
	movq	-8(%r12), %rax
	cmpq	$36863, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1785
	movq	%r12, %rdi
	addq	$280, %rdi
	call	_caml_modify
	jmp	.L1784
	.align	2
.L1785:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 280(%r12)
.L1784:
	movq	-8(%rbx), %rax
	cmpq	$1023, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1783
	movq	(%rbx), %rsi
	jmp	.L1782
	.align	2
.L1783:
.L1817:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1818
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1782:
	movq	-8(%r12), %rax
	cmpq	$55295, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1781
	movq	%r12, %rdi
	addq	$424, %rdi
	call	_caml_modify
	jmp	.L1780
	.align	2
.L1781:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 424(%r12)
.L1780:
	movq	-8(%rbx), %rax
	cmpq	$2047, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1779
	movq	8(%rbx), %rsi
	jmp	.L1778
	.align	2
.L1779:
.L1820:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1821
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	8(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1778:
	movq	-8(%r12), %rax
	cmpq	$54271, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1777
	movq	%r12, %rdi
	addq	$416, %rdi
	call	_caml_modify
	jmp	.L1776
	.align	2
.L1777:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 416(%r12)
.L1776:
	movq	-8(%rbx), %rax
	cmpq	$3071, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1775
	movq	16(%rbx), %rsi
	jmp	.L1774
	.align	2
.L1775:
.L1823:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1824
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	16(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1774:
	movq	-8(%r12), %rax
	cmpq	$53247, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1773
	movq	%r12, %rdi
	addq	$408, %rdi
	call	_caml_modify
	jmp	.L1772
	.align	2
.L1773:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 408(%r12)
.L1772:
	movq	-8(%rbx), %rax
	cmpq	$30719, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1771
	movq	232(%rbx), %rsi
	jmp	.L1770
	.align	2
.L1771:
.L1826:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1827
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	232(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1770:
	movq	-8(%r12), %rax
	cmpq	$16383, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1769
	movq	%r12, %rdi
	addq	$120, %rdi
	call	_caml_modify
	jmp	.L1768
	.align	2
.L1769:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 120(%r12)
.L1768:
	movq	-8(%rbx), %rax
	cmpq	$33791, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1767
	movq	256(%rbx), %rsi
	jmp	.L1766
	.align	2
.L1767:
.L1829:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1830
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	256(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1766:
	movq	-8(%r12), %rax
	cmpq	$13311, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1765
	movq	%r12, %rdi
	addq	$96, %rdi
	call	_caml_modify
	jmp	.L1764
	.align	2
.L1765:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 96(%r12)
.L1764:
	movq	-8(%rbx), %rax
	cmpq	$36863, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1763
	movq	280(%rbx), %rsi
	jmp	.L1762
	.align	2
.L1763:
.L1832:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1833
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	280(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1762:
	movq	-8(%r12), %rax
	cmpq	$10239, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1761
	movq	%r12, %rdi
	addq	$72, %rdi
	call	_caml_modify
	jmp	.L1760
	.align	2
.L1761:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 72(%r12)
.L1760:
	movq	-8(%rbx), %rax
	cmpq	$55295, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1759
	movq	424(%rbx), %rsi
	jmp	.L1758
	.align	2
.L1759:
.L1835:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1836
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	424(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1758:
	movq	-8(%r12), %rax
	cmpq	$1023, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1757
	movq	%r12, %rdi
	call	_caml_modify
	jmp	.L1756
	.align	2
.L1757:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, (%r12)
.L1756:
	movq	-8(%rbx), %rax
	cmpq	$54271, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1755
	movq	416(%rbx), %rsi
	jmp	.L1754
	.align	2
.L1755:
.L1838:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1839
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	416(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1754:
	movq	-8(%r12), %rax
	cmpq	$2047, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1753
	movq	%r12, %rdi
	addq	$8, %rdi
	call	_caml_modify
	jmp	.L1752
	.align	2
.L1753:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 8(%r12)
.L1752:
	movq	-8(%rbx), %rax
	cmpq	$53247, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1751
	movq	408(%rbx), %rsi
	jmp	.L1750
	.align	2
.L1751:
.L1841:	subq	$16, %r15
	movq	_caml_young_limit@GOTPCREL(%rip), %rax
	cmpq	(%rax), %r15
	jb	.L1842
	leaq	8(%r15), %rsi
	movq	$1277, -8(%rsi)
	movsd	408(%rbx), %xmm0
	movsd	%xmm0, (%rsi)
.L1750:
	movq	-8(%r12), %rax
	cmpq	$3071, %rax
	jbe	.L1804
	andq	$255, %rax
	cmpq	$254, %rax
	je	.L1749
	movq	%r12, %rdi
	addq	$16, %rdi
	call	_caml_modify
	jmp	.L1748
	.align	2
.L1749:
	movsd	(%rsi), %xmm0
	movsd	%xmm0, 16(%r12)
.L1748:
	movq	%r12, %rax
	addq	$8, %rsp
	.cfi_adjust_cfa_offset	-8
	ret
	.cfi_adjust_cfa_offset	8
.L1842:	call	_caml_call_gc
.L1843:	jmp	.L1841
.L1839:	call	_caml_call_gc
.L1840:	jmp	.L1838
.L1836:	call	_caml_call_gc
.L1837:	jmp	.L1835
.L1833:	call	_caml_call_gc
.L1834:	jmp	.L1832
.L1830:	call	_caml_call_gc
.L1831:	jmp	.L1829
.L1827:	call	_caml_call_gc
.L1828:	jmp	.L1826
.L1824:	call	_caml_call_gc
.L1825:	jmp	.L1823
.L1821:	call	_caml_call_gc
.L1822:	jmp	.L1820
.L1818:	call	_caml_call_gc
.L1819:	jmp	.L1817
.L1815:	call	_caml_call_gc
.L1816:	jmp	.L1814
.L1812:	call	_caml_call_gc
.L1813:	jmp	.L1811
.L1809:	call	_caml_call_gc
.L1810:	jmp	.L1808
.L1806:	call	_caml_call_gc
.L1807:	jmp	.L1805
.L1804:	call	_caml_ml_array_bound_error
	.cfi_endproc
	.text
	.align	4
	.globl	_camlTurns__entry
_camlTurns__entry:
	.cfi_startproc
.L1844:
	movq	_camlTurns__21@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, (%rbx)
	movq	_camlTurns__20@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 8(%rbx)
	movq	_camlTurns__19@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 16(%rbx)
	movq	_camlTurns__18@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 24(%rbx)
	movq	_camlTurns__17@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 32(%rbx)
	movq	_camlTurns__16@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 40(%rbx)
	movq	_camlTurns__15@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 48(%rbx)
	movq	_camlTurns__14@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 56(%rbx)
	movq	_camlTurns__13@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 64(%rbx)
	movq	_camlTurns__12@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 72(%rbx)
	movq	_camlTurns__11@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 80(%rbx)
	movq	_camlTurns__10@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 88(%rbx)
	movq	_camlTurns__9@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 96(%rbx)
	movq	_camlTurns__8@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 104(%rbx)
	movq	_camlTurns__7@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 112(%rbx)
	movq	_camlTurns__6@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 120(%rbx)
	movq	_camlTurns__5@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 128(%rbx)
	movq	_camlTurns__4@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 136(%rbx)
	movq	_camlTurns__3@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 144(%rbx)
	movq	_camlTurns__2@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 152(%rbx)
	movq	_camlTurns__1@GOTPCREL(%rip), %rax
	movq	_camlTurns@GOTPCREL(%rip), %rbx
	movq	%rax, 160(%rbx)
	movq	$1, %rax
	ret
	.cfi_endproc
	.data
	.text
	nop
	.globl	_camlTurns__code_end
_camlTurns__code_end:
	.data
	.globl	_camlTurns__data_end
_camlTurns__data_end:
	.long	0
	.globl	_camlTurns__frametable
_camlTurns__frametable:
	.quad	264
	.quad	.L1843
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1840
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1837
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1834
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1831
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1828
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1825
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1822
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1819
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1816
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1813
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1810
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1807
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L1803
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1747
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1744
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1741
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1738
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1735
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1732
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1729
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1726
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1723
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1720
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1717
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1714
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1711
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1707
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1706
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1650
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1647
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1644
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1641
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1638
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1635
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1632
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1629
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1626
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1623
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1620
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1617
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1614
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1610
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1609
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1553
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1550
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1547
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1544
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1541
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1538
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1535
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1532
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1529
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1526
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1523
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1520
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1517
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L1513
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1457
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1454
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1451
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1448
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1445
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1442
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1439
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1436
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1433
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1430
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1427
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1424
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1421
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1417
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1416
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1360
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1357
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1354
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1351
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1348
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1345
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1342
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1339
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1336
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1333
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1330
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1327
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1324
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1320
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1319
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1263
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1260
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1257
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1254
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1251
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1248
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1245
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1242
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1239
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1236
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1233
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1230
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1227
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L1223
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L1167
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1164
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1161
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1158
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1155
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1152
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1149
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1146
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1143
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1140
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1137
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1134
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1131
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1127
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1126
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L1070
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1067
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1064
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1061
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1058
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1055
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1052
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1049
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1046
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1043
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1040
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1037
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L1034
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L1030
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L1029
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L973
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L970
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L967
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L964
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L961
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L958
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L955
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L952
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L949
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L946
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L943
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L940
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L937
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L933
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L877
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L874
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L871
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L868
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L865
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L862
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L859
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L856
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L853
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L850
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L847
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L844
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L841
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L837
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L836
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L780
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L777
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L774
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L771
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L768
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L765
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L762
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L759
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L756
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L753
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L750
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L747
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L744
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L740
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L739
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L683
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L680
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L677
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L674
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L671
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L668
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L665
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L662
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L659
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L656
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L653
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L650
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L647
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L643
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L587
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L584
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L581
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L578
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L575
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L572
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L569
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L566
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L563
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L560
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L557
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L554
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L551
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L547
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L546
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L490
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L487
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L484
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L481
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L478
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L475
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L472
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L469
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L466
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L463
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L460
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L457
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L454
	.word	32
	.word	3
	.word	9
	.word	0
	.word	16
	.align	3
	.quad	.L450
	.word	32
	.word	2
	.word	0
	.word	16
	.align	3
	.quad	.L449
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L393
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L390
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L387
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L384
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L381
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L378
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L375
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L372
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L369
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L366
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L363
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L360
	.word	16
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L357
	.word	16
	.word	3
	.word	9
	.word	0
	.word	17
	.align	3
	.quad	.L353
	.word	16
	.word	1
	.word	0
	.align	3
	.quad	.L297
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L294
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L291
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L288
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L285
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L282
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L279
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L276
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L273
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L270
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L267
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L264
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L261
	.word	32
	.word	4
	.word	9
	.word	0
	.word	8
	.word	3
	.align	3
	.quad	.L257
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L256
	.word	32
	.word	1
	.word	0
	.align	3
	.quad	.L200
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L197
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L194
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L191
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L188
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L185
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L182
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L179
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L176
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L173
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L170
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L167
	.word	32
	.word	2
	.word	3
	.word	17
	.align	3
	.quad	.L164
	.word	32
	.word	4
	.word	9
	.word	0
	.word	8
	.word	3
	.align	3
	.quad	.L160
	.word	32
	.word	2
	.word	0
	.word	8
	.align	3
	.quad	.L159
	.word	32
	.word	1
	.word	0
	.align	3
