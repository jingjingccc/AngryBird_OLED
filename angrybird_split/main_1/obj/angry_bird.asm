;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module angry_bird
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _button_right_logo
	.globl _button_left_logo
	.globl _volume_logo
	.globl _music_logo
	.globl _button_down_logo
	.globl _button_up_logo
	.globl _angry_bird_logo
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
	.globl _pig_amt
	.globl _bird_amt
	.globl _cur_state
	.globl _volume_value
	.globl _music_value
	.globl _setting_state_past
	.globl _setting_state
	.globl _selection_list
	.globl _selection_list_past
	.globl _selection_list_cur
	.globl _col_offset
	.globl _row_offset
	.globl _received_flag
	.globl _received_data
	.globl _send_flag
	.globl _send_data
	.globl _angrybird_display_home
	.globl _angrybird_display_setting
	.globl _angrybird_state_machine
	.globl _angrybird_home_state
	.globl _angrybird_game_state
	.globl _angrybird_setting_state
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
_angrybird_display_setting_volume_value__65537_73:
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
_angrybird_setting_state_volume_value__262145_107:
	.ds 10
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
;	./src/angry_bird.c:62: int selection_list_cur = 1, selection_list_past = 1;
	mov	_selection_list_cur,#0x01
	mov	(_selection_list_cur + 1),#0x00
;	./src/angry_bird.c:62: char **selection_list[] = {"Setting", "Easy", "Hard"};
	mov	_selection_list_past,#0x01
	mov	(_selection_list_past + 1),#0x00
;	./src/angry_bird.c:63: 
	mov	(_selection_list + 0),#___str_1
	mov	(_selection_list + 1),#(___str_1 >> 8)
	mov	(_selection_list + 2),#0x80
	mov	((_selection_list + 0x0003) + 0),#___str_7
	mov	((_selection_list + 0x0003) + 1),#(___str_7 >> 8)
	mov	((_selection_list + 0x0003) + 2),#0x80
	mov	((_selection_list + 0x0006) + 0),#___str_8
	mov	((_selection_list + 0x0006) + 1),#(___str_8 >> 8)
	mov	((_selection_list + 0x0006) + 2),#0x80
;	./src/angry_bird.c:111: int setting_state = 1, setting_state_past = 1;
	mov	_setting_state,#0x01
	mov	(_setting_state + 1),#0x00
;	./src/angry_bird.c:111: int music_value = 0, volume_value = 0;
	mov	_setting_state_past,#0x01
	mov	(_setting_state_past + 1),#0x00
;	./src/angry_bird.c:112: void angrybird_display_setting(void)
	clr	a
	mov	_music_value,a
	mov	(_music_value + 1),a
;	./src/angry_bird.c:112: int music_value = 0, volume_value = 0;
	mov	_volume_value,a
	mov	(_volume_value + 1),a
;	./src/angry_bird.c:178: int cur_state = 1;
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),a
;	./src/angry_bird.c:203: unsigned int prebut_up = 0;
	mov	_prebut_up,a
	mov	(_prebut_up + 1),a
;	./src/angry_bird.c:204: unsigned int prebut_down = 0;
	mov	_prebut_down,a
	mov	(_prebut_down + 1),a
;	./src/angry_bird.c:205: unsigned int prebut_left = 0;
	mov	_prebut_left,a
	mov	(_prebut_left + 1),a
;	./src/angry_bird.c:206: unsigned int prebut_right = 0;
	mov	_prebut_right,a
	mov	(_prebut_right + 1),a
;	./src/angry_bird.c:207: unsigned int prebut_enter = 0;
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
;	./src/angry_bird.c:65: void angrybird_display_home(void)
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
;	./src/angry_bird.c:67: OLED_Clear();
	lcall	_OLED_Clear
;	./src/angry_bird.c:68: row_offset = image_row_cursor;
	clr	a
	mov	_row_offset,a
	mov	(_row_offset + 1),a
;	./src/angry_bird.c:69: col_offset = image_col_cursor;
	mov	_col_offset,a
	mov	(_col_offset + 1),a
;	./src/angry_bird.c:70: for (int j = 0; j < image_cul_size; j++)
	mov	r6,a
	mov	r7,a
00114$:
	clr	c
	mov	a,r6
	subb	a,#0x40
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	./src/angry_bird.c:72: for (int i = 0; i < image_row_size; i++)
	mov	r4,#0x00
	mov	r5,#0x00
00111$:
	clr	c
	mov	a,r4
	subb	a,#0x08
	mov	a,r5
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00115$
;	./src/angry_bird.c:74: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:75: oledSendData(angry_bird_logo[image_cul_size * i + j]);
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
;	./src/angry_bird.c:72: for (int i = 0; i < image_row_size; i++)
	inc	r4
	cjne	r4,#0x00,00111$
	inc	r5
	sjmp	00111$
