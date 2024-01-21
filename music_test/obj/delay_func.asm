;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module delay_func
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _Delay_Do
	.globl _Delay_Re
	.globl _Delay_Mi
	.globl _Delay_Fa
	.globl _Delay_So
	.globl _Delay_La
	.globl _Delay_Si
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; uninitialized external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
;--------------------------------------------------------
; initialized external ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Do'
;------------------------------------------------------------
;	./src/delay_func.c:3: void Delay_Do(void) {
;	-----------------------------------------
;	 function Delay_Do
;	-----------------------------------------
_Delay_Do:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/delay_func.c:28: __endasm;
DELAY_Do:
	MOV	R6,#10
DELAY_Do_DL1:
	MOV	R7,#19
STEP1:
	DJNZ	R7,STEP1
	DJNZ	R6,DELAY_Do_DL1
	MOV	R7,#13
STEP2:
	DJNZ	R7,STEP2
	RET
;	./src/delay_func.c:30: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Re'
;------------------------------------------------------------
;	./src/delay_func.c:32: void Delay_Re(void) {
;	-----------------------------------------
;	 function Delay_Re
;	-----------------------------------------
_Delay_Re:
;	./src/delay_func.c:57: __endasm;
DELAY_RE:
	MOV	R6,#10
DELAY_RE_DL1:
	MOV	R7,#17
STEP3:
	DJNZ	R7,STEP3
	DJNZ	R6,DELAY_RE_DL1
	MOV	R7,#9
STEP4:
	DJNZ	R7,STEP4
	RET
;	./src/delay_func.c:58: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Mi'
;------------------------------------------------------------
;	./src/delay_func.c:60: void Delay_Mi(void) {
;	-----------------------------------------
;	 function Delay_Mi
;	-----------------------------------------
_Delay_Mi:
;	./src/delay_func.c:85: __endasm;
DELAY_MI:
	MOV	R6,#10
DELAY_MI_DL1:
	MOV	R7,#15
STEP5:
	DJNZ	R7,STEP5
	DJNZ	R6,DELAY_MI_DL1
	MOV	R7,#7
STEP6:
	DJNZ	R7,STEP6
	RET
;	./src/delay_func.c:86: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Fa'
;------------------------------------------------------------
;	./src/delay_func.c:88: void Delay_Fa(void) {
;	-----------------------------------------
;	 function Delay_Fa
;	-----------------------------------------
_Delay_Fa:
;	./src/delay_func.c:117: __endasm;
DELAY_FA:
	MOV	R6,#10
DELAY_FA_DL1:
	MOV	R7,#13
STEP7:
	DJNZ	R7,STEP7
	DJNZ	R6,DELAY_FA_DL1
	MOV	R7,#18
STEP8:
	DJNZ	R7,STEP8
	RET
;	./src/delay_func.c:118: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_So'
;------------------------------------------------------------
;	./src/delay_func.c:120: void Delay_So(void) {
;	-----------------------------------------
;	 function Delay_So
;	-----------------------------------------
_Delay_So:
;	./src/delay_func.c:148: __endasm;
DELAY_SO:
	MOV	R6,#10
DELAY_SO_DL1:
	MOV	R7,#12
STEP9:
	DJNZ	R7,STEP9
	DJNZ	R6,DELAY_SO_DL1
	MOV	R7,#10
STEP10:
	DJNZ	R7,STEP10
	RET
;	./src/delay_func.c:149: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_La'
;------------------------------------------------------------
;	./src/delay_func.c:151: void Delay_La(void) {
;	-----------------------------------------
;	 function Delay_La
;	-----------------------------------------
_Delay_La:
;	./src/delay_func.c:179: __endasm;
DELAY_LA:
	MOV	R6,#10
DELAY_LA_DL1:
	MOV	R7,#11
STEP11:
	DJNZ	R7,STEP11
	DJNZ	R6,DELAY_LA_DL1
	MOV	R7,#4
STEP12:
	DJNZ	R7,STEP12
	RET
;	./src/delay_func.c:180: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Delay_Si'
;------------------------------------------------------------
;	./src/delay_func.c:182: void Delay_Si(void) {
;	-----------------------------------------
;	 function Delay_Si
;	-----------------------------------------
_Delay_Si:
;	./src/delay_func.c:210: __endasm;
DELAY_SI:
	MOV	R6,#9
DELAY_SI_DL1:
	MOV	R7,#11
STEP13:
	DJNZ	R7,STEP13
	DJNZ	R6,DELAY_SI_DL1
	MOV	R7,#2
STEP14:
	DJNZ	R7,STEP14
	RET
;	./src/delay_func.c:211: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
