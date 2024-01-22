;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _blanck_table
	.globl _duration_table
	.globl _music_table
	.globl _main
	.globl _T0_isr
	.globl _OLED_SetCursor
	.globl _OLED_DisplayString
	.globl _OLED_Init
	.globl _Delay_La
	.globl _Delay_So
	.globl _Delay_Fa
	.globl _Delay_Mi
	.globl _Delay_Re
	.globl _Delay_Do
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _duration_time
	.globl _music_play_note
	.globl _stable_but
	.globl _scan_cnting
	.globl _music_on
	.globl _LookForSound
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; overlayable bit register bank
;--------------------------------------------------------
	.area BIT_BANK	(REL,OVR,DATA)
bits:
	.ds 1
	b0 = bits[0]
	b1 = bits[1]
	b2 = bits[2]
	b3 = bits[3]
	b4 = bits[4]
	b5 = bits[5]
	b6 = bits[6]
	b7 = bits[7]
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_music_on::
	.ds 2
_scan_cnting::
	.ds 2
_stable_but::
	.ds 2
_music_play_note::
	.ds 2
_duration_time::
	.ds 2
_main_a_131073_42:
	.ds 2
;--------------------------------------------------------
; overlayable items in internal ram
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram
;--------------------------------------------------------
	.area SSEG
__start__stack:
	.ds	1

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
; interrupt vector
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
	reti
	.ds	7
	ljmp	_T0_isr
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	./src/main.c:9: int music_on = 0, scan_cnting = 0, stable_but = 0;
	clr	a
	mov	_music_on,a
	mov	(_music_on + 1),a
;	./src/main.c:9: int music_play_note = 0, duration_time = 0;
	mov	_scan_cnting,a
	mov	(_scan_cnting + 1),a
;	./src/main.c:9: int music_on = 0, scan_cnting = 0, stable_but = 0;
	mov	_stable_but,a
	mov	(_stable_but + 1),a
;	./src/main.c:10: int music_play_note = 0, duration_time = 0;
	mov	_music_play_note,a
	mov	(_music_play_note + 1),a
;	./src/main.c:10: 
	mov	_duration_time,a
	mov	(_duration_time + 1),a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'T0_isr'
;------------------------------------------------------------
;	./src/main.c:27: void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
;	-----------------------------------------
;	 function T0_isr
;	-----------------------------------------
_T0_isr:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
	push	bits
	push	acc
	push	b
	push	dpl
	push	dph
	push	(0+7)
	push	(0+6)
	push	(0+5)
	push	(0+4)
	push	(0+3)
	push	(0+2)
	push	(0+1)
	push	(0+0)
	push	psw
	mov	psw,#0x00
;	./src/main.c:30: TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:31: TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0
	mov	_TL0,#0x18
;	./src/main.c:33: duration_time++;
	inc	_duration_time
	clr	a
	cjne	a,_duration_time,00134$
	inc	(_duration_time + 1)