00115$:
;	./src/angry_bird.c:70: for (int j = 0; j < image_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00217$
	inc	r7
00217$:
	ljmp	00114$
00102$:
;	./src/angry_bird.c:79: OLED_SetCursor(game_name_row_cursor, game_name_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x3c
	mov	dpl,#0x01
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:80: OLED_DisplayString("Angry Bird!");
	mov	dptr,#___str_0
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:82: row_offset = button_up_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:83: col_offset = button_up_col_cursor;
	mov	_col_offset,#0x55
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:84: for (int j = 0; j < button_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00120$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00104$
;	./src/angry_bird.c:86: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x00
00117$:
	cjne	r5,#0x01,00219$
00219$:
	jnc	00121$
;	./src/angry_bird.c:88: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:89: oledSendData(button_up_logo[button_cul_size * i + j]);
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
;	./src/angry_bird.c:86: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x01
	sjmp	00117$
00121$:
;	./src/angry_bird.c:84: for (int j = 0; j < button_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00120$
	inc	r7
	sjmp	00120$
00104$:
;	./src/angry_bird.c:93: row_offset = button_down_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:94: col_offset = button_down_col_cursor;
	mov	_col_offset,#0x55
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:95: for (int j = 0; j < button_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00126$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00106$
;	./src/angry_bird.c:97: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x00
00123$:
	cjne	r5,#0x01,00223$
00223$:
	jnc	00127$
;	./src/angry_bird.c:99: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:100: oledSendData(button_down_logo[button_cul_size * i + j]);
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
;	./src/angry_bird.c:97: for (int i = 0; i < button_row_size; i++)
	mov	r5,#0x01
	sjmp	00123$
00127$:
;	./src/angry_bird.c:95: for (int j = 0; j < button_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00126$
	inc	r7
	sjmp	00126$
00106$:
;	./src/angry_bird.c:104: if (selection_list_cur == 0)
	mov	a,_selection_list_cur
	orl	a,(_selection_list_cur + 1)
	jnz	00108$
;	./src/angry_bird.c:105: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
	mov	_OLED_SetCursor_PARM_2,#0x4d
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
	sjmp	00109$
00108$:
;	./src/angry_bird.c:107: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
	mov	_OLED_SetCursor_PARM_2,#0x50
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
00109$:
;	./src/angry_bird.c:108: OLED_DisplayString(selection_list[selection_list_cur]);
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
;	./src/angry_bird.c:109: }
	ljmp	_OLED_DisplayString
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_display_setting'
;------------------------------------------------------------
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r6 r7 
;i                         Allocated to registers r5 
;volume_value_             Allocated with name '_angrybird_display_setting_volume_value__65537_73'
;------------------------------------------------------------
;	./src/angry_bird.c:113: void angrybird_display_setting(void)
;	-----------------------------------------
;	 function angrybird_display_setting
;	-----------------------------------------
_angrybird_display_setting:
;	./src/angry_bird.c:115: OLED_Clear();
	lcall	_OLED_Clear
;	./src/angry_bird.c:117: OLED_SetCursor(setting_text_row_cursor, setting_text_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x32
	mov	dpl,#0x01
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:118: OLED_DisplayString("Setting");
	mov	dptr,#___str_1
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:120: row_offset = music_row_cursor;
	mov	_row_offset,#0x03
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:121: col_offset = music_col_cursor;
	mov	_col_offset,#0x05
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:122: for (int j = 0; j < music_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00113$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00102$
;	./src/angry_bird.c:124: for (int i = 0; i < music_row_size; i++)
	mov	r5,#0x00
00110$:
	cjne	r5,#0x02,00240$
00240$:
	jnc	00114$
;	./src/angry_bird.c:126: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:127: oledSendData(music_logo[music_cul_size * i + j]);
	mov	a,r3
	swap	a
	anl	a,#0xf0
	add	a,r2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_music_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_music_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:124: for (int i = 0; i < music_row_size; i++)
	inc	r5
	sjmp	00110$
00114$:
;	./src/angry_bird.c:122: for (int j = 0; j < music_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00113$
	inc	r7
	sjmp	00113$
00102$:
;	./src/angry_bird.c:131: row_offset = m_button_left_row_cursor;
	mov	_row_offset,#0x04
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:132: col_offset = m_button_left_col_cursor;
	mov	_col_offset,#0x2d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:133: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00119$:
	cjne	r7,#0x04,00243$
00243$:
	jnc	00104$
;	./src/angry_bird.c:135: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00116$:
	cjne	r6,#0x01,00245$
00245$:
	jnc	00120$
;	./src/angry_bird.c:137: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:138: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_left_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_left_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:135: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00116$
00120$:
;	./src/angry_bird.c:133: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
	sjmp	00119$
00104$:
;	./src/angry_bird.c:142: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x40
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:143: OLED_DisplayString("OFF");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:145: row_offset = m_button_right_row_cursor;
	mov	_row_offset,#0x04
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:146: col_offset = m_button_right_col_cursor;
	mov	_col_offset,#0x5d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:147: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00125$:
	cjne	r7,#0x04,00247$
00247$:
	jnc	00106$
;	./src/angry_bird.c:149: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00122$:
	cjne	r6,#0x01,00249$
00249$:
	jnc	00126$
;	./src/angry_bird.c:151: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:152: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_right_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_right_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:149: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00122$
00126$:
;	./src/angry_bird.c:147: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
	sjmp	00125$
00106$:
;	./src/angry_bird.c:156: row_offset = volume_row_cursor;
	mov	_row_offset,#0x06
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:157: col_offset = volume_col_cursor;
	mov	_col_offset,#0x05
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:158: for (int j = 0; j < volume_cul_size; j++)
	mov	r6,#0x00
	mov	r7,#0x00
00131$:
	clr	c
	mov	a,r6
	subb	a,#0x10
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00108$
;	./src/angry_bird.c:160: for (int i = 0; i < volume_row_size; i++)
	mov	r5,#0x00
00128$:
	cjne	r5,#0x02,00252$
00252$:
	jnc	00132$
;	./src/angry_bird.c:162: OLED_SetCursor(row_offset + i, col_offset + j);
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
;	./src/angry_bird.c:163: oledSendData(volume_logo[volume_cul_size * i + j]);
	mov	a,r3
	swap	a
	anl	a,#0xf0
	add	a,r2
	mov	r2,a
	rlc	a
	subb	a,acc
	mov	r4,a
	mov	a,r2
	add	a,#_volume_logo
	mov	dpl,a
	mov	a,r4
	addc	a,#(_volume_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/angry_bird.c:160: for (int i = 0; i < volume_row_size; i++)
	inc	r5
	sjmp	00128$
00132$:
;	./src/angry_bird.c:158: for (int j = 0; j < volume_cul_size; j++)
	inc	r6
	cjne	r6,#0x00,00131$
	inc	r7
	sjmp	00131$
00108$:
;	./src/angry_bird.c:167: OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x44
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:169: volume_value_[0] = '0' + volume_value;
	mov	r7,_volume_value
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_display_setting_volume_value__65537_73,a
;	./src/angry_bird.c:170: volume_value_[1] = '\0';
	mov	(_angrybird_display_setting_volume_value__65537_73 + 0x0001),#0x00
;	./src/angry_bird.c:171: OLED_DisplayString(volume_value_);
	mov	dptr,#_angrybird_display_setting_volume_value__65537_73
	mov	b,#0x40
;	./src/angry_bird.c:172: }
	ljmp	_OLED_DisplayString
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_state_machine'
;------------------------------------------------------------
;	./src/angry_bird.c:180: void angrybird_state_machine(void)
;	-----------------------------------------
;	 function angrybird_state_machine
;	-----------------------------------------
_angrybird_state_machine:
;	./src/angry_bird.c:182: switch (cur_state)
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
;	./src/angry_bird.c:184: case STATE_HOME:
	ret
00101$:
;	./src/angry_bird.c:185: angrybird_home_state();
;	./src/angry_bird.c:186: break;
;	./src/angry_bird.c:188: case STATE_SETTING:
	ljmp	_angrybird_home_state
00102$:
;	./src/angry_bird.c:189: angrybird_setting_state();
;	./src/angry_bird.c:190: break;
;	./src/angry_bird.c:193: case STATE_PLAY_HARD:
	ljmp	_angrybird_setting_state
00104$:
;	./src/angry_bird.c:194: angrybird_game_state();
;	./src/angry_bird.c:196: }
;	./src/angry_bird.c:201: }
	ljmp	_angrybird_game_state
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_home_state'
;------------------------------------------------------------
;	./src/angry_bird.c:209: void angrybird_home_state(void)
;	-----------------------------------------
;	 function angrybird_home_state
;	-----------------------------------------
_angrybird_home_state:
;	./src/angry_bird.c:211: if ((but_up == 0) && (prebut_up == 1))
	jb	_P2_0,00106$
	mov	a,#0x01
	cjne	a,_prebut_up,00254$
	dec	a
	cjne	a,(_prebut_up + 1),00254$
	sjmp	00255$
00254$:
	sjmp	00106$
00255$:
;	./src/angry_bird.c:213: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:214: if (but_up == 0)
	jb	_P2_0,00106$
;	./src/angry_bird.c:216: selection_list_cur--;
	dec	_selection_list_cur
	mov	a,#0xff
	cjne	a,_selection_list_cur,00257$
	dec	(_selection_list_cur + 1)
00257$:
;	./src/angry_bird.c:217: if (selection_list_cur < 0)
	mov	a,(_selection_list_cur + 1)
	jnb	acc.7,00106$
;	./src/angry_bird.c:218: selection_list_cur = 2;
	mov	_selection_list_cur,#0x02
	mov	(_selection_list_cur + 1),#0x00
00106$:
;	./src/angry_bird.c:221: if ((but_down == 0) && (prebut_down == 1))
	jb	_P2_1,00113$
	mov	a,#0x01
	cjne	a,_prebut_down,00260$
	dec	a
	cjne	a,(_prebut_down + 1),00260$
	sjmp	00261$
00260$:
	sjmp	00113$
00261$:
;	./src/angry_bird.c:223: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:224: if (but_down == 0)
	jb	_P2_1,00113$
;	./src/angry_bird.c:226: selection_list_cur++;
	inc	_selection_list_cur
	clr	a
	cjne	a,_selection_list_cur,00263$
	inc	(_selection_list_cur + 1)
00263$:
;	./src/angry_bird.c:227: if (selection_list_cur > 2)
	clr	c
	mov	a,#0x02
	subb	a,_selection_list_cur
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_selection_list_cur + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00113$
;	./src/angry_bird.c:228: selection_list_cur = 0;
	clr	a
	mov	_selection_list_cur,a
	mov	(_selection_list_cur + 1),a
00113$:
;	./src/angry_bird.c:231: if ((but_enter == 0) && (prebut_enter == 1))
	jnb	_P2_2,00265$
	ljmp	00127$
00265$:
	mov	a,#0x01
	cjne	a,_prebut_enter,00266$
	dec	a
	cjne	a,(_prebut_enter + 1),00266$
	sjmp	00267$
00266$:
	ljmp	00127$
00267$:
;	./src/angry_bird.c:233: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:234: if (but_enter == 0)
	jb	_P2_2,00127$
;	./src/angry_bird.c:237: switch (selection_list_cur + 2)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x02,00269$
	cjne	r7,#0x00,00269$
	sjmp	00115$
00269$:
	cjne	r6,#0x03,00270$
	cjne	r7,#0x00,00270$
	sjmp	00117$
00270$:
;	./src/angry_bird.c:239: case STATE_SETTING:
	cjne	r6,#0x04,00118$
	cjne	r7,#0x00,00118$
	sjmp	00117$
00115$:
;	./src/angry_bird.c:240: angrybird_display_setting();
	lcall	_angrybird_display_setting
;	./src/angry_bird.c:241: cur_state = STATE_SETTING;
	mov	_cur_state,#0x02
	mov	(_cur_state + 1),#0x00
;	./src/angry_bird.c:242: break;
;	./src/angry_bird.c:245: case STATE_PLAY_HARD:
	sjmp	00118$
00117$:
;	./src/angry_bird.c:247: send_data = selection_list_cur + 2;
	mov	r7,_selection_list_cur
	mov	a,#0x02
	add	a,r7
	mov	_send_data,a
;	./src/angry_bird.c:248: send_flag = 1;
	mov	_send_flag,#0x01
;	./src/angry_bird.c:249: P1_7 = 0;
;	assignBit
	clr	_P1_7
;	./src/angry_bird.c:260: }
00118$:
;	./src/angry_bird.c:262: if (selection_list_cur + 2 == STATE_PLAY_EASY)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x03,00122$
	cjne	r7,#0x00,00122$
;	./src/angry_bird.c:263: cur_state = STATE_PLAY_EASY;
	mov	_cur_state,#0x03
	mov	(_cur_state + 1),#0x00
	sjmp	00127$
00122$:
;	./src/angry_bird.c:264: else if (selection_list_cur + 2 == STATE_PLAY_HARD)
	mov	a,#0x02
	add	a,_selection_list_cur
	mov	r6,a
	clr	a
	addc	a,(_selection_list_cur + 1)
	mov	r7,a
	cjne	r6,#0x04,00127$
	cjne	r7,#0x00,00127$
;	./src/angry_bird.c:265: cur_state = STATE_PLAY_HARD;
	mov	_cur_state,#0x04
	mov	(_cur_state + 1),#0x00
00127$:
;	./src/angry_bird.c:269: if (selection_list_past != selection_list_cur)
	mov	a,_selection_list_cur
	cjne	a,_selection_list_past,00276$
	mov	a,(_selection_list_cur + 1)
	cjne	a,(_selection_list_past + 1),00276$
	sjmp	00136$
00276$:
;	./src/angry_bird.c:271: if (selection_list_cur == 0)
	mov	a,_selection_list_cur
	orl	a,(_selection_list_cur + 1)
	jnz	00130$
;	./src/angry_bird.c:272: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
	mov	_OLED_SetCursor_PARM_2,#0x50
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
	sjmp	00131$
00130$:
;	./src/angry_bird.c:274: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
	mov	_OLED_SetCursor_PARM_2,#0x4d
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
00131$:
;	./src/angry_bird.c:275: OLED_DisplayString("       ");
	mov	dptr,#___str_3
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:277: if (selection_list_cur == 0)
	mov	a,_selection_list_cur
	orl	a,(_selection_list_cur + 1)
	jnz	00133$
;	./src/angry_bird.c:278: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
	mov	_OLED_SetCursor_PARM_2,#0x4d
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
	sjmp	00134$
00133$:
;	./src/angry_bird.c:280: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
	mov	_OLED_SetCursor_PARM_2,#0x50
	mov	dpl,#0x05
	lcall	_OLED_SetCursor
00134$:
;	./src/angry_bird.c:281: OLED_DisplayString(selection_list[selection_list_cur]);
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
00136$:
;	./src/angry_bird.c:284: selection_list_past = selection_list_cur;
	mov	_selection_list_past,_selection_list_cur
	mov	(_selection_list_past + 1),(_selection_list_cur + 1)
;	./src/angry_bird.c:285: prebut_enter = but_enter;
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),#0x00
;	./src/angry_bird.c:286: prebut_up = but_up;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	_prebut_up,a
	mov	(_prebut_up + 1),#0x00
;	./src/angry_bird.c:287: prebut_down = but_down;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut_down,a
	mov	(_prebut_down + 1),#0x00
;	./src/angry_bird.c:288: delay_ms(10);
	mov	dptr,#0x000a
;	./src/angry_bird.c:289: }
	ljmp	_delay_ms
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_game_state'
;------------------------------------------------------------
;	./src/angry_bird.c:291: void angrybird_game_state(void)
;	-----------------------------------------
;	 function angrybird_game_state
;	-----------------------------------------
_angrybird_game_state:
;	./src/angry_bird.c:294: if (send_flag == 1)
	mov	a,#0x01
	cjne	a,_send_flag,00102$
;	./src/angry_bird.c:296: I2C_Stop();
	lcall	_I2C_Stop
;	./src/angry_bird.c:297: SBUF = send_data; // send data to SBUF
	mov	_SBUF,_send_data
;	./src/angry_bird.c:298: send_flag = 0;
	mov	_send_flag,#0x00
;	./src/angry_bird.c:299: P1_6 = 0;
;	assignBit
	clr	_P1_6
00102$:
;	./src/angry_bird.c:302: if (received_flag == 1)
	mov	a,#0x01
	cjne	a,_received_flag,00105$
;	./src/angry_bird.c:304: cur_state = STATE_HOME;
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),#0x00
;	./src/angry_bird.c:305: received_flag = 0;
	mov	_received_flag,#0x00
;	./src/angry_bird.c:306: P1_4 = 0;
;	assignBit
	clr	_P1_4
;	./src/angry_bird.c:307: I2C_Start();
	lcall	_I2C_Start
;	./src/angry_bird.c:308: OLED_Init();
	lcall	_OLED_Init
;	./src/angry_bird.c:310: angrybird_display_home();
;	./src/angry_bird.c:312: }
	ljmp	_angrybird_display_home
