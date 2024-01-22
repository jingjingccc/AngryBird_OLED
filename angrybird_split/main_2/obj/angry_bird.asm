;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module angry_bird
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _sine_table
	.globl _over_page
	.globl _win_page
	.globl _bird_logo
	.globl _pig_logo
	.globl _shooter_logo
	.globl _I2C_Stop
	.globl _I2C_Start
	.globl _oledSendData
	.globl _OLED_SetCursor
	.globl _OLED_Clear
	.globl _OLED_DisplayString
	.globl _OLED_Init
	.globl _delay_ms
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
	.globl _prebut_enter
	.globl _prebut_right
	.globl _prebut_left
	.globl _prebut_down
	.globl _prebut_up
	.globl _cur_state
	.globl _led_cur_state
	.globl _control_strength
	.globl _control_angle
	.globl _pig_amt
	.globl _bird_amt
	.globl _col_offset
	.globl _row_offset
	.globl _received_flag
	.globl _received_data
	.globl _send_flag
	.globl _send_data
	.globl _angrybird_display_game
	.globl _angrybird_state_machine
	.globl _angrybird_game_state
	.globl _getsine
	.globl _getcosine
	.globl _pow_2
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
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
_send_data::
	.ds 1
_send_flag::
	.ds 1
_received_data::
	.ds 1
_received_flag::
	.ds 1
_row_offset::
	.ds 2
_col_offset::
	.ds 2
_bird_amt::
	.ds 2
_pig_amt::
	.ds 2
_control_angle::
	.ds 2
_control_strength::
	.ds 2
_angrybird_display_game_control_strength__65537_30:
	.ds 2
_angrybird_display_game_control_angle__65537_30:
	.ds 5
_angrybird_display_game_angle__65539_32:
	.ds 2
_angrybird_display_game_k_131075_33:
	.ds 2
_led_cur_state::
	.ds 2
_cur_state::
	.ds 2
_prebut_up::
	.ds 2
_prebut_down::
	.ds 2
_prebut_left::
	.ds 2
_prebut_right::
	.ds 2
_prebut_enter::
	.ds 2
_angrybird_game_state_control_angle__196609_62:
	.ds 5
_angrybird_game_state_angle__196610_63:
	.ds 2
_angrybird_game_state_control_strength__196609_68:
	.ds 2
_angrybird_game_state_delta_y_196609_75:
	.ds 4
_angrybird_game_state_delta_x_196609_75:
	.ds 4
_angrybird_game_state_peak_x_196609_75:
	.ds 4
_angrybird_game_state_peak_y_196609_75:
	.ds 4
_angrybird_game_state_a_196609_75:
	.ds 4
_angrybird_game_state_i_262145_80:
	.ds 2
_angrybird_game_state_output_row_327681_81:
	.ds 2
_angrybird_game_state_sloc1_1_0:
	.ds 4
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
_angrybird_display_game_sloc0_1_0:
	.ds 1
_angrybird_game_state_sloc0_1_0:
	.ds 1
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
;	./src/angry_bird.c:146: int led_cur_state = 1;
	mov	_led_cur_state,#0x01
	mov	(_led_cur_state + 1),#0x00
;	./src/angry_bird.c:164: int cur_state = 0;
	clr	a
	mov	_cur_state,a
	mov	(_cur_state + 1),a
;	./src/angry_bird.c:214: unsigned int prebut_up = 0;
	mov	_prebut_up,a
	mov	(_prebut_up + 1),a
;	./src/angry_bird.c:215: unsigned int prebut_down = 0;
	mov	_prebut_down,a
	mov	(_prebut_down + 1),a
;	./src/angry_bird.c:216: unsigned int prebut_left = 0;
	mov	_prebut_left,a
	mov	(_prebut_left + 1),a
;	./src/angry_bird.c:217: unsigned int prebut_right = 0;
	mov	_prebut_right,a
	mov	(_prebut_right + 1),a
;	./src/angry_bird.c:218: unsigned int prebut_enter = 0;
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),a
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
;Allocation info for local variables in function 'angrybird_display_game'
;------------------------------------------------------------
;control_strength_         Allocated with name '_angrybird_display_game_control_strength__65537_30'
;control_angle_            Allocated with name '_angrybird_display_game_control_angle__65537_30'
;i                         Allocated to registers r4 r5 
;angle_                    Allocated with name '_angrybird_display_game_angle__65539_32'
;k                         Allocated with name '_angrybird_display_game_k_131075_33'
;j                         Allocated to registers r4 r5 
;i                         Allocated to registers r3 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	./src/angry_bird.c:44: void angrybird_display_game(void)
;	-----------------------------------------
;	 function angrybird_display_game
;	-----------------------------------------
_angrybird_display_game:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/angry_bird.c:46: bird_amt = bird_total_amount;
	mov	_bird_amt,#0x05
	mov	(_bird_amt + 1),#0x00
;	./src/angry_bird.c:47: pig_amt = pig_total_amount;
	mov	_pig_amt,#0x01
	mov	(_pig_amt + 1),#0x00
;	./src/angry_bird.c:48: control_angle = 30;
	mov	_control_angle,#0x1e
	mov	(_control_angle + 1),#0x00
;	./src/angry_bird.c:49: control_strength = 1;
	mov	_control_strength,#0x01
	mov	(_control_strength + 1),#0x00
;	./src/angry_bird.c:51: OLED_Clear();
	lcall	_OLED_Clear
;	./src/angry_bird.c:55: control_strength_[0] = '0' + control_strength;
	mov	r7,_control_strength
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_display_game_control_strength__65537_30,a
;	./src/angry_bird.c:56: control_strength_[1] = '\0';
;	./src/angry_bird.c:58: int i = 0;
;	./src/angry_bird.c:59: if (control_angle < 0)
	clr	a
	mov	(_angrybird_display_game_control_strength__65537_30 + 0x0001),a
	mov	r6,a
	mov	r7,a
	mov	a,(_control_angle + 1)
	jnb	acc.7,00102$
;	./src/angry_bird.c:60: control_angle_[i++] = '-';
	mov	r6,#0x01
	mov	r7,#0x00
	mov	_angrybird_display_game_control_angle__65537_30,#0x2d
00102$:
;	./src/angry_bird.c:61: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
	mov	a,(_control_angle + 1)
	rlc	a
	mov	_angrybird_display_game_sloc0_1_0,c
	jc	00143$
	mov	r4,_control_angle
	mov	r5,(_control_angle + 1)
	sjmp	00144$
00143$:
	clr	c
	clr	a
	subb	a,_control_angle
	mov	r4,a
	clr	a
	subb	a,(_control_angle + 1)
	mov	r5,a
