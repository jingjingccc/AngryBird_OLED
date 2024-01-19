;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module oled_i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _OledFontTable
	.globl _Single_WriteI2C
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
	.globl _OLED_SetCursor_PARM_2
	.globl _OLED_Init
	.globl _OLED_DisplayChar
	.globl _OLED_DisplayString
	.globl _OLED_Clear
	.globl _OLED_SetCursor
	.globl _oledSendCommand
	.globl _oledSendData
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
_OLED_SetCursor_PARM_2:
	.ds 1
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
;Allocation info for local variables in function 'OLED_Init'
;------------------------------------------------------------
;	./src/oled_i2c.c:17: void OLED_Init(void)
;	-----------------------------------------
;	 function OLED_Init
;	-----------------------------------------
_OLED_Init:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/oled_i2c.c:19: oledSendCommand(0xa8); // Set MUX Ratio
	mov	dpl,#0xa8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:20: oledSendCommand(0x3f);
	mov	dpl,#0x3f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:21: oledSendCommand(0xd3); // Set Display Offset
	mov	dpl,#0xd3
	lcall	_oledSendCommand
;	./src/oled_i2c.c:22: oledSendCommand(0x00);
	mov	dpl,#0x00
	lcall	_oledSendCommand
;	./src/oled_i2c.c:23: oledSendCommand(0x40); // Set Display Start Line
	mov	dpl,#0x40
	lcall	_oledSendCommand
;	./src/oled_i2c.c:24: oledSendCommand(0xa1); // Set Segment re-map A0h/A1h
	mov	dpl,#0xa1
	lcall	_oledSendCommand
;	./src/oled_i2c.c:25: oledSendCommand(0xc8); // Set COM OUTput
	mov	dpl,#0xc8
	lcall	_oledSendCommand
;	./src/oled_i2c.c:26: oledSendCommand(0xda);
	mov	dpl,#0xda
	lcall	_oledSendCommand
;	./src/oled_i2c.c:27: oledSendCommand(0x12);
	mov	dpl,#0x12
	lcall	_oledSendCommand
;	./src/oled_i2c.c:28: oledSendCommand(0x81);
	mov	dpl,#0x81
	lcall	_oledSendCommand
;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
	mov	dpl,#0x7f
	lcall	_oledSendCommand
;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
	mov	dpl,#0xa4
	lcall	_oledSendCommand
;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
	mov	dpl,#0xa6
	lcall	_oledSendCommand
;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
	mov	dpl,#0xd5
	lcall	_oledSendCommand
;	./src/oled_i2c.c:33: oledSendCommand(0x80);
	mov	dpl,#0x80
	lcall	_oledSendCommand
;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
	mov	dpl,#0x8d
	lcall	_oledSendCommand
;	./src/oled_i2c.c:35: oledSendCommand(0x14);
	mov	dpl,#0x14
	lcall	_oledSendCommand
;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
	mov	dpl,#0xaf
	lcall	_oledSendCommand
;	./src/oled_i2c.c:38: OLED_Clear(); // Clear the complete LCD during init
;	./src/oled_i2c.c:39: }
	ljmp	_OLED_Clear
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayChar'
;------------------------------------------------------------
;ch                        Allocated to registers r7 
;i                         Allocated to registers r5 
;index                     Allocated to registers r6 r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
;	-----------------------------------------
;	 function OLED_DisplayChar
;	-----------------------------------------
_OLED_DisplayChar:
	mov	r7,dpl
;	./src/oled_i2c.c:56: if (ch != '\n')
	cjne	r7,#0x0a,00130$
	ret
00130$:
;	./src/oled_i2c.c:58: index = (ch - 0x20);
	mov	r6,#0x00
	mov	a,r7
	add	a,#0xe0
	mov	__mulint_PARM_2,a
	mov	a,r6
	addc	a,#0xff
	mov	(__mulint_PARM_2 + 1),a
;	./src/oled_i2c.c:59: index = index * 5; // As the lookup table starts from Space(0x20)
;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
	mov	dptr,#0x0005
	lcall	__mulint
	mov	r6,dpl
	mov	r7,dph
	mov	r5,#0x00
00104$:
;	./src/oled_i2c.c:62: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
	mov	ar3,r5
	mov	r4,#0x00
	mov	a,r3
	add	a,r6
	mov	r3,a
	mov	a,r4
	addc	a,r7
	mov	r4,a
	mov	a,r3
	add	a,#_OledFontTable
	mov	dpl,a
	mov	a,r4
	addc	a,#(_OledFontTable >> 8)
	mov	dph,a
	clr	a
	movc	a,@a+dptr
	mov	dpl,a
	push	ar7
	push	ar6
	push	ar5
	lcall	_oledSendData
	pop	ar5
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
	inc	r5
	cjne	r5,#0x05,00131$
00131$:
	jc	00104$
;	./src/oled_i2c.c:64: oledSendData(0x00); /* Display the data and keep track of cursor */
	mov	dpl,#0x00