00105$:
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'angrybird_setting_state'
;------------------------------------------------------------
;which                     Allocated to registers r7 
;which                     Allocated to registers r7 
;volume_value_             Allocated with name '_angrybird_setting_state_volume_value__262145_107'
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;j                         Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/angry_bird.c:314: void angrybird_setting_state(void)
;	-----------------------------------------
;	 function angrybird_setting_state
;	-----------------------------------------
_angrybird_setting_state:
;	./src/angry_bird.c:316: if ((but_up == 0) && (prebut_up == 1) || (but_down == 0) && (prebut_down == 1))
	jb	_P2_0,00115$
	mov	a,#0x01
	cjne	a,_prebut_up,00454$
	dec	a
	cjne	a,(_prebut_up + 1),00454$
	sjmp	00111$
00454$:
00115$:
	jb	_P2_1,00112$
	mov	a,#0x01
	cjne	a,_prebut_down,00456$
	dec	a
	cjne	a,(_prebut_down + 1),00456$
	sjmp	00457$
00456$:
	sjmp	00112$
00457$:
00111$:
;	./src/angry_bird.c:319: int which = (but_up == 0) ? 1 : 0;
	jb	_P2_0,00187$
	mov	r7,#0x01
	sjmp	00188$
00187$:
	mov	r7,#0x00
