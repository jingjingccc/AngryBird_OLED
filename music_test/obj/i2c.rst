                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14362 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _delay_5
                                     12 	.globl _CY
                                     13 	.globl _AC
                                     14 	.globl _F0
                                     15 	.globl _RS1
                                     16 	.globl _RS0
                                     17 	.globl _OV
                                     18 	.globl _F1
                                     19 	.globl _P
                                     20 	.globl _PS
                                     21 	.globl _PT1
                                     22 	.globl _PX1
                                     23 	.globl _PT0
                                     24 	.globl _PX0
                                     25 	.globl _RD
                                     26 	.globl _WR
                                     27 	.globl _T1
                                     28 	.globl _T0
                                     29 	.globl _INT1
                                     30 	.globl _INT0
                                     31 	.globl _TXD
                                     32 	.globl _RXD
                                     33 	.globl _P3_7
                                     34 	.globl _P3_6
                                     35 	.globl _P3_5
                                     36 	.globl _P3_4
                                     37 	.globl _P3_3
                                     38 	.globl _P3_2
                                     39 	.globl _P3_1
                                     40 	.globl _P3_0
                                     41 	.globl _EA
                                     42 	.globl _ES
                                     43 	.globl _ET1
                                     44 	.globl _EX1
                                     45 	.globl _ET0
                                     46 	.globl _EX0
                                     47 	.globl _P2_7
                                     48 	.globl _P2_6
                                     49 	.globl _P2_5
                                     50 	.globl _P2_4
                                     51 	.globl _P2_3
                                     52 	.globl _P2_2
                                     53 	.globl _P2_1
                                     54 	.globl _P2_0
                                     55 	.globl _SM0
                                     56 	.globl _SM1
                                     57 	.globl _SM2
                                     58 	.globl _REN
                                     59 	.globl _TB8
                                     60 	.globl _RB8
                                     61 	.globl _TI
                                     62 	.globl _RI
                                     63 	.globl _P1_7
                                     64 	.globl _P1_6
                                     65 	.globl _P1_5
                                     66 	.globl _P1_4
                                     67 	.globl _P1_3
                                     68 	.globl _P1_2
                                     69 	.globl _P1_1
                                     70 	.globl _P1_0
                                     71 	.globl _TF1
                                     72 	.globl _TR1
                                     73 	.globl _TF0
                                     74 	.globl _TR0
                                     75 	.globl _IE1
                                     76 	.globl _IT1
                                     77 	.globl _IE0
                                     78 	.globl _IT0
                                     79 	.globl _P0_7
                                     80 	.globl _P0_6
                                     81 	.globl _P0_5
                                     82 	.globl _P0_4
                                     83 	.globl _P0_3
                                     84 	.globl _P0_2
                                     85 	.globl _P0_1
                                     86 	.globl _P0_0
                                     87 	.globl _B
                                     88 	.globl _ACC
                                     89 	.globl _PSW
                                     90 	.globl _IP
                                     91 	.globl _P3
                                     92 	.globl _IE
                                     93 	.globl _P2
                                     94 	.globl _SBUF
                                     95 	.globl _SCON
                                     96 	.globl _P1
                                     97 	.globl _TH1
                                     98 	.globl _TH0
                                     99 	.globl _TL1
                                    100 	.globl _TL0
                                    101 	.globl _TMOD
                                    102 	.globl _TCON
                                    103 	.globl _PCON
                                    104 	.globl _DPH
                                    105 	.globl _DPL
                                    106 	.globl _SP
                                    107 	.globl _P0
                                    108 	.globl _Single_ReadI2C_PARM_2
                                    109 	.globl _Single_WriteI2C_PARM_3
                                    110 	.globl _Single_WriteI2C_PARM_2
                                    111 	.globl _I2C_Start
                                    112 	.globl _I2C_Stop
                                    113 	.globl _I2C_SendACK
                                    114 	.globl _I2C_RecvACK
                                    115 	.globl _I2C_SendByte
                                    116 	.globl _I2C_RecvByte
                                    117 	.globl _Single_WriteI2C
                                    118 	.globl _Single_ReadI2C
                                    119 ;--------------------------------------------------------
                                    120 ; special function registers
                                    121 ;--------------------------------------------------------
                                    122 	.area RSEG    (ABS,DATA)
      000000                        123 	.org 0x0000
                           000080   124 _P0	=	0x0080
                           000081   125 _SP	=	0x0081
                           000082   126 _DPL	=	0x0082
                           000083   127 _DPH	=	0x0083
                           000087   128 _PCON	=	0x0087
                           000088   129 _TCON	=	0x0088
                           000089   130 _TMOD	=	0x0089
                           00008A   131 _TL0	=	0x008a
                           00008B   132 _TL1	=	0x008b
                           00008C   133 _TH0	=	0x008c
                           00008D   134 _TH1	=	0x008d
                           000090   135 _P1	=	0x0090
                           000098   136 _SCON	=	0x0098
                           000099   137 _SBUF	=	0x0099
                           0000A0   138 _P2	=	0x00a0
                           0000A8   139 _IE	=	0x00a8
                           0000B0   140 _P3	=	0x00b0
                           0000B8   141 _IP	=	0x00b8
                           0000D0   142 _PSW	=	0x00d0
                           0000E0   143 _ACC	=	0x00e0
                           0000F0   144 _B	=	0x00f0
                                    145 ;--------------------------------------------------------
                                    146 ; special function bits
                                    147 ;--------------------------------------------------------
                                    148 	.area RSEG    (ABS,DATA)
      000000                        149 	.org 0x0000
                           000080   150 _P0_0	=	0x0080
                           000081   151 _P0_1	=	0x0081
                           000082   152 _P0_2	=	0x0082
                           000083   153 _P0_3	=	0x0083
                           000084   154 _P0_4	=	0x0084
                           000085   155 _P0_5	=	0x0085
                           000086   156 _P0_6	=	0x0086
                           000087   157 _P0_7	=	0x0087
                           000088   158 _IT0	=	0x0088
                           000089   159 _IE0	=	0x0089
                           00008A   160 _IT1	=	0x008a
                           00008B   161 _IE1	=	0x008b
                           00008C   162 _TR0	=	0x008c
                           00008D   163 _TF0	=	0x008d
                           00008E   164 _TR1	=	0x008e
                           00008F   165 _TF1	=	0x008f
                           000090   166 _P1_0	=	0x0090
                           000091   167 _P1_1	=	0x0091
                           000092   168 _P1_2	=	0x0092
                           000093   169 _P1_3	=	0x0093
                           000094   170 _P1_4	=	0x0094
                           000095   171 _P1_5	=	0x0095
                           000096   172 _P1_6	=	0x0096
                           000097   173 _P1_7	=	0x0097
                           000098   174 _RI	=	0x0098
                           000099   175 _TI	=	0x0099
                           00009A   176 _RB8	=	0x009a
                           00009B   177 _TB8	=	0x009b
                           00009C   178 _REN	=	0x009c
                           00009D   179 _SM2	=	0x009d
                           00009E   180 _SM1	=	0x009e
                           00009F   181 _SM0	=	0x009f
                           0000A0   182 _P2_0	=	0x00a0
                           0000A1   183 _P2_1	=	0x00a1
                           0000A2   184 _P2_2	=	0x00a2
                           0000A3   185 _P2_3	=	0x00a3
                           0000A4   186 _P2_4	=	0x00a4
                           0000A5   187 _P2_5	=	0x00a5
                           0000A6   188 _P2_6	=	0x00a6
                           0000A7   189 _P2_7	=	0x00a7
                           0000A8   190 _EX0	=	0x00a8
                           0000A9   191 _ET0	=	0x00a9
                           0000AA   192 _EX1	=	0x00aa
                           0000AB   193 _ET1	=	0x00ab
                           0000AC   194 _ES	=	0x00ac
                           0000AF   195 _EA	=	0x00af
                           0000B0   196 _P3_0	=	0x00b0
                           0000B1   197 _P3_1	=	0x00b1
                           0000B2   198 _P3_2	=	0x00b2
                           0000B3   199 _P3_3	=	0x00b3
                           0000B4   200 _P3_4	=	0x00b4
                           0000B5   201 _P3_5	=	0x00b5
                           0000B6   202 _P3_6	=	0x00b6
                           0000B7   203 _P3_7	=	0x00b7
                           0000B0   204 _RXD	=	0x00b0
                           0000B1   205 _TXD	=	0x00b1
                           0000B2   206 _INT0	=	0x00b2
                           0000B3   207 _INT1	=	0x00b3
                           0000B4   208 _T0	=	0x00b4
                           0000B5   209 _T1	=	0x00b5
                           0000B6   210 _WR	=	0x00b6
                           0000B7   211 _RD	=	0x00b7
                           0000B8   212 _PX0	=	0x00b8
                           0000B9   213 _PT0	=	0x00b9
                           0000BA   214 _PX1	=	0x00ba
                           0000BB   215 _PT1	=	0x00bb
                           0000BC   216 _PS	=	0x00bc
                           0000D0   217 _P	=	0x00d0
                           0000D1   218 _F1	=	0x00d1
                           0000D2   219 _OV	=	0x00d2
                           0000D3   220 _RS0	=	0x00d3
                           0000D4   221 _RS1	=	0x00d4
                           0000D5   222 _F0	=	0x00d5
                           0000D6   223 _AC	=	0x00d6
                           0000D7   224 _CY	=	0x00d7
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable register banks
                                    227 ;--------------------------------------------------------
                                    228 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        229 	.ds 8
                                    230 ;--------------------------------------------------------
                                    231 ; internal ram data
                                    232 ;--------------------------------------------------------
                                    233 	.area DSEG    (DATA)
      000014                        234 _Single_WriteI2C_PARM_2:
      000014                        235 	.ds 1
      000015                        236 _Single_WriteI2C_PARM_3:
      000015                        237 	.ds 1
      000016                        238 _Single_ReadI2C_PARM_2:
      000016                        239 	.ds 1
                                    240 ;--------------------------------------------------------
                                    241 ; overlayable items in internal ram
                                    242 ;--------------------------------------------------------
                                    243 ;--------------------------------------------------------
                                    244 ; indirectly addressable internal ram data
                                    245 ;--------------------------------------------------------
                                    246 	.area ISEG    (DATA)
                                    247 ;--------------------------------------------------------
                                    248 ; absolute internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area IABS    (ABS,DATA)
                                    251 	.area IABS    (ABS,DATA)
                                    252 ;--------------------------------------------------------
                                    253 ; bit data
                                    254 ;--------------------------------------------------------
                                    255 	.area BSEG    (BIT)
                                    256 ;--------------------------------------------------------
                                    257 ; paged external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area PSEG    (PAG,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; uninitialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XSEG    (XDATA)
                                    264 ;--------------------------------------------------------
                                    265 ; absolute external ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area XABS    (ABS,XDATA)
                                    268 ;--------------------------------------------------------
                                    269 ; initialized external ram data
                                    270 ;--------------------------------------------------------
                                    271 	.area XISEG   (XDATA)
                                    272 	.area HOME    (CODE)
                                    273 	.area GSINIT0 (CODE)
                                    274 	.area GSINIT1 (CODE)
                                    275 	.area GSINIT2 (CODE)
                                    276 	.area GSINIT3 (CODE)
                                    277 	.area GSINIT4 (CODE)
                                    278 	.area GSINIT5 (CODE)
                                    279 	.area GSINIT  (CODE)
                                    280 	.area GSFINAL (CODE)
                                    281 	.area CSEG    (CODE)
                                    282 ;--------------------------------------------------------
                                    283 ; global & static initialisations
                                    284 ;--------------------------------------------------------
                                    285 	.area HOME    (CODE)
                                    286 	.area GSINIT  (CODE)
                                    287 	.area GSFINAL (CODE)
                                    288 	.area GSINIT  (CODE)
                                    289 ;--------------------------------------------------------
                                    290 ; Home
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area HOME    (CODE)
                                    294 ;--------------------------------------------------------
                                    295 ; code
                                    296 ;--------------------------------------------------------
                                    297 	.area CSEG    (CODE)
                                    298 ;------------------------------------------------------------
                                    299 ;Allocation info for local variables in function 'I2C_Start'
                                    300 ;------------------------------------------------------------
                                    301 ;	./src/i2c.c:5: void I2C_Start()
                                    302 ;	-----------------------------------------
                                    303 ;	 function I2C_Start
                                    304 ;	-----------------------------------------
      0002F4                        305 _I2C_Start:
                           000007   306 	ar7 = 0x07
                           000006   307 	ar6 = 0x06
                           000005   308 	ar5 = 0x05
                           000004   309 	ar4 = 0x04
                           000003   310 	ar3 = 0x03
                           000002   311 	ar2 = 0x02
                           000001   312 	ar1 = 0x01
                           000000   313 	ar0 = 0x00
                                    314 ;	./src/i2c.c:7: SDA = 1;
                                    315 ;	assignBit
      0002F4 D2 81            [12]  316 	setb	_P0_1
                                    317 ;	./src/i2c.c:8: SCL = 1;
                                    318 ;	assignBit
      0002F6 D2 80            [12]  319 	setb	_P0_0
                                    320 ;	./src/i2c.c:9: delay_5();
      0002F8 12 04 5C         [24]  321 	lcall	_delay_5
                                    322 ;	./src/i2c.c:10: SDA = 0;
                                    323 ;	assignBit
      0002FB C2 81            [12]  324 	clr	_P0_1
                                    325 ;	./src/i2c.c:11: delay_5();
      0002FD 12 04 5C         [24]  326 	lcall	_delay_5
                                    327 ;	./src/i2c.c:12: SCL = 0;
                                    328 ;	assignBit
      000300 C2 80            [12]  329 	clr	_P0_0
                                    330 ;	./src/i2c.c:13: }
      000302 22               [24]  331 	ret
                                    332 ;------------------------------------------------------------
                                    333 ;Allocation info for local variables in function 'I2C_Stop'
                                    334 ;------------------------------------------------------------
                                    335 ;	./src/i2c.c:16: void I2C_Stop()
                                    336 ;	-----------------------------------------
                                    337 ;	 function I2C_Stop
                                    338 ;	-----------------------------------------
      000303                        339 _I2C_Stop:
                                    340 ;	./src/i2c.c:18: SDA = 0;
                                    341 ;	assignBit
      000303 C2 81            [12]  342 	clr	_P0_1
                                    343 ;	./src/i2c.c:19: SCL = 1;
                                    344 ;	assignBit
      000305 D2 80            [12]  345 	setb	_P0_0
                                    346 ;	./src/i2c.c:20: delay_5();
      000307 12 04 5C         [24]  347 	lcall	_delay_5
                                    348 ;	./src/i2c.c:21: SDA = 1;
                                    349 ;	assignBit
      00030A D2 81            [12]  350 	setb	_P0_1
                                    351 ;	./src/i2c.c:22: delay_5();
                                    352 ;	./src/i2c.c:23: }
      00030C 02 04 5C         [24]  353 	ljmp	_delay_5
                                    354 ;------------------------------------------------------------
                                    355 ;Allocation info for local variables in function 'I2C_SendACK'
                                    356 ;------------------------------------------------------------
                                    357 ;ack                       Allocated to registers r7 
                                    358 ;------------------------------------------------------------
                                    359 ;	./src/i2c.c:26: void I2C_SendACK(bit ack)
                                    360 ;	-----------------------------------------
                                    361 ;	 function I2C_SendACK
                                    362 ;	-----------------------------------------
      00030F                        363 _I2C_SendACK:
                                    364 ;	./src/i2c.c:28: SDA = ack;
                                    365 ;	assignBit
      00030F E5 82            [12]  366 	mov	a,dpl
      000311 24 FF            [12]  367 	add	a,#0xff
      000313 92 81            [24]  368 	mov	_P0_1,c
                                    369 ;	./src/i2c.c:29: SCL = 1;
                                    370 ;	assignBit
      000315 D2 80            [12]  371 	setb	_P0_0
                                    372 ;	./src/i2c.c:30: delay_5();
      000317 12 04 5C         [24]  373 	lcall	_delay_5
                                    374 ;	./src/i2c.c:31: SCL = 0;
                                    375 ;	assignBit
      00031A C2 80            [12]  376 	clr	_P0_0
                                    377 ;	./src/i2c.c:32: delay_5();
                                    378 ;	./src/i2c.c:33: }
      00031C 02 04 5C         [24]  379 	ljmp	_delay_5
                                    380 ;------------------------------------------------------------
                                    381 ;Allocation info for local variables in function 'I2C_RecvACK'
                                    382 ;------------------------------------------------------------
                                    383 ;	./src/i2c.c:36: bit I2C_RecvACK()
                                    384 ;	-----------------------------------------
                                    385 ;	 function I2C_RecvACK
                                    386 ;	-----------------------------------------
      00031F                        387 _I2C_RecvACK:
                                    388 ;	./src/i2c.c:38: SCL = 1;
                                    389 ;	assignBit
      00031F D2 80            [12]  390 	setb	_P0_0
                                    391 ;	./src/i2c.c:39: delay_5();
      000321 12 04 5C         [24]  392 	lcall	_delay_5
                                    393 ;	./src/i2c.c:40: CY = SDA;
                                    394 ;	assignBit
      000324 A2 81            [12]  395 	mov	c,_P0_1
      000326 92 D7            [24]  396 	mov	_CY,c
                                    397 ;	./src/i2c.c:41: SCL = 0;
                                    398 ;	assignBit
      000328 C2 80            [12]  399 	clr	_P0_0
                                    400 ;	./src/i2c.c:42: delay_5();
      00032A 12 04 5C         [24]  401 	lcall	_delay_5
                                    402 ;	./src/i2c.c:43: return CY;
      00032D A2 D7            [12]  403 	mov	c,_CY
      00032F E4               [12]  404 	clr	a
      000330 33               [12]  405 	rlc	a
      000331 F5 82            [12]  406 	mov	dpl,a
                                    407 ;	./src/i2c.c:44: }
      000333 22               [24]  408 	ret
                                    409 ;------------------------------------------------------------
                                    410 ;Allocation info for local variables in function 'I2C_SendByte'
                                    411 ;------------------------------------------------------------
                                    412 ;dat                       Allocated to registers r7 
                                    413 ;i                         Allocated to registers r6 
                                    414 ;------------------------------------------------------------
                                    415 ;	./src/i2c.c:47: void I2C_SendByte(uint8_t dat)
                                    416 ;	-----------------------------------------
                                    417 ;	 function I2C_SendByte
                                    418 ;	-----------------------------------------
      000334                        419 _I2C_SendByte:
      000334 AF 82            [24]  420 	mov	r7,dpl
                                    421 ;	./src/i2c.c:50: for (i = 0; i < 8; i++)
      000336 7E 00            [12]  422 	mov	r6,#0x00
      000338                        423 00102$:
                                    424 ;	./src/i2c.c:52: dat <<= 1;
      000338 8F 05            [24]  425 	mov	ar5,r7
      00033A ED               [12]  426 	mov	a,r5
      00033B 2D               [12]  427 	add	a,r5
      00033C FF               [12]  428 	mov	r7,a
                                    429 ;	./src/i2c.c:53: SDA = CY;
                                    430 ;	assignBit
      00033D A2 D7            [12]  431 	mov	c,_CY
      00033F 92 81            [24]  432 	mov	_P0_1,c
                                    433 ;	./src/i2c.c:54: SCL = 1;
                                    434 ;	assignBit
      000341 D2 80            [12]  435 	setb	_P0_0
                                    436 ;	./src/i2c.c:55: delay_5();
      000343 C0 07            [24]  437 	push	ar7
      000345 C0 06            [24]  438 	push	ar6
      000347 12 04 5C         [24]  439 	lcall	_delay_5
                                    440 ;	./src/i2c.c:56: SCL = 0;
                                    441 ;	assignBit
      00034A C2 80            [12]  442 	clr	_P0_0
                                    443 ;	./src/i2c.c:57: delay_5();
      00034C 12 04 5C         [24]  444 	lcall	_delay_5
      00034F D0 06            [24]  445 	pop	ar6
      000351 D0 07            [24]  446 	pop	ar7
                                    447 ;	./src/i2c.c:50: for (i = 0; i < 8; i++)
      000353 0E               [12]  448 	inc	r6
      000354 BE 08 00         [24]  449 	cjne	r6,#0x08,00119$
      000357                        450 00119$:
      000357 40 DF            [24]  451 	jc	00102$
                                    452 ;	./src/i2c.c:59: I2C_RecvACK();
                                    453 ;	./src/i2c.c:60: }
      000359 02 03 1F         [24]  454 	ljmp	_I2C_RecvACK
                                    455 ;------------------------------------------------------------
                                    456 ;Allocation info for local variables in function 'I2C_RecvByte'
                                    457 ;------------------------------------------------------------
                                    458 ;i                         Allocated to registers r6 
                                    459 ;dat                       Allocated to registers r5 
                                    460 ;------------------------------------------------------------
                                    461 ;	./src/i2c.c:63: uint8_t I2C_RecvByte()
                                    462 ;	-----------------------------------------
                                    463 ;	 function I2C_RecvByte
                                    464 ;	-----------------------------------------
      00035C                        465 _I2C_RecvByte:
                                    466 ;	./src/i2c.c:66: uint8_t dat = 0;
      00035C 7F 00            [12]  467 	mov	r7,#0x00
                                    468 ;	./src/i2c.c:67: SDA = 1;
                                    469 ;	assignBit
      00035E D2 81            [12]  470 	setb	_P0_1
                                    471 ;	./src/i2c.c:68: for (i = 0; i < 8; i++)
      000360 7E 00            [12]  472 	mov	r6,#0x00
      000362                        473 00102$:
                                    474 ;	./src/i2c.c:70: dat <<= 1;
      000362 8F 05            [24]  475 	mov	ar5,r7
      000364 ED               [12]  476 	mov	a,r5
      000365 2D               [12]  477 	add	a,r5
      000366 FD               [12]  478 	mov	r5,a
                                    479 ;	./src/i2c.c:71: SCL = 1;
                                    480 ;	assignBit
      000367 D2 80            [12]  481 	setb	_P0_0
                                    482 ;	./src/i2c.c:72: delay_5();
      000369 C0 06            [24]  483 	push	ar6
      00036B C0 05            [24]  484 	push	ar5
      00036D 12 04 5C         [24]  485 	lcall	_delay_5
      000370 D0 05            [24]  486 	pop	ar5
      000372 D0 06            [24]  487 	pop	ar6
                                    488 ;	./src/i2c.c:73: dat |= SDA;
      000374 A2 81            [12]  489 	mov	c,_P0_1
      000376 E4               [12]  490 	clr	a
      000377 33               [12]  491 	rlc	a
      000378 4D               [12]  492 	orl	a,r5
      000379 FF               [12]  493 	mov	r7,a
                                    494 ;	./src/i2c.c:74: SCL = 0;
                                    495 ;	assignBit
      00037A C2 80            [12]  496 	clr	_P0_0
                                    497 ;	./src/i2c.c:75: delay_5();
      00037C C0 07            [24]  498 	push	ar7
      00037E C0 06            [24]  499 	push	ar6
      000380 12 04 5C         [24]  500 	lcall	_delay_5
      000383 D0 06            [24]  501 	pop	ar6
      000385 D0 07            [24]  502 	pop	ar7
                                    503 ;	./src/i2c.c:68: for (i = 0; i < 8; i++)
      000387 0E               [12]  504 	inc	r6
      000388 BE 08 00         [24]  505 	cjne	r6,#0x08,00121$
      00038B                        506 00121$:
      00038B 40 D5            [24]  507 	jc	00102$
                                    508 ;	./src/i2c.c:77: return dat;
      00038D 8F 82            [24]  509 	mov	dpl,r7
                                    510 ;	./src/i2c.c:78: }
      00038F 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'Single_WriteI2C'
                                    514 ;------------------------------------------------------------
                                    515 ;REG_Address               Allocated with name '_Single_WriteI2C_PARM_2'
                                    516 ;REG_data                  Allocated with name '_Single_WriteI2C_PARM_3'
                                    517 ;SlaveAddress              Allocated to registers r7 
                                    518 ;------------------------------------------------------------
                                    519 ;	./src/i2c.c:81: void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address, uint8_t REG_data)
                                    520 ;	-----------------------------------------
                                    521 ;	 function Single_WriteI2C
                                    522 ;	-----------------------------------------
      000390                        523 _Single_WriteI2C:
      000390 AF 82            [24]  524 	mov	r7,dpl
                                    525 ;	./src/i2c.c:83: I2C_Start();
      000392 C0 07            [24]  526 	push	ar7
      000394 12 02 F4         [24]  527 	lcall	_I2C_Start
      000397 D0 07            [24]  528 	pop	ar7
                                    529 ;	./src/i2c.c:84: I2C_SendByte(SlaveAddress);
      000399 8F 82            [24]  530 	mov	dpl,r7
      00039B 12 03 34         [24]  531 	lcall	_I2C_SendByte
                                    532 ;	./src/i2c.c:85: I2C_SendByte(REG_Address);
      00039E 85 14 82         [24]  533 	mov	dpl,_Single_WriteI2C_PARM_2
      0003A1 12 03 34         [24]  534 	lcall	_I2C_SendByte
                                    535 ;	./src/i2c.c:86: I2C_SendByte(REG_data);
      0003A4 85 15 82         [24]  536 	mov	dpl,_Single_WriteI2C_PARM_3
      0003A7 12 03 34         [24]  537 	lcall	_I2C_SendByte
                                    538 ;	./src/i2c.c:87: I2C_Stop();
                                    539 ;	./src/i2c.c:88: }
      0003AA 02 03 03         [24]  540 	ljmp	_I2C_Stop
                                    541 ;------------------------------------------------------------
                                    542 ;Allocation info for local variables in function 'Single_ReadI2C'
                                    543 ;------------------------------------------------------------
                                    544 ;REG_Address               Allocated with name '_Single_ReadI2C_PARM_2'
                                    545 ;SlaveAddress              Allocated to registers r7 
                                    546 ;REG_data                  Allocated to registers r7 
                                    547 ;------------------------------------------------------------
                                    548 ;	./src/i2c.c:91: uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
                                    549 ;	-----------------------------------------
                                    550 ;	 function Single_ReadI2C
                                    551 ;	-----------------------------------------
      0003AD                        552 _Single_ReadI2C:
      0003AD AF 82            [24]  553 	mov	r7,dpl
                                    554 ;	./src/i2c.c:94: I2C_Start();
      0003AF C0 07            [24]  555 	push	ar7
      0003B1 12 02 F4         [24]  556 	lcall	_I2C_Start
      0003B4 D0 07            [24]  557 	pop	ar7
                                    558 ;	./src/i2c.c:95: I2C_SendByte(SlaveAddress);
      0003B6 8F 82            [24]  559 	mov	dpl,r7
      0003B8 C0 07            [24]  560 	push	ar7
      0003BA 12 03 34         [24]  561 	lcall	_I2C_SendByte
                                    562 ;	./src/i2c.c:96: I2C_SendByte(REG_Address);
      0003BD 85 16 82         [24]  563 	mov	dpl,_Single_ReadI2C_PARM_2
      0003C0 12 03 34         [24]  564 	lcall	_I2C_SendByte
                                    565 ;	./src/i2c.c:97: I2C_Stop();
      0003C3 12 03 03         [24]  566 	lcall	_I2C_Stop
                                    567 ;	./src/i2c.c:99: I2C_Start();
      0003C6 12 02 F4         [24]  568 	lcall	_I2C_Start
      0003C9 D0 07            [24]  569 	pop	ar7
                                    570 ;	./src/i2c.c:100: I2C_SendByte(SlaveAddress | 0x01); // R/W#: 1 means read mode
      0003CB 74 01            [12]  571 	mov	a,#0x01
      0003CD 4F               [12]  572 	orl	a,r7
      0003CE F5 82            [12]  573 	mov	dpl,a
      0003D0 12 03 34         [24]  574 	lcall	_I2C_SendByte
                                    575 ;	./src/i2c.c:101: REG_data = I2C_RecvByte();
      0003D3 12 03 5C         [24]  576 	lcall	_I2C_RecvByte
      0003D6 AF 82            [24]  577 	mov	r7,dpl
                                    578 ;	./src/i2c.c:102: I2C_SendACK(1);
      0003D8 75 82 01         [24]  579 	mov	dpl,#0x01
      0003DB C0 07            [24]  580 	push	ar7
      0003DD 12 03 0F         [24]  581 	lcall	_I2C_SendACK
                                    582 ;	./src/i2c.c:103: I2C_Stop();
      0003E0 12 03 03         [24]  583 	lcall	_I2C_Stop
      0003E3 D0 07            [24]  584 	pop	ar7
                                    585 ;	./src/i2c.c:104: return REG_data;
      0003E5 8F 82            [24]  586 	mov	dpl,r7
                                    587 ;	./src/i2c.c:105: }
      0003E7 22               [24]  588 	ret
                                    589 	.area CSEG    (CODE)
                                    590 	.area CONST   (CODE)
                                    591 	.area XINIT   (CODE)
                                    592 	.area CABS    (ABS,CODE)