;	./src/oled_i2c.c:66: }
	ljmp	_oledSendData
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_DisplayString'
;------------------------------------------------------------
;ptr                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
;	-----------------------------------------
;	 function OLED_DisplayString
;	-----------------------------------------
_OLED_DisplayString:
	mov	r5,dpl
	mov	r6,dph
	mov	r7,b
;	./src/oled_i2c.c:83: while (*ptr)
00101$:
	mov	dpl,r5
	mov	dph,r6
	mov	b,r7
	lcall	__gptrget
	mov	r4,a
	jz	00104$
;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
	mov	dpl,r4
	inc	r5
	cjne	r5,#0x00,00120$
	inc	r6
00120$:
	push	ar7
	push	ar6
	push	ar5
	lcall	_OLED_DisplayChar
	pop	ar5
	pop	ar6
	pop	ar7
	sjmp	00101$
00104$:
;	./src/oled_i2c.c:85: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_Clear'
;------------------------------------------------------------
;oled_clean_col            Allocated to registers r6 
;oled_clean_page           Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:96: void OLED_Clear(void)
;	-----------------------------------------
;	 function OLED_Clear
;	-----------------------------------------
_OLED_Clear:
;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
	mov	r7,#0x00
00105$:
;	./src/oled_i2c.c:101: OLED_SetCursor(oled_clean_page, 0);
	mov	_OLED_SetCursor_PARM_2,#0x00
	mov	dpl,r7
	push	ar7
	lcall	_OLED_SetCursor
	pop	ar7
;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
	mov	r6,#0x00
00103$:
;	./src/oled_i2c.c:104: oledSendData(0);
	mov	dpl,#0x00
	push	ar7
	push	ar6
	lcall	_oledSendData
	pop	ar6
	pop	ar7
;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
	inc	r6
	cjne	r6,#0x80,00129$
00129$:
	jc	00103$
;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
	inc	r7
	cjne	r7,#0x08,00131$
00131$:
	jc	00105$
;	./src/oled_i2c.c:107: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'OLED_SetCursor'
;------------------------------------------------------------
;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
;lineNumber                Allocated to registers r7 
;------------------------------------------------------------
;	./src/oled_i2c.c:124: void OLED_SetCursor(uint8_t lineNumber, uint8_t cursorPosition)
;	-----------------------------------------
;	 function OLED_SetCursor
;	-----------------------------------------
_OLED_SetCursor:
	mov	r7,dpl
;	./src/oled_i2c.c:126: cursorPosition = cursorPosition + 2;
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x02
	add	a,r6
	mov	_OLED_SetCursor_PARM_2,a
;	./src/oled_i2c.c:127: oledSendCommand(0x0f & cursorPosition);        // Select SEG lower 4 bits
	mov	r6,_OLED_SetCursor_PARM_2
	mov	a,#0x0f
	anl	a,r6
	mov	dpl,a
	push	ar7
	push	ar6
	lcall	_oledSendCommand
	pop	ar6
;	./src/oled_i2c.c:128: oledSendCommand(0x10 | (cursorPosition >> 4)); // Select SEG higher 4 bits
	mov	a,r6
	swap	a
	anl	a,#0x0f
	mov	r6,a
	mov	a,#0x10
	orl	a,r6
	mov	dpl,a
	lcall	_oledSendCommand
	pop	ar7
;	./src/oled_i2c.c:129: oledSendCommand(0xb0 | lineNumber);            // Select PAGE
	mov	a,#0xb0
	orl	a,r7
	mov	dpl,a
;	./src/oled_i2c.c:130: }
	ljmp	_oledSendCommand
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendCommand'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:135: void oledSendCommand(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendCommand
;	-----------------------------------------
_oledSendCommand:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:137: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x00
	mov	dpl,#0x78
;	./src/oled_i2c.c:138: }
	ljmp	_Single_WriteI2C
;------------------------------------------------------------
;Allocation info for local variables in function 'oledSendData'
;------------------------------------------------------------
;cmd                       Allocated to registers 
;------------------------------------------------------------
;	./src/oled_i2c.c:140: void oledSendData(uint8_t cmd)
;	-----------------------------------------
;	 function oledSendData
;	-----------------------------------------
_oledSendData:
	mov	_Single_WriteI2C_PARM_3,dpl
;	./src/oled_i2c.c:142: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
	mov	_Single_WriteI2C_PARM_2,#0x40
	mov	dpl,#0x78
;	./src/oled_i2c.c:143: }
	ljmp	_Single_WriteI2C
	.area CSEG    (CODE)
	.area CONST   (CODE)
