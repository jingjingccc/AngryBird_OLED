                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14362 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module oled_i2c
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _OledFontTable
                                     12 	.globl _Single_WriteI2C
                                     13 	.globl _CY
                                     14 	.globl _AC
                                     15 	.globl _F0
                                     16 	.globl _RS1
                                     17 	.globl _RS0
                                     18 	.globl _OV
                                     19 	.globl _F1
                                     20 	.globl _P
                                     21 	.globl _PS
                                     22 	.globl _PT1
                                     23 	.globl _PX1
                                     24 	.globl _PT0
                                     25 	.globl _PX0
                                     26 	.globl _RD
                                     27 	.globl _WR
                                     28 	.globl _T1
                                     29 	.globl _T0
                                     30 	.globl _INT1
                                     31 	.globl _INT0
                                     32 	.globl _TXD
                                     33 	.globl _RXD
                                     34 	.globl _P3_7
                                     35 	.globl _P3_6
                                     36 	.globl _P3_5
                                     37 	.globl _P3_4
                                     38 	.globl _P3_3
                                     39 	.globl _P3_2
                                     40 	.globl _P3_1
                                     41 	.globl _P3_0
                                     42 	.globl _EA
                                     43 	.globl _ES
                                     44 	.globl _ET1
                                     45 	.globl _EX1
                                     46 	.globl _ET0
                                     47 	.globl _EX0
                                     48 	.globl _P2_7
                                     49 	.globl _P2_6
                                     50 	.globl _P2_5
                                     51 	.globl _P2_4
                                     52 	.globl _P2_3
                                     53 	.globl _P2_2
                                     54 	.globl _P2_1
                                     55 	.globl _P2_0
                                     56 	.globl _SM0
                                     57 	.globl _SM1
                                     58 	.globl _SM2
                                     59 	.globl _REN
                                     60 	.globl _TB8
                                     61 	.globl _RB8
                                     62 	.globl _TI
                                     63 	.globl _RI
                                     64 	.globl _P1_7
                                     65 	.globl _P1_6
                                     66 	.globl _P1_5
                                     67 	.globl _P1_4
                                     68 	.globl _P1_3
                                     69 	.globl _P1_2
                                     70 	.globl _P1_1
                                     71 	.globl _P1_0
                                     72 	.globl _TF1
                                     73 	.globl _TR1
                                     74 	.globl _TF0
                                     75 	.globl _TR0
                                     76 	.globl _IE1
                                     77 	.globl _IT1
                                     78 	.globl _IE0
                                     79 	.globl _IT0
                                     80 	.globl _P0_7
                                     81 	.globl _P0_6
                                     82 	.globl _P0_5
                                     83 	.globl _P0_4
                                     84 	.globl _P0_3
                                     85 	.globl _P0_2
                                     86 	.globl _P0_1
                                     87 	.globl _P0_0
                                     88 	.globl _B
                                     89 	.globl _ACC
                                     90 	.globl _PSW
                                     91 	.globl _IP
                                     92 	.globl _P3
                                     93 	.globl _IE
                                     94 	.globl _P2
                                     95 	.globl _SBUF
                                     96 	.globl _SCON
                                     97 	.globl _P1
                                     98 	.globl _TH1
                                     99 	.globl _TH0
                                    100 	.globl _TL1
                                    101 	.globl _TL0
                                    102 	.globl _TMOD
                                    103 	.globl _TCON
                                    104 	.globl _PCON
                                    105 	.globl _DPH
                                    106 	.globl _DPL
                                    107 	.globl _SP
                                    108 	.globl _P0
                                    109 	.globl _OLED_SetCursor_PARM_2
                                    110 	.globl _OLED_Init
                                    111 	.globl _OLED_DisplayChar
                                    112 	.globl _OLED_DisplayString
                                    113 	.globl _OLED_Clear
                                    114 	.globl _OLED_SetCursor
                                    115 	.globl _oledSendCommand
                                    116 	.globl _oledSendData
                                    117 ;--------------------------------------------------------
                                    118 ; special function registers
                                    119 ;--------------------------------------------------------
                                    120 	.area RSEG    (ABS,DATA)
      000000                        121 	.org 0x0000
                           000080   122 _P0	=	0x0080
                           000081   123 _SP	=	0x0081
                           000082   124 _DPL	=	0x0082
                           000083   125 _DPH	=	0x0083
                           000087   126 _PCON	=	0x0087
                           000088   127 _TCON	=	0x0088
                           000089   128 _TMOD	=	0x0089
                           00008A   129 _TL0	=	0x008a
                           00008B   130 _TL1	=	0x008b
                           00008C   131 _TH0	=	0x008c
                           00008D   132 _TH1	=	0x008d
                           000090   133 _P1	=	0x0090
                           000098   134 _SCON	=	0x0098
                           000099   135 _SBUF	=	0x0099
                           0000A0   136 _P2	=	0x00a0
                           0000A8   137 _IE	=	0x00a8
                           0000B0   138 _P3	=	0x00b0
                           0000B8   139 _IP	=	0x00b8
                           0000D0   140 _PSW	=	0x00d0
                           0000E0   141 _ACC	=	0x00e0
                           0000F0   142 _B	=	0x00f0
                                    143 ;--------------------------------------------------------
                                    144 ; special function bits
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0_0	=	0x0080
                           000081   149 _P0_1	=	0x0081
                           000082   150 _P0_2	=	0x0082
                           000083   151 _P0_3	=	0x0083
                           000084   152 _P0_4	=	0x0084
                           000085   153 _P0_5	=	0x0085
                           000086   154 _P0_6	=	0x0086
                           000087   155 _P0_7	=	0x0087
                           000088   156 _IT0	=	0x0088
                           000089   157 _IE0	=	0x0089
                           00008A   158 _IT1	=	0x008a
                           00008B   159 _IE1	=	0x008b
                           00008C   160 _TR0	=	0x008c
                           00008D   161 _TF0	=	0x008d
                           00008E   162 _TR1	=	0x008e
                           00008F   163 _TF1	=	0x008f
                           000090   164 _P1_0	=	0x0090
                           000091   165 _P1_1	=	0x0091
                           000092   166 _P1_2	=	0x0092
                           000093   167 _P1_3	=	0x0093
                           000094   168 _P1_4	=	0x0094
                           000095   169 _P1_5	=	0x0095
                           000096   170 _P1_6	=	0x0096
                           000097   171 _P1_7	=	0x0097
                           000098   172 _RI	=	0x0098
                           000099   173 _TI	=	0x0099
                           00009A   174 _RB8	=	0x009a
                           00009B   175 _TB8	=	0x009b
                           00009C   176 _REN	=	0x009c
                           00009D   177 _SM2	=	0x009d
                           00009E   178 _SM1	=	0x009e
                           00009F   179 _SM0	=	0x009f
                           0000A0   180 _P2_0	=	0x00a0
                           0000A1   181 _P2_1	=	0x00a1
                           0000A2   182 _P2_2	=	0x00a2
                           0000A3   183 _P2_3	=	0x00a3
                           0000A4   184 _P2_4	=	0x00a4
                           0000A5   185 _P2_5	=	0x00a5
                           0000A6   186 _P2_6	=	0x00a6
                           0000A7   187 _P2_7	=	0x00a7
                           0000A8   188 _EX0	=	0x00a8
                           0000A9   189 _ET0	=	0x00a9
                           0000AA   190 _EX1	=	0x00aa
                           0000AB   191 _ET1	=	0x00ab
                           0000AC   192 _ES	=	0x00ac
                           0000AF   193 _EA	=	0x00af
                           0000B0   194 _P3_0	=	0x00b0
                           0000B1   195 _P3_1	=	0x00b1
                           0000B2   196 _P3_2	=	0x00b2
                           0000B3   197 _P3_3	=	0x00b3
                           0000B4   198 _P3_4	=	0x00b4
                           0000B5   199 _P3_5	=	0x00b5
                           0000B6   200 _P3_6	=	0x00b6
                           0000B7   201 _P3_7	=	0x00b7
                           0000B0   202 _RXD	=	0x00b0
                           0000B1   203 _TXD	=	0x00b1
                           0000B2   204 _INT0	=	0x00b2
                           0000B3   205 _INT1	=	0x00b3
                           0000B4   206 _T0	=	0x00b4
                           0000B5   207 _T1	=	0x00b5
                           0000B6   208 _WR	=	0x00b6
                           0000B7   209 _RD	=	0x00b7
                           0000B8   210 _PX0	=	0x00b8
                           0000B9   211 _PT0	=	0x00b9
                           0000BA   212 _PX1	=	0x00ba
                           0000BB   213 _PT1	=	0x00bb
                           0000BC   214 _PS	=	0x00bc
                           0000D0   215 _P	=	0x00d0
                           0000D1   216 _F1	=	0x00d1
                           0000D2   217 _OV	=	0x00d2
                           0000D3   218 _RS0	=	0x00d3
                           0000D4   219 _RS1	=	0x00d4
                           0000D5   220 _F0	=	0x00d5
                           0000D6   221 _AC	=	0x00d6
                           0000D7   222 _CY	=	0x00d7
                                    223 ;--------------------------------------------------------
                                    224 ; overlayable register banks
                                    225 ;--------------------------------------------------------
                                    226 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        227 	.ds 8
                                    228 ;--------------------------------------------------------
                                    229 ; internal ram data
                                    230 ;--------------------------------------------------------
                                    231 	.area DSEG    (DATA)
      000015                        232 _OLED_SetCursor_PARM_2:
      000015                        233 	.ds 1
                                    234 ;--------------------------------------------------------
                                    235 ; overlayable items in internal ram
                                    236 ;--------------------------------------------------------
                                    237 ;--------------------------------------------------------
                                    238 ; indirectly addressable internal ram data
                                    239 ;--------------------------------------------------------
                                    240 	.area ISEG    (DATA)
                                    241 ;--------------------------------------------------------
                                    242 ; absolute internal ram data
                                    243 ;--------------------------------------------------------
                                    244 	.area IABS    (ABS,DATA)
                                    245 	.area IABS    (ABS,DATA)
                                    246 ;--------------------------------------------------------
                                    247 ; bit data
                                    248 ;--------------------------------------------------------
                                    249 	.area BSEG    (BIT)
                                    250 ;--------------------------------------------------------
                                    251 ; paged external ram data
                                    252 ;--------------------------------------------------------
                                    253 	.area PSEG    (PAG,XDATA)
                                    254 ;--------------------------------------------------------
                                    255 ; uninitialized external ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area XSEG    (XDATA)
                                    258 ;--------------------------------------------------------
                                    259 ; absolute external ram data
                                    260 ;--------------------------------------------------------
                                    261 	.area XABS    (ABS,XDATA)
                                    262 ;--------------------------------------------------------
                                    263 ; initialized external ram data
                                    264 ;--------------------------------------------------------
                                    265 	.area XISEG   (XDATA)
                                    266 	.area HOME    (CODE)
                                    267 	.area GSINIT0 (CODE)
                                    268 	.area GSINIT1 (CODE)
                                    269 	.area GSINIT2 (CODE)
                                    270 	.area GSINIT3 (CODE)
                                    271 	.area GSINIT4 (CODE)
                                    272 	.area GSINIT5 (CODE)
                                    273 	.area GSINIT  (CODE)
                                    274 	.area GSFINAL (CODE)
                                    275 	.area CSEG    (CODE)
                                    276 ;--------------------------------------------------------
                                    277 ; global & static initialisations
                                    278 ;--------------------------------------------------------
                                    279 	.area HOME    (CODE)
                                    280 	.area GSINIT  (CODE)
                                    281 	.area GSFINAL (CODE)
                                    282 	.area GSINIT  (CODE)
                                    283 ;--------------------------------------------------------
                                    284 ; Home
                                    285 ;--------------------------------------------------------
                                    286 	.area HOME    (CODE)
                                    287 	.area HOME    (CODE)
                                    288 ;--------------------------------------------------------
                                    289 ; code
                                    290 ;--------------------------------------------------------
                                    291 	.area CSEG    (CODE)
                                    292 ;------------------------------------------------------------
                                    293 ;Allocation info for local variables in function 'OLED_Init'
                                    294 ;------------------------------------------------------------
                                    295 ;	./src/oled_i2c.c:17: void OLED_Init(void)
                                    296 ;	-----------------------------------------
                                    297 ;	 function OLED_Init
                                    298 ;	-----------------------------------------
      00042E                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8); // Set MUX Ratio
      00042E 75 82 A8         [24]  309 	mov	dpl,#0xa8
      000431 12 05 74         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);
      000434 75 82 3F         [24]  312 	mov	dpl,#0x3f
      000437 12 05 74         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3); // Set Display Offset
      00043A 75 82 D3         [24]  315 	mov	dpl,#0xd3
      00043D 12 05 74         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);
      000440 75 82 00         [24]  318 	mov	dpl,#0x00
      000443 12 05 74         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:23: oledSendCommand(0x40); // Set Display Start Line
      000446 75 82 40         [24]  321 	mov	dpl,#0x40
      000449 12 05 74         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1); // Set Segment re-map A0h/A1h
      00044C 75 82 A1         [24]  324 	mov	dpl,#0xa1
      00044F 12 05 74         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8); // Set COM OUTput
      000452 75 82 C8         [24]  327 	mov	dpl,#0xc8
      000455 12 05 74         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:26: oledSendCommand(0xda);
      000458 75 82 DA         [24]  330 	mov	dpl,#0xda
      00045B 12 05 74         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      00045E 75 82 12         [24]  333 	mov	dpl,#0x12
      000461 12 05 74         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000464 75 82 81         [24]  336 	mov	dpl,#0x81
      000467 12 05 74         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      00046A 75 82 7F         [24]  339 	mov	dpl,#0x7f
      00046D 12 05 74         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      000470 75 82 A4         [24]  342 	mov	dpl,#0xa4
      000473 12 05 74         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000476 75 82 A6         [24]  345 	mov	dpl,#0xa6
      000479 12 05 74         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      00047C 75 82 D5         [24]  348 	mov	dpl,#0xd5
      00047F 12 05 74         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      000482 75 82 80         [24]  351 	mov	dpl,#0x80
      000485 12 05 74         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000488 75 82 8D         [24]  354 	mov	dpl,#0x8d
      00048B 12 05 74         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      00048E 75 82 14         [24]  357 	mov	dpl,#0x14
      000491 12 05 74         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      000494 75 82 AF         [24]  360 	mov	dpl,#0xaf
      000497 12 05 74         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:38: OLED_Clear(); // Clear the complete LCD during init
                                    363 ;	./src/oled_i2c.c:39: }
      00049A 02 05 19         [24]  364 	ljmp	_OLED_Clear
                                    365 ;------------------------------------------------------------
                                    366 ;Allocation info for local variables in function 'OLED_DisplayChar'
                                    367 ;------------------------------------------------------------
                                    368 ;ch                        Allocated to registers r7 
                                    369 ;i                         Allocated to registers r5 
                                    370 ;index                     Allocated to registers r6 r7 
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/oled_i2c.c:51: void OLED_DisplayChar(uint8_t ch)
                                    373 ;	-----------------------------------------
                                    374 ;	 function OLED_DisplayChar
                                    375 ;	-----------------------------------------
      00049D                        376 _OLED_DisplayChar:
      00049D AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:56: if (ch != '\n')
      00049F BF 0A 01         [24]  379 	cjne	r7,#0x0a,00130$
      0004A2 22               [24]  380 	ret
      0004A3                        381 00130$:
                                    382 ;	./src/oled_i2c.c:58: index = (ch - 0x20);
      0004A3 7E 00            [12]  383 	mov	r6,#0x00
      0004A5 EF               [12]  384 	mov	a,r7
      0004A6 24 E0            [12]  385 	add	a,#0xe0
      0004A8 F5 16            [12]  386 	mov	__mulint_PARM_2,a
      0004AA EE               [12]  387 	mov	a,r6
      0004AB 34 FF            [12]  388 	addc	a,#0xff
      0004AD F5 17            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:59: index = index * 5; // As the lookup table starts from Space(0x20)
                                    391 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      0004AF 90 00 05         [24]  392 	mov	dptr,#0x0005
      0004B2 12 05 8C         [24]  393 	lcall	__mulint
      0004B5 AE 82            [24]  394 	mov	r6,dpl
      0004B7 AF 83            [24]  395 	mov	r7,dph
      0004B9 7D 00            [12]  396 	mov	r5,#0x00
      0004BB                        397 00104$:
                                    398 ;	./src/oled_i2c.c:62: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0004BB 8D 03            [24]  399 	mov	ar3,r5
      0004BD 7C 00            [12]  400 	mov	r4,#0x00
      0004BF EB               [12]  401 	mov	a,r3
      0004C0 2E               [12]  402 	add	a,r6
      0004C1 FB               [12]  403 	mov	r3,a
      0004C2 EC               [12]  404 	mov	a,r4
      0004C3 3F               [12]  405 	addc	a,r7
      0004C4 FC               [12]  406 	mov	r4,a
      0004C5 EB               [12]  407 	mov	a,r3
      0004C6 24 35            [12]  408 	add	a,#_OledFontTable
      0004C8 F5 82            [12]  409 	mov	dpl,a
      0004CA EC               [12]  410 	mov	a,r4
      0004CB 34 06            [12]  411 	addc	a,#(_OledFontTable >> 8)
      0004CD F5 83            [12]  412 	mov	dph,a
      0004CF E4               [12]  413 	clr	a
      0004D0 93               [24]  414 	movc	a,@a+dptr
      0004D1 F5 82            [12]  415 	mov	dpl,a
      0004D3 C0 07            [24]  416 	push	ar7
      0004D5 C0 06            [24]  417 	push	ar6
      0004D7 C0 05            [24]  418 	push	ar5
      0004D9 12 05 80         [24]  419 	lcall	_oledSendData
      0004DC D0 05            [24]  420 	pop	ar5
      0004DE D0 06            [24]  421 	pop	ar6
      0004E0 D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      0004E2 0D               [12]  424 	inc	r5
      0004E3 BD 05 00         [24]  425 	cjne	r5,#0x05,00131$
      0004E6                        426 00131$:
      0004E6 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:64: oledSendData(0x00); /* Display the data and keep track of cursor */
      0004E8 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:66: }
      0004EB 02 05 80         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      0004EE                        441 _OLED_DisplayString:
      0004EE AD 82            [24]  442 	mov	r5,dpl
      0004F0 AE 83            [24]  443 	mov	r6,dph
      0004F2 AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:83: while (*ptr)
      0004F4                        446 00101$:
      0004F4 8D 82            [24]  447 	mov	dpl,r5
      0004F6 8E 83            [24]  448 	mov	dph,r6
      0004F8 8F F0            [24]  449 	mov	b,r7
      0004FA 12 05 A9         [24]  450 	lcall	__gptrget
      0004FD FC               [12]  451 	mov	r4,a
      0004FE 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000500 8C 82            [24]  454 	mov	dpl,r4
      000502 0D               [12]  455 	inc	r5
      000503 BD 00 01         [24]  456 	cjne	r5,#0x00,00120$
      000506 0E               [12]  457 	inc	r6
      000507                        458 00120$:
      000507 C0 07            [24]  459 	push	ar7
      000509 C0 06            [24]  460 	push	ar6
      00050B C0 05            [24]  461 	push	ar5
      00050D 12 04 9D         [24]  462 	lcall	_OLED_DisplayChar
      000510 D0 05            [24]  463 	pop	ar5
      000512 D0 06            [24]  464 	pop	ar6
      000514 D0 07            [24]  465 	pop	ar7
      000516 80 DC            [24]  466 	sjmp	00101$
      000518                        467 00104$:
                                    468 ;	./src/oled_i2c.c:85: }
      000518 22               [24]  469 	ret
                                    470 ;------------------------------------------------------------
                                    471 ;Allocation info for local variables in function 'OLED_Clear'
                                    472 ;------------------------------------------------------------
                                    473 ;oled_clean_col            Allocated to registers r6 
                                    474 ;oled_clean_page           Allocated to registers r7 
                                    475 ;------------------------------------------------------------
                                    476 ;	./src/oled_i2c.c:96: void OLED_Clear(void)
                                    477 ;	-----------------------------------------
                                    478 ;	 function OLED_Clear
                                    479 ;	-----------------------------------------
      000519                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      000519 7F 00            [12]  482 	mov	r7,#0x00
      00051B                        483 00105$:
                                    484 ;	./src/oled_i2c.c:101: OLED_SetCursor(oled_clean_page, 0);
      00051B 75 15 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      00051E 8F 82            [24]  486 	mov	dpl,r7
      000520 C0 07            [24]  487 	push	ar7
      000522 12 05 44         [24]  488 	lcall	_OLED_SetCursor
      000525 D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      000527 7E 00            [12]  491 	mov	r6,#0x00
      000529                        492 00103$:
                                    493 ;	./src/oled_i2c.c:104: oledSendData(0);
      000529 75 82 00         [24]  494 	mov	dpl,#0x00
      00052C C0 07            [24]  495 	push	ar7
      00052E C0 06            [24]  496 	push	ar6
      000530 12 05 80         [24]  497 	lcall	_oledSendData
      000533 D0 06            [24]  498 	pop	ar6
      000535 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      000537 0E               [12]  501 	inc	r6
      000538 BE 80 00         [24]  502 	cjne	r6,#0x80,00129$
      00053B                        503 00129$:
      00053B 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      00053D 0F               [12]  506 	inc	r7
      00053E BF 08 00         [24]  507 	cjne	r7,#0x08,00131$
      000541                        508 00131$:
      000541 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:107: }
      000543 22               [24]  511 	ret
                                    512 ;------------------------------------------------------------
                                    513 ;Allocation info for local variables in function 'OLED_SetCursor'
                                    514 ;------------------------------------------------------------
                                    515 ;cursorPosition            Allocated with name '_OLED_SetCursor_PARM_2'
                                    516 ;lineNumber                Allocated to registers r7 
                                    517 ;------------------------------------------------------------
                                    518 ;	./src/oled_i2c.c:124: void OLED_SetCursor(uint8_t lineNumber, uint8_t cursorPosition)
                                    519 ;	-----------------------------------------
                                    520 ;	 function OLED_SetCursor
                                    521 ;	-----------------------------------------
      000544                        522 _OLED_SetCursor:
      000544 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:126: cursorPosition = cursorPosition + 2;
      000546 AE 15            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      000548 74 02            [12]  526 	mov	a,#0x02
      00054A 2E               [12]  527 	add	a,r6
      00054B F5 15            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:127: oledSendCommand(0x0f & cursorPosition);        // Select SEG lower 4 bits
      00054D AE 15            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      00054F 74 0F            [12]  531 	mov	a,#0x0f
      000551 5E               [12]  532 	anl	a,r6
      000552 F5 82            [12]  533 	mov	dpl,a
      000554 C0 07            [24]  534 	push	ar7
      000556 C0 06            [24]  535 	push	ar6
      000558 12 05 74         [24]  536 	lcall	_oledSendCommand
      00055B D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:128: oledSendCommand(0x10 | (cursorPosition >> 4)); // Select SEG higher 4 bits
      00055D EE               [12]  539 	mov	a,r6
      00055E C4               [12]  540 	swap	a
      00055F 54 0F            [12]  541 	anl	a,#0x0f
      000561 FE               [12]  542 	mov	r6,a
      000562 74 10            [12]  543 	mov	a,#0x10
      000564 4E               [12]  544 	orl	a,r6
      000565 F5 82            [12]  545 	mov	dpl,a
      000567 12 05 74         [24]  546 	lcall	_oledSendCommand
      00056A D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:129: oledSendCommand(0xb0 | lineNumber);            // Select PAGE
      00056C 74 B0            [12]  549 	mov	a,#0xb0
      00056E 4F               [12]  550 	orl	a,r7
      00056F F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:130: }
      000571 02 05 74         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:135: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      000574                        563 _oledSendCommand:
      000574 85 82 13         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:137: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000577 75 12 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      00057A 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:138: }
      00057D 02 03 5D         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:140: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      000580                        579 _oledSendData:
      000580 85 82 13         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:142: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000583 75 12 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      000586 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:143: }
      000589 02 03 5D         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      000635                        588 _OledFontTable:
      000635 00                     589 	.db #0x00	; 0
      000636 00                     590 	.db #0x00	; 0
      000637 00                     591 	.db #0x00	; 0
      000638 00                     592 	.db #0x00	; 0
      000639 00                     593 	.db #0x00	; 0
      00063A 00                     594 	.db #0x00	; 0
      00063B 00                     595 	.db #0x00	; 0
      00063C 2F                     596 	.db #0x2f	; 47
      00063D 00                     597 	.db #0x00	; 0
      00063E 00                     598 	.db #0x00	; 0
      00063F 00                     599 	.db #0x00	; 0
      000640 07                     600 	.db #0x07	; 7
      000641 00                     601 	.db #0x00	; 0
      000642 07                     602 	.db #0x07	; 7
      000643 00                     603 	.db #0x00	; 0
      000644 14                     604 	.db #0x14	; 20
      000645 7F                     605 	.db #0x7f	; 127
      000646 14                     606 	.db #0x14	; 20
      000647 7F                     607 	.db #0x7f	; 127
      000648 14                     608 	.db #0x14	; 20
      000649 24                     609 	.db #0x24	; 36
      00064A 2A                     610 	.db #0x2a	; 42
      00064B 7F                     611 	.db #0x7f	; 127
      00064C 2A                     612 	.db #0x2a	; 42
      00064D 12                     613 	.db #0x12	; 18
      00064E 23                     614 	.db #0x23	; 35
      00064F 13                     615 	.db #0x13	; 19
      000650 08                     616 	.db #0x08	; 8
      000651 64                     617 	.db #0x64	; 100	'd'
      000652 62                     618 	.db #0x62	; 98	'b'
      000653 36                     619 	.db #0x36	; 54	'6'
      000654 49                     620 	.db #0x49	; 73	'I'
      000655 55                     621 	.db #0x55	; 85	'U'
      000656 22                     622 	.db #0x22	; 34
      000657 50                     623 	.db #0x50	; 80	'P'
      000658 00                     624 	.db #0x00	; 0
      000659 05                     625 	.db #0x05	; 5
      00065A 03                     626 	.db #0x03	; 3
      00065B 00                     627 	.db #0x00	; 0
      00065C 00                     628 	.db #0x00	; 0
      00065D 00                     629 	.db #0x00	; 0
      00065E 1C                     630 	.db #0x1c	; 28
      00065F 22                     631 	.db #0x22	; 34
      000660 41                     632 	.db #0x41	; 65	'A'
      000661 00                     633 	.db #0x00	; 0
      000662 00                     634 	.db #0x00	; 0
      000663 41                     635 	.db #0x41	; 65	'A'
      000664 22                     636 	.db #0x22	; 34
      000665 1C                     637 	.db #0x1c	; 28
      000666 00                     638 	.db #0x00	; 0
      000667 14                     639 	.db #0x14	; 20
      000668 08                     640 	.db #0x08	; 8
      000669 3E                     641 	.db #0x3e	; 62
      00066A 08                     642 	.db #0x08	; 8
      00066B 14                     643 	.db #0x14	; 20
      00066C 08                     644 	.db #0x08	; 8
      00066D 08                     645 	.db #0x08	; 8
      00066E 3E                     646 	.db #0x3e	; 62
      00066F 08                     647 	.db #0x08	; 8
      000670 08                     648 	.db #0x08	; 8
      000671 00                     649 	.db #0x00	; 0
      000672 00                     650 	.db #0x00	; 0
      000673 A0                     651 	.db #0xa0	; 160
      000674 60                     652 	.db #0x60	; 96
      000675 00                     653 	.db #0x00	; 0
      000676 08                     654 	.db #0x08	; 8
      000677 08                     655 	.db #0x08	; 8
      000678 08                     656 	.db #0x08	; 8
      000679 08                     657 	.db #0x08	; 8
      00067A 08                     658 	.db #0x08	; 8
      00067B 00                     659 	.db #0x00	; 0
      00067C 60                     660 	.db #0x60	; 96
      00067D 60                     661 	.db #0x60	; 96
      00067E 00                     662 	.db #0x00	; 0
      00067F 00                     663 	.db #0x00	; 0
      000680 20                     664 	.db #0x20	; 32
      000681 10                     665 	.db #0x10	; 16
      000682 08                     666 	.db #0x08	; 8
      000683 04                     667 	.db #0x04	; 4
      000684 02                     668 	.db #0x02	; 2
      000685 3E                     669 	.db #0x3e	; 62
      000686 51                     670 	.db #0x51	; 81	'Q'
      000687 49                     671 	.db #0x49	; 73	'I'
      000688 45                     672 	.db #0x45	; 69	'E'
      000689 3E                     673 	.db #0x3e	; 62
      00068A 00                     674 	.db #0x00	; 0
      00068B 42                     675 	.db #0x42	; 66	'B'
      00068C 7F                     676 	.db #0x7f	; 127
      00068D 40                     677 	.db #0x40	; 64
      00068E 00                     678 	.db #0x00	; 0
      00068F 42                     679 	.db #0x42	; 66	'B'
      000690 61                     680 	.db #0x61	; 97	'a'
      000691 51                     681 	.db #0x51	; 81	'Q'
      000692 49                     682 	.db #0x49	; 73	'I'
      000693 46                     683 	.db #0x46	; 70	'F'
      000694 21                     684 	.db #0x21	; 33
      000695 41                     685 	.db #0x41	; 65	'A'
      000696 45                     686 	.db #0x45	; 69	'E'
      000697 4B                     687 	.db #0x4b	; 75	'K'
      000698 31                     688 	.db #0x31	; 49	'1'
      000699 18                     689 	.db #0x18	; 24
      00069A 14                     690 	.db #0x14	; 20
      00069B 12                     691 	.db #0x12	; 18
      00069C 7F                     692 	.db #0x7f	; 127
      00069D 10                     693 	.db #0x10	; 16
      00069E 27                     694 	.db #0x27	; 39
      00069F 45                     695 	.db #0x45	; 69	'E'
      0006A0 45                     696 	.db #0x45	; 69	'E'
      0006A1 45                     697 	.db #0x45	; 69	'E'
      0006A2 39                     698 	.db #0x39	; 57	'9'
      0006A3 3C                     699 	.db #0x3c	; 60
      0006A4 4A                     700 	.db #0x4a	; 74	'J'
      0006A5 49                     701 	.db #0x49	; 73	'I'
      0006A6 49                     702 	.db #0x49	; 73	'I'
      0006A7 30                     703 	.db #0x30	; 48	'0'
      0006A8 01                     704 	.db #0x01	; 1
      0006A9 71                     705 	.db #0x71	; 113	'q'
      0006AA 09                     706 	.db #0x09	; 9
      0006AB 05                     707 	.db #0x05	; 5
      0006AC 03                     708 	.db #0x03	; 3
      0006AD 36                     709 	.db #0x36	; 54	'6'
      0006AE 49                     710 	.db #0x49	; 73	'I'
      0006AF 49                     711 	.db #0x49	; 73	'I'
      0006B0 49                     712 	.db #0x49	; 73	'I'
      0006B1 36                     713 	.db #0x36	; 54	'6'
      0006B2 06                     714 	.db #0x06	; 6
      0006B3 49                     715 	.db #0x49	; 73	'I'
      0006B4 49                     716 	.db #0x49	; 73	'I'
      0006B5 29                     717 	.db #0x29	; 41
      0006B6 1E                     718 	.db #0x1e	; 30
      0006B7 00                     719 	.db #0x00	; 0
      0006B8 36                     720 	.db #0x36	; 54	'6'
      0006B9 36                     721 	.db #0x36	; 54	'6'
      0006BA 00                     722 	.db #0x00	; 0
      0006BB 00                     723 	.db #0x00	; 0
      0006BC 00                     724 	.db #0x00	; 0
      0006BD 56                     725 	.db #0x56	; 86	'V'
      0006BE 36                     726 	.db #0x36	; 54	'6'
      0006BF 00                     727 	.db #0x00	; 0
      0006C0 00                     728 	.db #0x00	; 0
      0006C1 08                     729 	.db #0x08	; 8
      0006C2 14                     730 	.db #0x14	; 20
      0006C3 22                     731 	.db #0x22	; 34
      0006C4 41                     732 	.db #0x41	; 65	'A'
      0006C5 00                     733 	.db #0x00	; 0
      0006C6 14                     734 	.db #0x14	; 20
      0006C7 14                     735 	.db #0x14	; 20
      0006C8 14                     736 	.db #0x14	; 20
      0006C9 14                     737 	.db #0x14	; 20
      0006CA 14                     738 	.db #0x14	; 20
      0006CB 00                     739 	.db #0x00	; 0
      0006CC 41                     740 	.db #0x41	; 65	'A'
      0006CD 22                     741 	.db #0x22	; 34
      0006CE 14                     742 	.db #0x14	; 20
      0006CF 08                     743 	.db #0x08	; 8
      0006D0 02                     744 	.db #0x02	; 2
      0006D1 01                     745 	.db #0x01	; 1
      0006D2 51                     746 	.db #0x51	; 81	'Q'
      0006D3 09                     747 	.db #0x09	; 9
      0006D4 06                     748 	.db #0x06	; 6
      0006D5 32                     749 	.db #0x32	; 50	'2'
      0006D6 49                     750 	.db #0x49	; 73	'I'
      0006D7 59                     751 	.db #0x59	; 89	'Y'
      0006D8 51                     752 	.db #0x51	; 81	'Q'
      0006D9 3E                     753 	.db #0x3e	; 62
      0006DA 7C                     754 	.db #0x7c	; 124
      0006DB 12                     755 	.db #0x12	; 18
      0006DC 11                     756 	.db #0x11	; 17
      0006DD 12                     757 	.db #0x12	; 18
      0006DE 7C                     758 	.db #0x7c	; 124
      0006DF 7F                     759 	.db #0x7f	; 127
      0006E0 49                     760 	.db #0x49	; 73	'I'
      0006E1 49                     761 	.db #0x49	; 73	'I'
      0006E2 49                     762 	.db #0x49	; 73	'I'
      0006E3 36                     763 	.db #0x36	; 54	'6'
      0006E4 3E                     764 	.db #0x3e	; 62
      0006E5 41                     765 	.db #0x41	; 65	'A'
      0006E6 41                     766 	.db #0x41	; 65	'A'
      0006E7 41                     767 	.db #0x41	; 65	'A'
      0006E8 22                     768 	.db #0x22	; 34
      0006E9 7F                     769 	.db #0x7f	; 127
      0006EA 41                     770 	.db #0x41	; 65	'A'
      0006EB 41                     771 	.db #0x41	; 65	'A'
      0006EC 22                     772 	.db #0x22	; 34
      0006ED 1C                     773 	.db #0x1c	; 28
      0006EE 7F                     774 	.db #0x7f	; 127
      0006EF 49                     775 	.db #0x49	; 73	'I'
      0006F0 49                     776 	.db #0x49	; 73	'I'
      0006F1 49                     777 	.db #0x49	; 73	'I'
      0006F2 41                     778 	.db #0x41	; 65	'A'
      0006F3 7F                     779 	.db #0x7f	; 127
      0006F4 09                     780 	.db #0x09	; 9
      0006F5 09                     781 	.db #0x09	; 9
      0006F6 09                     782 	.db #0x09	; 9
      0006F7 01                     783 	.db #0x01	; 1
      0006F8 3E                     784 	.db #0x3e	; 62
      0006F9 41                     785 	.db #0x41	; 65	'A'
      0006FA 49                     786 	.db #0x49	; 73	'I'
      0006FB 49                     787 	.db #0x49	; 73	'I'
      0006FC 7A                     788 	.db #0x7a	; 122	'z'
      0006FD 7F                     789 	.db #0x7f	; 127
      0006FE 08                     790 	.db #0x08	; 8
      0006FF 08                     791 	.db #0x08	; 8
      000700 08                     792 	.db #0x08	; 8
      000701 7F                     793 	.db #0x7f	; 127
      000702 00                     794 	.db #0x00	; 0
      000703 41                     795 	.db #0x41	; 65	'A'
      000704 7F                     796 	.db #0x7f	; 127
      000705 41                     797 	.db #0x41	; 65	'A'
      000706 00                     798 	.db #0x00	; 0
      000707 20                     799 	.db #0x20	; 32
      000708 40                     800 	.db #0x40	; 64
      000709 41                     801 	.db #0x41	; 65	'A'
      00070A 3F                     802 	.db #0x3f	; 63
      00070B 01                     803 	.db #0x01	; 1
      00070C 7F                     804 	.db #0x7f	; 127
      00070D 08                     805 	.db #0x08	; 8
      00070E 14                     806 	.db #0x14	; 20
      00070F 22                     807 	.db #0x22	; 34
      000710 41                     808 	.db #0x41	; 65	'A'
      000711 7F                     809 	.db #0x7f	; 127
      000712 40                     810 	.db #0x40	; 64
      000713 40                     811 	.db #0x40	; 64
      000714 40                     812 	.db #0x40	; 64
      000715 40                     813 	.db #0x40	; 64
      000716 7F                     814 	.db #0x7f	; 127
      000717 02                     815 	.db #0x02	; 2
      000718 0C                     816 	.db #0x0c	; 12
      000719 02                     817 	.db #0x02	; 2
      00071A 7F                     818 	.db #0x7f	; 127
      00071B 7F                     819 	.db #0x7f	; 127
      00071C 04                     820 	.db #0x04	; 4
      00071D 08                     821 	.db #0x08	; 8
      00071E 10                     822 	.db #0x10	; 16
      00071F 7F                     823 	.db #0x7f	; 127
      000720 3E                     824 	.db #0x3e	; 62
      000721 41                     825 	.db #0x41	; 65	'A'
      000722 41                     826 	.db #0x41	; 65	'A'
      000723 41                     827 	.db #0x41	; 65	'A'
      000724 3E                     828 	.db #0x3e	; 62
      000725 7F                     829 	.db #0x7f	; 127
      000726 09                     830 	.db #0x09	; 9
      000727 09                     831 	.db #0x09	; 9
      000728 09                     832 	.db #0x09	; 9
      000729 06                     833 	.db #0x06	; 6
      00072A 3E                     834 	.db #0x3e	; 62
      00072B 41                     835 	.db #0x41	; 65	'A'
      00072C 51                     836 	.db #0x51	; 81	'Q'
      00072D 21                     837 	.db #0x21	; 33
      00072E 5E                     838 	.db #0x5e	; 94
      00072F 7F                     839 	.db #0x7f	; 127
      000730 09                     840 	.db #0x09	; 9
      000731 19                     841 	.db #0x19	; 25
      000732 29                     842 	.db #0x29	; 41
      000733 46                     843 	.db #0x46	; 70	'F'
      000734 46                     844 	.db #0x46	; 70	'F'
      000735 49                     845 	.db #0x49	; 73	'I'
      000736 49                     846 	.db #0x49	; 73	'I'
      000737 49                     847 	.db #0x49	; 73	'I'
      000738 31                     848 	.db #0x31	; 49	'1'
      000739 01                     849 	.db #0x01	; 1
      00073A 01                     850 	.db #0x01	; 1
      00073B 7F                     851 	.db #0x7f	; 127
      00073C 01                     852 	.db #0x01	; 1
      00073D 01                     853 	.db #0x01	; 1
      00073E 3F                     854 	.db #0x3f	; 63
      00073F 40                     855 	.db #0x40	; 64
      000740 40                     856 	.db #0x40	; 64
      000741 40                     857 	.db #0x40	; 64
      000742 3F                     858 	.db #0x3f	; 63
      000743 1F                     859 	.db #0x1f	; 31
      000744 20                     860 	.db #0x20	; 32
      000745 40                     861 	.db #0x40	; 64
      000746 20                     862 	.db #0x20	; 32
      000747 1F                     863 	.db #0x1f	; 31
      000748 3F                     864 	.db #0x3f	; 63
      000749 40                     865 	.db #0x40	; 64
      00074A 38                     866 	.db #0x38	; 56	'8'
      00074B 40                     867 	.db #0x40	; 64
      00074C 3F                     868 	.db #0x3f	; 63
      00074D 63                     869 	.db #0x63	; 99	'c'
      00074E 14                     870 	.db #0x14	; 20
      00074F 08                     871 	.db #0x08	; 8
      000750 14                     872 	.db #0x14	; 20
      000751 63                     873 	.db #0x63	; 99	'c'
      000752 07                     874 	.db #0x07	; 7
      000753 08                     875 	.db #0x08	; 8
      000754 70                     876 	.db #0x70	; 112	'p'
      000755 08                     877 	.db #0x08	; 8
      000756 07                     878 	.db #0x07	; 7
      000757 61                     879 	.db #0x61	; 97	'a'
      000758 51                     880 	.db #0x51	; 81	'Q'
      000759 49                     881 	.db #0x49	; 73	'I'
      00075A 45                     882 	.db #0x45	; 69	'E'
      00075B 43                     883 	.db #0x43	; 67	'C'
      00075C 00                     884 	.db #0x00	; 0
      00075D 7F                     885 	.db #0x7f	; 127
      00075E 41                     886 	.db #0x41	; 65	'A'
      00075F 41                     887 	.db #0x41	; 65	'A'
      000760 00                     888 	.db #0x00	; 0
      000761 55                     889 	.db #0x55	; 85	'U'
      000762 AA                     890 	.db #0xaa	; 170
      000763 55                     891 	.db #0x55	; 85	'U'
      000764 AA                     892 	.db #0xaa	; 170
      000765 55                     893 	.db #0x55	; 85	'U'
      000766 00                     894 	.db #0x00	; 0
      000767 41                     895 	.db #0x41	; 65	'A'
      000768 41                     896 	.db #0x41	; 65	'A'
      000769 7F                     897 	.db #0x7f	; 127
      00076A 00                     898 	.db #0x00	; 0
      00076B 04                     899 	.db #0x04	; 4
      00076C 02                     900 	.db #0x02	; 2
      00076D 01                     901 	.db #0x01	; 1
      00076E 02                     902 	.db #0x02	; 2
      00076F 04                     903 	.db #0x04	; 4
      000770 40                     904 	.db #0x40	; 64
      000771 40                     905 	.db #0x40	; 64
      000772 40                     906 	.db #0x40	; 64
      000773 40                     907 	.db #0x40	; 64
      000774 40                     908 	.db #0x40	; 64
      000775 00                     909 	.db #0x00	; 0
      000776 03                     910 	.db #0x03	; 3
      000777 05                     911 	.db #0x05	; 5
      000778 00                     912 	.db #0x00	; 0
      000779 00                     913 	.db #0x00	; 0
      00077A 20                     914 	.db #0x20	; 32
      00077B 54                     915 	.db #0x54	; 84	'T'
      00077C 54                     916 	.db #0x54	; 84	'T'
      00077D 54                     917 	.db #0x54	; 84	'T'
      00077E 78                     918 	.db #0x78	; 120	'x'
      00077F 7F                     919 	.db #0x7f	; 127
      000780 48                     920 	.db #0x48	; 72	'H'
      000781 44                     921 	.db #0x44	; 68	'D'
      000782 44                     922 	.db #0x44	; 68	'D'
      000783 38                     923 	.db #0x38	; 56	'8'
      000784 38                     924 	.db #0x38	; 56	'8'
      000785 44                     925 	.db #0x44	; 68	'D'
      000786 44                     926 	.db #0x44	; 68	'D'
      000787 44                     927 	.db #0x44	; 68	'D'
      000788 20                     928 	.db #0x20	; 32
      000789 38                     929 	.db #0x38	; 56	'8'
      00078A 44                     930 	.db #0x44	; 68	'D'
      00078B 44                     931 	.db #0x44	; 68	'D'
      00078C 48                     932 	.db #0x48	; 72	'H'
      00078D 7F                     933 	.db #0x7f	; 127
      00078E 38                     934 	.db #0x38	; 56	'8'
      00078F 54                     935 	.db #0x54	; 84	'T'
      000790 54                     936 	.db #0x54	; 84	'T'
      000791 54                     937 	.db #0x54	; 84	'T'
      000792 18                     938 	.db #0x18	; 24
      000793 08                     939 	.db #0x08	; 8
      000794 7E                     940 	.db #0x7e	; 126
      000795 09                     941 	.db #0x09	; 9
      000796 01                     942 	.db #0x01	; 1
      000797 02                     943 	.db #0x02	; 2
      000798 18                     944 	.db #0x18	; 24
      000799 A4                     945 	.db #0xa4	; 164
      00079A A4                     946 	.db #0xa4	; 164
      00079B A4                     947 	.db #0xa4	; 164
      00079C 7C                     948 	.db #0x7c	; 124
      00079D 7F                     949 	.db #0x7f	; 127
      00079E 08                     950 	.db #0x08	; 8
      00079F 04                     951 	.db #0x04	; 4
      0007A0 04                     952 	.db #0x04	; 4
      0007A1 78                     953 	.db #0x78	; 120	'x'
      0007A2 00                     954 	.db #0x00	; 0
      0007A3 44                     955 	.db #0x44	; 68	'D'
      0007A4 7D                     956 	.db #0x7d	; 125
      0007A5 40                     957 	.db #0x40	; 64
      0007A6 00                     958 	.db #0x00	; 0
      0007A7 40                     959 	.db #0x40	; 64
      0007A8 80                     960 	.db #0x80	; 128
      0007A9 84                     961 	.db #0x84	; 132
      0007AA 7D                     962 	.db #0x7d	; 125
      0007AB 00                     963 	.db #0x00	; 0
      0007AC 7F                     964 	.db #0x7f	; 127
      0007AD 10                     965 	.db #0x10	; 16
      0007AE 28                     966 	.db #0x28	; 40
      0007AF 44                     967 	.db #0x44	; 68	'D'
      0007B0 00                     968 	.db #0x00	; 0
      0007B1 00                     969 	.db #0x00	; 0
      0007B2 41                     970 	.db #0x41	; 65	'A'
      0007B3 7F                     971 	.db #0x7f	; 127
      0007B4 40                     972 	.db #0x40	; 64
      0007B5 00                     973 	.db #0x00	; 0
      0007B6 7C                     974 	.db #0x7c	; 124
      0007B7 04                     975 	.db #0x04	; 4
      0007B8 18                     976 	.db #0x18	; 24
      0007B9 04                     977 	.db #0x04	; 4
      0007BA 78                     978 	.db #0x78	; 120	'x'
      0007BB 7C                     979 	.db #0x7c	; 124
      0007BC 08                     980 	.db #0x08	; 8
      0007BD 04                     981 	.db #0x04	; 4
      0007BE 04                     982 	.db #0x04	; 4
      0007BF 78                     983 	.db #0x78	; 120	'x'
      0007C0 38                     984 	.db #0x38	; 56	'8'
      0007C1 44                     985 	.db #0x44	; 68	'D'
      0007C2 44                     986 	.db #0x44	; 68	'D'
      0007C3 44                     987 	.db #0x44	; 68	'D'
      0007C4 38                     988 	.db #0x38	; 56	'8'
      0007C5 FC                     989 	.db #0xfc	; 252
      0007C6 24                     990 	.db #0x24	; 36
      0007C7 24                     991 	.db #0x24	; 36
      0007C8 24                     992 	.db #0x24	; 36
      0007C9 18                     993 	.db #0x18	; 24
      0007CA 18                     994 	.db #0x18	; 24
      0007CB 24                     995 	.db #0x24	; 36
      0007CC 24                     996 	.db #0x24	; 36
      0007CD 18                     997 	.db #0x18	; 24
      0007CE FC                     998 	.db #0xfc	; 252
      0007CF 7C                     999 	.db #0x7c	; 124
      0007D0 08                    1000 	.db #0x08	; 8
      0007D1 04                    1001 	.db #0x04	; 4
      0007D2 04                    1002 	.db #0x04	; 4
      0007D3 08                    1003 	.db #0x08	; 8
      0007D4 48                    1004 	.db #0x48	; 72	'H'
      0007D5 54                    1005 	.db #0x54	; 84	'T'
      0007D6 54                    1006 	.db #0x54	; 84	'T'
      0007D7 54                    1007 	.db #0x54	; 84	'T'
      0007D8 20                    1008 	.db #0x20	; 32
      0007D9 04                    1009 	.db #0x04	; 4
      0007DA 3F                    1010 	.db #0x3f	; 63
      0007DB 44                    1011 	.db #0x44	; 68	'D'
      0007DC 40                    1012 	.db #0x40	; 64
      0007DD 20                    1013 	.db #0x20	; 32
      0007DE 3C                    1014 	.db #0x3c	; 60
      0007DF 40                    1015 	.db #0x40	; 64
      0007E0 40                    1016 	.db #0x40	; 64
      0007E1 20                    1017 	.db #0x20	; 32
      0007E2 7C                    1018 	.db #0x7c	; 124
      0007E3 1C                    1019 	.db #0x1c	; 28
      0007E4 20                    1020 	.db #0x20	; 32
      0007E5 40                    1021 	.db #0x40	; 64
      0007E6 20                    1022 	.db #0x20	; 32
      0007E7 1C                    1023 	.db #0x1c	; 28
      0007E8 3C                    1024 	.db #0x3c	; 60
      0007E9 40                    1025 	.db #0x40	; 64
      0007EA 30                    1026 	.db #0x30	; 48	'0'
      0007EB 40                    1027 	.db #0x40	; 64
      0007EC 3C                    1028 	.db #0x3c	; 60
      0007ED 44                    1029 	.db #0x44	; 68	'D'
      0007EE 28                    1030 	.db #0x28	; 40
      0007EF 10                    1031 	.db #0x10	; 16
      0007F0 28                    1032 	.db #0x28	; 40
      0007F1 44                    1033 	.db #0x44	; 68	'D'
      0007F2 1C                    1034 	.db #0x1c	; 28
      0007F3 A0                    1035 	.db #0xa0	; 160
      0007F4 A0                    1036 	.db #0xa0	; 160
      0007F5 A0                    1037 	.db #0xa0	; 160
      0007F6 7C                    1038 	.db #0x7c	; 124
      0007F7 44                    1039 	.db #0x44	; 68	'D'
      0007F8 64                    1040 	.db #0x64	; 100	'd'
      0007F9 54                    1041 	.db #0x54	; 84	'T'
      0007FA 4C                    1042 	.db #0x4c	; 76	'L'
      0007FB 44                    1043 	.db #0x44	; 68	'D'
      0007FC 00                    1044 	.db #0x00	; 0
      0007FD 10                    1045 	.db #0x10	; 16
      0007FE 7C                    1046 	.db #0x7c	; 124
      0007FF 82                    1047 	.db #0x82	; 130
      000800 00                    1048 	.db #0x00	; 0
      000801 00                    1049 	.db #0x00	; 0
      000802 00                    1050 	.db #0x00	; 0
      000803 FF                    1051 	.db #0xff	; 255
      000804 00                    1052 	.db #0x00	; 0
      000805 00                    1053 	.db #0x00	; 0
      000806 00                    1054 	.db #0x00	; 0
      000807 82                    1055 	.db #0x82	; 130
      000808 7C                    1056 	.db #0x7c	; 124
      000809 10                    1057 	.db #0x10	; 16
      00080A 00                    1058 	.db #0x00	; 0
      00080B 00                    1059 	.db #0x00	; 0
      00080C 06                    1060 	.db #0x06	; 6
      00080D 09                    1061 	.db #0x09	; 9
      00080E 09                    1062 	.db #0x09	; 9
      00080F 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
