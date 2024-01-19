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
	.globl _bird_logo
	.globl _pig_logo
	.globl _shooter_logo
	.globl _button_right_logo
	.globl _button_left_logo
	.globl _volume_logo
	.globl _music_logo
	.globl _button_down_logo
	.globl _button_up_logo
	.globl _angry_bird_logo
	.globl _oledSendData
	.globl _OLED_SetCursor
	.globl _OLED_Clear
	.globl _OLED_DisplayString
	.globl _delay_ms
	.globl _strlen
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
	.globl _pig_amt
	.globl _bird_amt
	.globl _cur_state
	.globl _control_strength
	.globl _control_angle
	.globl _volume_value
	.globl _music_value
	.globl _setting_state_past
	.globl _setting_state
	.globl _selection_list
	.globl _selection_list_past
	.globl _selection_list_cur
	.globl _col_offset
	.globl _row_offset
	.globl _angrybird_display_home
	.globl _angrybird_display_setting
	.globl _angrybird_display_game
	.globl _angrybird_state_machine
	.globl _angrybird_home_state
	.globl _angrybird_setting_state
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
_row_offset::
	.ds 2
_col_offset::
	.ds 2
_selection_list_cur::
	.ds 2
_selection_list_past::
	.ds 2
_selection_list::
	.ds 9
_setting_state::
	.ds 2
_setting_state_past::
	.ds 2
_music_value::
	.ds 2
_volume_value::
	.ds 2
_control_angle::
	.ds 2
_control_strength::
	.ds 2
_angrybird_display_game_control_strength__65537_144:
	.ds 2
_angrybird_display_game_control_angle__65537_144:
	.ds 5
_angrybird_display_game_angle__65539_146:
	.ds 2
_cur_state::
	.ds 2
_bird_amt::
	.ds 2
_pig_amt::
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
_angrybird_game_state_control_angle__196609_181:
	.ds 5
_angrybird_game_state_angle__196610_182:
	.ds 2
_angrybird_game_state_control_strength__196609_187:
	.ds 2
_angrybird_game_state_delta_y_196609_194:
	.ds 4
_angrybird_game_state_delta_x_196609_194:
	.ds 4
_angrybird_game_state_peak_x_196609_194:
	.ds 4
_angrybird_game_state_peak_y_196609_194:
	.ds 4
_angrybird_game_state_a_196609_194:
	.ds 4
_angrybird_game_state_i_262145_199:
	.ds 2
_angrybird_game_state_output_row_327681_200:
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
;	./src/angry_bird.c:61: int selection_list_cur = 1, selection_list_past = 1;
	mov	_selection_list_cur,#0x01
	mov	(_selection_list_cur + 1),#0x00
;	./src/angry_bird.c:61: char **selection_list[] = {"Setting", "Easy", "Hard"};
	mov	_selection_list_past,#0x01
	mov	(_selection_list_past + 1),#0x00
;	./src/angry_bird.c:62: 
	mov	(_selection_list + 0),#___str_6
	mov	(_selection_list + 1),#(___str_6 >> 8)
	mov	(_selection_list + 2),#0x80
	mov	((_selection_list + 0x0003) + 0),#___str_7
	mov	((_selection_list + 0x0003) + 1),#(___str_7 >> 8)
	mov	((_selection_list + 0x0003) + 2),#0x80
	mov	((_selection_list + 0x0006) + 0),#___str_8
	mov	((_selection_list + 0x0006) + 1),#(___str_8 >> 8)
	mov	((_selection_list + 0x0006) + 2),#0x80
;	./src/angry_bird.c:107: int setting_state = 1, setting_state_past = 1;
	mov	_setting_state,#0x01
	mov	(_setting_state + 1),#0x00
;	./src/angry_bird.c:107: int music_value = 0, volume_value = 0;
	mov	_setting_state_past,#0x01
	mov	(_setting_state_past + 1),#0x00
;	./src/angry_bird.c:108: void angrybird_display_setting(void)
	clr	a
	mov	_music_value,a
	mov	(_music_value + 1),a
;	./src/angry_bird.c:108: int music_value = 0, volume_value = 0;
	mov	_volume_value,a
	mov	(_volume_value + 1),a
;	./src/angry_bird.c:271: int cur_state = 1;
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),a
;	./src/angry_bird.c:296: unsigned int prebut_up = 0;
	mov	_prebut_up,a
	mov	(_prebut_up + 1),a
;	./src/angry_bird.c:297: unsigned int prebut_down = 0;
	mov	_prebut_down,a
	mov	(_prebut_down + 1),a
;	./src/angry_bird.c:298: unsigned int prebut_left = 0;
	mov	_prebut_left,a
	mov	(_prebut_left + 1),a
;	./src/angry_bird.c:299: unsigned int prebut_right = 0;
	mov	_prebut_right,a
	mov	(_prebut_right + 1),a
;	./src/angry_bird.c:300: unsigned int prebut_enter = 0;
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
;Allocation info for local variables in function 'angrybird_display_home'
;------------------------------------------------------------
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r4 r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	./src/angry_bird.c:64: void angrybird_display_home(void)
;	-----------------------------------------
;	 function angrybird_display_home
;	-----------------------------------------
_angrybird_display_home:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/angry_bird.c:66: OLED_Clear();
	lcall	_OLED_Clear
;	./src/angry_bird.c:67: row_offset = image_row_cursor;
	clr	a
	mov	_row_offset,a
	mov	(_row_offset + 1),a
;	./src/angry_bird.c:68: col_offset = image_col_cursor;
	mov	_col_offset,a
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:69: for (int j = 0; j < image_cul_size; j++)
	mov	r6,a
	mov	r7,a