00144$:
	mov	_angrybird_display_game_angle__65539_32,r4
	mov	(_angrybird_display_game_angle__65539_32 + 1),r5
;	./src/angry_bird.c:62: if (angle_ % 100 / 10 != 0)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_display_game_angle__65539_32
	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00104$
;	./src/angry_bird.c:63: control_angle_[i++] = '0' + angle_ % 100 / 10;
	mov	ar4,r6
	mov	ar5,r7
	inc	r6
	cjne	r6,#0x00,00304$
	inc	r7
00304$:
	mov	a,r4
	add	a,#_angrybird_display_game_control_angle__65537_30
	mov	r1,a
	mov	a,#0x30
	add	a,r2
	mov	@r1,a
00104$:
;	./src/angry_bird.c:64: control_angle_[i++] = '0' + angle_ % 10;
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r6
	add	a,#_angrybird_display_game_control_angle__65537_30
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_display_game_angle__65539_32
	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
	push	ar5
	push	ar4
	push	ar1
	lcall	__modsint
	mov	r6,dpl
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,#0x30
	add	a,r6
	mov	@r1,a
;	./src/angry_bird.c:65: control_angle_[i++] = '\0';
	mov	a,r4
	add	a,#_angrybird_display_game_control_angle__65537_30
	mov	r0,a
	mov	@r0,#0x00