00188$:
;	./src/angry_bird.c:320: if (but_up == 0 || but_down == 0)
	jnb	_P2_0,00108$
	jb	_P2_1,00112$
00108$:
;	./src/angry_bird.c:322: if (which == 1)
	cjne	r7,#0x01,00106$
;	./src/angry_bird.c:324: setting_state--;
	dec	_setting_state
	mov	a,#0xff
	cjne	a,_setting_state,00463$
	dec	(_setting_state + 1)
00463$:
;	./src/angry_bird.c:325: if (setting_state < 1)
	clr	c
	mov	a,_setting_state
	subb	a,#0x01
	mov	a,(_setting_state + 1)
	xrl	a,#0x80
	subb	a,#0x80
	jnc	00112$
;	./src/angry_bird.c:326: setting_state = 2;
	mov	_setting_state,#0x02
	mov	(_setting_state + 1),#0x00
	sjmp	00112$
00106$:
;	./src/angry_bird.c:330: setting_state++;
	inc	_setting_state
	clr	a
	cjne	a,_setting_state,00465$
	inc	(_setting_state + 1)
00465$:
;	./src/angry_bird.c:331: if (setting_state > 2)
	clr	c
	mov	a,#0x02
	subb	a,_setting_state
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_setting_state + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00112$
;	./src/angry_bird.c:332: setting_state = 1;
	mov	_setting_state,#0x01
	mov	(_setting_state + 1),#0x00
