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
      000017                        232 _OLED_SetCursor_PARM_2:
      000017                        233 	.ds 1
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
      000461                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8); // Set MUX Ratio
      000461 75 82 A8         [24]  309 	mov	dpl,#0xa8
      000464 12 05 A7         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);
      000467 75 82 3F         [24]  312 	mov	dpl,#0x3f
      00046A 12 05 A7         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3); // Set Display Offset
      00046D 75 82 D3         [24]  315 	mov	dpl,#0xd3
      000470 12 05 A7         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);
      000473 75 82 00         [24]  318 	mov	dpl,#0x00
      000476 12 05 A7         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:23: oledSendCommand(0x40); // Set Display Start Line
      000479 75 82 40         [24]  321 	mov	dpl,#0x40
      00047C 12 05 A7         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1); // Set Segment re-map A0h/A1h
      00047F 75 82 A1         [24]  324 	mov	dpl,#0xa1
      000482 12 05 A7         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8); // Set COM OUTput
      000485 75 82 C8         [24]  327 	mov	dpl,#0xc8
      000488 12 05 A7         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:26: oledSendCommand(0xda);
      00048B 75 82 DA         [24]  330 	mov	dpl,#0xda
      00048E 12 05 A7         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000491 75 82 12         [24]  333 	mov	dpl,#0x12
      000494 12 05 A7         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000497 75 82 81         [24]  336 	mov	dpl,#0x81
      00049A 12 05 A7         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      00049D 75 82 7F         [24]  339 	mov	dpl,#0x7f
      0004A0 12 05 A7         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      0004A3 75 82 A4         [24]  342 	mov	dpl,#0xa4
      0004A6 12 05 A7         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      0004A9 75 82 A6         [24]  345 	mov	dpl,#0xa6
      0004AC 12 05 A7         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      0004AF 75 82 D5         [24]  348 	mov	dpl,#0xd5
      0004B2 12 05 A7         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      0004B5 75 82 80         [24]  351 	mov	dpl,#0x80
      0004B8 12 05 A7         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      0004BB 75 82 8D         [24]  354 	mov	dpl,#0x8d
      0004BE 12 05 A7         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      0004C1 75 82 14         [24]  357 	mov	dpl,#0x14
      0004C4 12 05 A7         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      0004C7 75 82 AF         [24]  360 	mov	dpl,#0xaf
      0004CA 12 05 A7         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:38: OLED_Clear(); // Clear the complete LCD during init
                                    363 ;	./src/oled_i2c.c:39: }
      0004CD 02 05 4C         [24]  364 	ljmp	_OLED_Clear
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
      0004D0                        376 _OLED_DisplayChar:
      0004D0 AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:56: if (ch != '\n')
      0004D2 BF 0A 01         [24]  379 	cjne	r7,#0x0a,00130$
      0004D5 22               [24]  380 	ret
      0004D6                        381 00130$:
                                    382 ;	./src/oled_i2c.c:58: index = (ch - 0x20);
      0004D6 7E 00            [12]  383 	mov	r6,#0x00
      0004D8 EF               [12]  384 	mov	a,r7
      0004D9 24 E0            [12]  385 	add	a,#0xe0
      0004DB F5 18            [12]  386 	mov	__mulint_PARM_2,a
      0004DD EE               [12]  387 	mov	a,r6
      0004DE 34 FF            [12]  388 	addc	a,#0xff
      0004E0 F5 19            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:59: index = index * 5; // As the lookup table starts from Space(0x20)
                                    391 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      0004E2 90 00 05         [24]  392 	mov	dptr,#0x0005
      0004E5 12 05 BF         [24]  393 	lcall	__mulint
      0004E8 AE 82            [24]  394 	mov	r6,dpl
      0004EA AF 83            [24]  395 	mov	r7,dph
      0004EC 7D 00            [12]  396 	mov	r5,#0x00
      0004EE                        397 00104$:
                                    398 ;	./src/oled_i2c.c:62: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      0004EE 8D 03            [24]  399 	mov	ar3,r5
      0004F0 7C 00            [12]  400 	mov	r4,#0x00
      0004F2 EB               [12]  401 	mov	a,r3
      0004F3 2E               [12]  402 	add	a,r6
      0004F4 FB               [12]  403 	mov	r3,a
      0004F5 EC               [12]  404 	mov	a,r4
      0004F6 3F               [12]  405 	addc	a,r7
      0004F7 FC               [12]  406 	mov	r4,a
      0004F8 EB               [12]  407 	mov	a,r3
      0004F9 24 68            [12]  408 	add	a,#_OledFontTable
      0004FB F5 82            [12]  409 	mov	dpl,a
      0004FD EC               [12]  410 	mov	a,r4
      0004FE 34 06            [12]  411 	addc	a,#(_OledFontTable >> 8)
      000500 F5 83            [12]  412 	mov	dph,a
      000502 E4               [12]  413 	clr	a
      000503 93               [24]  414 	movc	a,@a+dptr
      000504 F5 82            [12]  415 	mov	dpl,a
      000506 C0 07            [24]  416 	push	ar7
      000508 C0 06            [24]  417 	push	ar6
      00050A C0 05            [24]  418 	push	ar5
      00050C 12 05 B3         [24]  419 	lcall	_oledSendData
      00050F D0 05            [24]  420 	pop	ar5
      000511 D0 06            [24]  421 	pop	ar6
      000513 D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      000515 0D               [12]  424 	inc	r5
      000516 BD 05 00         [24]  425 	cjne	r5,#0x05,00131$
      000519                        426 00131$:
      000519 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:64: oledSendData(0x00); /* Display the data and keep track of cursor */
      00051B 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:66: }
      00051E 02 05 B3         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      000521                        441 _OLED_DisplayString:
      000521 AD 82            [24]  442 	mov	r5,dpl
      000523 AE 83            [24]  443 	mov	r6,dph
      000525 AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:83: while (*ptr)
      000527                        446 00101$:
      000527 8D 82            [24]  447 	mov	dpl,r5
      000529 8E 83            [24]  448 	mov	dph,r6
      00052B 8F F0            [24]  449 	mov	b,r7
      00052D 12 05 DC         [24]  450 	lcall	__gptrget
      000530 FC               [12]  451 	mov	r4,a
      000531 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000533 8C 82            [24]  454 	mov	dpl,r4
      000535 0D               [12]  455 	inc	r5
      000536 BD 00 01         [24]  456 	cjne	r5,#0x00,00120$
      000539 0E               [12]  457 	inc	r6
      00053A                        458 00120$:
      00053A C0 07            [24]  459 	push	ar7
      00053C C0 06            [24]  460 	push	ar6
      00053E C0 05            [24]  461 	push	ar5
      000540 12 04 D0         [24]  462 	lcall	_OLED_DisplayChar
      000543 D0 05            [24]  463 	pop	ar5
      000545 D0 06            [24]  464 	pop	ar6
      000547 D0 07            [24]  465 	pop	ar7
      000549 80 DC            [24]  466 	sjmp	00101$
      00054B                        467 00104$:
                                    468 ;	./src/oled_i2c.c:85: }
      00054B 22               [24]  469 	ret
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
      00054C                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      00054C 7F 00            [12]  482 	mov	r7,#0x00
      00054E                        483 00105$:
                                    484 ;	./src/oled_i2c.c:101: OLED_SetCursor(oled_clean_page, 0);
      00054E 75 17 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      000551 8F 82            [24]  486 	mov	dpl,r7
      000553 C0 07            [24]  487 	push	ar7
      000555 12 05 77         [24]  488 	lcall	_OLED_SetCursor
      000558 D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      00055A 7E 00            [12]  491 	mov	r6,#0x00
      00055C                        492 00103$:
                                    493 ;	./src/oled_i2c.c:104: oledSendData(0);
      00055C 75 82 00         [24]  494 	mov	dpl,#0x00
      00055F C0 07            [24]  495 	push	ar7
      000561 C0 06            [24]  496 	push	ar6
      000563 12 05 B3         [24]  497 	lcall	_oledSendData
      000566 D0 06            [24]  498 	pop	ar6
      000568 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      00056A 0E               [12]  501 	inc	r6
      00056B BE 80 00         [24]  502 	cjne	r6,#0x80,00129$
      00056E                        503 00129$:
      00056E 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      000570 0F               [12]  506 	inc	r7
      000571 BF 08 00         [24]  507 	cjne	r7,#0x08,00131$
      000574                        508 00131$:
      000574 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:107: }
      000576 22               [24]  511 	ret
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
      000577                        522 _OLED_SetCursor:
      000577 AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:126: cursorPosition = cursorPosition + 2;
      000579 AE 17            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      00057B 74 02            [12]  526 	mov	a,#0x02
      00057D 2E               [12]  527 	add	a,r6
      00057E F5 17            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:127: oledSendCommand(0x0f & cursorPosition);        // Select SEG lower 4 bits
      000580 AE 17            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      000582 74 0F            [12]  531 	mov	a,#0x0f
      000584 5E               [12]  532 	anl	a,r6
      000585 F5 82            [12]  533 	mov	dpl,a
      000587 C0 07            [24]  534 	push	ar7
      000589 C0 06            [24]  535 	push	ar6
      00058B 12 05 A7         [24]  536 	lcall	_oledSendCommand
      00058E D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:128: oledSendCommand(0x10 | (cursorPosition >> 4)); // Select SEG higher 4 bits
      000590 EE               [12]  539 	mov	a,r6
      000591 C4               [12]  540 	swap	a
      000592 54 0F            [12]  541 	anl	a,#0x0f
      000594 FE               [12]  542 	mov	r6,a
      000595 74 10            [12]  543 	mov	a,#0x10
      000597 4E               [12]  544 	orl	a,r6
      000598 F5 82            [12]  545 	mov	dpl,a
      00059A 12 05 A7         [24]  546 	lcall	_oledSendCommand
      00059D D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:129: oledSendCommand(0xb0 | lineNumber);            // Select PAGE
      00059F 74 B0            [12]  549 	mov	a,#0xb0
      0005A1 4F               [12]  550 	orl	a,r7
      0005A2 F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:130: }
      0005A4 02 05 A7         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:135: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      0005A7                        563 _oledSendCommand:
      0005A7 85 82 15         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:137: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0005AA 75 14 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      0005AD 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:138: }
      0005B0 02 03 90         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:140: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      0005B3                        579 _oledSendData:
      0005B3 85 82 15         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:142: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0005B6 75 14 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      0005B9 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:143: }
      0005BC 02 03 90         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      000668                        588 _OledFontTable:
      000668 00                     589 	.db #0x00	; 0
      000669 00                     590 	.db #0x00	; 0
      00066A 00                     591 	.db #0x00	; 0
      00066B 00                     592 	.db #0x00	; 0
      00066C 00                     593 	.db #0x00	; 0
      00066D 00                     594 	.db #0x00	; 0
      00066E 00                     595 	.db #0x00	; 0
      00066F 2F                     596 	.db #0x2f	; 47
      000670 00                     597 	.db #0x00	; 0
      000671 00                     598 	.db #0x00	; 0
      000672 00                     599 	.db #0x00	; 0
      000673 07                     600 	.db #0x07	; 7
      000674 00                     601 	.db #0x00	; 0
      000675 07                     602 	.db #0x07	; 7
      000676 00                     603 	.db #0x00	; 0
      000677 14                     604 	.db #0x14	; 20
      000678 7F                     605 	.db #0x7f	; 127
      000679 14                     606 	.db #0x14	; 20
      00067A 7F                     607 	.db #0x7f	; 127
      00067B 14                     608 	.db #0x14	; 20
      00067C 24                     609 	.db #0x24	; 36
      00067D 2A                     610 	.db #0x2a	; 42
      00067E 7F                     611 	.db #0x7f	; 127
      00067F 2A                     612 	.db #0x2a	; 42
      000680 12                     613 	.db #0x12	; 18
      000681 23                     614 	.db #0x23	; 35
      000682 13                     615 	.db #0x13	; 19
      000683 08                     616 	.db #0x08	; 8
      000684 64                     617 	.db #0x64	; 100	'd'
      000685 62                     618 	.db #0x62	; 98	'b'
      000686 36                     619 	.db #0x36	; 54	'6'
      000687 49                     620 	.db #0x49	; 73	'I'
      000688 55                     621 	.db #0x55	; 85	'U'
      000689 22                     622 	.db #0x22	; 34
      00068A 50                     623 	.db #0x50	; 80	'P'
      00068B 00                     624 	.db #0x00	; 0
      00068C 05                     625 	.db #0x05	; 5
      00068D 03                     626 	.db #0x03	; 3
      00068E 00                     627 	.db #0x00	; 0
      00068F 00                     628 	.db #0x00	; 0
      000690 00                     629 	.db #0x00	; 0
      000691 1C                     630 	.db #0x1c	; 28
      000692 22                     631 	.db #0x22	; 34
      000693 41                     632 	.db #0x41	; 65	'A'
      000694 00                     633 	.db #0x00	; 0
      000695 00                     634 	.db #0x00	; 0
      000696 41                     635 	.db #0x41	; 65	'A'
      000697 22                     636 	.db #0x22	; 34
      000698 1C                     637 	.db #0x1c	; 28
      000699 00                     638 	.db #0x00	; 0
      00069A 14                     639 	.db #0x14	; 20
      00069B 08                     640 	.db #0x08	; 8
      00069C 3E                     641 	.db #0x3e	; 62
      00069D 08                     642 	.db #0x08	; 8
      00069E 14                     643 	.db #0x14	; 20
      00069F 08                     644 	.db #0x08	; 8
      0006A0 08                     645 	.db #0x08	; 8
      0006A1 3E                     646 	.db #0x3e	; 62
      0006A2 08                     647 	.db #0x08	; 8
      0006A3 08                     648 	.db #0x08	; 8
      0006A4 00                     649 	.db #0x00	; 0
      0006A5 00                     650 	.db #0x00	; 0
      0006A6 A0                     651 	.db #0xa0	; 160
      0006A7 60                     652 	.db #0x60	; 96
      0006A8 00                     653 	.db #0x00	; 0
      0006A9 08                     654 	.db #0x08	; 8
      0006AA 08                     655 	.db #0x08	; 8
      0006AB 08                     656 	.db #0x08	; 8
      0006AC 08                     657 	.db #0x08	; 8
      0006AD 08                     658 	.db #0x08	; 8
      0006AE 00                     659 	.db #0x00	; 0
      0006AF 60                     660 	.db #0x60	; 96
      0006B0 60                     661 	.db #0x60	; 96
      0006B1 00                     662 	.db #0x00	; 0
      0006B2 00                     663 	.db #0x00	; 0
      0006B3 20                     664 	.db #0x20	; 32
      0006B4 10                     665 	.db #0x10	; 16
      0006B5 08                     666 	.db #0x08	; 8
      0006B6 04                     667 	.db #0x04	; 4
      0006B7 02                     668 	.db #0x02	; 2
      0006B8 3E                     669 	.db #0x3e	; 62
      0006B9 51                     670 	.db #0x51	; 81	'Q'
      0006BA 49                     671 	.db #0x49	; 73	'I'
      0006BB 45                     672 	.db #0x45	; 69	'E'
      0006BC 3E                     673 	.db #0x3e	; 62
      0006BD 00                     674 	.db #0x00	; 0
      0006BE 42                     675 	.db #0x42	; 66	'B'
      0006BF 7F                     676 	.db #0x7f	; 127
      0006C0 40                     677 	.db #0x40	; 64
      0006C1 00                     678 	.db #0x00	; 0
      0006C2 42                     679 	.db #0x42	; 66	'B'
      0006C3 61                     680 	.db #0x61	; 97	'a'
      0006C4 51                     681 	.db #0x51	; 81	'Q'
      0006C5 49                     682 	.db #0x49	; 73	'I'
      0006C6 46                     683 	.db #0x46	; 70	'F'
      0006C7 21                     684 	.db #0x21	; 33
      0006C8 41                     685 	.db #0x41	; 65	'A'
      0006C9 45                     686 	.db #0x45	; 69	'E'
      0006CA 4B                     687 	.db #0x4b	; 75	'K'
      0006CB 31                     688 	.db #0x31	; 49	'1'
      0006CC 18                     689 	.db #0x18	; 24
      0006CD 14                     690 	.db #0x14	; 20
      0006CE 12                     691 	.db #0x12	; 18
      0006CF 7F                     692 	.db #0x7f	; 127
      0006D0 10                     693 	.db #0x10	; 16
      0006D1 27                     694 	.db #0x27	; 39
      0006D2 45                     695 	.db #0x45	; 69	'E'
      0006D3 45                     696 	.db #0x45	; 69	'E'
      0006D4 45                     697 	.db #0x45	; 69	'E'
      0006D5 39                     698 	.db #0x39	; 57	'9'
      0006D6 3C                     699 	.db #0x3c	; 60
      0006D7 4A                     700 	.db #0x4a	; 74	'J'
      0006D8 49                     701 	.db #0x49	; 73	'I'
      0006D9 49                     702 	.db #0x49	; 73	'I'
      0006DA 30                     703 	.db #0x30	; 48	'0'
      0006DB 01                     704 	.db #0x01	; 1
      0006DC 71                     705 	.db #0x71	; 113	'q'
      0006DD 09                     706 	.db #0x09	; 9
      0006DE 05                     707 	.db #0x05	; 5
      0006DF 03                     708 	.db #0x03	; 3
      0006E0 36                     709 	.db #0x36	; 54	'6'
      0006E1 49                     710 	.db #0x49	; 73	'I'
      0006E2 49                     711 	.db #0x49	; 73	'I'
      0006E3 49                     712 	.db #0x49	; 73	'I'
      0006E4 36                     713 	.db #0x36	; 54	'6'
      0006E5 06                     714 	.db #0x06	; 6
      0006E6 49                     715 	.db #0x49	; 73	'I'
      0006E7 49                     716 	.db #0x49	; 73	'I'
      0006E8 29                     717 	.db #0x29	; 41
      0006E9 1E                     718 	.db #0x1e	; 30
      0006EA 00                     719 	.db #0x00	; 0
      0006EB 36                     720 	.db #0x36	; 54	'6'
      0006EC 36                     721 	.db #0x36	; 54	'6'
      0006ED 00                     722 	.db #0x00	; 0
      0006EE 00                     723 	.db #0x00	; 0
      0006EF 00                     724 	.db #0x00	; 0
      0006F0 56                     725 	.db #0x56	; 86	'V'
      0006F1 36                     726 	.db #0x36	; 54	'6'
      0006F2 00                     727 	.db #0x00	; 0
      0006F3 00                     728 	.db #0x00	; 0
      0006F4 08                     729 	.db #0x08	; 8
      0006F5 14                     730 	.db #0x14	; 20
      0006F6 22                     731 	.db #0x22	; 34
      0006F7 41                     732 	.db #0x41	; 65	'A'
      0006F8 00                     733 	.db #0x00	; 0
      0006F9 14                     734 	.db #0x14	; 20
      0006FA 14                     735 	.db #0x14	; 20
      0006FB 14                     736 	.db #0x14	; 20
      0006FC 14                     737 	.db #0x14	; 20
      0006FD 14                     738 	.db #0x14	; 20
      0006FE 00                     739 	.db #0x00	; 0
      0006FF 41                     740 	.db #0x41	; 65	'A'
      000700 22                     741 	.db #0x22	; 34
      000701 14                     742 	.db #0x14	; 20
      000702 08                     743 	.db #0x08	; 8
      000703 02                     744 	.db #0x02	; 2
      000704 01                     745 	.db #0x01	; 1
      000705 51                     746 	.db #0x51	; 81	'Q'
      000706 09                     747 	.db #0x09	; 9
      000707 06                     748 	.db #0x06	; 6
      000708 32                     749 	.db #0x32	; 50	'2'
      000709 49                     750 	.db #0x49	; 73	'I'
      00070A 59                     751 	.db #0x59	; 89	'Y'
      00070B 51                     752 	.db #0x51	; 81	'Q'
      00070C 3E                     753 	.db #0x3e	; 62
      00070D 7C                     754 	.db #0x7c	; 124
      00070E 12                     755 	.db #0x12	; 18
      00070F 11                     756 	.db #0x11	; 17
      000710 12                     757 	.db #0x12	; 18
      000711 7C                     758 	.db #0x7c	; 124
      000712 7F                     759 	.db #0x7f	; 127
      000713 49                     760 	.db #0x49	; 73	'I'
      000714 49                     761 	.db #0x49	; 73	'I'
      000715 49                     762 	.db #0x49	; 73	'I'
      000716 36                     763 	.db #0x36	; 54	'6'
      000717 3E                     764 	.db #0x3e	; 62
      000718 41                     765 	.db #0x41	; 65	'A'
      000719 41                     766 	.db #0x41	; 65	'A'
      00071A 41                     767 	.db #0x41	; 65	'A'
      00071B 22                     768 	.db #0x22	; 34
      00071C 7F                     769 	.db #0x7f	; 127
      00071D 41                     770 	.db #0x41	; 65	'A'
      00071E 41                     771 	.db #0x41	; 65	'A'
      00071F 22                     772 	.db #0x22	; 34
      000720 1C                     773 	.db #0x1c	; 28
      000721 7F                     774 	.db #0x7f	; 127
      000722 49                     775 	.db #0x49	; 73	'I'
      000723 49                     776 	.db #0x49	; 73	'I'
      000724 49                     777 	.db #0x49	; 73	'I'
      000725 41                     778 	.db #0x41	; 65	'A'
      000726 7F                     779 	.db #0x7f	; 127
      000727 09                     780 	.db #0x09	; 9
      000728 09                     781 	.db #0x09	; 9
      000729 09                     782 	.db #0x09	; 9
      00072A 01                     783 	.db #0x01	; 1
      00072B 3E                     784 	.db #0x3e	; 62
      00072C 41                     785 	.db #0x41	; 65	'A'
      00072D 49                     786 	.db #0x49	; 73	'I'
      00072E 49                     787 	.db #0x49	; 73	'I'
      00072F 7A                     788 	.db #0x7a	; 122	'z'
      000730 7F                     789 	.db #0x7f	; 127
      000731 08                     790 	.db #0x08	; 8
      000732 08                     791 	.db #0x08	; 8
      000733 08                     792 	.db #0x08	; 8
      000734 7F                     793 	.db #0x7f	; 127
      000735 00                     794 	.db #0x00	; 0
      000736 41                     795 	.db #0x41	; 65	'A'
      000737 7F                     796 	.db #0x7f	; 127
      000738 41                     797 	.db #0x41	; 65	'A'
      000739 00                     798 	.db #0x00	; 0
      00073A 20                     799 	.db #0x20	; 32
      00073B 40                     800 	.db #0x40	; 64
      00073C 41                     801 	.db #0x41	; 65	'A'
      00073D 3F                     802 	.db #0x3f	; 63
      00073E 01                     803 	.db #0x01	; 1
      00073F 7F                     804 	.db #0x7f	; 127
      000740 08                     805 	.db #0x08	; 8
      000741 14                     806 	.db #0x14	; 20
      000742 22                     807 	.db #0x22	; 34
      000743 41                     808 	.db #0x41	; 65	'A'
      000744 7F                     809 	.db #0x7f	; 127
      000745 40                     810 	.db #0x40	; 64
      000746 40                     811 	.db #0x40	; 64
      000747 40                     812 	.db #0x40	; 64
      000748 40                     813 	.db #0x40	; 64
      000749 7F                     814 	.db #0x7f	; 127
      00074A 02                     815 	.db #0x02	; 2
      00074B 0C                     816 	.db #0x0c	; 12
      00074C 02                     817 	.db #0x02	; 2
      00074D 7F                     818 	.db #0x7f	; 127
      00074E 7F                     819 	.db #0x7f	; 127
      00074F 04                     820 	.db #0x04	; 4
      000750 08                     821 	.db #0x08	; 8
      000751 10                     822 	.db #0x10	; 16
      000752 7F                     823 	.db #0x7f	; 127
      000753 3E                     824 	.db #0x3e	; 62
      000754 41                     825 	.db #0x41	; 65	'A'
      000755 41                     826 	.db #0x41	; 65	'A'
      000756 41                     827 	.db #0x41	; 65	'A'
      000757 3E                     828 	.db #0x3e	; 62
      000758 7F                     829 	.db #0x7f	; 127
      000759 09                     830 	.db #0x09	; 9
      00075A 09                     831 	.db #0x09	; 9
      00075B 09                     832 	.db #0x09	; 9
      00075C 06                     833 	.db #0x06	; 6
      00075D 3E                     834 	.db #0x3e	; 62
      00075E 41                     835 	.db #0x41	; 65	'A'
      00075F 51                     836 	.db #0x51	; 81	'Q'
      000760 21                     837 	.db #0x21	; 33
      000761 5E                     838 	.db #0x5e	; 94
      000762 7F                     839 	.db #0x7f	; 127
      000763 09                     840 	.db #0x09	; 9
      000764 19                     841 	.db #0x19	; 25
      000765 29                     842 	.db #0x29	; 41
      000766 46                     843 	.db #0x46	; 70	'F'
      000767 46                     844 	.db #0x46	; 70	'F'
      000768 49                     845 	.db #0x49	; 73	'I'
      000769 49                     846 	.db #0x49	; 73	'I'
      00076A 49                     847 	.db #0x49	; 73	'I'
      00076B 31                     848 	.db #0x31	; 49	'1'
      00076C 01                     849 	.db #0x01	; 1
      00076D 01                     850 	.db #0x01	; 1
      00076E 7F                     851 	.db #0x7f	; 127
      00076F 01                     852 	.db #0x01	; 1
      000770 01                     853 	.db #0x01	; 1
      000771 3F                     854 	.db #0x3f	; 63
      000772 40                     855 	.db #0x40	; 64
      000773 40                     856 	.db #0x40	; 64
      000774 40                     857 	.db #0x40	; 64
      000775 3F                     858 	.db #0x3f	; 63
      000776 1F                     859 	.db #0x1f	; 31
      000777 20                     860 	.db #0x20	; 32
      000778 40                     861 	.db #0x40	; 64
      000779 20                     862 	.db #0x20	; 32
      00077A 1F                     863 	.db #0x1f	; 31
      00077B 3F                     864 	.db #0x3f	; 63
      00077C 40                     865 	.db #0x40	; 64
      00077D 38                     866 	.db #0x38	; 56	'8'
      00077E 40                     867 	.db #0x40	; 64
      00077F 3F                     868 	.db #0x3f	; 63
      000780 63                     869 	.db #0x63	; 99	'c'
      000781 14                     870 	.db #0x14	; 20
      000782 08                     871 	.db #0x08	; 8
      000783 14                     872 	.db #0x14	; 20
      000784 63                     873 	.db #0x63	; 99	'c'
      000785 07                     874 	.db #0x07	; 7
      000786 08                     875 	.db #0x08	; 8
      000787 70                     876 	.db #0x70	; 112	'p'
      000788 08                     877 	.db #0x08	; 8
      000789 07                     878 	.db #0x07	; 7
      00078A 61                     879 	.db #0x61	; 97	'a'
      00078B 51                     880 	.db #0x51	; 81	'Q'
      00078C 49                     881 	.db #0x49	; 73	'I'
      00078D 45                     882 	.db #0x45	; 69	'E'
      00078E 43                     883 	.db #0x43	; 67	'C'
      00078F 00                     884 	.db #0x00	; 0
      000790 7F                     885 	.db #0x7f	; 127
      000791 41                     886 	.db #0x41	; 65	'A'
      000792 41                     887 	.db #0x41	; 65	'A'
      000793 00                     888 	.db #0x00	; 0
      000794 55                     889 	.db #0x55	; 85	'U'
      000795 AA                     890 	.db #0xaa	; 170
      000796 55                     891 	.db #0x55	; 85	'U'
      000797 AA                     892 	.db #0xaa	; 170
      000798 55                     893 	.db #0x55	; 85	'U'
      000799 00                     894 	.db #0x00	; 0
      00079A 41                     895 	.db #0x41	; 65	'A'
      00079B 41                     896 	.db #0x41	; 65	'A'
      00079C 7F                     897 	.db #0x7f	; 127
      00079D 00                     898 	.db #0x00	; 0
      00079E 04                     899 	.db #0x04	; 4
      00079F 02                     900 	.db #0x02	; 2
      0007A0 01                     901 	.db #0x01	; 1
      0007A1 02                     902 	.db #0x02	; 2
      0007A2 04                     903 	.db #0x04	; 4
      0007A3 40                     904 	.db #0x40	; 64
      0007A4 40                     905 	.db #0x40	; 64
      0007A5 40                     906 	.db #0x40	; 64
      0007A6 40                     907 	.db #0x40	; 64
      0007A7 40                     908 	.db #0x40	; 64
      0007A8 00                     909 	.db #0x00	; 0
      0007A9 03                     910 	.db #0x03	; 3
      0007AA 05                     911 	.db #0x05	; 5
      0007AB 00                     912 	.db #0x00	; 0
      0007AC 00                     913 	.db #0x00	; 0
      0007AD 20                     914 	.db #0x20	; 32
      0007AE 54                     915 	.db #0x54	; 84	'T'
      0007AF 54                     916 	.db #0x54	; 84	'T'
      0007B0 54                     917 	.db #0x54	; 84	'T'
      0007B1 78                     918 	.db #0x78	; 120	'x'
      0007B2 7F                     919 	.db #0x7f	; 127
      0007B3 48                     920 	.db #0x48	; 72	'H'
      0007B4 44                     921 	.db #0x44	; 68	'D'
      0007B5 44                     922 	.db #0x44	; 68	'D'
      0007B6 38                     923 	.db #0x38	; 56	'8'
      0007B7 38                     924 	.db #0x38	; 56	'8'
      0007B8 44                     925 	.db #0x44	; 68	'D'
      0007B9 44                     926 	.db #0x44	; 68	'D'
      0007BA 44                     927 	.db #0x44	; 68	'D'
      0007BB 20                     928 	.db #0x20	; 32
      0007BC 38                     929 	.db #0x38	; 56	'8'
      0007BD 44                     930 	.db #0x44	; 68	'D'
      0007BE 44                     931 	.db #0x44	; 68	'D'
      0007BF 48                     932 	.db #0x48	; 72	'H'
      0007C0 7F                     933 	.db #0x7f	; 127
      0007C1 38                     934 	.db #0x38	; 56	'8'
      0007C2 54                     935 	.db #0x54	; 84	'T'
      0007C3 54                     936 	.db #0x54	; 84	'T'
      0007C4 54                     937 	.db #0x54	; 84	'T'
      0007C5 18                     938 	.db #0x18	; 24
      0007C6 08                     939 	.db #0x08	; 8
      0007C7 7E                     940 	.db #0x7e	; 126
      0007C8 09                     941 	.db #0x09	; 9
      0007C9 01                     942 	.db #0x01	; 1
      0007CA 02                     943 	.db #0x02	; 2
      0007CB 18                     944 	.db #0x18	; 24
      0007CC A4                     945 	.db #0xa4	; 164
      0007CD A4                     946 	.db #0xa4	; 164
      0007CE A4                     947 	.db #0xa4	; 164
      0007CF 7C                     948 	.db #0x7c	; 124
      0007D0 7F                     949 	.db #0x7f	; 127
      0007D1 08                     950 	.db #0x08	; 8
      0007D2 04                     951 	.db #0x04	; 4
      0007D3 04                     952 	.db #0x04	; 4
      0007D4 78                     953 	.db #0x78	; 120	'x'
      0007D5 00                     954 	.db #0x00	; 0
      0007D6 44                     955 	.db #0x44	; 68	'D'
      0007D7 7D                     956 	.db #0x7d	; 125
      0007D8 40                     957 	.db #0x40	; 64
      0007D9 00                     958 	.db #0x00	; 0
      0007DA 40                     959 	.db #0x40	; 64
      0007DB 80                     960 	.db #0x80	; 128
      0007DC 84                     961 	.db #0x84	; 132
      0007DD 7D                     962 	.db #0x7d	; 125
      0007DE 00                     963 	.db #0x00	; 0
      0007DF 7F                     964 	.db #0x7f	; 127
      0007E0 10                     965 	.db #0x10	; 16
      0007E1 28                     966 	.db #0x28	; 40
      0007E2 44                     967 	.db #0x44	; 68	'D'
      0007E3 00                     968 	.db #0x00	; 0
      0007E4 00                     969 	.db #0x00	; 0
      0007E5 41                     970 	.db #0x41	; 65	'A'
      0007E6 7F                     971 	.db #0x7f	; 127
      0007E7 40                     972 	.db #0x40	; 64
      0007E8 00                     973 	.db #0x00	; 0
      0007E9 7C                     974 	.db #0x7c	; 124
      0007EA 04                     975 	.db #0x04	; 4
      0007EB 18                     976 	.db #0x18	; 24
      0007EC 04                     977 	.db #0x04	; 4
      0007ED 78                     978 	.db #0x78	; 120	'x'
      0007EE 7C                     979 	.db #0x7c	; 124
      0007EF 08                     980 	.db #0x08	; 8
      0007F0 04                     981 	.db #0x04	; 4
      0007F1 04                     982 	.db #0x04	; 4
      0007F2 78                     983 	.db #0x78	; 120	'x'
      0007F3 38                     984 	.db #0x38	; 56	'8'
      0007F4 44                     985 	.db #0x44	; 68	'D'
      0007F5 44                     986 	.db #0x44	; 68	'D'
      0007F6 44                     987 	.db #0x44	; 68	'D'
      0007F7 38                     988 	.db #0x38	; 56	'8'
      0007F8 FC                     989 	.db #0xfc	; 252
      0007F9 24                     990 	.db #0x24	; 36
      0007FA 24                     991 	.db #0x24	; 36
      0007FB 24                     992 	.db #0x24	; 36
      0007FC 18                     993 	.db #0x18	; 24
      0007FD 18                     994 	.db #0x18	; 24
      0007FE 24                     995 	.db #0x24	; 36
      0007FF 24                     996 	.db #0x24	; 36
      000800 18                     997 	.db #0x18	; 24
      000801 FC                     998 	.db #0xfc	; 252
      000802 7C                     999 	.db #0x7c	; 124
      000803 08                    1000 	.db #0x08	; 8
      000804 04                    1001 	.db #0x04	; 4
      000805 04                    1002 	.db #0x04	; 4
      000806 08                    1003 	.db #0x08	; 8
      000807 48                    1004 	.db #0x48	; 72	'H'
      000808 54                    1005 	.db #0x54	; 84	'T'
      000809 54                    1006 	.db #0x54	; 84	'T'
      00080A 54                    1007 	.db #0x54	; 84	'T'
      00080B 20                    1008 	.db #0x20	; 32
      00080C 04                    1009 	.db #0x04	; 4
      00080D 3F                    1010 	.db #0x3f	; 63
      00080E 44                    1011 	.db #0x44	; 68	'D'
      00080F 40                    1012 	.db #0x40	; 64
      000810 20                    1013 	.db #0x20	; 32
      000811 3C                    1014 	.db #0x3c	; 60
      000812 40                    1015 	.db #0x40	; 64
      000813 40                    1016 	.db #0x40	; 64
      000814 20                    1017 	.db #0x20	; 32
      000815 7C                    1018 	.db #0x7c	; 124
      000816 1C                    1019 	.db #0x1c	; 28
      000817 20                    1020 	.db #0x20	; 32
      000818 40                    1021 	.db #0x40	; 64
      000819 20                    1022 	.db #0x20	; 32
      00081A 1C                    1023 	.db #0x1c	; 28
      00081B 3C                    1024 	.db #0x3c	; 60
      00081C 40                    1025 	.db #0x40	; 64
      00081D 30                    1026 	.db #0x30	; 48	'0'
      00081E 40                    1027 	.db #0x40	; 64
      00081F 3C                    1028 	.db #0x3c	; 60
      000820 44                    1029 	.db #0x44	; 68	'D'
      000821 28                    1030 	.db #0x28	; 40
      000822 10                    1031 	.db #0x10	; 16
      000823 28                    1032 	.db #0x28	; 40
      000824 44                    1033 	.db #0x44	; 68	'D'
      000825 1C                    1034 	.db #0x1c	; 28
      000826 A0                    1035 	.db #0xa0	; 160
      000827 A0                    1036 	.db #0xa0	; 160
      000828 A0                    1037 	.db #0xa0	; 160
      000829 7C                    1038 	.db #0x7c	; 124
      00082A 44                    1039 	.db #0x44	; 68	'D'
      00082B 64                    1040 	.db #0x64	; 100	'd'
      00082C 54                    1041 	.db #0x54	; 84	'T'
      00082D 4C                    1042 	.db #0x4c	; 76	'L'
      00082E 44                    1043 	.db #0x44	; 68	'D'
      00082F 00                    1044 	.db #0x00	; 0
      000830 10                    1045 	.db #0x10	; 16
      000831 7C                    1046 	.db #0x7c	; 124
      000832 82                    1047 	.db #0x82	; 130
      000833 00                    1048 	.db #0x00	; 0
      000834 00                    1049 	.db #0x00	; 0
      000835 00                    1050 	.db #0x00	; 0
      000836 FF                    1051 	.db #0xff	; 255
      000837 00                    1052 	.db #0x00	; 0
      000838 00                    1053 	.db #0x00	; 0
      000839 00                    1054 	.db #0x00	; 0
      00083A 82                    1055 	.db #0x82	; 130
      00083B 7C                    1056 	.db #0x7c	; 124
      00083C 10                    1057 	.db #0x10	; 16
      00083D 00                    1058 	.db #0x00	; 0
      00083E 00                    1059 	.db #0x00	; 0
      00083F 06                    1060 	.db #0x06	; 6
      000840 09                    1061 	.db #0x09	; 9
      000841 09                    1062 	.db #0x09	; 9
      000842 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
