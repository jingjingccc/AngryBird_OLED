;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.3.2 #14362 (MINGW64)
;--------------------------------------------------------
	.module i2c
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _delay_5
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
	.globl _Single_ReadI2C_PARM_2
	.globl _Single_WriteI2C_PARM_3
	.globl _Single_WriteI2C_PARM_2
	.globl _I2C_Start
	.globl _I2C_Stop
	.globl _I2C_SendACK
	.globl _I2C_RecvACK
	.globl _I2C_SendByte
	.globl _I2C_RecvByte
	.globl _Single_WriteI2C
	.globl _Single_ReadI2C
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
_Single_WriteI2C_PARM_2:
	.ds 1
_Single_WriteI2C_PARM_3:
	.ds 1
_Single_ReadI2C_PARM_2:
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
;Allocation info for local variables in function 'I2C_Start'
;------------------------------------------------------------
;	./src/i2c.c:5: void I2C_Start()
;	-----------------------------------------
;	 function I2C_Start
;	-----------------------------------------
_I2C_Start:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	./src/i2c.c:7: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/i2c.c:8: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:9: delay_5();
	lcall	_delay_5
;	./src/i2c.c:10: SDA = 0;
;	assignBit
	clr	_P0_1
;	./src/i2c.c:11: delay_5();
	lcall	_delay_5
;	./src/i2c.c:12: SCL = 0;
;	assignBit
	clr	_P0_0
;	./src/i2c.c:13: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_Stop'
;------------------------------------------------------------
;	./src/i2c.c:16: void I2C_Stop()
;	-----------------------------------------
;	 function I2C_Stop
;	-----------------------------------------
_I2C_Stop:
;	./src/i2c.c:18: SDA = 0;
;	assignBit
	clr	_P0_1
;	./src/i2c.c:19: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:20: delay_5();
	lcall	_delay_5
;	./src/i2c.c:21: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/i2c.c:22: delay_5();
;	./src/i2c.c:23: }
	ljmp	_delay_5
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_SendACK'
;------------------------------------------------------------
;ack                       Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c.c:26: void I2C_SendACK(bit ack)
;	-----------------------------------------
;	 function I2C_SendACK
;	-----------------------------------------
_I2C_SendACK:
;	./src/i2c.c:28: SDA = ack;
;	assignBit
	mov	a,dpl
	add	a,#0xff
	mov	_P0_1,c
;	./src/i2c.c:29: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:30: delay_5();
	lcall	_delay_5
;	./src/i2c.c:31: SCL = 0;
;	assignBit
	clr	_P0_0
;	./src/i2c.c:32: delay_5();
;	./src/i2c.c:33: }
	ljmp	_delay_5
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RecvACK'
;------------------------------------------------------------
;	./src/i2c.c:36: bit I2C_RecvACK()
;	-----------------------------------------
;	 function I2C_RecvACK
;	-----------------------------------------
_I2C_RecvACK:
;	./src/i2c.c:38: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:39: delay_5();
	lcall	_delay_5
;	./src/i2c.c:40: CY = SDA;
;	assignBit
	mov	c,_P0_1
	mov	_CY,c
;	./src/i2c.c:41: SCL = 0;
;	assignBit
	clr	_P0_0
;	./src/i2c.c:42: delay_5();
	lcall	_delay_5
;	./src/i2c.c:43: return CY;
	mov	c,_CY
	clr	a
	rlc	a
	mov	dpl,a
;	./src/i2c.c:44: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_SendByte'
;------------------------------------------------------------
;dat                       Allocated to registers r7 
;i                         Allocated to registers r6 
;------------------------------------------------------------
;	./src/i2c.c:47: void I2C_SendByte(uint8_t dat)
;	-----------------------------------------
;	 function I2C_SendByte
;	-----------------------------------------
_I2C_SendByte:
	mov	r7,dpl
;	./src/i2c.c:50: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	./src/i2c.c:52: dat <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r7,a
;	./src/i2c.c:53: SDA = CY;
;	assignBit
	mov	c,_CY
	mov	_P0_1,c
;	./src/i2c.c:54: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:55: delay_5();
	push	ar7
	push	ar6
	lcall	_delay_5
;	./src/i2c.c:56: SCL = 0;
;	assignBit
	clr	_P0_0
;	./src/i2c.c:57: delay_5();
	lcall	_delay_5
	pop	ar6
	pop	ar7
;	./src/i2c.c:50: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00119$
00119$:
	jc	00102$
;	./src/i2c.c:59: I2C_RecvACK();
;	./src/i2c.c:60: }
	ljmp	_I2C_RecvACK