00112$:
;	./src/angry_bird.c:336: if ((but_enter == 0) && (prebut_enter == 1))
	jb	_P2_2,00119$
	mov	a,#0x01
	cjne	a,_prebut_enter,00468$
	dec	a
	cjne	a,(_prebut_enter + 1),00468$
	sjmp	00469$
00468$:
	sjmp	00119$
00469$:
;	./src/angry_bird.c:338: delay_ms(10);
	mov	dptr,#0x000a
	lcall	_delay_ms
;	./src/angry_bird.c:339: if (but_enter == 0)
	jb	_P2_2,00119$
;	./src/angry_bird.c:341: angrybird_display_home();
	lcall	_angrybird_display_home
;	./src/angry_bird.c:342: cur_state = STATE_HOME;
	mov	_cur_state,#0x01
	mov	(_cur_state + 1),#0x00
00119$:
;	./src/angry_bird.c:345: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
	jb	_INT0,00147$
	mov	a,#0x01
	cjne	a,_prebut_left,00472$
	dec	a
	cjne	a,(_prebut_left + 1),00472$
	sjmp	00143$
00472$:
00147$:
	jnb	_INT1,00473$
	ljmp	00144$
00473$:
	mov	a,#0x01
	cjne	a,_prebut_right,00474$
	dec	a
	cjne	a,(_prebut_right + 1),00474$
	sjmp	00475$