00111$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	./src/angry_bird.c:71: for (int i = 0; i < image_row_size; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00108$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00112$
;	./src/angry_bird.c:73: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:74: oledSendData(angry_bird_logo[image_cul_size * i + j]);
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
	add	a,#_angry_bird_logo
	mov	dpl,a
	mov	a,r3
	addc	a,#(_angry_bird_logo >> 8)
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
;	./src/angry_bird.c:71: for (int i = 0; i < image_row_size; i++)
	inc	r4
	cjne	r4,#0x00,00108$
	inc	r5
	sjmp	00108$
00112$:
;	./src/angry_bird.c:69: for (int j = 0; j < image_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00208$
	inc	r7
00208$:
	ljmp	00111$
00102$:
;	./src/angry_bird.c:78: OLED_SetCursor(game_name_row_cursor, game_name_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x01
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:79: OLED_DisplayString("Angry Bird!");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:81: row_offset = button_up_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:82: col_offset = button_up_col_cursor;
	mov	_col_offset,#0x55
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:83: for (int j = 0; j < button_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00117$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	./src/angry_bird.c:85: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x00
00114$:
	cjne	r5,#0x01,00210$
00210$:
	jnc	00118$
;	./src/angry_bird.c:87: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:88: oledSendData(button_up_logo[button_cul_size * i + j]);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#_button_up_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_button_up_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:85: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x01
	sjmp	00114$
00118$:
;	./src/angry_bird.c:83: for (int j = 0; j < button_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00117$
	inc	r7
	sjmp	00117$
00104$:
;	./src/angry_bird.c:92: row_offset = button_down_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:93: col_offset = button_down_col_cursor;
	mov	_col_offset,#0x55
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:94: for (int j = 0; j < button_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00123$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00106$
;	./src/angry_bird.c:96: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x00
00120$:
	cjne	r5,#0x01,00214$
00214$:
	jnc	00124$
;	./src/angry_bird.c:98: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:99: oledSendData(button_down_logo[button_cul_size * i + j]);
	mov	a,r3
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r3
	add	a,#_button_down_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_button_down_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:96: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x01
	sjmp	00120$
00124$:
;	./src/angry_bird.c:94: for (int j = 0; j < button_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00123$
	inc	r7
	sjmp	00123$
00106$:
;	./src/angry_bird.c:103: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
	mov	__mulint_PARM_2,_selection_list_cur
	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	a,dpl
	add	a,#_selection_list
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strlen
	mov	r6,dpl
	mov	a,#0x54
	clr	c
	subb	a,r6
	mov	_OLED_SetCursor_PARM_2,a
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:104: OLED_DisplayString(selection_list[selection_list_cur]);
	mov	__mulint_PARM_2,_selection_list_cur
	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	a,dpl
	add	a,#_selection_list
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
;	./src/angry_bird.c:105: }
	ljmp	_OLED_DisplayString
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_display_setting'
;------------------------------------------------------------
;	./src/angry_bird.c:109: void angrybird_display_setting(void)
;	-----------------------------------------
;	 function angrybird_display_setting
;	-----------------------------------------
_angrybird_display_setting:
;	./src/angry_bird.c:167: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_display_game'
;------------------------------------------------------------
;control_strength_         Allocated with name '_angrybird_display_game_control_strength__65537_144'
;control_angle_            Allocated with name '_angrybird_display_game_control_angle__65537_144'
;i                         Allocated to registers r4 r5 
;angle_                    Allocated with name '_angrybird_display_game_angle__65539_146'
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;------------------------------------------------------------
;	./src/angry_bird.c:170: void angrybird_display_game(void)
;	-----------------------------------------
;	 function angrybird_display_game
;	-----------------------------------------
_angrybird_display_game:
;	./src/angry_bird.c:172: OLED_Clear();
	lcall	_OLED_Clear
;	./src/angry_bird.c:176: control_strength_[0] = '0' + control_strength;
	mov	r7,_control_strength
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_display_game_control_strength__65537_144,a
;	./src/angry_bird.c:177: control_strength_[1] = '\0';
;	./src/angry_bird.c:179: int i = 0;
;	./src/angry_bird.c:180: if (control_angle < 0)
	clr	a
	mov	(_angrybird_display_game_control_strength__65537_144 + 0x0001),a
	mov	r6,a
	mov	r7,a
	mov	a,(_control_angle + 1)
	jnb	acc.7,00102$
;	./src/angry_bird.c:181: control_angle_[i++] = '-';
	mov	r6,#0x01
	mov	r7,#0x00
	mov	_angrybird_display_game_control_angle__65537_144,#0x2d
00102$:
;	./src/angry_bird.c:182: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
	mov	a,(_control_angle + 1)
	rlc	a
	mov	_angrybird_display_game_sloc0_1_0,c
	jc	00131$
	mov	r4,_control_angle
	mov	r5,(_control_angle + 1)
	sjmp	00132$
00131$:
	clr	c
	clr	a
	subb	a,_control_angle
	mov	r4,a
	clr	a
	subb	a,(_control_angle + 1)
	mov	r5,a
00132$:
	mov	_angrybird_display_game_angle__65539_146,r4
	mov	(_angrybird_display_game_angle__65539_146 + 1),r5
;	./src/angry_bird.c:183: if (angle_ % 100 / 10 != 0)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_display_game_angle__65539_146
	mov	dph,(_angrybird_display_game_angle__65539_146 + 1)
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
;	./src/angry_bird.c:184: control_angle_[i++] = '0' + angle_ % 100 / 10;
	mov	ar4,r6
	mov	ar5,r7
	inc	r6
	cjne	r6,#0x00,00247$
	inc	r7
00247$:
	mov	a,r4
	add	a,#_angrybird_display_game_control_angle__65537_144
	mov	r1,a
	mov	a,#0x30
	add	a,r2
	mov	@r1,a
00104$:
;	./src/angry_bird.c:185: control_angle_[i++] = '0' + angle_ % 10;
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r6
	add	a,#_angrybird_display_game_control_angle__65537_144
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_display_game_angle__65539_146
	mov	dph,(_angrybird_display_game_angle__65539_146 + 1)
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
;	./src/angry_bird.c:186: control_angle_[i++] = '\0';
	mov	a,r4
	add	a,#_angrybird_display_game_control_angle__65537_144
	mov	r0,a
	mov	@r0,#0x00
;	./src/angry_bird.c:188: OLED_SetCursor(strength_text_row_cursor, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:189: OLED_DisplayString("S ");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:190: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:191: OLED_DisplayString(control_strength_);
	mov	dptr,#_angrybird_display_game_control_strength__65537_144
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:193: OLED_SetCursor(strength_text_row_cursor, 20);
	mov	_OLED_SetCursor_PARM_2,#0x14
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:194: OLED_DisplayString("A ");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:195: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:196: OLED_DisplayString(control_angle_);
	mov	dptr,#_angrybird_display_game_control_angle__65537_144
	mov	b,#0x40
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:214: row_offset = shoot_row_cursor;
	mov	_row_offset,#0x06
;	./src/angry_bird.c:215: col_offset = shoot_col_cursor;
	clr	a
	mov	(_row_offset + 1),a
	mov	_col_offset,a
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:216: for (int j = 0; j < shoot_cul_size; j++)
	mov	r6,a
	mov	r7,a
00115$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00106$
;	./src/angry_bird.c:218: for (int i = 0; i < shoot_row_size; i++)
	mov	r5,#0x00
00112$:
	cjne	r5,#0x02,00249$
00249$:
	jnc	00116$
;	./src/angry_bird.c:220: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:221: oledSendData(shooter_logo[shoot_cul_size * i + j]);
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
;	./src/angry_bird.c:218: for (int i = 0; i < shoot_row_size; i++)
	inc	r5
	sjmp	00112$
00116$:
;	./src/angry_bird.c:216: for (int j = 0; j < shoot_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00115$
	inc	r7
	sjmp	00115$
00106$:
;	./src/angry_bird.c:226: row_offset = bird_init_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:227: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:228: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00121$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
;	./src/angry_bird.c:230: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00118$:
	cjne	r5,#0x01,00253$
00253$:
	jnc	00122$
;	./src/angry_bird.c:232: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:233: oledSendData(bird_logo[bird_cul_size * i + j]);
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
;	./src/angry_bird.c:230: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00118$
00122$:
;	./src/angry_bird.c:228: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00121$
	inc	r7
	sjmp	00121$
00108$:
;	./src/angry_bird.c:255: row_offset = pig1_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:256: col_offset = pig1_col_cursor;
	mov	_col_offset,#0x50
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:257: for (int j = 0; j < pig_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00127$:
	clr	c
	mov	a,r6
	subb	a,#0x0c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00129$
;	./src/angry_bird.c:259: for (int i = 0; i < pig_row_size; i++)
	mov	r5,#0x00
00124$:
	cjne	r5,#0x02,00257$
00257$:
	jnc	00128$
;	./src/angry_bird.c:261: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:262: oledSendData(pig_logo[pig_cul_size * i + j]);
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
;	./src/angry_bird.c:259: for (int i = 0; i < pig_row_size; i++)
	inc	r5
	sjmp	00124$
00128$:
;	./src/angry_bird.c:257: for (int j = 0; j < pig_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00127$
	inc	r7
	sjmp	00127$
00129$:
;	./src/angry_bird.c:265: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_state_machine'
;------------------------------------------------------------
;	./src/angry_bird.c:273: void angrybird_state_machine(void)
;	-----------------------------------------
;	 function angrybird_state_machine
;	-----------------------------------------
_angrybird_state_machine:
;	./src/angry_bird.c:275: switch (cur_state)
	mov	a,#0x01
	cjne	a,_cur_state,00132$
	dec	a
	cjne	a,(_cur_state + 1),00132$
	sjmp	00101$
00132$:
	mov	a,#0x02
	cjne	a,_cur_state,00133$
	clr	a
	cjne	a,(_cur_state + 1),00133$
	sjmp	00102$
00133$:
	mov	a,#0x03
	cjne	a,_cur_state,00134$
	clr	a
	cjne	a,(_cur_state + 1),00134$
	sjmp	00104$
00134$:
	mov	a,#0x04
	cjne	a,_cur_state,00135$
	clr	a
	cjne	a,(_cur_state + 1),00135$
	sjmp	00104$
00135$:
;	./src/angry_bird.c:277: case STATE_HOME:
	ret
00101$:
;	./src/angry_bird.c:278: angrybird_home_state();
;	./src/angry_bird.c:279: break;
;	./src/angry_bird.c:281: case STATE_SETTING:
	ljmp	_angrybird_home_state
00102$:
;	./src/angry_bird.c:282: angrybird_setting_state();
;	./src/angry_bird.c:283: break;
;	./src/angry_bird.c:286: case STATE_PLAY_HARD:
	ljmp	_angrybird_setting_state
00104$:
;	./src/angry_bird.c:287: angrybird_game_state();
;	./src/angry_bird.c:289: }
;	./src/angry_bird.c:294: }
	ljmp	_angrybird_game_state
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_home_state'
;------------------------------------------------------------
;	./src/angry_bird.c:302: void angrybird_home_state(void)
;	-----------------------------------------
;	 function angrybird_home_state
;	-----------------------------------------
_angrybird_home_state:
;	./src/angry_bird.c:304: if ((but_up == 0) && (prebut_up == 1))
	jb	_P2_0,00106$
	mov	a,#0x01
	cjne	a,_prebut_up,00236$
	dec	a
	cjne	a,(_prebut_up + 1),00236$
	sjmp	00237$
00236$:
	sjmp	00106$
00237$:
;	./src/angry_bird.c:306: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:307: if (but_up == 0)
	jb	_P2_0,00106$
;	./src/angry_bird.c:309: selection_list_cur--;
	dec	_selection_list_cur
	mov	a,#0xff
	cjne	a,_selection_list_cur,00239$
	dec	(_selection_list_cur + 1)
00239$:
;	./src/angry_bird.c:310: if (selection_list_cur < 0)
	mov	a,(_selection_list_cur + 1)
	jnb	acc.7,00106$
;	./src/angry_bird.c:311: selection_list_cur = 2;
	mov	_selection_list_cur,#0x02
	mov	(_selection_list_cur + 1),#0x00
00106$:
;	./src/angry_bird.c:314: if ((but_down == 0) && (prebut_down == 1))
	jb	_P2_1,00113$
	mov	a,#0x01
	cjne	a,_prebut_down,00242$
	dec	a
	cjne	a,(_prebut_down + 1),00242$
	sjmp	00243$
00242$:
	sjmp	00113$
00243$:
;	./src/angry_bird.c:316: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:317: if (but_down == 0)
	jb	_P2_1,00113$
;	./src/angry_bird.c:319: selection_list_cur++;
	inc	_selection_list_cur
	clr	a
	cjne	a,_selection_list_cur,00245$
	inc	(_selection_list_cur + 1)
00245$:
;	./src/angry_bird.c:320: if (selection_list_cur > 2)
	clr	c
	mov	a,#0x02
	subb	a,_selection_list_cur
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_selection_list_cur + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	./src/angry_bird.c:321: selection_list_cur = 0;
	clr	a
	mov	_selection_list_cur,a
	mov	(_selection_list_cur + 1),a
00113$:
;	./src/angry_bird.c:324: if ((but_enter == 0) && (prebut_enter == 1))
	jnb	_INT1,00247$
	ljmp	00127$
00247$:
	mov	a,#0x01
	cjne	a,_prebut_enter,00248$
	dec	a
	cjne	a,(_prebut_enter + 1),00248$
	sjmp	00249$
00248$:
	ljmp	00127$
00249$:
;	./src/angry_bird.c:326: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:327: if (but_enter == 0)
	jnb	_INT1,00250$
	ljmp	00127$
00250$:
;	./src/angry_bird.c:330: switch (selection_list_cur + 2)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x02,00251$
	cjne	r7,#0x00,00251$
	sjmp	00115$
00251$:
	cjne	r6,#0x03,00252$
	cjne	r7,#0x00,00252$
	sjmp	00117$
00252$:
;	./src/angry_bird.c:332: case STATE_SETTING:
	cjne	r6,#0x04,00118$
	cjne	r7,#0x00,00118$
	sjmp	00117$
00115$:
;	./src/angry_bird.c:333: angrybird_display_setting();
	lcall	_angrybird_display_setting
;	./src/angry_bird.c:334: cur_state = STATE_SETTING;
	mov	_cur_state,#0x02
	mov	(_cur_state + 1),#0x00
;	./src/angry_bird.c:335: break;
;	./src/angry_bird.c:338: case STATE_PLAY_HARD:
	sjmp	00118$
00117$:
;	./src/angry_bird.c:339: bird_amt = bird_total_amount;
	mov	_bird_amt,#0x09
	mov	(_bird_amt + 1),#0x00
;	./src/angry_bird.c:340: pig_amt = pig_total_amount;
	mov	_pig_amt,#0x03
	mov	(_pig_amt + 1),#0x00
;	./src/angry_bird.c:341: control_angle = 60;
	mov	_control_angle,#0x3c
	mov	(_control_angle + 1),#0x00
;	./src/angry_bird.c:342: control_strength = 3;
	mov	_control_strength,#0x03
	mov	(_control_strength + 1),#0x00
;	./src/angry_bird.c:343: angrybird_display_game();
	lcall	_angrybird_display_game
;	./src/angry_bird.c:346: }
00118$:
;	./src/angry_bird.c:348: if (selection_list_cur + 2 == STATE_PLAY_EASY)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x03,00122$
	cjne	r7,#0x00,00122$
;	./src/angry_bird.c:349: cur_state = STATE_PLAY_EASY;
	mov	_cur_state,#0x03
	mov	(_cur_state + 1),#0x00
	sjmp	00127$
00122$:
;	./src/angry_bird.c:350: else if (selection_list_cur + 2 == STATE_PLAY_HARD)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x04,00127$
	cjne	r7,#0x00,00127$
;	./src/angry_bird.c:351: cur_state = STATE_PLAY_HARD;
	mov	_cur_state,#0x04
	mov	(_cur_state + 1),#0x00
00127$:
;	./src/angry_bird.c:355: if (selection_list_past != selection_list_cur)
	mov	a,_selection_list_cur
	cjne	a,_selection_list_past,00258$
	mov	a,(_selection_list_cur + 1)
	cjne	a,(_selection_list_past + 1),00258$
	ljmp	00130$
00258$:
;	./src/angry_bird.c:357: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_past]));
	mov	__mulint_PARM_2,_selection_list_past
	mov	(__mulint_PARM_2 + 1),(_selection_list_past + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	a,r6
	add	a,#_selection_list
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strlen
	mov	r6,dpl
	mov	a,#0x54
	clr	c
	subb	a,r6
	mov	_OLED_SetCursor_PARM_2,a
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:358: OLED_DisplayString("       ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:359: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
	mov	__mulint_PARM_2,_selection_list_cur
	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	a,r6
	add	a,#_selection_list
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_strlen
	mov	r6,dpl
	mov	a,#0x54
	clr	c
	subb	a,r6
	mov	_OLED_SetCursor_PARM_2,a
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:360: OLED_DisplayString(selection_list[selection_list_cur]);
	mov	__mulint_PARM_2,_selection_list_cur
	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
	mov	dptr,#0x0003
	lcall	__mulint
	mov	r6,dpl
	mov	a,r6
	add	a,#_selection_list
	mov	r1,a
	mov	ar5,@r1
	inc	r1
	mov	ar6,@r1
	inc	r1
	mov	ar7,@r1
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	_OLED_DisplayString
00130$:
;	./src/angry_bird.c:363: selection_list_past = selection_list_cur;
	mov	_selection_list_past,_selection_list_cur
	mov	(_selection_list_past + 1),(_selection_list_cur + 1)
;	./src/angry_bird.c:364: prebut_enter = but_enter;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),#0x00
;	./src/angry_bird.c:365: prebut_up = but_up;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	_prebut_up,a
	mov	(_prebut_up + 1),#0x00
;	./src/angry_bird.c:366: prebut_down = but_down;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut_down,a
	mov	(_prebut_down + 1),#0x00
;	./src/angry_bird.c:367: delay_ms(10);
	mov	dptr,#0x000a
;	./src/angry_bird.c:368: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_setting_state'
;------------------------------------------------------------
;	./src/angry_bird.c:370: void angrybird_setting_state(void)
;	-----------------------------------------
;	 function angrybird_setting_state
;	-----------------------------------------
_angrybird_setting_state:
;	./src/angry_bird.c:515: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_game_state'
;------------------------------------------------------------
;which                     Allocated to registers r7 
;control_angle_            Allocated with name '_angrybird_game_state_control_angle__196609_181'
;i                         Allocated to registers r4 r5 
;angle_                    Allocated with name '_angrybird_game_state_angle__196610_182'
;which                     Allocated to registers r7 
;control_strength_         Allocated with name '_angrybird_game_state_control_strength__196609_187'
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;delta_y                   Allocated with name '_angrybird_game_state_delta_y_196609_194'
;delta_x                   Allocated with name '_angrybird_game_state_delta_x_196609_194'
;peak_x                    Allocated with name '_angrybird_game_state_peak_x_196609_194'
;peak_y                    Allocated with name '_angrybird_game_state_peak_y_196609_194'
;a                         Allocated with name '_angrybird_game_state_a_196609_194'
;j                         Allocated to registers r2 r3 
;i                         Allocated to registers r7 
;i                         Allocated with name '_angrybird_game_state_i_262145_199'
;output_row                Allocated with name '_angrybird_game_state_output_row_327681_200'
;j                         Allocated to registers r2 r3 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;sloc1                     Allocated with name '_angrybird_game_state_sloc1_1_0'
;------------------------------------------------------------
;	./src/angry_bird.c:519: void angrybird_game_state(void)
;	-----------------------------------------
;	 function angrybird_game_state
;	-----------------------------------------
_angrybird_game_state:
;	./src/angry_bird.c:522: if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
	jb	_P2_0,00119$
	mov	a,#0x01
	cjne	a,_prebut_up,00605$
	dec	a
	cjne	a,(_prebut_up + 1),00605$
	sjmp	00115$
00605$:
00119$:
	jnb	_P2_1,00606$
	ljmp	00116$
00606$:
	mov	a,#0x01
	cjne	a,_prebut_down,00607$
	dec	a
	cjne	a,(_prebut_down + 1),00607$
	sjmp	00608$
00607$:
	ljmp	00116$
00608$:
00115$:
;	./src/angry_bird.c:525: int which = (but_up == 0) ? 1 : 0;
	jb	_P2_0,00207$
	mov	r7,#0x01
	sjmp	00208$
00207$:
	mov	r7,#0x00
00208$:
;	./src/angry_bird.c:526: if (but_up == 0 || but_down == 0)
	jnb	_P2_0,00112$
	jnb	_P2_1,00611$
	ljmp	00116$
00611$:
00112$:
;	./src/angry_bird.c:528: if (which == 1)
	cjne	r7,#0x01,00106$
;	./src/angry_bird.c:530: control_angle += 10;
	mov	a,#0x0a
	add	a,_control_angle
	mov	_control_angle,a
	clr	a
	addc	a,(_control_angle + 1)
	mov	(_control_angle + 1),a
;	./src/angry_bird.c:531: if (control_angle > 90)
	clr	c
	mov	a,#0x5a
	subb	a,_control_angle
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_control_angle + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00107$
;	./src/angry_bird.c:532: control_angle = 90;
	mov	_control_angle,#0x5a
	mov	(_control_angle + 1),#0x00
	sjmp	00107$
00106$:
;	./src/angry_bird.c:536: control_angle -= 10;
	mov	a,_control_angle
	add	a,#0xf6
	mov	_control_angle,a
	mov	a,(_control_angle + 1)
	addc	a,#0xff
;	./src/angry_bird.c:537: if (control_angle < 0)
	mov	(_control_angle + 1),a
	jnb	acc.7,00107$
;	./src/angry_bird.c:538: control_angle = 0;
	clr	a
	mov	_control_angle,a
	mov	(_control_angle + 1),a
00107$:
;	./src/angry_bird.c:543: int i = 0;
;	./src/angry_bird.c:544: if (control_angle < 0)
	clr	a
	mov	r6,a
	mov	r7,a
	mov	a,(_control_angle + 1)
	jnb	acc.7,00109$
;	./src/angry_bird.c:545: control_angle_[i++] = '-';
	mov	r6,#0x01
	mov	r7,#0x00
	mov	_angrybird_game_state_control_angle__196609_181,#0x2d
00109$:
;	./src/angry_bird.c:546: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
	mov	a,(_control_angle + 1)
	rlc	a
	mov	_angrybird_game_state_sloc0_1_0,c
	jc	00209$
	mov	r4,_control_angle
	mov	r5,(_control_angle + 1)
	sjmp	00210$
00209$:
	clr	c
	clr	a
	subb	a,_control_angle
	mov	r4,a
	clr	a
	subb	a,(_control_angle + 1)
	mov	r5,a
00210$:
	mov	_angrybird_game_state_angle__196610_182,r4
	mov	(_angrybird_game_state_angle__196610_182 + 1),r5
;	./src/angry_bird.c:547: if (angle_ % 100 / 10 != 0)
	mov	__modsint_PARM_2,#0x64
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_game_state_angle__196610_182
	mov	dph,(_angrybird_game_state_angle__196610_182 + 1)
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
;	./src/angry_bird.c:548: control_angle_[i++] = '0' + angle_ % 100 / 10;
	mov	ar4,r6
	mov	ar5,r7
	inc	r6
	cjne	r6,#0x00,00619$
	inc	r7
00619$:
	mov	a,r4
	add	a,#_angrybird_game_state_control_angle__196609_181
	mov	r1,a
	mov	a,#0x30
	add	a,r2
	mov	@r1,a
00111$:
;	./src/angry_bird.c:549: control_angle_[i++] = '0' + angle_ % 10;
	mov	a,#0x01
	add	a,r6
	mov	r4,a
	clr	a
	addc	a,r7
	mov	r5,a
	mov	a,r6
	add	a,#_angrybird_game_state_control_angle__196609_181
	mov	r1,a
	mov	__modsint_PARM_2,#0x0a
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,_angrybird_game_state_angle__196610_182
	mov	dph,(_angrybird_game_state_angle__196610_182 + 1)
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
;	./src/angry_bird.c:550: control_angle_[i++] = '\0';
	mov	a,r4
	add	a,#_angrybird_game_state_control_angle__196609_181
	mov	r0,a
	mov	@r0,#0x00
;	./src/angry_bird.c:552: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:553: OLED_DisplayString("   ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:554: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x1e
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:555: OLED_DisplayString(control_angle_);
	mov	dptr,#_angrybird_game_state_control_angle__196609_181
	mov	b,#0x40
	lcall	_OLED_DisplayString
00116$:
;	./src/angry_bird.c:560: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
	jb	_INT0,00134$
	mov	a,#0x01
	cjne	a,_prebut_left,00621$
	dec	a
	cjne	a,(_prebut_left + 1),00621$
	sjmp	00130$
00621$:
00134$:
	jnb	_P2_2,00622$
	ljmp	00131$
00622$:
	mov	a,#0x01
	cjne	a,_prebut_right,00623$
	dec	a
	cjne	a,(_prebut_right + 1),00623$
	sjmp	00624$
00623$:
	ljmp	00131$
00624$:
00130$:
;	./src/angry_bird.c:563: int which = (but_left == 0) ? 1 : 0;
	jb	_INT0,00211$
	mov	r7,#0x01
	sjmp	00212$
00211$:
	mov	r7,#0x00
00212$:
;	./src/angry_bird.c:564: if (but_left == 0 || but_right == 0)
	jnb	_INT0,00127$
	jb	_P2_2,00131$
00127$:
;	./src/angry_bird.c:566: if (which == 1)
	cjne	r7,#0x01,00125$
;	./src/angry_bird.c:568: control_strength--;
	dec	_control_strength
	mov	a,#0xff
	cjne	a,_control_strength,00630$
	dec	(_control_strength + 1)
00630$:
;	./src/angry_bird.c:569: if (control_strength < 1)
	clr	c
	mov	a,_control_strength
	subb	a,#0x01
	mov	a,(_control_strength + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00126$
;	./src/angry_bird.c:570: control_strength = 1;
	mov	_control_strength,#0x01
	mov	(_control_strength + 1),#0x00
	sjmp	00126$
00125$:
;	./src/angry_bird.c:574: control_strength--;
	dec	_control_strength
	mov	a,#0xff
	cjne	a,_control_strength,00632$
	dec	(_control_strength + 1)
00632$:
;	./src/angry_bird.c:575: if (control_strength > 3)
	clr	c
	mov	a,#0x03
	subb	a,_control_strength
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_control_strength + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00126$
;	./src/angry_bird.c:576: control_strength = 3;
	mov	_control_strength,#0x03
	mov	(_control_strength + 1),#0x00
00126$:
;	./src/angry_bird.c:581: control_strength_[0] = '0' + control_strength;
	mov	r7,_control_strength
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_game_state_control_strength__196609_187,a
;	./src/angry_bird.c:582: control_strength_[1] = '\0';
	mov	(_angrybird_game_state_control_strength__196609_187 + 0x0001),#0x00
;	./src/angry_bird.c:584: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:585: OLED_DisplayString(" ");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:586: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x0a
	mov	dpl,#0x00
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:587: OLED_DisplayString(control_strength_);
	mov	dptr,#_angrybird_game_state_control_strength__196609_187
	mov	b,#0x40
	lcall	_OLED_DisplayString
00131$:
;	./src/angry_bird.c:592: if ((but_enter == 0) && (prebut_enter == 1))
	jnb	_INT1,00634$
	ljmp	00159$
00634$:
	mov	a,#0x01
	cjne	a,_prebut_enter,00635$
	dec	a
	cjne	a,(_prebut_enter + 1),00635$
	sjmp	00636$
00635$:
	ljmp	00159$
00636$:
;	./src/angry_bird.c:594: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:595: if (but_enter == 0)
	jnb	_INT1,00637$
	ljmp	00159$
00637$:
;	./src/angry_bird.c:597: bird_amt--;
	dec	_bird_amt
	mov	a,#0xff
	cjne	a,_bird_amt,00638$
	dec	(_bird_amt + 1)
00638$:
;	./src/angry_bird.c:599: row_offset = 0;
	clr	a
	mov	_row_offset,a
	mov	(_row_offset + 1),a
;	./src/angry_bird.c:600: col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
	mov	a,#0x08
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
	mov	a,#0x32
	add	a,r6
	mov	_col_offset,a
	clr	a
	addc	a,r7
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:601: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00170$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00136$
;	./src/angry_bird.c:603: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00167$:
	cjne	r5,#0x01,00640$
00640$:
	jnc	00171$
;	./src/angry_bird.c:605: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:606: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:603: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00167$
00171$:
;	./src/angry_bird.c:601: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00170$
	inc	r7
	sjmp	00170$
00136$:
;	./src/angry_bird.c:613: float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
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
;	./src/angry_bird.c:614: float delta_x = control_strength_value * control_strength - delta_y * 4;
	mov	dptr,#0xc3b7
	mov	b,#0x07
	mov	a,#0x41
	lcall	___fsmul
	mov	_angrybird_game_state_delta_y_196609_194,dpl
	mov	(_angrybird_game_state_delta_y_196609_194 + 1),dph
	mov	(_angrybird_game_state_delta_y_196609_194 + 2),b
	mov	(_angrybird_game_state_delta_y_196609_194 + 3),a
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
	push	_angrybird_game_state_delta_y_196609_194
	push	(_angrybird_game_state_delta_y_196609_194 + 1)
	push	(_angrybird_game_state_delta_y_196609_194 + 2)
	push	(_angrybird_game_state_delta_y_196609_194 + 3)
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
;	./src/angry_bird.c:615: float peak_x = bird_init_col_cursor + delta_x;
	mov	dpl,r2
	mov	dph,r3
	mov	b,r6
	mov	a,r7
	lcall	___fssub
	mov	_angrybird_game_state_delta_x_196609_194,dpl
	mov	(_angrybird_game_state_delta_x_196609_194 + 1),dph
	mov	(_angrybird_game_state_delta_x_196609_194 + 2),b
	mov	(_angrybird_game_state_delta_x_196609_194 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	clr	a
	push	acc
	push	acc
	push	acc
	mov	a,#0x41
	push	acc
;	./src/angry_bird.c:616: float peak_y = bird_init_row_cursor - delta_y;
	mov	dpl,_angrybird_game_state_delta_x_196609_194
	mov	dph,(_angrybird_game_state_delta_x_196609_194 + 1)
	mov	b,(_angrybird_game_state_delta_x_196609_194 + 2)
	mov	a,(_angrybird_game_state_delta_x_196609_194 + 3)
	lcall	___fsadd
	mov	_angrybird_game_state_peak_x_196609_194,dpl
	mov	(_angrybird_game_state_peak_x_196609_194 + 1),dph
	mov	(_angrybird_game_state_peak_x_196609_194 + 2),b
	mov	(_angrybird_game_state_peak_x_196609_194 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_angrybird_game_state_delta_y_196609_194
	push	(_angrybird_game_state_delta_y_196609_194 + 1)
	push	(_angrybird_game_state_delta_y_196609_194 + 2)
	push	(_angrybird_game_state_delta_y_196609_194 + 3)
;	./src/angry_bird.c:617: float a = delta_y / pow_2(delta_x);
	mov	dptr,#0x0000
	mov	b,#0xe0
	mov	a,#0x40
	lcall	___fssub
	mov	_angrybird_game_state_peak_y_196609_194,dpl
	mov	(_angrybird_game_state_peak_y_196609_194 + 1),dph
	mov	(_angrybird_game_state_peak_y_196609_194 + 2),b
	mov	(_angrybird_game_state_peak_y_196609_194 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	dpl,_angrybird_game_state_delta_x_196609_194
	mov	dph,(_angrybird_game_state_delta_x_196609_194 + 1)
	mov	b,(_angrybird_game_state_delta_x_196609_194 + 2)
	mov	a,(_angrybird_game_state_delta_x_196609_194 + 3)
	lcall	_pow_2
	mov	r2,dpl
	mov	r3,dph
	mov	r6,b
	mov	r7,a
	push	ar2
	push	ar3
	push	ar6
	push	ar7
;	./src/angry_bird.c:619: row_offset = bird_init_row_cursor;
	mov	dpl,_angrybird_game_state_delta_y_196609_194
	mov	dph,(_angrybird_game_state_delta_y_196609_194 + 1)
	mov	b,(_angrybird_game_state_delta_y_196609_194 + 2)
	mov	a,(_angrybird_game_state_delta_y_196609_194 + 3)
	lcall	___fsdiv
	mov	_angrybird_game_state_a_196609_194,dpl
	mov	(_angrybird_game_state_a_196609_194 + 1),dph
	mov	(_angrybird_game_state_a_196609_194 + 2),b
	mov	(_angrybird_game_state_a_196609_194 + 3),a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:620: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:621: for (int j = 0; j < bird_cul_size; j++)
	mov	r2,#0x00
	mov	r3,#0x00
00176$:
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00138$
;	./src/angry_bird.c:623: for (int i = 0; i < bird_row_size; i++)
	mov	r7,#0x00
00173$:
	cjne	r7,#0x01,00644$
00644$:
	jnc	00177$
;	./src/angry_bird.c:625: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:626: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar2
	pop	ar3
;	./src/angry_bird.c:623: for (int i = 0; i < bird_row_size; i++)
	mov	r7,#0x01
	sjmp	00173$
00177$:
;	./src/angry_bird.c:621: for (int j = 0; j < bird_cul_size; j++)
	inc	r2
	cjne	r2,#0x00,00176$
	inc	r3
	sjmp	00176$
00138$:
;	./src/angry_bird.c:630: for (int i = 16; i <= 119; i += 8)
	mov	_angrybird_game_state_i_262145_199,#0x10
	mov	(_angrybird_game_state_i_262145_199 + 1),#0x00
00197$:
	clr	c
	mov	a,#0x77
	subb	a,_angrybird_game_state_i_262145_199
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_angrybird_game_state_i_262145_199 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00647$
	ljmp	00153$
00647$:
;	./src/angry_bird.c:632: int output_row = a * pow_2(i - peak_x) + peak_y;
	mov	dpl,_angrybird_game_state_i_262145_199
	mov	dph,(_angrybird_game_state_i_262145_199 + 1)
	lcall	___sint2fs
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	push	_angrybird_game_state_peak_x_196609_194
	push	(_angrybird_game_state_peak_x_196609_194 + 1)
	push	(_angrybird_game_state_peak_x_196609_194 + 2)
	push	(_angrybird_game_state_peak_x_196609_194 + 3)
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
	mov	dpl,_angrybird_game_state_a_196609_194
	mov	dph,(_angrybird_game_state_a_196609_194 + 1)
	mov	b,(_angrybird_game_state_a_196609_194 + 2)
	mov	a,(_angrybird_game_state_a_196609_194 + 3)
	lcall	___fsmul
	mov	r2,dpl
	mov	r3,dph
	mov	r4,b
	mov	r5,a
	mov	a,sp
	add	a,#0xfc
	mov	sp,a
	push	_angrybird_game_state_peak_y_196609_194
	push	(_angrybird_game_state_peak_y_196609_194 + 1)
	push	(_angrybird_game_state_peak_y_196609_194 + 2)
	push	(_angrybird_game_state_peak_y_196609_194 + 3)
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
	mov	_angrybird_game_state_output_row_327681_200,dpl
	mov	(_angrybird_game_state_output_row_327681_200 + 1),dph
;	./src/angry_bird.c:634: if (1 <= output_row && output_row <= 7)
	clr	c
	mov	a,_angrybird_game_state_output_row_327681_200
	subb	a,#0x01
	mov	a,(_angrybird_game_state_output_row_327681_200 + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00648$
	ljmp	00198$
00648$:
	clr	c
	mov	a,#0x07
	subb	a,_angrybird_game_state_output_row_327681_200
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_angrybird_game_state_output_row_327681_200 + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00649$
	ljmp	00198$
00649$:
;	./src/angry_bird.c:637: row_offset = output_row;
	mov	_row_offset,_angrybird_game_state_output_row_327681_200
	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_200 + 1)
;	./src/angry_bird.c:638: col_offset = bird_init_col_cursor + i;
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_199
	mov	_col_offset,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_199 + 1)
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:639: for (int j = 0; j < bird_cul_size; j++)
	mov	r2,#0x00
	mov	r3,#0x00
00182$:
	clr	c
	mov	a,r2
	subb	a,#0x08
	mov	a,r3
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00140$
;	./src/angry_bird.c:641: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00179$:
	cjne	r5,#0x01,00651$
00651$:
	jnc	00183$
;	./src/angry_bird.c:643: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:644: oledSendData(bird_logo[bird_cul_size * i + j]);
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
;	./src/angry_bird.c:641: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00179$
00183$:
;	./src/angry_bird.c:639: for (int j = 0; j < bird_cul_size; j++)
	inc	r2
	cjne	r2,#0x00,00182$
	inc	r3
	sjmp	00182$
00140$:
;	./src/angry_bird.c:647: delay_ms(400);
	mov	dptr,#0x0190
	lcall	_delay_ms
;	./src/angry_bird.c:653: if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
	clr	c
	mov	a,_row_offset
	subb	a,#0x03
	mov	a,(_row_offset + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00654$
	ljmp	00144$
00654$:
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
;	./src/angry_bird.c:655: pig_amt--;
	dec	_pig_amt
	mov	a,#0xff
	cjne	a,_pig_amt,00658$
	dec	(_pig_amt + 1)
00658$:
;	./src/angry_bird.c:656: row_offset = pig1_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:657: col_offset = pig1_col_cursor;
	mov	_col_offset,#0x50
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:658: for (int j = 0; j < pig_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00188$:
	clr	c
	mov	a,r6
	subb	a,#0x0c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00144$
;	./src/angry_bird.c:660: for (int i = 0; i < pig_row_size; i++)
	mov	r5,#0x00
00185$:
	cjne	r5,#0x02,00660$
00660$:
	jnc	00189$
;	./src/angry_bird.c:662: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:663: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:660: for (int i = 0; i < pig_row_size; i++)
	inc	r5
	sjmp	00185$
00189$:
;	./src/angry_bird.c:658: for (int j = 0; j < pig_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00188$
	inc	r7
	sjmp	00188$
00144$:
;	./src/angry_bird.c:668: row_offset = output_row;
	mov	_row_offset,_angrybird_game_state_output_row_327681_200
	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_200 + 1)
;	./src/angry_bird.c:669: col_offset = bird_init_col_cursor + i;
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_199
	mov	_col_offset,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_199 + 1)
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:670: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00194$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00198$
;	./src/angry_bird.c:672: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00191$:
	cjne	r5,#0x01,00664$
00664$:
	jnc	00195$
;	./src/angry_bird.c:674: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:675: oledSendData(0x00);
	mov	dpl,#0x00
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:672: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00191$
00195$:
;	./src/angry_bird.c:670: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00194$
	inc	r7
	sjmp	00194$
00198$:
;	./src/angry_bird.c:630: for (int i = 16; i <= 119; i += 8)
	mov	a,#0x08
	add	a,_angrybird_game_state_i_262145_199
	mov	_angrybird_game_state_i_262145_199,a
	clr	a
	addc	a,(_angrybird_game_state_i_262145_199 + 1)
	mov	(_angrybird_game_state_i_262145_199 + 1),a
	ljmp	00197$
00153$:
;	./src/angry_bird.c:682: row_offset = bird_init_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:683: col_offset = bird_init_col_cursor;
	mov	_col_offset,#0x08
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:684: for (int j = 0; j < bird_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00203$:
	clr	c
	mov	a,r6
	subb	a,#0x08
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00159$
;	./src/angry_bird.c:686: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x00
00200$:
	cjne	r5,#0x01,00668$
00668$:
	jnc	00204$
;	./src/angry_bird.c:688: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:689: oledSendData(bird_logo[bird_cul_size * i + j]);
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
;	./src/angry_bird.c:686: for (int i = 0; i < bird_row_size; i++)
	mov	r5,#0x01
	sjmp	00200$
00204$:
;	./src/angry_bird.c:684: for (int j = 0; j < bird_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00203$
	inc	r7
	sjmp	00203$
00159$:
;	./src/angry_bird.c:707: if (pig_amt == 0)
	mov	a,_pig_amt
	orl	a,(_pig_amt + 1)
;	./src/angry_bird.c:711: cur_state = STATE_HOME;
	jnz	00164$
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),a
;	./src/angry_bird.c:712: angrybird_display_home();
	lcall	_angrybird_display_home
	sjmp	00165$
00164$:
;	./src/angry_bird.c:714: else if (bird_amt == 0)
	mov	a,_bird_amt
	orl	a,(_bird_amt + 1)
;	./src/angry_bird.c:718: cur_state = STATE_HOME;
	jnz	00165$
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),a
;	./src/angry_bird.c:719: angrybird_display_home();
	lcall	_angrybird_display_home
00165$:
;	./src/angry_bird.c:722: prebut_enter = but_enter;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),#0x00
;	./src/angry_bird.c:723: prebut_up = but_up;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	_prebut_up,a
	mov	(_prebut_up + 1),#0x00
;	./src/angry_bird.c:724: prebut_down = but_down;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut_down,a
	mov	(_prebut_down + 1),#0x00
;	./src/angry_bird.c:725: prebut_left = but_left;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	_prebut_left,a
	mov	(_prebut_left + 1),#0x00
;	./src/angry_bird.c:726: prebut_right = but_right;
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	_prebut_right,a
	mov	(_prebut_right + 1),#0x00
;	./src/angry_bird.c:727: delay_ms(10);
	mov	dptr,#0x000a
;	./src/angry_bird.c:728: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'getsine'
;------------------------------------------------------------
;angle                     Allocated to registers r6 r7 
;index                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:734: float getsine(int angle)
;	-----------------------------------------
;	 function getsine
;	-----------------------------------------
_getsine:
	mov	r6,dpl
	mov	r7,dph
;	./src/angry_bird.c:736: int index = (angle > 0) ? (angle / 10) : (-angle / 10);
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
;	./src/angry_bird.c:737: return (angle > 0) ? sine_table[index] : -sine_table[index];
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
;	./src/angry_bird.c:738: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'getcosine'
;------------------------------------------------------------
;angle                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:739: float getcosine(int angle)
;	-----------------------------------------
;	 function getcosine
;	-----------------------------------------
_getcosine:
	mov	r6,dpl
	mov	r7,dph
;	./src/angry_bird.c:741: return getsine((angle > 0) ? -angle + 90 : angle + 90);
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
;	./src/angry_bird.c:742: }
	ljmp	_getsine
;------------------------------------------------------------
;Allocation info for local variables in function 'pow_2'
;------------------------------------------------------------
;n                         Allocated to registers r4 r5 r6 r7 
;------------------------------------------------------------
;	./src/angry_bird.c:743: float pow_2(float n)
;	-----------------------------------------
;	 function pow_2
;	-----------------------------------------
_pow_2:
	mov	r4,dpl
	mov	r5,dph
	mov	r6,b
	mov	r7,a
;	./src/angry_bird.c:745: return n * n;
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
;	./src/angry_bird.c:746: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
_angry_bird_logo:
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
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x78	; 120	'x'
	.db #0x48	; 72	'H'
	.db #0xcc	; 204
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x84	; 132
	.db #0x87	; 135
	.db #0xce	; 206
	.db #0xcc	; 204
	.db #0xd8	; 216
	.db #0xf0	; 240
	.db #0x60	; 96
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x43	; 67	'C'
	.db #0x46	; 70	'F'
	.db #0xcc	; 204
	.db #0xd8	; 216
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x80	; 128
	.db #0x80	; 128
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
	.db #0x80	; 128
	.db #0xe0	; 224
	.db #0x60	; 96
	.db #0x30	; 48	'0'
	.db #0x18	; 24
	.db #0x0c	; 12
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0xe0	; 224
	.db #0xc0	; 192
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
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0x78	; 120	'x'
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x03	; 3
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
	.db #0x80	; 128
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf1	; 241
	.db #0xf7	; 247
	.db #0xfe	; 254
	.db #0xf8	; 248
	.db #0xc0	; 192
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
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x3b	; 59
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x1f	; 31
	.db #0xff	; 255
	.db #0xff	; 255
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
	.db #0x3d	; 61
	.db #0x67	; 103	'g'
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x9f	; 159
	.db #0xff	; 255
	.db #0x5f	; 95
	.db #0x23	; 35
	.db #0x3f	; 63
	.db #0x3f	; 63
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x9b	; 155
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x83	; 131
	.db #0x63	; 99	'c'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0xc7	; 199
	.db #0xff	; 255
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
	.db #0x03	; 3
	.db #0x1f	; 31
	.db #0x3c	; 60
	.db #0xe0	; 224
	.db #0xc0	; 192
	.db #0x80	; 128
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
	.db #0x08	; 8
	.db #0x1d	; 29
	.db #0x37	; 55	'7'
	.db #0x73	; 115	's'
	.db #0x91	; 145
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0x20	; 32
	.db #0xa0	; 160
	.db #0xa1	; 161
	.db #0x63	; 99	'c'
	.db #0x26	; 38
	.db #0x3c	; 60
	.db #0xb0	; 176
	.db #0xe0	; 224
	.db #0x78	; 120	'x'
	.db #0x1f	; 31
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
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x1c	; 28
	.db #0x18	; 24
	.db #0x30	; 48	'0'
	.db #0x30	; 48	'0'
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x80	; 128
	.db #0x83	; 131
	.db #0x86	; 134
	.db #0xcc	; 204
	.db #0xcc	; 204
	.db #0x66	; 102	'f'
	.db #0x62	; 98	'b'
	.db #0x33	; 51	'3'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x1c	; 28
	.db #0x0e	; 14
	.db #0x07	; 7
	.db #0x03	; 3
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
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x01	; 1
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
_button_up_logo:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x0c	; 12
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x0f	; 15
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_button_down_logo:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x30	; 48	'0'
	.db #0x70	; 112	'p'
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x30	; 48	'0'
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
_music_logo:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xfc	; 252
	.db #0x1c	; 28
	.db #0x1c	; 28
	.db #0x1e	; 30
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0xfe	; 254
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0xf0	; 240
	.db #0xf0	; 240
	.db #0x70	; 112	'p'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x18	; 24
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x3c	; 60
	.db #0x1f	; 31
	.db #0x00	; 0
	.db #0x00	; 0
_volume_logo:
	.db #0xc0	; 192
	.db #0xc0	; 192
	.db #0xe0	; 224
	.db #0xe0	; 224
	.db #0xf0	; 240
	.db #0xf8	; 248
	.db #0xfc	; 252
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0xc8	; 200
	.db #0x18	; 24
	.db #0xe2	; 226
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0xe0	; 224
	.db #0x03	; 3
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x47	; 71	'G'
	.db #0x60	; 96
	.db #0x18	; 24
	.db #0x07	; 7
_button_left_logo:
	.db #0x18	; 24
	.db #0x3c	; 60
	.db #0x7e	; 126
	.db #0xff	; 255
_button_right_logo:
	.db #0xff	; 255
	.db #0x7e	; 126
	.db #0x3c	; 60
	.db #0x18	; 24
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
	.area CONST   (CODE)
___str_0:
	.ascii "Angry Bird!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "S "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "A "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "       "
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
___str_4:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii " "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii "Setting"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_7:
	.ascii "Easy"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_8:
	.ascii "Hard"
	.db 0x00
	.area CSEG    (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)