;	./src/angry_bird.c:67: OLED_SetCursor(strength_text_row_cursor, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:68: OLED_DisplayString("S ");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:69: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:70: OLED_DisplayString(control_strength_);
	mov	dptr,#_angrybird_display_game_control_strength__65537_30
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:72: OLED_SetCursor(strength_text_row_cursor, 20);
	mov	_OLED_SetCursor_PARM_2,#0x14
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:73: OLED_DisplayString("A ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:74: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:75: OLED_DisplayString(control_angle_);
	mov	dptr,#_angrybird_display_game_control_angle__65537_30
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:78: for (int k = 0; k < bird_total_amount; k++)
	clr	a
	mov	_angrybird_display_game_k_131075_33,a
	mov	(_angrybird_display_game_k_131075_33 + 1),a
00121$:
	clr	c
	mov	a,_angrybird_display_game_k_131075_33
	subb	a,#0x05
	mov	a,(_angrybird_display_game_k_131075_33 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jc	00305$
	ljmp	00107$
00305$:
;	./src/angry_bird.c:80: row_offset = 0;
	clr	a
	mov	_row_offset,a
	mov	(_row_offset + 1),a
;	./src/angry_bird.c:81: col_offset = bird_remain_col_cursor + k * 8;
	mov	r4,_angrybird_display_game_k_131075_33
	mov	a,(_angrybird_display_game_k_131075_33 + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r4
	swap	a
	rr	a
	xch	a,r4
	xrl	a,r4
	xch	a,r4
	anl	a,#0xf8
	xch	a,r4
	xrl	a,r4
	mov	r5,a
	mov	a,#0x4f
	add	a,r4
	mov	_col_offset,a
	clr	a
	addc	a,r5
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:82: for (int j = 0; j < bird_cul_size; j++)
	mov	r4,#0x00
	mov	r5,#0x00
00118$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00122$
;	./src/angry_bird.c:84: for (int i = 0; i < bird_row_size; i++)
	mov	r3,#0x00
00115$:
	cjne	r3,#0x01,00307$
00307$:
	jnc	00119$
;	./src/angry_bird.c:86: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r2,_row_offset
	clr	a
	add	a,r2
	mov	dpl,a
	mov	r2,_col_offset
	mov	ar7,r4
	mov	a,r7
	add	a,r2
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar5
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
	pop	ar5
	pop	ar7
;	./src/angry_bird.c:87: oledSendData(bird_logo[bird_cul_size * i + j]);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_bird_logo
	mov	dpl,a
	mov	a,r6
	addc	a,#(_bird_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar5
	push	ar4
	lcall	_oledSendData
	pop	ar4
	pop	ar5
;	./src/angry_bird.c:84: for (int i = 0; i < bird_row_size; i++)
	mov	r3,#0x01
	sjmp	00115$
00119$:
;	./src/angry_bird.c:82: for (int j = 0; j < bird_cul_size; j++)
	inc	r4
	cjne	r4,#0x00,00118$
	inc	r5
	sjmp	00118$
00122$:
;	./src/angry_bird.c:78: for (int k = 0; k < bird_total_amount; k++)
	inc	_angrybird_display_game_k_131075_33
	clr	a
	cjne	a,_angrybird_display_game_k_131075_33,00310$
	inc	(_angrybird_display_game_k_131075_33 + 1)
00310$:
	ljmp	00121$
00107$:
;	./src/angry_bird.c:93: row_offset = shoot_row_cursor;
	mov	_row_offset,#0x06
;	./src/angry_bird.c:94: col_offset = shoot_col_cursor;
	clr	a
	mov	(_row_offset + 1),a
	mov	_col_offset,a
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:95: for (int j = 0; j < shoot_cul_size; j++)
	mov	r6,a
	mov	r7,a
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00109$
;	./src/angry_bird.c:97: for (int i = 0; i < shoot_row_size; i++)
	mov	r5,#0x00
00124$:
	cjne	r5,#0x02,00312$
00312$:
	jnc	00128$
;	./src/angry_bird.c:99: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	mov	ar3,r5
	mov	a,r3
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar2,r6
	mov	a,r2
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_OLED_SetCursor
	pop	ar2
	pop	ar3
;	./src/angry_bird.c:100: oledSendData(shooter_logo[shoot_cul_size * i + j]);
	mov	a,r3
	swap	a
	rr	a
	anl	a,#0xf8
	add	a,r2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_shooter_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_shooter_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:97: for (int i = 0; i < shoot_row_size; i++)
	inc	r5
	sjmp	00124$
00128$:
;	./src/angry_bird.c:95: for (int j = 0; j < shoot_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
	sjmp	00127$
00109$:
;	./src/angry_bird.c:105: row_offset = bird_init_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:106: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:107: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00133$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00111$
;	./src/angry_bird.c:109: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00130$:
	cjne	r5,#0x01,00316$
00316$:
	jnc	00134$
;	./src/angry_bird.c:111: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	clr	a
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar3,r6
	mov	a,r3
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar3
	lcall	_OLED_SetCursor
	pop	ar3
;	./src/angry_bird.c:112: oledSendData(bird_logo[bird_cul_size * i + j]);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#_bird_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_bird_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:109: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00130$
00134$:
;	./src/angry_bird.c:107: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00133$
	inc	r7
	sjmp	00133$
00111$:
;	./src/angry_bird.c:134: row_offset = pig1_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:135: col_offset = pig1_col_cursor;
	mov	_col_offset,#0x50
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:136: for (int j = 0; j < pig_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00139$:
	clr	c
	mov	a,r6
	subb	a,#0x0c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00141$
;	./src/angry_bird.c:138: for (int i = 0; i < pig_row_size; i++)
	mov	r5,#0x00
00136$:
	cjne	r5,#0x02,00320$
00320$:
	jnc	00140$
;	./src/angry_bird.c:140: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	mov	ar3,r5
	mov	a,r3
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar2,r6
	mov	a,r2
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	push	ar3
	push	ar2
	lcall	_OLED_SetCursor
	pop	ar2
	pop	ar3
;	./src/angry_bird.c:141: oledSendData(pig_logo[pig_cul_size * i + j]);
	mov	a,r3
	mov	b,#0x0c
	mul	ab
	add	a,r2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_pig_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_pig_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:138: for (int i = 0; i < pig_row_size; i++)
	inc	r5
	sjmp	00136$
00140$:
;	./src/angry_bird.c:136: for (int j = 0; j < pig_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00139$
	inc	r7
	sjmp	00139$
00141$:
;	./src/angry_bird.c:144: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_state_machine'
;------------------------------------------------------------
;	./src/angry_bird.c:165: void angrybird_state_machine(void)
;	-----------------------------------------
;	 function angrybird_state_machine
;	-----------------------------------------
_angrybird_state_machine:
;	./src/angry_bird.c:167: switch (cur_state)
	mov	a,#0x03
	cjne	a,_cur_state,00155$
	clr	a
	cjne	a,(_cur_state + 1),00155$
	sjmp	00102$
00155$:
	mov	a,#0x04
	cjne	a,_cur_state,00156$
	clr	a
	cjne	a,(_cur_state + 1),00156$
	sjmp	00157$
00156$:
	sjmp	00103$
00157$:
;	./src/angry_bird.c:170: case STATE_PLAY_HARD:
00102$:
;	./src/angry_bird.c:171: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	./src/angry_bird.c:172: angrybird_game_state();
	lcall	_angrybird_game_state
;	./src/angry_bird.c:173: break;
;	./src/angry_bird.c:175: default:
	sjmp	00109$
00103$:
;	./src/angry_bird.c:176: if (led_cur_state == 0)
	mov	a,_led_cur_state
	orl	a,(_led_cur_state + 1)
;	./src/angry_bird.c:177: led_cur_state = 1;
	jnz	00107$
	mov	_led_cur_state,#0x01
	mov	(_led_cur_state + 1),a
	sjmp	00108$
00107$:
;	./src/angry_bird.c:178: else if (led_cur_state == 1)
	mov	a,#0x01
	cjne	a,_led_cur_state,00159$
	dec	a
	cjne	a,(_led_cur_state + 1),00159$
	sjmp	00160$
00159$:
	sjmp	00108$
00160$:
;	./src/angry_bird.c:179: led_cur_state = 0;
	clr	a
	mov	_led_cur_state,a
	mov	(_led_cur_state + 1),a
00108$:
;	./src/angry_bird.c:180: P1_0 = led_cur_state;
;	assignBit
	mov	a,_led_cur_state
	orl	a,(_led_cur_state + 1)
	add	a,#0xff
	mov	_P1_0,c
;	./src/angry_bird.c:182: delay_ms(500);
	mov	dptr,#0x01f4
	lcall	_delay_ms
;	./src/angry_bird.c:184: }
00109$:
;	./src/angry_bird.c:187: if (received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00114$
;	./src/angry_bird.c:189: cur_state = received_data;
	mov	_cur_state,_received_data
	mov	(_cur_state + 1),#0x00
;	./src/angry_bird.c:190: received_flag = 0;
	mov	_received_flag,#0x00
;	./src/angry_bird.c:191: P1_0 = 0;
;	assignBit
	clr	_P1_0
;	./src/angry_bird.c:193: I2C_Start();
	lcall	_I2C_Start
;	./src/angry_bird.c:194: OLED_Init();
	lcall	_OLED_Init
;	./src/angry_bird.c:197: if (cur_state == STATE_PLAY_EASY || cur_state == STATE_PLAY_HARD)
	mov	a,#0x03
	cjne	a,_cur_state,00163$
	clr	a
	cjne	a,(_cur_state + 1),00163$
	sjmp	00110$
00163$:
	mov	a,#0x04
	cjne	a,_cur_state,00164$
	clr	a
	cjne	a,(_cur_state + 1),00164$
	sjmp	00165$
00164$:
	sjmp	00114$
00165$:
00110$:
;	./src/angry_bird.c:198: angrybird_display_game();
	lcall	_angrybird_display_game
00114$:
;	./src/angry_bird.c:202: if (send_flag == 1)
	mov	a,#0x01
	cjne	a,_send_flag,00117$
;	./src/angry_bird.c:204: I2C_Stop();
	lcall	_I2C_Stop
;	./src/angry_bird.c:205: SBUF = send_data; // send data to SBUF
	mov	_SBUF,_send_data
;	./src/angry_bird.c:206: send_flag = 0;
	mov	_send_flag,#0x00
00117$:
;	./src/angry_bird.c:212: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_game_state'
;------------------------------------------------------------
;which                     Allocated to registers r7 
;control_angle_            Allocated with name '_angrybird_game_state_control_angle__196609_62'
;i                         Allocated to registers r4 r5 
;angle_                    Allocated with name '_angrybird_game_state_angle__196610_63'
;which                     Allocated to registers r7 
;control_strength_         Allocated with name '_angrybird_game_state_control_strength__196609_68'
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;delta_y                   Allocated with name '_angrybird_game_state_delta_y_196609_75'
;delta_x                   Allocated with name '_angrybird_game_state_delta_x_196609_75'
;peak_x                    Allocated with name '_angrybird_game_state_peak_x_196609_75'
;peak_y                    Allocated with name '_angrybird_game_state_peak_y_196609_75'
;a                         Allocated with name '_angrybird_game_state_a_196609_75'
;j                         Allocated to registers r2 r3 
;i                         Allocated to registers r7 
;i                         Allocated with name '_angrybird_game_state_i_262145_80'
;output_row                Allocated with name '_angrybird_game_state_output_row_327681_81'
;j                         Allocated to registers r2 r3 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;sloc1                     Allocated with name '_angrybird_game_state_sloc1_1_0'
;------------------------------------------------------------
;	./src/angry_bird.c:222: void angrybird_game_state(void)
;	-----------------------------------------
;	 function angrybird_game_state
;	-----------------------------------------
_angrybird_game_state:
;	./src/angry_bird.c:225: if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
	jb	_P2_0,00119$
	mov	a,#0x01
	cjne	a,_prebut_up,00691$
	dec	a
	cjne	a,(_prebut_up + 1),00691$
	sjmp	00115$
00691$:
00119$:
	jnb	_P2_1,00692$
	ljmp	00116$
00692$:
	mov	a,#0x01
	cjne	a,_prebut_down,00693$
	dec	a
	cjne	a,(_prebut_down + 1),00693$
	sjmp	00694$
00693$:
	ljmp	00116$
00694$:
00115$:
;	./src/angry_bird.c:228: int which = (but_up == 0) ? 1 : 0;
	jb	_P2_0,00226$
	mov	r7,#0x01
	sjmp	00227$
00226$:
	mov	r7,#0x00
00227$:
;	./src/angry_bird.c:229: if (but_up == 0 || but_down == 0)
	jnb	_P2_0,00112$
	jnb	_P2_1,00697$
	ljmp	00116$
00697$:
00112$:
;	./src/angry_bird.c:231: if (which == 1)
	cjne	r7,#0x01,00106$
;	./src/angry_bird.c:233: control_angle += 10;
	mov	a,#0x0a
	add	a,_control_angle
	mov	_control_angle,a
	clr	a
	addc	a,(_control_angle + 1)
	mov	(_control_angle + 1),a
;	./src/angry_bird.c:234: if (control_angle > 90)
	clr	c
	mov	a,#0x5a
	subb	a,_control_angle
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_control_angle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	./src/angry_bird.c:235: control_angle = 90;
	mov	_control_angle,#0x5a
	mov	(_control_angle + 1),#0x00
	sjmp	00107$
00106$:
;	./src/angry_bird.c:239: control_angle -= 10;
	mov	a,_control_angle
	add	a,#0xf6
	mov	_control_angle,a
	mov	a,(_control_angle + 1)
	addc	a,#0xff
;	./src/angry_bird.c:240: if (control_angle < 0)
	mov	(_control_angle + 1),a
	jnb	acc.7,00107$
;	./src/angry_bird.c:241: control_angle = 0;
	clr	a
	mov	_control_angle,a
	mov	(_control_angle + 1),a
00107$:
;	./src/angry_bird.c:246: int i = 0;
;	./src/angry_bird.c:247: if (control_angle < 0)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,(_control_angle + 1)
	jnb	acc.7,00109$
;	./src/angry_bird.c:248: control_angle_[i++] = '-';
	mov	r6,#0x01
	mov	r7,#0x00
	mov	_angrybird_game_state_control_angle__196609_62,#0x2d
00109$:
;	./src/angry_bird.c:249: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
	mov	a,(_control_angle + 1)
	rlc	a
	mov	_angrybird_game_state_sloc0_1_0,c
	jc	00228$
	mov	r4,_control_angle
	mov	r5,(_control_angle + 1)
	sjmp	00229$
00228$:
	clr	c
	clr	a
	subb	a,_control_angle
	mov	r4,a
	clr	a
	subb	a,(_control_angle + 1)
	mov	r5,a
00229$:
	mov	_angrybird_game_state_angle__196610_63,r4
	mov	(_angrybird_game_state_angle__196610_63 + 1),r5
;	./src/angry_bird.c:250: if (angle_ % 100 / 10 != 0)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_game_state_angle__196610_63
	mov	dph,(_angrybird_game_state_angle__196610_63 + 1)
	push	ar7
	push	ar6
	lcall	__modsint
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	lcall	__divsint
	mov	r2,dpl
	mov	r3,dph
	pop	ar6
	pop	ar7
	mov	a,r2
	orl	a,r3
	jz	00111$
;	./src/angry_bird.c:251: control_angle_[i++] = '0' + angle_ % 100 / 10;
	mov	ar4,r6
	mov	ar5,r7
	inc	r6
	cjne	r6,#0x00,00705$
	inc	r7
00705$:
	mov	a,r4
	add	a,#_angrybird_game_state_control_angle__196609_62
	mov	r1,a
	mov	a,#0x30
	add	a,r2
	mov	@r1,a
00111$:
;	./src/angry_bird.c:252: control_angle_[i++] = '0' + angle_ % 10;
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r6
	add	a,#_angrybird_game_state_control_angle__196609_62
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_game_state_angle__196610_63
	mov	dph,(_angrybird_game_state_angle__196610_63 + 1)
	push	ar5
	push	ar4
	push	ar1
	lcall	__modsint
	mov	r6,dpl
	pop	ar1
	pop	ar4
	pop	ar5
	mov	a,#0x30
	add	a,r6
	mov	@r1,a
;	./src/angry_bird.c:253: control_angle_[i++] = '\0';
	mov	a,r4
	add	a,#_angrybird_game_state_control_angle__196609_62
	mov	r0,a
	mov	@r0,#0x00
;	./src/angry_bird.c:255: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:256: OLED_DisplayString("   ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:257: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:258: OLED_DisplayString(control_angle_);
	mov	dptr,#_angrybird_game_state_control_angle__196609_62
	mov	b,#0x40
	lcall	_OLED_DisplayString
00116$:
;	./src/angry_bird.c:263: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
	jb	_INT0,00134$
	mov	a,#0x01
	cjne	a,_prebut_left,00707$
	dec	a
	cjne	a,(_prebut_left + 1),00707$
	sjmp	00130$
00707$:
00134$:
	jnb	_INT1,00708$
	ljmp	00131$
00708$:
	mov	a,#0x01
	cjne	a,_prebut_right,00709$
	dec	a
	cjne	a,(_prebut_right + 1),00709$
	sjmp	00710$
00709$:
	ljmp	00131$
00710$:
00130$:
;	./src/angry_bird.c:266: int which = (but_left == 0) ? 1 : 0;
	jb	_INT0,00230$
	mov	r7,#0x01
	sjmp	00231$
00230$:
	mov	r7,#0x00
00231$:
;	./src/angry_bird.c:267: if (but_left == 0 || but_right == 0)
	jnb	_INT0,00127$
	jb	_INT1,00131$
00127$:
;	./src/angry_bird.c:269: if (which == 1)
	cjne	r7,#0x01,00125$
;	./src/angry_bird.c:271: control_strength--;
	dec	_control_strength
	mov	a,#0xff
	cjne	a,_control_strength,00716$
	dec	(_control_strength + 1)
00716$:
;	./src/angry_bird.c:272: if (control_strength < 1)
	clr	c
	mov	a,_control_strength
	subb	a,#0x01
	mov	a,(_control_strength + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00126$
;	./src/angry_bird.c:273: control_strength = 1;
	mov	_control_strength,#0x01
	mov	(_control_strength + 1),#0x00
	sjmp	00126$
00125$:
;	./src/angry_bird.c:277: control_strength++;
	inc	_control_strength
	clr	a
	cjne	a,_control_strength,00718$
	inc	(_control_strength + 1)
00718$:
;	./src/angry_bird.c:278: if (control_strength > 3)
	clr	c
	mov	a,#0x03
	subb	a,_control_strength
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_control_strength + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
;	./src/angry_bird.c:279: control_strength = 3;
	mov	_control_strength,#0x03
	mov	(_control_strength + 1),#0x00
00126$:
;	./src/angry_bird.c:284: control_strength_[0] = '0' + control_strength;
	mov	r7,_control_strength
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_game_state_control_strength__196609_68,a
;	./src/angry_bird.c:285: control_strength_[1] = '\0';
	mov	(_angrybird_game_state_control_strength__196609_68 + 0x0001),#0x00
;	./src/angry_bird.c:287: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:288: OLED_DisplayString(" ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:289: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:290: OLED_DisplayString(control_strength_);
	mov	dptr,#_angrybird_game_state_control_strength__196609_68
	mov	b,#0x40
	lcall	_OLED_DisplayString
00131$:
;	./src/angry_bird.c:295: if ((but_enter == 0) && (prebut_enter == 1))
	jnb	_P2_2,00720$
	ljmp	00159$
00720$:
	mov	a,#0x01
	cjne	a,_prebut_enter,00721$
	dec	a
	cjne	a,(_prebut_enter + 1),00721$
	sjmp	00722$
00721$:
	ljmp	00159$
00722$:
;	./src/angry_bird.c:297: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:298: if (but_enter == 0)
	jnb	_P2_2,00723$
	ljmp	00159$
00723$:
;	./src/angry_bird.c:300: bird_amt--;
	dec	_bird_amt
	mov	a,#0xff
	cjne	a,_bird_amt,00724$
	dec	(_bird_amt + 1)
00724$:
;	./src/angry_bird.c:302: row_offset = 0;
	clr	a
	mov	_row_offset,a
	mov	(_row_offset + 1),a
;	./src/angry_bird.c:303: col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
	mov	a,#0x04
	clr	c
	subb	a,_bird_amt
	mov	r6,a
	clr	a
	subb	a,(_bird_amt + 1)
	swap	a
	rr	a
	anl	a,#0xf8
	xch	a,r6
	swap	a
	rr	a
	xch	a,r6
	xrl	a,r6
	xch	a,r6
	anl	a,#0xf8
	xch	a,r6
	xrl	a,r6
	mov	r7,a
	mov	a,#0x4f
	add	a,r6
	mov	_col_offset,a
	clr	a
	addc	a,r7
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:304: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00177$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00136$
;	./src/angry_bird.c:306: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00174$:
	cjne	r5,#0x01,00726$
00726$:
	jnc	00178$
;	./src/angry_bird.c:308: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	clr	a
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar3,r6
	mov	a,r3
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:309: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:306: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00174$
00178$:
;	./src/angry_bird.c:304: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00177$
	inc	r7
	sjmp	00177$
00136$:
;	./src/angry_bird.c:316: float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
	mov	dpl,_control_angle
	mov	dph,(_control_angle + 1)
	lcall	_getsine
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	push	ar4
	push	ar5
	push	ar6
	push	ar7
;	./src/angry_bird.c:317: float delta_x = control_strength_value * control_strength - delta_y * 4;
	mov	dptr,#0xc3b7
	mov	b,#0x07
	mov	a,#0x41
	lcall	___fsmul
	mov	_angrybird_game_state_delta_y_196609_75,dpl
	mov	(_angrybird_game_state_delta_y_196609_75 + 1),dph
	mov	(_angrybird_game_state_delta_y_196609_75 + 2),b
	mov	(_angrybird_game_state_delta_y_196609_75 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	__mulint_PARM_2,_control_strength
	mov	(__mulint_PARM_2 + 1),(_control_strength + 1)
	mov	dptr,#0x0019
	lcall	__mulint
	mov	r2,dpl
	mov	r3,dph
	push	ar3
	push	ar2
	push	_angrybird_game_state_delta_y_196609_75
	push	(_angrybird_game_state_delta_y_196609_75 + 1)
	push	(_angrybird_game_state_delta_y_196609_75 + 2)
	push	(_angrybird_game_state_delta_y_196609_75 + 3)
	mov	dptr,#0x0000
	mov	b,#0x80
	mov	a,#0x40
	lcall	___fsmul
	mov	_angrybird_game_state_sloc1_1_0,dpl
	mov	(_angrybird_game_state_sloc1_1_0 + 1),dph
	mov	(_angrybird_game_state_sloc1_1_0 + 2),b
	mov	(_angrybird_game_state_sloc1_1_0 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	pop	ar2
	pop	ar3
	mov	dpl,r2
	mov	dph,r3
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	_angrybird_game_state_sloc1_1_0
	push	(_angrybird_game_state_sloc1_1_0 + 1)
	push	(_angrybird_game_state_sloc1_1_0 + 2)
	push	(_angrybird_game_state_sloc1_1_0 + 3)
;	./src/angry_bird.c:318: float peak_x = bird_init_col_cursor + delta_x;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_angrybird_game_state_delta_x_196609_75,dpl
	mov	(_angrybird_game_state_delta_x_196609_75 + 1),dph
	mov	(_angrybird_game_state_delta_x_196609_75 + 2),b
	mov	(_angrybird_game_state_delta_x_196609_75 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x41
	push	acc
;	./src/angry_bird.c:319: float peak_y = bird_init_row_cursor - delta_y;
	mov	dpl,_angrybird_game_state_delta_x_196609_75
	mov	dph,(_angrybird_game_state_delta_x_196609_75 + 1)
	mov	b,(_angrybird_game_state_delta_x_196609_75 + 2)
	mov	a,(_angrybird_game_state_delta_x_196609_75 + 3)
	lcall	___fsadd
	mov	_angrybird_game_state_peak_x_196609_75,dpl
	mov	(_angrybird_game_state_peak_x_196609_75 + 1),dph
	mov	(_angrybird_game_state_peak_x_196609_75 + 2),b
	mov	(_angrybird_game_state_peak_x_196609_75 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_angrybird_game_state_delta_y_196609_75
	push	(_angrybird_game_state_delta_y_196609_75 + 1)
	push	(_angrybird_game_state_delta_y_196609_75 + 2)
	push	(_angrybird_game_state_delta_y_196609_75 + 3)
;	./src/angry_bird.c:320: float a = delta_y / pow_2(delta_x);
	mov	dptr,#0x0000
	mov	b,#0xe0
	mov	a,#0x40
	lcall	___fssub
	mov	_angrybird_game_state_peak_y_196609_75,dpl
	mov	(_angrybird_game_state_peak_y_196609_75 + 1),dph
	mov	(_angrybird_game_state_peak_y_196609_75 + 2),b
	mov	(_angrybird_game_state_peak_y_196609_75 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_angrybird_game_state_delta_x_196609_75
	mov	dph,(_angrybird_game_state_delta_x_196609_75 + 1)
	mov	b,(_angrybird_game_state_delta_x_196609_75 + 2)
	mov	a,(_angrybird_game_state_delta_x_196609_75 + 3)
	lcall	_pow_2
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
;	./src/angry_bird.c:322: row_offset = bird_init_row_cursor;
	mov	dpl,_angrybird_game_state_delta_y_196609_75
	mov	dph,(_angrybird_game_state_delta_y_196609_75 + 1)
	mov	b,(_angrybird_game_state_delta_y_196609_75 + 2)
	mov	a,(_angrybird_game_state_delta_y_196609_75 + 3)
	lcall	___fsdiv
	mov	_angrybird_game_state_a_196609_75,dpl
	mov	(_angrybird_game_state_a_196609_75 + 1),dph
	mov	(_angrybird_game_state_a_196609_75 + 2),b
	mov	(_angrybird_game_state_a_196609_75 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:323: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
	mov	r2,#0x00
	mov	r3,#0x00
00183$:
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00138$
;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
	mov	r7,#0x00
00180$:
	cjne	r7,#0x01,00730$
00730$:
	jnc	00184$
;	./src/angry_bird.c:328: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r6,_row_offset
	clr	a
	add	a,r6
	mov	dpl,a
	mov	r6,_col_offset
	mov	ar5,r2
	mov	a,r5
	add	a,r6
	mov	_OLED_SetCursor_PARM_2,a
	push	ar3
	push	ar2
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:329: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar2
	pop	ar3
;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
	mov	r7,#0x01
	sjmp	00180$
00184$:
;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
	inc	r2
	cjne	r2,#0x00,00183$
	inc	r3
	sjmp	00183$
00138$:
;	./src/angry_bird.c:333: for (int i = 16; i <= 119; i += 8)
	mov	_angrybird_game_state_i_262145_80,#0x10
	mov	(_angrybird_game_state_i_262145_80 + 1),#0x00
00204$:
	clr	c
	mov	a,#0x77
	subb	a,_angrybird_game_state_i_262145_80
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_angrybird_game_state_i_262145_80 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00733$
	ljmp	00153$
00733$:
;	./src/angry_bird.c:335: int output_row = a * pow_2(i - peak_x) + peak_y;
	mov	dpl,_angrybird_game_state_i_262145_80
	mov	dph,(_angrybird_game_state_i_262145_80 + 1)
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	_angrybird_game_state_peak_x_196609_75
	push	(_angrybird_game_state_peak_x_196609_75 + 1)
	push	(_angrybird_game_state_peak_x_196609_75 + 2)
	push	(_angrybird_game_state_peak_x_196609_75 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fssub
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	_pow_2
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	mov	dpl,_angrybird_game_state_a_196609_75
	mov	dph,(_angrybird_game_state_a_196609_75 + 1)
	mov	b,(_angrybird_game_state_a_196609_75 + 2)
	mov	a,(_angrybird_game_state_a_196609_75 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_angrybird_game_state_peak_y_196609_75
	push	(_angrybird_game_state_peak_y_196609_75 + 1)
	push	(_angrybird_game_state_peak_y_196609_75 + 2)
	push	(_angrybird_game_state_peak_y_196609_75 + 3)
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fsadd
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
	lcall	___fs2sint
	mov	_angrybird_game_state_output_row_327681_81,dpl
	mov	(_angrybird_game_state_output_row_327681_81 + 1),dph
;	./src/angry_bird.c:337: if (1 <= output_row && output_row <= 7)
	clr	c
	mov	a,_angrybird_game_state_output_row_327681_81
	subb	a,#0x01
	mov	a,(_angrybird_game_state_output_row_327681_81 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00734$
	ljmp	00205$
00734$:
	clr	c
	mov	a,#0x07
	subb	a,_angrybird_game_state_output_row_327681_81
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_angrybird_game_state_output_row_327681_81 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00735$
	ljmp	00205$
00735$:
;	./src/angry_bird.c:340: row_offset = output_row;
	mov	_row_offset,_angrybird_game_state_output_row_327681_81
	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_81 + 1)
;	./src/angry_bird.c:341: col_offset = bird_init_col_cursor + i;
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_80
	mov	_col_offset,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_80 + 1)
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:342: for (int j = 0; j < bird_cul_size; j++)
	mov	r2,#0x00
	mov	r3,#0x00
00189$:
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00140$
;	./src/angry_bird.c:344: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00186$:
	cjne	r5,#0x01,00737$
00737$:
	jnc	00190$
;	./src/angry_bird.c:346: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	clr	a
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar7,r2
	mov	a,r7
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar3
	push	ar2
	lcall	_OLED_SetCursor
	pop	ar2
	pop	ar3
	pop	ar7
;	./src/angry_bird.c:347: oledSendData(bird_logo[bird_cul_size * i + j]);
	mov	a,r7
	rlc	a
	subb	a,acc
	mov	r6,a
	mov	a,r7
	add	a,#_bird_logo
	mov	dpl,a
	mov	a,r6
	addc	a,#(_bird_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar3
	push	ar2
	lcall	_oledSendData
	pop	ar2
	pop	ar3
;	./src/angry_bird.c:344: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00186$
00190$:
;	./src/angry_bird.c:342: for (int j = 0; j < bird_cul_size; j++)
	inc	r2
	cjne	r2,#0x00,00189$
	inc	r3
	sjmp	00189$
00140$:
;	./src/angry_bird.c:350: delay_ms(400);
	mov	dptr,#0x0190
	lcall	_delay_ms
;	./src/angry_bird.c:374: if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
	clr	c
	mov	a,_row_offset
	subb	a,#0x03
	mov	a,(_row_offset + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00740$
	ljmp	00144$
00740$:
	clr	c
	mov	a,#0x04
	subb	a,_row_offset
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_row_offset + 1)
	xrl	b,#0x80
	subb	a,b
	jc	00144$
	mov	a,#0x48
	subb	a,_col_offset
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_col_offset + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00144$
	clr	c
	mov	a,_col_offset
	subb	a,#0x5c
	mov	a,(_col_offset + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00144$
;	./src/angry_bird.c:376: pig_amt--;
	dec	_pig_amt
	mov	a,#0xff
	cjne	a,_pig_amt,00744$
	dec	(_pig_amt + 1)
00744$:
;	./src/angry_bird.c:377: row_offset = pig1_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:378: col_offset = pig1_col_cursor;
	mov	_col_offset,#0x50
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:379: for (int j = 0; j < pig_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00195$:
	clr	c
	mov	a,r6
	subb	a,#0x0c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00144$
;	./src/angry_bird.c:381: for (int i = 0; i < pig_row_size; i++)
	mov	r5,#0x00
00192$:
	cjne	r5,#0x02,00746$
00746$:
	jnc	00196$
;	./src/angry_bird.c:383: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	mov	ar3,r5
	mov	a,r3
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar3,r6
	mov	a,r3
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:384: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:381: for (int i = 0; i < pig_row_size; i++)
	inc	r5
	sjmp	00192$
00196$:
;	./src/angry_bird.c:379: for (int j = 0; j < pig_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00195$
	inc	r7
	sjmp	00195$
00144$:
;	./src/angry_bird.c:389: row_offset = output_row;
	mov	_row_offset,_angrybird_game_state_output_row_327681_81
	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_81 + 1)
;	./src/angry_bird.c:390: col_offset = bird_init_col_cursor + i;
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_80
	mov	_col_offset,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_80 + 1)
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:391: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00201$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00205$
;	./src/angry_bird.c:393: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00198$:
	cjne	r5,#0x01,00750$
00750$:
	jnc	00202$
;	./src/angry_bird.c:395: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	clr	a
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar3,r6
	mov	a,r3
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:396: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:393: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00198$
00202$:
;	./src/angry_bird.c:391: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00201$
	inc	r7
	sjmp	00201$
00205$:
;	./src/angry_bird.c:333: for (int i = 16; i <= 119; i += 8)
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_80
	mov	_angrybird_game_state_i_262145_80,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_80 + 1)
	mov	(_angrybird_game_state_i_262145_80 + 1),a
	ljmp	00204$
00153$:
;	./src/angry_bird.c:403: row_offset = bird_init_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:404: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:405: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00210$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00159$
;	./src/angry_bird.c:407: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00207$:
	cjne	r5,#0x01,00754$
00754$:
	jnc	00211$
;	./src/angry_bird.c:409: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r4,_row_offset
	clr	a
	add	a,r4
	mov	dpl,a
	mov	r4,_col_offset
	mov	ar3,r6
	mov	a,r3
	add	a,r4
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar3
	lcall	_OLED_SetCursor
	pop	ar3
;	./src/angry_bird.c:410: oledSendData(bird_logo[bird_cul_size * i + j]);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#_bird_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_bird_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:407: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00207$
00211$:
;	./src/angry_bird.c:405: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00210$
	inc	r7
	sjmp	00210$
00159$:
;	./src/angry_bird.c:421: if (pig_amt == 0 || bird_amt == 0)
	mov	a,_pig_amt
	orl	a,(_pig_amt + 1)
	jz	00170$
	mov	a,_bird_amt
	orl	a,(_bird_amt + 1)
	jz	00758$
	ljmp	00171$
00758$:
00170$:
;	./src/angry_bird.c:423: row_offset = win_over_row_cursor;
	mov	_row_offset,#0x02
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:424: col_offset = win_over_col_cursor;
	mov	_col_offset,#0x32
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:425: if (pig_amt == 0)
	mov	a,_pig_amt
	orl	a,(_pig_amt + 1)
	jz	00759$
	ljmp	00168$
00759$:
;	./src/angry_bird.c:427: for (int j = 0; j < win_over_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00216$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jc	00760$
	ljmp	00169$
00760$:
;	./src/angry_bird.c:429: for (int i = 0; i < win_over_row_size; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00213$:
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00217$
;	./src/angry_bird.c:431: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r3,_row_offset
	mov	ar2,r4
	mov	a,r2
	add	a,r3
	mov	dpl,a
	mov	r3,_col_offset
	mov	ar2,r6
	mov	a,r2
	add	a,r3
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:432: oledSendData(win_page[win_over_cul_size * i + j]);
	mov	ar2,r4
	mov	a,r5
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_win_page
	mov	dpl,a
	mov	a,r3
	addc	a,#(_win_page >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_oledSendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:429: for (int i = 0; i < win_over_row_size; i++)
	inc	r4
	cjne	r4,#0x00,00213$
	inc	r5
	sjmp	00213$
00217$:
;	./src/angry_bird.c:427: for (int j = 0; j < win_over_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00763$
	inc	r7
00763$:
	ljmp	00216$
00168$:
;	./src/angry_bird.c:436: else if (bird_amt == 0)
	mov	a,_bird_amt
	orl	a,(_bird_amt + 1)
	jz	00764$
	ljmp	00169$
00764$:
;	./src/angry_bird.c:438: for (int j = 0; j < win_over_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00222$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00169$
;	./src/angry_bird.c:440: for (int i = 0; i < win_over_row_size; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00219$:
	clr	c
	mov	a,r4
	subb	a,#0x02
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00223$
;	./src/angry_bird.c:442: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r3,_row_offset
	mov	ar2,r4
	mov	a,r2
	add	a,r3
	mov	dpl,a
	mov	r3,_col_offset
	mov	ar2,r6
	mov	a,r2
	add	a,r3
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:443: oledSendData(over_page[win_over_cul_size * i + j]);
	mov	ar2,r4
	mov	a,r5
	anl	a,#0x03
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	mov	c,acc.0
	xch	a,r2
	rrc	a
	xch	a,r2
	rrc	a
	xch	a,r2
	mov	r3,a
	mov	a,r6
	add	a,r2
	mov	r2,a
	mov	a,r7
	addc	a,r3
	mov	r3,a
	mov	a,r2
	add	a,#_over_page
	mov	dpl,a
	mov	a,r3
	addc	a,#(_over_page >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	push	ar4
	lcall	_oledSendData
	pop	ar4
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:440: for (int i = 0; i < win_over_row_size; i++)
	inc	r4
	cjne	r4,#0x00,00219$
	inc	r5
	sjmp	00219$
00223$:
;	./src/angry_bird.c:438: for (int j = 0; j < win_over_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00768$
	inc	r7
00768$:
	ljmp	00222$
00169$:
;	./src/angry_bird.c:447: delay_ms(1000);
	mov	dptr,#0x03e8
	lcall	_delay_ms
;	./src/angry_bird.c:448: cur_state = STATE_HOME;
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),#0x00
;	./src/angry_bird.c:450: send_data = cur_state;
	mov	_send_data,#0x01
;	./src/angry_bird.c:451: send_flag = 1;
	mov	_send_flag,#0x01
00171$:
;	./src/angry_bird.c:455: prebut_enter = but_enter;
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),#0x00
;	./src/angry_bird.c:456: prebut_up = but_up;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	_prebut_up,a
	mov	(_prebut_up + 1),#0x00
;	./src/angry_bird.c:457: prebut_down = but_down;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut_down,a
	mov	(_prebut_down + 1),#0x00
;	./src/angry_bird.c:458: prebut_left = but_left;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	_prebut_left,a
	mov	(_prebut_left + 1),#0x00
;	./src/angry_bird.c:459: prebut_right = but_right;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	_prebut_right,a
	mov	(_prebut_right + 1),#0x00
;	./src/angry_bird.c:460: delay_ms(10);
	mov	dptr,#0x000a
;	./src/angry_bird.c:461: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'getsine'
;------------------------------------------------------------
;angle                     Allocated to registers r6 r7 
;index                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:467: float getsine(int angle)
;	-----------------------------------------
;	 function getsine
;	-----------------------------------------
_getsine:
	mov	r6,dpl
	mov	r7,dph
;	./src/angry_bird.c:469: int index = (angle > 0) ? (angle / 10) : (-angle / 10);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	clr	a
	rlc	a
	mov	r5,a
	jz	00103$
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	sjmp	00104$
00103$:
	clr	c
	clr	a
	subb	a,r6
	mov	dpl,a
	clr	a
	subb	a,r7
	mov	dph,a
	mov	__divsint_PARM_2,#0x0a
	mov	(__divsint_PARM_2 + 1),#0x00
	push	ar5
	lcall	__divsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
00104$:
	mov	ar6,r3
	mov	ar7,r4
;	./src/angry_bird.c:470: return (angle > 0) ? sine_table[index] : -sine_table[index];
	mov	a,r5
	jz	00105$
	mov	a,r6
	add	a,r6
	mov	r4,a
	mov	a,r7
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,r4
	mov	r4,a
	mov	a,r5
	rlc	a
	mov	r5,a
	mov	a,r4
	add	a,#_sine_table
	mov	dpl,a
	mov	a,r5
	addc	a,#(_sine_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r2,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r3,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r4,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r5,a
	sjmp	00106$
00105$:
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,r6
	mov	r6,a
	mov	a,r7
	rlc	a
	mov	r7,a
	mov	a,r6
	add	a,#_sine_table
	mov	dpl,a
	mov	a,r7
	addc	a,#(_sine_table >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	r0,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r1,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r6,a
	inc	dptr
	clr	a
	movc	a,@a+dptr
	mov	r7,a
	mov	ar2,r0
	mov	ar3,r1
	mov	ar4,r6
	mov	a,r7
	cpl	acc.7
	mov	r5,a
00106$:
	mov	dpl,r2
	mov	dph,r3
	mov	b,r4
	mov	a,r5
;	./src/angry_bird.c:471: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getcosine'
;------------------------------------------------------------
;angle                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:472: float getcosine(int angle)
;	-----------------------------------------
;	 function getcosine
;	-----------------------------------------
_getcosine:
	mov	r6,dpl
	mov	r7,dph
;	./src/angry_bird.c:474: return getsine((angle > 0) ? -angle + 90 : angle + 90);
	clr	c
	clr	a
	subb	a,r6
	mov	a,#(0x00 ^ 0x80)
	mov	b,r7
	xrl	b,#0x80
	subb	a,b
	jnc	00103$
	clr	c
	clr	a
	subb	a,r6
	mov	r4,a
	clr	a
	subb	a,r7
	mov	r5,a
	mov	a,#0x5a
	add	a,r4
	mov	r4,a
	clr	a
	addc	a,r5
	mov	r5,a
	sjmp	00104$
00103$:
	mov	a,#0x5a
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
00104$:
	mov	dpl,r4
	mov	dph,r5
;	./src/angry_bird.c:475: }
	ljmp	_getsine
;------------------------------------------------------------
;Allocation info for local variables in function 'pow_2'
;------------------------------------------------------------
;n                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:476: float pow_2(float n)
;	-----------------------------------------
;	 function pow_2
;	-----------------------------------------
_pow_2:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/angry_bird.c:478: return n * n;
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
	lcall	___fsmul
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,r4
	mov	dph,r5
	mov	b,r6
	mov	a,r7
;	./src/angry_bird.c:479: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_shooter_logo:
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf6	; 246
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0xff	; 255
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x00	; 0
_pig_logo:
	.db #0xc0	; 192
	.db #0x30	; 48	'0'
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xfc	; 252
	.db #0xfc	; 252
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0xf0	; 240
	.db #0xc0	; 192
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x01	; 1
_bird_logo:
	.db #0x7e	; 126
	.db #0xc3	; 195
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xc3	; 195
	.db #0x7e	; 126
_win_page:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0xff	; 255
	.db #0xf8	; 248
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x7f	; 127
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_over_page:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0xdf	; 223
	.db #0xfe	; 254
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0x03	; 3
	.db #0x0f	; 15
	.db #0x7f	; 127
	.db #0xfe	; 254
	.db #0xf0	; 240
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0xfc	; 252
	.db #0xff	; 255
	.db #0x1f	; 31
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x33	; 51	'3'
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0xfe	; 254
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0xff	; 255
	.db #0x73	; 115	's'
	.db #0xf3	; 243
	.db #0xf7	; 247
	.db #0xff	; 255
	.db #0xbf	; 191
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.area CONST   (CODE)
___str_0:
	.ascii "S "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "A "
	.db 0x00
	.area CSEG    (CODE)
_sine_table:
	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
	.byte #0x33, #0xc4, #0x31, #0x3e	;  1.736000e-01
	.byte #0xa0, #0x1a, #0xaf, #0x3e	;  3.420000e-01
	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
	.byte #0x8a, #0x8e, #0x24, #0x3f	;  6.428000e-01
	.byte #0x93, #0x18, #0x44, #0x3f	;  7.660000e-01
	.byte #0x2d, #0xb2, #0x5d, #0x3f	;  8.660000e-01
	.byte #0x2e, #0x90, #0x70, #0x3f	;  9.397000e-01
	.byte #0xda, #0x1b, #0x7c, #0x3f	;  9.848000e-01
	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
	.area CONST   (CODE)
___str_2:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