00474$:
	ljmp	00144$
00475$:
00143$:
;	./src/angry_bird.c:348: int which = (but_left == 0) ? 0 : 1;
	jb	_INT0,00189$
	mov	r7,#0x00
	sjmp	00190$
00189$:
	mov	r7,#0x01
00190$:
;	./src/angry_bird.c:349: if (but_left == 0 || but_right == 0)
	jnb	_INT0,00140$
	jnb	_INT1,00478$
	ljmp	00144$
00478$:
00140$:
;	./src/angry_bird.c:351: if (setting_state == 1)
	mov	a,#0x01
	cjne	a,_setting_state,00479$
	dec	a
	cjne	a,(_setting_state + 1),00479$
	sjmp	00480$
00479$:
	sjmp	00138$
00480$:
;	./src/angry_bird.c:353: music_value = (music_value - 1 == 0) ? 0 : 1;
	mov	a,_music_value
	add	a,#0xff
	mov	r5,a
	mov	a,(_music_value + 1)
	addc	a,#0xff
	orl	a,r5
	jnz	00191$
	mov	r5,a
	mov	r6,a
	sjmp	00192$
00191$:
	mov	r5,#0x01
	mov	r6,#0x00
00192$:
	mov	_music_value,r5
	mov	(_music_value + 1),r6
;	./src/angry_bird.c:354: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x40
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:355: OLED_DisplayString("   ");
	mov	dptr,#___str_4
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:356: if (music_value == 0)
	mov	a,_music_value
	orl	a,(_music_value + 1)
	jnz	00124$
;	./src/angry_bird.c:358: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x40
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:359: OLED_DisplayString("OFF");
	mov	dptr,#___str_2
	mov	b,#0x80
	lcall	_OLED_DisplayString
	ljmp	00144$
00124$:
;	./src/angry_bird.c:361: else if (music_value == 1)
	mov	a,#0x01
	cjne	a,_music_value,00483$
	dec	a
	cjne	a,(_music_value + 1),00483$
	sjmp	00484$
00483$:
	sjmp	00144$
00484$:
;	./src/angry_bird.c:363: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor + 1);
	mov	_OLED_SetCursor_PARM_2,#0x41
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:364: OLED_DisplayString("ON");
	mov	dptr,#___str_5
	mov	b,#0x80
	lcall	_OLED_DisplayString
	sjmp	00144$