_OledFontTable:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x2f	; 47
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x7f	; 127
	.db #0x14	; 20
	.db #0x24	; 36
	.db #0x2a	; 42
	.db #0x7f	; 127
	.db #0x2a	; 42
	.db #0x12	; 18
	.db #0x23	; 35
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x64	; 100	'd'
	.db #0x62	; 98	'b'
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x55	; 85	'U'
	.db #0x22	; 34
	.db #0x50	; 80	'P'
	.db #0x00	; 0
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1c	; 28
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x3e	; 62
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xa0	; 160
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x60	; 96
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x10	; 16
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x3e	; 62
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x3e	; 62
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x42	; 66	'B'
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x46	; 70	'F'
	.db #0x21	; 33
	.db #0x41	; 65	'A'
	.db #0x45	; 69	'E'
	.db #0x4b	; 75	'K'
	.db #0x31	; 49	'1'
	.db #0x18	; 24
	.db #0x14	; 20
	.db #0x12	; 18
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x27	; 39
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x45	; 69	'E'
	.db #0x39	; 57	'9'
	.db #0x3c	; 60
	.db #0x4a	; 74	'J'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x71	; 113	'q'
	.db #0x09	; 9
	.db #0x05	; 5
	.db #0x03	; 3
	.db #0x36	; 54	'6'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x06	; 6
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x29	; 41
	.db #0x1e	; 30
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x56	; 86	'V'
	.db #0x36	; 54	'6'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x14	; 20
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x51	; 81	'Q'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x32	; 50	'2'
	.db #0x49	; 73	'I'
	.db #0x59	; 89	'Y'
	.db #0x51	; 81	'Q'
	.db #0x3e	; 62
	.db #0x7c	; 124
	.db #0x12	; 18
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x36	; 54	'6'
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x22	; 34
	.db #0x1c	; 28
	.db #0x7f	; 127
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x7a	; 122	'z'
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x41	; 65	'A'
	.db #0x3f	; 63
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x22	; 34
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x7f	; 127
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x7f	; 127
	.db #0x7f	; 127
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x7f	; 127
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x3e	; 62
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x3e	; 62
	.db #0x41	; 65	'A'
	.db #0x51	; 81	'Q'
	.db #0x21	; 33
	.db #0x5e	; 94
	.db #0x7f	; 127
	.db #0x09	; 9
	.db #0x19	; 25
	.db #0x29	; 41
	.db #0x46	; 70	'F'
	.db #0x46	; 70	'F'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x49	; 73	'I'
	.db #0x31	; 49	'1'
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x7f	; 127
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x1f	; 31
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1f	; 31
	.db #0x3f	; 63
	.db #0x40	; 64
	.db #0x38	; 56	'8'
	.db #0x40	; 64
	.db #0x3f	; 63
	.db #0x63	; 99	'c'
	.db #0x14	; 20
	.db #0x08	; 8
	.db #0x14	; 20
	.db #0x63	; 99	'c'
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x70	; 112	'p'
	.db #0x08	; 8
	.db #0x07	; 7
	.db #0x61	; 97	'a'
	.db #0x51	; 81	'Q'
	.db #0x49	; 73	'I'
	.db #0x45	; 69	'E'
	.db #0x43	; 67	'C'
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x00	; 0
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0xaa	; 170
	.db #0x55	; 85	'U'
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x05	; 5
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x20	; 32
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x78	; 120	'x'
	.db #0x7f	; 127
	.db #0x48	; 72	'H'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x20	; 32
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x48	; 72	'H'
	.db #0x7f	; 127
	.db #0x38	; 56	'8'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x18	; 24
	.db #0x08	; 8
	.db #0x7e	; 126
	.db #0x09	; 9
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x18	; 24
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0xa4	; 164
	.db #0x7c	; 124
	.db #0x7f	; 127
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x7d	; 125
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x40	; 64
	.db #0x80	; 128
	.db #0x84	; 132
	.db #0x7d	; 125
	.db #0x00	; 0
	.db #0x7f	; 127
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x41	; 65	'A'
	.db #0x7f	; 127
	.db #0x40	; 64
	.db #0x00	; 0
	.db #0x7c	; 124
	.db #0x04	; 4
	.db #0x18	; 24
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x78	; 120	'x'
	.db #0x38	; 56	'8'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x44	; 68	'D'
	.db #0x38	; 56	'8'
	.db #0xfc	; 252
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0x18	; 24
	.db #0x24	; 36
	.db #0x24	; 36
	.db #0x18	; 24
	.db #0xfc	; 252
	.db #0x7c	; 124
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x48	; 72	'H'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x54	; 84	'T'
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x3f	; 63
	.db #0x44	; 68	'D'
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x7c	; 124
	.db #0x1c	; 28
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x20	; 32
	.db #0x1c	; 28
	.db #0x3c	; 60
	.db #0x40	; 64
	.db #0x30	; 48	'0'
	.db #0x40	; 64
	.db #0x3c	; 60
	.db #0x44	; 68	'D'
	.db #0x28	; 40
	.db #0x10	; 16
	.db #0x28	; 40
	.db #0x44	; 68	'D'
	.db #0x1c	; 28
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0xa0	; 160
	.db #0x7c	; 124
	.db #0x44	; 68	'D'
	.db #0x64	; 100	'd'
	.db #0x54	; 84	'T'
	.db #0x4c	; 76	'L'
	.db #0x44	; 68	'D'
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x7c	; 124
	.db #0x82	; 130
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0xff	; 255
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x82	; 130
	.db #0x7c	; 124
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x09	; 9
	.db #0x06	; 6
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
