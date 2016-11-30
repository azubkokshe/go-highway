// Generated by PeachPy 0.2.0 from sum.py


// func updateFinalizeSSE(sptr uintptr, p_base uintptr, p_len int64, p_cap int64) uint64
TEXT ·updateFinalizeSSE(SB),4,$0-40
	MOVQ sptr+0(FP), AX
	MOVQ p_base+8(FP), BX
	MOVOU 0(AX), X0
	MOVOU 16(AX), X1
	MOVOU 32(AX), X2
	MOVOU 48(AX), X3
	MOVOU 64(AX), X4
	MOVOU 80(AX), X5
	MOVOU 96(AX), X6
	MOVOU 112(AX), X7
	MOVOU 0(BX), X8
	MOVOU 16(BX), X9
	PADDQ X8, X2
	PADDQ X9, X3
	PADDQ X4, X2
	PADDQ X5, X3
	MOVO X0, X10
	MOVO X1, X11
	MOVO X2, X8
	MOVO X3, X9
	PSRLQ $32, X8
	PSRLQ $32, X9
	PMULULQ X10, X8
	PMULULQ X11, X9
	PXOR X8, X4
	PXOR X9, X5
	PADDQ X6, X0
	PADDQ X7, X1
	MOVO X2, X10
	MOVO X3, X11
	MOVO X0, X8
	MOVO X1, X9
	PSRLQ $32, X8
	PSRLQ $32, X9
	PMULULQ X10, X8
	PMULULQ X11, X9
	PXOR X8, X6
	PXOR X9, X7
	MOVQ $4223284375849987, AX
	MOVQ AX, X10
	MOVQ $506661594022413323, AX
	MOVQ AX, X8
	MOVLHPS X8, X10
	MOVO X2, X8
	PSHUFB X10, X8
	MOVO X3, X9
	PSHUFB X10, X9
	PADDQ X8, X0
	PADDQ X9, X1
	MOVO X0, X8
	PSHUFB X10, X8
	MOVO X1, X9
	PSHUFB X10, X9
	PADDQ X8, X2
	PADDQ X9, X3
	MOVQ $4, AX
loop_begin:
		PSHUFL $177, X1, X8
		PSHUFL $177, X0, X9
		PADDQ X8, X2
		PADDQ X9, X3
		PADDQ X4, X2
		PADDQ X5, X3
		MOVO X0, X10
		MOVO X1, X11
		MOVO X2, X8
		MOVO X3, X9
		PSRLQ $32, X8
		PSRLQ $32, X9
		PMULULQ X10, X8
		PMULULQ X11, X9
		PXOR X8, X4
		PXOR X9, X5
		PADDQ X6, X0
		PADDQ X7, X1
		MOVO X2, X10
		MOVO X3, X11
		MOVO X0, X8
		MOVO X1, X9
		PSRLQ $32, X8
		PSRLQ $32, X9
		PMULULQ X10, X8
		PMULULQ X11, X9
		PXOR X8, X6
		PXOR X9, X7
		MOVQ $4223284375849987, BX
		MOVQ BX, X10
		MOVQ $506661594022413323, BX
		MOVQ BX, X8
		MOVLHPS X8, X10
		MOVO X2, X8
		PSHUFB X10, X8
		MOVO X3, X9
		PSHUFB X10, X9
		PADDQ X8, X0
		PADDQ X9, X1
		MOVO X0, X8
		PSHUFB X10, X8
		MOVO X1, X9
		PSHUFB X10, X9
		PADDQ X8, X2
		PADDQ X9, X3
		DECQ AX
		JNE loop_begin
	PADDQ X2, X0
	PADDQ X6, X4
	PADDQ X4, X0
	MOVQ X0, AX
	MOVQ AX, ret+32(FP)
	RET

// func hashSSE(sptr uintptr, keys uintptr, init0 uintptr, init1 uintptr, p_base uintptr, p_len int64, p_cap int64) uint64
TEXT ·hashSSE(SB),4,$0-64
	MOVQ keys+8(FP), AX
	MOVQ init0+16(FP), BX
	MOVQ init1+24(FP), CX
	MOVOU 0(AX), X0
	MOVOU 16(AX), X1
	MOVOU 0(BX), X4
	MOVOU 16(BX), X5
	MOVOU 0(CX), X6
	MOVOU 16(CX), X7
	PSHUFL $177, X1, X2
	PSHUFL $177, X0, X3
	PXOR X4, X0
	PXOR X5, X1
	PXOR X6, X2
	PXOR X7, X3
	MOVQ p_base+32(FP), AX
	MOVQ p_len+40(FP), BX
	CMPQ BX, $32
	JLT loop_end
loop_begin:
		MOVOU 0(AX), X8
		MOVOU 16(AX), X9
		PADDQ X8, X2
		PADDQ X9, X3
		PADDQ X4, X2
		PADDQ X5, X3
		MOVO X0, X10
		MOVO X1, X11
		MOVO X2, X8
		MOVO X3, X9
		PSRLQ $32, X8
		PSRLQ $32, X9
		PMULULQ X10, X8
		PMULULQ X11, X9
		PXOR X8, X4
		PXOR X9, X5
		PADDQ X6, X0
		PADDQ X7, X1
		MOVO X2, X10
		MOVO X3, X11
		MOVO X0, X8
		MOVO X1, X9
		PSRLQ $32, X8
		PSRLQ $32, X9
		PMULULQ X10, X8
		PMULULQ X11, X9
		PXOR X8, X6
		PXOR X9, X7
		MOVQ $4223284375849987, CX
		MOVQ CX, X10
		MOVQ $506661594022413323, CX
		MOVQ CX, X8
		MOVLHPS X8, X10
		MOVO X2, X8
		PSHUFB X10, X8
		MOVO X3, X9
		PSHUFB X10, X9
		PADDQ X8, X0
		PADDQ X9, X1
		MOVO X0, X8
		PSHUFB X10, X8
		MOVO X1, X9
		PSHUFB X10, X9
		PADDQ X8, X2
		PADDQ X9, X3
		ADDQ $32, AX
		SUBQ $32, BX
		CMPQ BX, $32
		JGE loop_begin
loop_end:
	MOVQ sptr+0(FP), AX
	MOVOU X0, 0(AX)
	MOVOU X1, 16(AX)
	MOVOU X2, 32(AX)
	MOVOU X3, 48(AX)
	MOVOU X4, 64(AX)
	MOVOU X5, 80(AX)
	MOVOU X6, 96(AX)
	MOVOU X7, 112(AX)
	MOVQ BX, ret+56(FP)
	RET