00138$:
;	./src/angry_bird.c:367: else if (setting_state == 2)
	mov	a,#0x02
	cjne	a,_setting_state,00485$
	clr	a
	cjne	a,(_setting_state + 1),00485$
	sjmp	00486$
00485$:
	sjmp	00144$
00486$:
;	./src/angry_bird.c:369: if (which == 0)
	mov	a,r7
	jnz	00133$
;	./src/angry_bird.c:371: volume_value--;
	dec	_volume_value
	mov	a,#0xff
	cjne	a,_volume_value,00488$
	dec	(_volume_value + 1)
00488$:
;	./src/angry_bird.c:372: if (volume_value < 0)
	mov	a,(_volume_value + 1)
	jnb	acc.7,00134$
;	./src/angry_bird.c:373: volume_value = 0;
	clr	a
	mov	_volume_value,a
	mov	(_volume_value + 1),a
	sjmp	00134$
00133$:
;	./src/angry_bird.c:375: else if (which == 1)
	cjne	r7,#0x01,00134$
;	./src/angry_bird.c:377: volume_value++;
	inc	_volume_value
	clr	a
	cjne	a,_volume_value,00492$
	inc	(_volume_value + 1)
00492$:
;	./src/angry_bird.c:378: if (volume_value > 3)
	clr	c
	mov	a,#0x03
	subb	a,_volume_value
	mov	a,#(0x00 ^ 0x80)
	mov	b,(_volume_value + 1)
	xrl	b,#0x80
	subb	a,b
	jnc	00134$
;	./src/angry_bird.c:379: volume_value = 3;
	mov	_volume_value,#0x03
	mov	(_volume_value + 1),#0x00
00134$:
;	./src/angry_bird.c:381: OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x44
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:383: volume_value_[0] = '0' + volume_value;
	mov	r7,_volume_value
	mov	a,#0x30
	add	a,r7
	mov	_angrybird_setting_state_volume_value__262145_107,a
;	./src/angry_bird.c:384: volume_value_[1] = '\0';
	mov	(_angrybird_setting_state_volume_value__262145_107 + 0x0001),#0x00
;	./src/angry_bird.c:385: OLED_DisplayString(volume_value_);
	mov	dptr,#_angrybird_setting_state_volume_value__262145_107
	mov	b,#0x40
	lcall	_OLED_DisplayString
00144$:
;	./src/angry_bird.c:390: if (setting_state != setting_state_past)
	mov	a,_setting_state_past
	cjne	a,_setting_state,00494$
	mov	a,(_setting_state_past + 1)
	cjne	a,(_setting_state + 1),00494$
	ljmp	00160$
00494$:
;	./src/angry_bird.c:393: switch (setting_state_past)
	mov	a,#0x01
	cjne	a,_setting_state_past,00495$
	dec	a
	cjne	a,(_setting_state_past + 1),00495$
	sjmp	00148$
00495$:
	mov	a,#0x02
	cjne	a,_setting_state_past,00496$
	clr	a
	cjne	a,(_setting_state_past + 1),00496$
	ljmp	00153$
00496$:
	ljmp	00160$