00134$:
;	./src/main.c:35: while (duration_time < duration_table[music_play_note])
00101$:
	mov	a,_music_play_note
	add	a,#_duration_table
	mov	dpl,a
	mov	a,(_music_play_note + 1)
	addc	a,#(_duration_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	mov	r7,#0x00
	clr	c
	mov	a,_duration_time
	subb	a,r6
	mov	a,(_duration_time + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
;	./src/main.c:37: duration_time++;
	inc	_duration_time
	clr	a
	cjne	a,_duration_time,00136$
	inc	(_duration_time + 1)
00136$:
;	./src/main.c:38: P3_7 = 1;
;	assignBit
	setb	_P3_7
;	./src/main.c:39: LookForSound(music_table[music_play_note]);
	mov	a,_music_play_note
	add	a,#_music_table
	mov	dpl,a
	mov	a,(_music_play_note + 1)
	addc	a,#(_music_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_LookForSound
;	./src/main.c:40: P3_7 = 0;
;	assignBit
	clr	_P3_7
;	./src/main.c:41: LookForSound(music_table[music_play_note]);
	mov	a,_music_play_note
	add	a,#_music_table
	mov	dpl,a
	mov	a,(_music_play_note + 1)
	addc	a,#(_music_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	mov	r4,#0x00
	mov	dpl,r5
	mov	dph,r4
	lcall	_LookForSound
	sjmp	00101$
00103$:
;	./src/main.c:43: if (duration_time >= (duration_table[music_play_note] + blanck_table[music_play_note]))
	mov	a,_music_play_note
	add	a,#_blanck_table
	mov	dpl,a
	mov	a,(_music_play_note + 1)
	addc	a,#(_blanck_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r4,#0x00
	add	a,r6
	mov	r6,a
	mov	a,r4
	addc	a,r7
	mov	r7,a
	clr	c
	mov	a,_duration_time
	subb	a,r6
	mov	a,(_duration_time + 1)
	xrl	a,#0x80
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jc	00108$
;	./src/main.c:45: duration_time = 0;
	clr	a
	mov	_duration_time,a
	mov	(_duration_time + 1),a
;	./src/main.c:46: music_play_note++;
	inc	_music_play_note
	cjne	a,_music_play_note,00138$
	inc	(_music_play_note + 1)
00138$:
;	./src/main.c:48: if (music_play_note >= NOTE_NUM)
	clr	c
	mov	a,_music_play_note
	subb	a,#0x19
	mov	a,(_music_play_note + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00108$
;	./src/main.c:50: music_on = 0;
	clr	a
	mov	_music_on,a
	mov	(_music_on + 1),a
;	./src/main.c:51: music_play_note = 0;
	mov	_music_play_note,a
	mov	(_music_play_note + 1),a
00108$:
;	./src/main.c:54: }
	pop	psw
	pop	(0+0)
	pop	(0+1)
	pop	(0+2)
	pop	(0+3)
	pop	(0+4)
	pop	(0+5)
	pop	(0+6)
	pop	(0+7)
	pop	dph
	pop	dpl
	pop	b
	pop	acc
	pop	bits
	reti
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;a                         Allocated with name '_main_a_131073_42'
;------------------------------------------------------------
;	./src/main.c:59: int main()
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
;	./src/main.c:62: TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
	mov	_TMOD,#0x01
;	./src/main.c:63: TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
	mov	_TH0,#0xfc
;	./src/main.c:64: TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
	mov	_TL0,#0x18
;	./src/main.c:65: ET0 = 1;                    // Enable Timer 0 interrupt
;	assignBit
	setb	_ET0
;	./src/main.c:66: EA = 1;                     // Enable all interrupt
;	assignBit
	setb	_EA
;	./src/main.c:67: TR0 = 0;                    // Start Timer 0
;	assignBit
	clr	_TR0
;	./src/main.c:70: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/main.c:71: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/main.c:73: OLED_Init();
	lcall	_OLED_Init
;	./src/main.c:74: OLED_SetCursor(text_row, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:75: OLED_DisplayString("music off!");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:77: while (1)
00125$:
;	./src/main.c:80: if (but == 0 && stable_but == 1)
	jb	_P2_2,00114$
	mov	a,#0x01
	cjne	a,_stable_but,00208$
	dec	a
	cjne	a,(_stable_but + 1),00208$
	sjmp	00209$
00208$:
	sjmp	00114$
00209$:
;	./src/main.c:82: if (scan_cnting < scan_cnt)
	clr	c
	mov	a,_scan_cnting
	subb	a,#0x09
	mov	a,(_scan_cnting + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	./src/main.c:84: scan_cnting++;
	inc	_scan_cnting
	clr	a
	cjne	a,_scan_cnting,00211$
	inc	(_scan_cnting + 1)
00211$:
;	./src/main.c:85: if (scan_cnting == scan_cnt)
	mov	a,#0x09
	cjne	a,_scan_cnting,00212$
	clr	a
	cjne	a,(_scan_cnting + 1),00212$
	sjmp	00213$
00212$:
	sjmp	00115$
00213$:
;	./src/main.c:87: music_on ^= 1;
	xrl	_music_on,#0x01
;	./src/main.c:88: stable_but = 0;
	clr	a
	mov	_stable_but,a
	mov	(_stable_but + 1),a
	sjmp	00115$
00114$:
;	./src/main.c:92: else if (but == 1 && stable_but == 0)
	jnb	_P2_2,00110$
	mov	a,_stable_but
	orl	a,(_stable_but + 1)
	jnz	00110$
;	./src/main.c:94: if (scan_cnting < scan_cnt)
	clr	c
	mov	a,_scan_cnting
	subb	a,#0x09
	mov	a,(_scan_cnting + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	./src/main.c:96: scan_cnting++;
	inc	_scan_cnting
	clr	a
	cjne	a,_scan_cnting,00217$
	inc	(_scan_cnting + 1)
00217$:
;	./src/main.c:97: if (scan_cnting == scan_cnt)
	mov	a,#0x09
	cjne	a,_scan_cnting,00218$
	clr	a
	cjne	a,(_scan_cnting + 1),00218$
	sjmp	00219$
00218$:
	sjmp	00115$
00219$:
;	./src/main.c:98: stable_but = 1;
	mov	_stable_but,#0x01
	mov	(_stable_but + 1),#0x00
	sjmp	00115$
00110$:
;	./src/main.c:102: scan_cnting = 0;
	clr	a
	mov	_scan_cnting,a
	mov	(_scan_cnting + 1),a
00115$:
;	./src/main.c:104: OLED_SetCursor(5, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/main.c:106: a[0] = '0' + scan_cnting;
	mov	r7,_scan_cnting
	mov	a,#0x30
	add	a,r7
	mov	_main_a_131073_42,a
;	./src/main.c:107: a[1] = '\0';
	mov	(_main_a_131073_42 + 0x0001),#0x00
;	./src/main.c:108: OLED_DisplayString(a);
	mov	dptr,#_main_a_131073_42
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/main.c:109: OLED_SetCursor(6, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x06
	lcall	_OLED_SetCursor
;	./src/main.c:110: a[0] = '0' + stable_but;
	mov	r7,_stable_but
	mov	a,#0x30
	add	a,r7
	mov	_main_a_131073_42,a
;	./src/main.c:111: OLED_DisplayString(a);
	mov	dptr,#_main_a_131073_42
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/main.c:114: if (music_on && TR0 == 0)
	mov	a,_music_on
	orl	a,(_music_on + 1)
	jz	00121$
	jb	_TR0,00121$
;	./src/main.c:116: TR0 = 1;
;	assignBit
	setb	_TR0
;	./src/main.c:117: OLED_SetCursor(text_row, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:118: OLED_DisplayString("           ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:119: OLED_SetCursor(text_row, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:120: OLED_DisplayString("music on!");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
	ljmp	00125$
00121$:
;	./src/main.c:122: else if (!music_on && TR0 == 1)
	mov	a,_music_on
	orl	a,(_music_on + 1)
	jz	00222$
	ljmp	00125$
00222$:
;	./src/main.c:124: TR0 = 0;
;	assignBit
	jbc	_TR0,00223$
	ljmp	00125$
00223$:
;	./src/main.c:125: OLED_SetCursor(text_row, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:126: OLED_DisplayString("           ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:127: OLED_SetCursor(text_row, text_col);
	mov	_OLED_SetCursor_PARM_2,#0x28
	mov	dpl,#0x03
	lcall	_OLED_SetCursor
;	./src/main.c:128: OLED_DisplayString("music off!");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/main.c:131: }
	ljmp	00125$
;------------------------------------------------------------
;Allocation info for local variables in function 'LookForSound'
;------------------------------------------------------------
;now                       Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/main.c:133: void LookForSound(int now)
;	-----------------------------------------
;	 function LookForSound
;	-----------------------------------------
_LookForSound:
	mov	r6,dpl
	mov	r7,dph
;	./src/main.c:135: switch (now)
	cjne	r6,#0x01,00147$
	cjne	r7,#0x00,00147$
	sjmp	00101$
00147$:
	cjne	r6,#0x02,00148$
	cjne	r7,#0x00,00148$
	sjmp	00102$
00148$:
	cjne	r6,#0x03,00149$
	cjne	r7,#0x00,00149$
	sjmp	00103$
00149$:
	cjne	r6,#0x04,00150$
	cjne	r7,#0x00,00150$
	sjmp	00104$
00150$:
	cjne	r6,#0x05,00151$
	cjne	r7,#0x00,00151$
	sjmp	00105$
00151$:
;	./src/main.c:137: case 1:
	cjne	r6,#0x06,00109$
	cjne	r7,#0x00,00109$
	sjmp	00106$
00101$:
;	./src/main.c:138: Delay_Do();
;	./src/main.c:139: break;
;	./src/main.c:141: case 2:
	ljmp	_Delay_Do
00102$:
;	./src/main.c:142: Delay_Re();
;	./src/main.c:143: break;
;	./src/main.c:145: case 3:
	ljmp	_Delay_Re
00103$:
;	./src/main.c:146: Delay_Mi();
;	./src/main.c:147: break;
;	./src/main.c:149: case 4:
	ljmp	_Delay_Mi
00104$:
;	./src/main.c:150: Delay_Fa();
;	./src/main.c:151: break;
;	./src/main.c:153: case 5:
	ljmp	_Delay_Fa
00105$:
;	./src/main.c:154: Delay_So();
;	./src/main.c:155: break;
;	./src/main.c:157: case 6:
	ljmp	_Delay_So
00106$:
;	./src/main.c:158: Delay_La();
;	./src/main.c:163: }
;	./src/main.c:164: }
	ljmp	_Delay_La
00109$:
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_music_table:
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x03	; 3
	.db #0x01	; 1
_duration_table:
	.db #0xf4	; 244
	.db #0x32	; 50	'2'
	.db #0xc8	; 200
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xf4	; 244
	.db #0x32	; 50	'2'
	.db #0xf4	; 244
	.db #0x64	; 100	'd'
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x64	; 100	'd'
	.db #0xf4	; 244
	.db #0x64	; 100	'd'
	.db #0xf4	; 244
	.db #0xf4	; 244
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0xc8	; 200
	.db #0x64	; 100	'd'
_blanck_table:
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xf4	; 244
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xf4	; 244
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xc8	; 200
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0xf4	; 244
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0x32	; 50	'2'
	.db #0xc8	; 200
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0x1e	; 30
	.db #0xf4	; 244
	.area CONST   (CODE)
___str_0:
	.ascii "music off!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "           "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "music on!"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