;------------------------------------------------------------
;Allocation info for local variables in function 'I2C_RecvByte'
;------------------------------------------------------------
;i                         Allocated to registers r6 
;dat                       Allocated to registers r5 
;------------------------------------------------------------
;	./src/i2c.c:63: uint8_t I2C_RecvByte()
;	-----------------------------------------
;	 function I2C_RecvByte
;	-----------------------------------------
_I2C_RecvByte:
;	./src/i2c.c:66: uint8_t dat = 0;
	mov	r7,#0x00
;	./src/i2c.c:67: SDA = 1;
;	assignBit
	setb	_P0_1
;	./src/i2c.c:68: for (i = 0; i < 8; i++)
	mov	r6,#0x00
00102$:
;	./src/i2c.c:70: dat <<= 1;
	mov	ar5,r7
	mov	a,r5
	add	a,r5
	mov	r5,a
;	./src/i2c.c:71: SCL = 1;
;	assignBit
	setb	_P0_0
;	./src/i2c.c:72: delay_5();
	push	ar6
	push	ar5
	lcall	_delay_5
	pop	ar5
	pop	ar6
;	./src/i2c.c:73: dat |= SDA;
	mov	c,_P0_1
	clr	a
	rlc	a
	orl	a,r5
	mov	r7,a
;	./src/i2c.c:74: SCL = 0;
;	assignBit
	clr	_P0_0
;	./src/i2c.c:75: delay_5();
	push	ar7
	push	ar6
	lcall	_delay_5
	pop	ar6
	pop	ar7
;	./src/i2c.c:68: for (i = 0; i < 8; i++)
	inc	r6
	cjne	r6,#0x08,00121$
00121$:
	jc	00102$
;	./src/i2c.c:77: return dat;
	mov	dpl,r7
;	./src/i2c.c:78: }
	ret
;------------------------------------------------------------
;Allocation info for local variables in function 'Single_WriteI2C'
;------------------------------------------------------------
;REG_Address               Allocated with name '_Single_WriteI2C_PARM_2'
;REG_data                  Allocated with name '_Single_WriteI2C_PARM_3'
;SlaveAddress              Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c.c:81: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address, uint8_t REG_data)
;	-----------------------------------------
;	 function Single_WriteI2C
;	-----------------------------------------
_Single_WriteI2C:
	mov	r7,dpl
;	./src/i2c.c:83: I2C_Start();
	push	ar7
	lcall	_I2C_Start
	pop	ar7
;	./src/i2c.c:84: I2C_SendByte(SlaveAddress);
	mov	dpl,r7
	lcall	_I2C_SendByte
;	./src/i2c.c:85: I2C_SendByte(REG_Address);
	mov	dpl,_Single_WriteI2C_PARM_2
	lcall	_I2C_SendByte
;	./src/i2c.c:86: I2C_SendByte(REG_data);
	mov	dpl,_Single_WriteI2C_PARM_3
	lcall	_I2C_SendByte
;	./src/i2c.c:87: I2C_Stop();
;	./src/i2c.c:88: }
	ljmp	_I2C_Stop
;------------------------------------------------------------
;Allocation info for local variables in function 'Single_ReadI2C'
;------------------------------------------------------------
;REG_Address               Allocated with name '_Single_ReadI2C_PARM_2'
;SlaveAddress              Allocated to registers r7 
;REG_data                  Allocated to registers r7 
;------------------------------------------------------------
;	./src/i2c.c:91: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
;	-----------------------------------------
;	 function Single_ReadI2C
;	-----------------------------------------
_Single_ReadI2C:
	mov	r7,dpl
;	./src/i2c.c:94: I2C_Start();
	push	ar7
	lcall	_I2C_Start
	pop	ar7
;	./src/i2c.c:95: I2C_SendByte(SlaveAddress);
	mov	dpl,r7
	push	ar7
	lcall	_I2C_SendByte
;	./src/i2c.c:96: I2C_SendByte(REG_Address);
	mov	dpl,_Single_ReadI2C_PARM_2
	lcall	_I2C_SendByte
;	./src/i2c.c:97: I2C_Stop();
	lcall	_I2C_Stop
;	./src/i2c.c:99: I2C_Start();
	lcall	_I2C_Start
	pop	ar7
;	./src/i2c.c:100: I2C_SendByte(SlaveAddress | 0x01); // R/W#: 1 means read mode
	mov	a,#0x01
	orl	a,r7
	mov	dpl,a
	lcall	_I2C_SendByte
;	./src/i2c.c:101: REG_data = I2C_RecvByte();
	lcall	_I2C_RecvByte
	mov	r7,dpl
;	./src/i2c.c:102: I2C_SendACK(1);
	mov	dpl,#0x01
	push	ar7
	lcall	_I2C_SendACK
;	./src/i2c.c:103: I2C_Stop();
	lcall	_I2C_Stop
	pop	ar7
;	./src/i2c.c:104: return REG_data;
	mov	dpl,r7
;	./src/i2c.c:105: }
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