;	./src/angry_bird.c:395: case 1:
00148$:
;	./src/angry_bird.c:396: OLED_SetCursor(m_button_left_row_cursor, m_button_left_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x2d
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:397: OLED_DisplayString(" ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:398: OLED_SetCursor(m_button_right_row_cursor, m_button_right_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x5d
	mov	dpl,#0x04
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:399: OLED_DisplayString(" ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:401: row_offset = v_button_left_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:402: col_offset = v_button_left_col_cursor;
	mov	_col_offset,#0x2d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:403: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00165$:
	cjne	r7,#0x04,00497$
00497$:
	jnc	00150$
;	./src/angry_bird.c:405: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00162$:
	cjne	r6,#0x01,00499$
00499$:
	jnc	00166$
;	./src/angry_bird.c:407: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:408: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_left_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_left_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:405: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00162$
00166$:
;	./src/angry_bird.c:403: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
	sjmp	00165$
00150$:
;	./src/angry_bird.c:411: row_offset = v_button_right_row_cursor;
	mov	_row_offset,#0x07
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:412: col_offset = v_button_right_col_cursor;
	mov	_col_offset,#0x5d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:413: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00171$:
	cjne	r7,#0x04,00501$
00501$:
	jc	00502$
	ljmp	00160$
00502$:
;	./src/angry_bird.c:415: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00168$:
	cjne	r6,#0x01,00503$
00503$:
	jnc	00172$
;	./src/angry_bird.c:417: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:418: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_right_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_right_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:415: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00168$
00172$:
;	./src/angry_bird.c:413: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
;	./src/angry_bird.c:423: case 2:
	sjmp	00171$
00153$:
;	./src/angry_bird.c:424: OLED_SetCursor(v_button_left_row_cursor, v_button_left_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x2d
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:425: OLED_DisplayString(" ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:426: OLED_SetCursor(v_button_right_row_cursor, v_button_right_col_cursor);
	mov	_OLED_SetCursor_PARM_2,#0x5d
	mov	dpl,#0x07
	lcall	_OLED_SetCursor
;	./src/angry_bird.c:427: OLED_DisplayString(" ");
	mov	dptr,#___str_6
	mov	b,#0x80
	lcall	_OLED_DisplayString
;	./src/angry_bird.c:428: row_offset = m_button_left_row_cursor;
	mov	_row_offset,#0x04
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:429: col_offset = m_button_left_col_cursor;
	mov	_col_offset,#0x2d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:430: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00177$:
	cjne	r7,#0x04,00505$
00505$:
	jnc	00155$
;	./src/angry_bird.c:432: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00174$:
	cjne	r6,#0x01,00507$
00507$:
	jnc	00178$
;	./src/angry_bird.c:434: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:435: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_left_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_left_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:432: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00174$
00178$:
;	./src/angry_bird.c:430: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
	sjmp	00177$
00155$:
;	./src/angry_bird.c:438: row_offset = m_button_right_row_cursor;
	mov	_row_offset,#0x04
	mov	(_row_offset + 1),#0x00
;	./src/angry_bird.c:439: col_offset = m_button_right_col_cursor;
	mov	_col_offset,#0x5d
	mov	(_col_offset + 1),#0x00
;	./src/angry_bird.c:440: for (int j = 0; j < setting_button_cul_size; j++)
	mov	r7,#0x00
00183$:
	cjne	r7,#0x04,00509$
00509$:
	jnc	00160$
;	./src/angry_bird.c:442: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x00
00180$:
	cjne	r6,#0x01,00511$
00511$:
	jnc	00184$
;	./src/angry_bird.c:444: OLED_SetCursor(row_offset + i, col_offset + j);
	mov	r5,_row_offset
	clr	a
	add	a,r5
	mov	dpl,a
	mov	r5,_col_offset
	mov	ar4,r7
	mov	a,r4
	add	a,r5
	mov	_OLED_SetCursor_PARM_2,a
	push	ar7
	push	ar4
	lcall	_OLED_SetCursor
	pop	ar4
;	./src/angry_bird.c:445: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
	mov	a,r4
	rlc	a
	subb	a,acc
	mov	r5,a
	mov	a,r4
	add	a,#_button_right_logo
	mov	dpl,a
	mov	a,r5
	addc	a,#(_button_right_logo >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	lcall	_oledSendData
	pop	ar7
;	./src/angry_bird.c:442: for (int i = 0; i < setting_button_row_size; i++)
	mov	r6,#0x01
	sjmp	00180$
00184$:
;	./src/angry_bird.c:440: for (int j = 0; j < setting_button_cul_size; j++)
	inc	r7
;	./src/angry_bird.c:449: }
	sjmp	00183$
00160$:
;	./src/angry_bird.c:452: setting_state_past = setting_state;
	mov	_setting_state_past,_setting_state
	mov	(_setting_state_past + 1),(_setting_state + 1)
;	./src/angry_bird.c:453: prebut_enter = but_enter;
	mov	c,_P2_2
	clr	a
	rlc	a
	mov	_prebut_enter,a
	mov	(_prebut_enter + 1),#0x00
;	./src/angry_bird.c:454: prebut_up = but_up;
	mov	c,_P2_0
	clr	a
	rlc	a
	mov	_prebut_up,a
	mov	(_prebut_up + 1),#0x00
;	./src/angry_bird.c:455: prebut_down = but_down;
	mov	c,_P2_1
	clr	a
	rlc	a
	mov	_prebut_down,a
	mov	(_prebut_down + 1),#0x00
;	./src/angry_bird.c:456: prebut_left = but_left;
	mov	c,_INT0
	clr	a
	rlc	a
	mov	_prebut_left,a
	mov	(_prebut_left + 1),#0x00
;	./src/angry_bird.c:457: prebut_right = but_right;
	mov	c,_INT1
	clr	a
	rlc	a
	mov	_prebut_right,a
	mov	(_prebut_right + 1),#0x00
;	./src/angry_bird.c:458: delay_ms(10);
	mov	dptr,#0x000a
;	./src/angry_bird.c:459: }
	ljmp	_delay_ms
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
	.area CONST   (CODE)
___str_0:
	.ascii "Angry Bird!"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_1:
	.ascii "Setting"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_2:
	.ascii "OFF"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_3:
	.ascii "       "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_4:
	.ascii "   "
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_5:
	.ascii "ON"
	.db 0x00
	.area CSEG    (CODE)
	.area CONST   (CODE)
___str_6:
	.ascii " "
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
