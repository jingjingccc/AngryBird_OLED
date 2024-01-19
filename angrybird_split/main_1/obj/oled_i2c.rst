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
      000044                        232 _OLED_SetCursor_PARM_2:
      000044                        233 	.ds 1
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
      000AD9                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8); // Set MUX Ratio
      000AD9 75 82 A8         [24]  309 	mov	dpl,#0xa8
      000ADC 12 0C 1F         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);
      000ADF 75 82 3F         [24]  312 	mov	dpl,#0x3f
      000AE2 12 0C 1F         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3); // Set Display Offset
      000AE5 75 82 D3         [24]  315 	mov	dpl,#0xd3
      000AE8 12 0C 1F         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);
      000AEB 75 82 00         [24]  318 	mov	dpl,#0x00
      000AEE 12 0C 1F         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:23: oledSendCommand(0x40); // Set Display Start Line
      000AF1 75 82 40         [24]  321 	mov	dpl,#0x40
      000AF4 12 0C 1F         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1); // Set Segment re-map A0h/A1h
      000AF7 75 82 A1         [24]  324 	mov	dpl,#0xa1
      000AFA 12 0C 1F         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8); // Set COM OUTput
      000AFD 75 82 C8         [24]  327 	mov	dpl,#0xc8
      000B00 12 0C 1F         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:26: oledSendCommand(0xda);
      000B03 75 82 DA         [24]  330 	mov	dpl,#0xda
      000B06 12 0C 1F         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000B09 75 82 12         [24]  333 	mov	dpl,#0x12
      000B0C 12 0C 1F         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000B0F 75 82 81         [24]  336 	mov	dpl,#0x81
      000B12 12 0C 1F         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      000B15 75 82 7F         [24]  339 	mov	dpl,#0x7f
      000B18 12 0C 1F         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      000B1B 75 82 A4         [24]  342 	mov	dpl,#0xa4
      000B1E 12 0C 1F         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000B21 75 82 A6         [24]  345 	mov	dpl,#0xa6
      000B24 12 0C 1F         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      000B27 75 82 D5         [24]  348 	mov	dpl,#0xd5
      000B2A 12 0C 1F         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      000B2D 75 82 80         [24]  351 	mov	dpl,#0x80
      000B30 12 0C 1F         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000B33 75 82 8D         [24]  354 	mov	dpl,#0x8d
      000B36 12 0C 1F         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      000B39 75 82 14         [24]  357 	mov	dpl,#0x14
      000B3C 12 0C 1F         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      000B3F 75 82 AF         [24]  360 	mov	dpl,#0xaf
      000B42 12 0C 1F         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:38: OLED_Clear(); // Clear the complete LCD during init
                                    363 ;	./src/oled_i2c.c:39: }
      000B45 02 0B C4         [24]  364 	ljmp	_OLED_Clear
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
      000B48                        376 _OLED_DisplayChar:
      000B48 AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:56: if (ch != '\n')
      000B4A BF 0A 01         [24]  379 	cjne	r7,#0x0a,00130$
      000B4D 22               [24]  380 	ret
      000B4E                        381 00130$:
                                    382 ;	./src/oled_i2c.c:58: index = (ch - 0x20);
      000B4E 7E 00            [12]  383 	mov	r6,#0x00
      000B50 EF               [12]  384 	mov	a,r7
      000B51 24 E0            [12]  385 	add	a,#0xe0
      000B53 F5 45            [12]  386 	mov	__mulint_PARM_2,a
      000B55 EE               [12]  387 	mov	a,r6
      000B56 34 FF            [12]  388 	addc	a,#0xff
      000B58 F5 46            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:59: index = index * 5; // As the lookup table starts from Space(0x20)
                                    391 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      000B5A 90 00 05         [24]  392 	mov	dptr,#0x0005
      000B5D 12 0C 37         [24]  393 	lcall	__mulint
      000B60 AE 82            [24]  394 	mov	r6,dpl
      000B62 AF 83            [24]  395 	mov	r7,dph
      000B64 7D 00            [12]  396 	mov	r5,#0x00
      000B66                        397 00104$:
                                    398 ;	./src/oled_i2c.c:62: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      000B66 8D 03            [24]  399 	mov	ar3,r5
      000B68 7C 00            [12]  400 	mov	r4,#0x00
      000B6A EB               [12]  401 	mov	a,r3
      000B6B 2E               [12]  402 	add	a,r6
      000B6C FB               [12]  403 	mov	r3,a
      000B6D EC               [12]  404 	mov	a,r4
      000B6E 3F               [12]  405 	addc	a,r7
      000B6F FC               [12]  406 	mov	r4,a
      000B70 EB               [12]  407 	mov	a,r3
      000B71 24 0F            [12]  408 	add	a,#_OledFontTable
      000B73 F5 82            [12]  409 	mov	dpl,a
      000B75 EC               [12]  410 	mov	a,r4
      000B76 34 0F            [12]  411 	addc	a,#(_OledFontTable >> 8)
      000B78 F5 83            [12]  412 	mov	dph,a
      000B7A E4               [12]  413 	clr	a
      000B7B 93               [24]  414 	movc	a,@a+dptr
      000B7C F5 82            [12]  415 	mov	dpl,a
      000B7E C0 07            [24]  416 	push	ar7
      000B80 C0 06            [24]  417 	push	ar6
      000B82 C0 05            [24]  418 	push	ar5
      000B84 12 0C 2B         [24]  419 	lcall	_oledSendData
      000B87 D0 05            [24]  420 	pop	ar5
      000B89 D0 06            [24]  421 	pop	ar6
      000B8B D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      000B8D 0D               [12]  424 	inc	r5
      000B8E BD 05 00         [24]  425 	cjne	r5,#0x05,00131$
      000B91                        426 00131$:
      000B91 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:64: oledSendData(0x00); /* Display the data and keep track of cursor */
      000B93 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:66: }
      000B96 02 0C 2B         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      000B99                        441 _OLED_DisplayString:
      000B99 AD 82            [24]  442 	mov	r5,dpl
      000B9B AE 83            [24]  443 	mov	r6,dph
      000B9D AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:83: while (*ptr)
      000B9F                        446 00101$:
      000B9F 8D 82            [24]  447 	mov	dpl,r5
      000BA1 8E 83            [24]  448 	mov	dph,r6
      000BA3 8F F0            [24]  449 	mov	b,r7
      000BA5 12 0C 54         [24]  450 	lcall	__gptrget
      000BA8 FC               [12]  451 	mov	r4,a
      000BA9 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      000BAB 8C 82            [24]  454 	mov	dpl,r4
      000BAD 0D               [12]  455 	inc	r5
      000BAE BD 00 01         [24]  456 	cjne	r5,#0x00,00120$
      000BB1 0E               [12]  457 	inc	r6
      000BB2                        458 00120$:
      000BB2 C0 07            [24]  459 	push	ar7
      000BB4 C0 06            [24]  460 	push	ar6
      000BB6 C0 05            [24]  461 	push	ar5
      000BB8 12 0B 48         [24]  462 	lcall	_OLED_DisplayChar
      000BBB D0 05            [24]  463 	pop	ar5
      000BBD D0 06            [24]  464 	pop	ar6
      000BBF D0 07            [24]  465 	pop	ar7
      000BC1 80 DC            [24]  466 	sjmp	00101$
      000BC3                        467 00104$:
                                    468 ;	./src/oled_i2c.c:85: }
      000BC3 22               [24]  469 	ret
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
      000BC4                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      000BC4 7F 00            [12]  482 	mov	r7,#0x00
      000BC6                        483 00105$:
                                    484 ;	./src/oled_i2c.c:101: OLED_SetCursor(oled_clean_page, 0);
      000BC6 75 44 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      000BC9 8F 82            [24]  486 	mov	dpl,r7
      000BCB C0 07            [24]  487 	push	ar7
      000BCD 12 0B EF         [24]  488 	lcall	_OLED_SetCursor
      000BD0 D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      000BD2 7E 00            [12]  491 	mov	r6,#0x00
      000BD4                        492 00103$:
                                    493 ;	./src/oled_i2c.c:104: oledSendData(0);
      000BD4 75 82 00         [24]  494 	mov	dpl,#0x00
      000BD7 C0 07            [24]  495 	push	ar7
      000BD9 C0 06            [24]  496 	push	ar6
      000BDB 12 0C 2B         [24]  497 	lcall	_oledSendData
      000BDE D0 06            [24]  498 	pop	ar6
      000BE0 D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      000BE2 0E               [12]  501 	inc	r6
      000BE3 BE 80 00         [24]  502 	cjne	r6,#0x80,00129$
      000BE6                        503 00129$:
      000BE6 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      000BE8 0F               [12]  506 	inc	r7
      000BE9 BF 08 00         [24]  507 	cjne	r7,#0x08,00131$
      000BEC                        508 00131$:
      000BEC 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:107: }
      000BEE 22               [24]  511 	ret
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
      000BEF                        522 _OLED_SetCursor:
      000BEF AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:126: cursorPosition = cursorPosition + 2;
      000BF1 AE 44            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      000BF3 74 02            [12]  526 	mov	a,#0x02
      000BF5 2E               [12]  527 	add	a,r6
      000BF6 F5 44            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:127: oledSendCommand(0x0f & cursorPosition);        // Select SEG lower 4 bits
      000BF8 AE 44            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      000BFA 74 0F            [12]  531 	mov	a,#0x0f
      000BFC 5E               [12]  532 	anl	a,r6
      000BFD F5 82            [12]  533 	mov	dpl,a
      000BFF C0 07            [24]  534 	push	ar7
      000C01 C0 06            [24]  535 	push	ar6
      000C03 12 0C 1F         [24]  536 	lcall	_oledSendCommand
      000C06 D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:128: oledSendCommand(0x10 | (cursorPosition >> 4)); // Select SEG higher 4 bits
      000C08 EE               [12]  539 	mov	a,r6
      000C09 C4               [12]  540 	swap	a
      000C0A 54 0F            [12]  541 	anl	a,#0x0f
      000C0C FE               [12]  542 	mov	r6,a
      000C0D 74 10            [12]  543 	mov	a,#0x10
      000C0F 4E               [12]  544 	orl	a,r6
      000C10 F5 82            [12]  545 	mov	dpl,a
      000C12 12 0C 1F         [24]  546 	lcall	_oledSendCommand
      000C15 D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:129: oledSendCommand(0xb0 | lineNumber);            // Select PAGE
      000C17 74 B0            [12]  549 	mov	a,#0xb0
      000C19 4F               [12]  550 	orl	a,r7
      000C1A F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:130: }
      000C1C 02 0C 1F         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:135: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      000C1F                        563 _oledSendCommand:
      000C1F 85 82 09         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:137: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      000C22 75 08 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      000C25 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:138: }
      000C28 02 01 AD         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:140: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      000C2B                        579 _oledSendData:
      000C2B 85 82 09         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:142: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      000C2E 75 08 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      000C31 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:143: }
      000C34 02 01 AD         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      000F0F                        588 _OledFontTable:
      000F0F 00                     589 	.db #0x00	; 0
      000F10 00                     590 	.db #0x00	; 0
      000F11 00                     591 	.db #0x00	; 0
      000F12 00                     592 	.db #0x00	; 0
      000F13 00                     593 	.db #0x00	; 0
      000F14 00                     594 	.db #0x00	; 0
      000F15 00                     595 	.db #0x00	; 0
      000F16 2F                     596 	.db #0x2f	; 47
      000F17 00                     597 	.db #0x00	; 0
      000F18 00                     598 	.db #0x00	; 0
      000F19 00                     599 	.db #0x00	; 0
      000F1A 07                     600 	.db #0x07	; 7
      000F1B 00                     601 	.db #0x00	; 0
      000F1C 07                     602 	.db #0x07	; 7
      000F1D 00                     603 	.db #0x00	; 0
      000F1E 14                     604 	.db #0x14	; 20
      000F1F 7F                     605 	.db #0x7f	; 127
      000F20 14                     606 	.db #0x14	; 20
      000F21 7F                     607 	.db #0x7f	; 127
      000F22 14                     608 	.db #0x14	; 20
      000F23 24                     609 	.db #0x24	; 36
      000F24 2A                     610 	.db #0x2a	; 42
      000F25 7F                     611 	.db #0x7f	; 127
      000F26 2A                     612 	.db #0x2a	; 42
      000F27 12                     613 	.db #0x12	; 18
      000F28 23                     614 	.db #0x23	; 35
      000F29 13                     615 	.db #0x13	; 19
      000F2A 08                     616 	.db #0x08	; 8
      000F2B 64                     617 	.db #0x64	; 100	'd'
      000F2C 62                     618 	.db #0x62	; 98	'b'
      000F2D 36                     619 	.db #0x36	; 54	'6'
      000F2E 49                     620 	.db #0x49	; 73	'I'
      000F2F 55                     621 	.db #0x55	; 85	'U'
      000F30 22                     622 	.db #0x22	; 34
      000F31 50                     623 	.db #0x50	; 80	'P'
      000F32 00                     624 	.db #0x00	; 0
      000F33 05                     625 	.db #0x05	; 5
      000F34 03                     626 	.db #0x03	; 3
      000F35 00                     627 	.db #0x00	; 0
      000F36 00                     628 	.db #0x00	; 0
      000F37 00                     629 	.db #0x00	; 0
      000F38 1C                     630 	.db #0x1c	; 28
      000F39 22                     631 	.db #0x22	; 34
      000F3A 41                     632 	.db #0x41	; 65	'A'
      000F3B 00                     633 	.db #0x00	; 0
      000F3C 00                     634 	.db #0x00	; 0
      000F3D 41                     635 	.db #0x41	; 65	'A'
      000F3E 22                     636 	.db #0x22	; 34
      000F3F 1C                     637 	.db #0x1c	; 28
      000F40 00                     638 	.db #0x00	; 0
      000F41 14                     639 	.db #0x14	; 20
      000F42 08                     640 	.db #0x08	; 8
      000F43 3E                     641 	.db #0x3e	; 62
      000F44 08                     642 	.db #0x08	; 8
      000F45 14                     643 	.db #0x14	; 20
      000F46 08                     644 	.db #0x08	; 8
      000F47 08                     645 	.db #0x08	; 8
      000F48 3E                     646 	.db #0x3e	; 62
      000F49 08                     647 	.db #0x08	; 8
      000F4A 08                     648 	.db #0x08	; 8
      000F4B 00                     649 	.db #0x00	; 0
      000F4C 00                     650 	.db #0x00	; 0
      000F4D A0                     651 	.db #0xa0	; 160
      000F4E 60                     652 	.db #0x60	; 96
      000F4F 00                     653 	.db #0x00	; 0
      000F50 08                     654 	.db #0x08	; 8
      000F51 08                     655 	.db #0x08	; 8
      000F52 08                     656 	.db #0x08	; 8
      000F53 08                     657 	.db #0x08	; 8
      000F54 08                     658 	.db #0x08	; 8
      000F55 00                     659 	.db #0x00	; 0
      000F56 60                     660 	.db #0x60	; 96
      000F57 60                     661 	.db #0x60	; 96
      000F58 00                     662 	.db #0x00	; 0
      000F59 00                     663 	.db #0x00	; 0
      000F5A 20                     664 	.db #0x20	; 32
      000F5B 10                     665 	.db #0x10	; 16
      000F5C 08                     666 	.db #0x08	; 8
      000F5D 04                     667 	.db #0x04	; 4
      000F5E 02                     668 	.db #0x02	; 2
      000F5F 3E                     669 	.db #0x3e	; 62
      000F60 51                     670 	.db #0x51	; 81	'Q'
      000F61 49                     671 	.db #0x49	; 73	'I'
      000F62 45                     672 	.db #0x45	; 69	'E'
      000F63 3E                     673 	.db #0x3e	; 62
      000F64 00                     674 	.db #0x00	; 0
      000F65 42                     675 	.db #0x42	; 66	'B'
      000F66 7F                     676 	.db #0x7f	; 127
      000F67 40                     677 	.db #0x40	; 64
      000F68 00                     678 	.db #0x00	; 0
      000F69 42                     679 	.db #0x42	; 66	'B'
      000F6A 61                     680 	.db #0x61	; 97	'a'
      000F6B 51                     681 	.db #0x51	; 81	'Q'
      000F6C 49                     682 	.db #0x49	; 73	'I'
      000F6D 46                     683 	.db #0x46	; 70	'F'
      000F6E 21                     684 	.db #0x21	; 33
      000F6F 41                     685 	.db #0x41	; 65	'A'
      000F70 45                     686 	.db #0x45	; 69	'E'
      000F71 4B                     687 	.db #0x4b	; 75	'K'
      000F72 31                     688 	.db #0x31	; 49	'1'
      000F73 18                     689 	.db #0x18	; 24
      000F74 14                     690 	.db #0x14	; 20
      000F75 12                     691 	.db #0x12	; 18
      000F76 7F                     692 	.db #0x7f	; 127
      000F77 10                     693 	.db #0x10	; 16
      000F78 27                     694 	.db #0x27	; 39
      000F79 45                     695 	.db #0x45	; 69	'E'
      000F7A 45                     696 	.db #0x45	; 69	'E'
      000F7B 45                     697 	.db #0x45	; 69	'E'
      000F7C 39                     698 	.db #0x39	; 57	'9'
      000F7D 3C                     699 	.db #0x3c	; 60
      000F7E 4A                     700 	.db #0x4a	; 74	'J'
      000F7F 49                     701 	.db #0x49	; 73	'I'
      000F80 49                     702 	.db #0x49	; 73	'I'
      000F81 30                     703 	.db #0x30	; 48	'0'
      000F82 01                     704 	.db #0x01	; 1
      000F83 71                     705 	.db #0x71	; 113	'q'
      000F84 09                     706 	.db #0x09	; 9
      000F85 05                     707 	.db #0x05	; 5
      000F86 03                     708 	.db #0x03	; 3
      000F87 36                     709 	.db #0x36	; 54	'6'
      000F88 49                     710 	.db #0x49	; 73	'I'
      000F89 49                     711 	.db #0x49	; 73	'I'
      000F8A 49                     712 	.db #0x49	; 73	'I'
      000F8B 36                     713 	.db #0x36	; 54	'6'
      000F8C 06                     714 	.db #0x06	; 6
      000F8D 49                     715 	.db #0x49	; 73	'I'
      000F8E 49                     716 	.db #0x49	; 73	'I'
      000F8F 29                     717 	.db #0x29	; 41
      000F90 1E                     718 	.db #0x1e	; 30
      000F91 00                     719 	.db #0x00	; 0
      000F92 36                     720 	.db #0x36	; 54	'6'
      000F93 36                     721 	.db #0x36	; 54	'6'
      000F94 00                     722 	.db #0x00	; 0
      000F95 00                     723 	.db #0x00	; 0
      000F96 00                     724 	.db #0x00	; 0
      000F97 56                     725 	.db #0x56	; 86	'V'
      000F98 36                     726 	.db #0x36	; 54	'6'
      000F99 00                     727 	.db #0x00	; 0
      000F9A 00                     728 	.db #0x00	; 0
      000F9B 08                     729 	.db #0x08	; 8
      000F9C 14                     730 	.db #0x14	; 20
      000F9D 22                     731 	.db #0x22	; 34
      000F9E 41                     732 	.db #0x41	; 65	'A'
      000F9F 00                     733 	.db #0x00	; 0
      000FA0 14                     734 	.db #0x14	; 20
      000FA1 14                     735 	.db #0x14	; 20
      000FA2 14                     736 	.db #0x14	; 20
      000FA3 14                     737 	.db #0x14	; 20
      000FA4 14                     738 	.db #0x14	; 20
      000FA5 00                     739 	.db #0x00	; 0
      000FA6 41                     740 	.db #0x41	; 65	'A'
      000FA7 22                     741 	.db #0x22	; 34
      000FA8 14                     742 	.db #0x14	; 20
      000FA9 08                     743 	.db #0x08	; 8
      000FAA 02                     744 	.db #0x02	; 2
      000FAB 01                     745 	.db #0x01	; 1
      000FAC 51                     746 	.db #0x51	; 81	'Q'
      000FAD 09                     747 	.db #0x09	; 9
      000FAE 06                     748 	.db #0x06	; 6
      000FAF 32                     749 	.db #0x32	; 50	'2'
      000FB0 49                     750 	.db #0x49	; 73	'I'
      000FB1 59                     751 	.db #0x59	; 89	'Y'
      000FB2 51                     752 	.db #0x51	; 81	'Q'
      000FB3 3E                     753 	.db #0x3e	; 62
      000FB4 7C                     754 	.db #0x7c	; 124
      000FB5 12                     755 	.db #0x12	; 18
      000FB6 11                     756 	.db #0x11	; 17
      000FB7 12                     757 	.db #0x12	; 18
      000FB8 7C                     758 	.db #0x7c	; 124
      000FB9 7F                     759 	.db #0x7f	; 127
      000FBA 49                     760 	.db #0x49	; 73	'I'
      000FBB 49                     761 	.db #0x49	; 73	'I'
      000FBC 49                     762 	.db #0x49	; 73	'I'
      000FBD 36                     763 	.db #0x36	; 54	'6'
      000FBE 3E                     764 	.db #0x3e	; 62
      000FBF 41                     765 	.db #0x41	; 65	'A'
      000FC0 41                     766 	.db #0x41	; 65	'A'
      000FC1 41                     767 	.db #0x41	; 65	'A'
      000FC2 22                     768 	.db #0x22	; 34
      000FC3 7F                     769 	.db #0x7f	; 127
      000FC4 41                     770 	.db #0x41	; 65	'A'
      000FC5 41                     771 	.db #0x41	; 65	'A'
      000FC6 22                     772 	.db #0x22	; 34
      000FC7 1C                     773 	.db #0x1c	; 28
      000FC8 7F                     774 	.db #0x7f	; 127
      000FC9 49                     775 	.db #0x49	; 73	'I'
      000FCA 49                     776 	.db #0x49	; 73	'I'
      000FCB 49                     777 	.db #0x49	; 73	'I'
      000FCC 41                     778 	.db #0x41	; 65	'A'
      000FCD 7F                     779 	.db #0x7f	; 127
      000FCE 09                     780 	.db #0x09	; 9
      000FCF 09                     781 	.db #0x09	; 9
      000FD0 09                     782 	.db #0x09	; 9
      000FD1 01                     783 	.db #0x01	; 1
      000FD2 3E                     784 	.db #0x3e	; 62
      000FD3 41                     785 	.db #0x41	; 65	'A'
      000FD4 49                     786 	.db #0x49	; 73	'I'
      000FD5 49                     787 	.db #0x49	; 73	'I'
      000FD6 7A                     788 	.db #0x7a	; 122	'z'
      000FD7 7F                     789 	.db #0x7f	; 127
      000FD8 08                     790 	.db #0x08	; 8
      000FD9 08                     791 	.db #0x08	; 8
      000FDA 08                     792 	.db #0x08	; 8
      000FDB 7F                     793 	.db #0x7f	; 127
      000FDC 00                     794 	.db #0x00	; 0
      000FDD 41                     795 	.db #0x41	; 65	'A'
      000FDE 7F                     796 	.db #0x7f	; 127
      000FDF 41                     797 	.db #0x41	; 65	'A'
      000FE0 00                     798 	.db #0x00	; 0
      000FE1 20                     799 	.db #0x20	; 32
      000FE2 40                     800 	.db #0x40	; 64
      000FE3 41                     801 	.db #0x41	; 65	'A'
      000FE4 3F                     802 	.db #0x3f	; 63
      000FE5 01                     803 	.db #0x01	; 1
      000FE6 7F                     804 	.db #0x7f	; 127
      000FE7 08                     805 	.db #0x08	; 8
      000FE8 14                     806 	.db #0x14	; 20
      000FE9 22                     807 	.db #0x22	; 34
      000FEA 41                     808 	.db #0x41	; 65	'A'
      000FEB 7F                     809 	.db #0x7f	; 127
      000FEC 40                     810 	.db #0x40	; 64
      000FED 40                     811 	.db #0x40	; 64
      000FEE 40                     812 	.db #0x40	; 64
      000FEF 40                     813 	.db #0x40	; 64
      000FF0 7F                     814 	.db #0x7f	; 127
      000FF1 02                     815 	.db #0x02	; 2
      000FF2 0C                     816 	.db #0x0c	; 12
      000FF3 02                     817 	.db #0x02	; 2
      000FF4 7F                     818 	.db #0x7f	; 127
      000FF5 7F                     819 	.db #0x7f	; 127
      000FF6 04                     820 	.db #0x04	; 4
      000FF7 08                     821 	.db #0x08	; 8
      000FF8 10                     822 	.db #0x10	; 16
      000FF9 7F                     823 	.db #0x7f	; 127
      000FFA 3E                     824 	.db #0x3e	; 62
      000FFB 41                     825 	.db #0x41	; 65	'A'
      000FFC 41                     826 	.db #0x41	; 65	'A'
      000FFD 41                     827 	.db #0x41	; 65	'A'
      000FFE 3E                     828 	.db #0x3e	; 62
      000FFF 7F                     829 	.db #0x7f	; 127
      001000 09                     830 	.db #0x09	; 9
      001001 09                     831 	.db #0x09	; 9
      001002 09                     832 	.db #0x09	; 9
      001003 06                     833 	.db #0x06	; 6
      001004 3E                     834 	.db #0x3e	; 62
      001005 41                     835 	.db #0x41	; 65	'A'
      001006 51                     836 	.db #0x51	; 81	'Q'
      001007 21                     837 	.db #0x21	; 33
      001008 5E                     838 	.db #0x5e	; 94
      001009 7F                     839 	.db #0x7f	; 127
      00100A 09                     840 	.db #0x09	; 9
      00100B 19                     841 	.db #0x19	; 25
      00100C 29                     842 	.db #0x29	; 41
      00100D 46                     843 	.db #0x46	; 70	'F'
      00100E 46                     844 	.db #0x46	; 70	'F'
      00100F 49                     845 	.db #0x49	; 73	'I'
      001010 49                     846 	.db #0x49	; 73	'I'
      001011 49                     847 	.db #0x49	; 73	'I'
      001012 31                     848 	.db #0x31	; 49	'1'
      001013 01                     849 	.db #0x01	; 1
      001014 01                     850 	.db #0x01	; 1
      001015 7F                     851 	.db #0x7f	; 127
      001016 01                     852 	.db #0x01	; 1
      001017 01                     853 	.db #0x01	; 1
      001018 3F                     854 	.db #0x3f	; 63
      001019 40                     855 	.db #0x40	; 64
      00101A 40                     856 	.db #0x40	; 64
      00101B 40                     857 	.db #0x40	; 64
      00101C 3F                     858 	.db #0x3f	; 63
      00101D 1F                     859 	.db #0x1f	; 31
      00101E 20                     860 	.db #0x20	; 32
      00101F 40                     861 	.db #0x40	; 64
      001020 20                     862 	.db #0x20	; 32
      001021 1F                     863 	.db #0x1f	; 31
      001022 3F                     864 	.db #0x3f	; 63
      001023 40                     865 	.db #0x40	; 64
      001024 38                     866 	.db #0x38	; 56	'8'
      001025 40                     867 	.db #0x40	; 64
      001026 3F                     868 	.db #0x3f	; 63
      001027 63                     869 	.db #0x63	; 99	'c'
      001028 14                     870 	.db #0x14	; 20
      001029 08                     871 	.db #0x08	; 8
      00102A 14                     872 	.db #0x14	; 20
      00102B 63                     873 	.db #0x63	; 99	'c'
      00102C 07                     874 	.db #0x07	; 7
      00102D 08                     875 	.db #0x08	; 8
      00102E 70                     876 	.db #0x70	; 112	'p'
      00102F 08                     877 	.db #0x08	; 8
      001030 07                     878 	.db #0x07	; 7
      001031 61                     879 	.db #0x61	; 97	'a'
      001032 51                     880 	.db #0x51	; 81	'Q'
      001033 49                     881 	.db #0x49	; 73	'I'
      001034 45                     882 	.db #0x45	; 69	'E'
      001035 43                     883 	.db #0x43	; 67	'C'
      001036 00                     884 	.db #0x00	; 0
      001037 7F                     885 	.db #0x7f	; 127
      001038 41                     886 	.db #0x41	; 65	'A'
      001039 41                     887 	.db #0x41	; 65	'A'
      00103A 00                     888 	.db #0x00	; 0
      00103B 55                     889 	.db #0x55	; 85	'U'
      00103C AA                     890 	.db #0xaa	; 170
      00103D 55                     891 	.db #0x55	; 85	'U'
      00103E AA                     892 	.db #0xaa	; 170
      00103F 55                     893 	.db #0x55	; 85	'U'
      001040 00                     894 	.db #0x00	; 0
      001041 41                     895 	.db #0x41	; 65	'A'
      001042 41                     896 	.db #0x41	; 65	'A'
      001043 7F                     897 	.db #0x7f	; 127
      001044 00                     898 	.db #0x00	; 0
      001045 04                     899 	.db #0x04	; 4
      001046 02                     900 	.db #0x02	; 2
      001047 01                     901 	.db #0x01	; 1
      001048 02                     902 	.db #0x02	; 2
      001049 04                     903 	.db #0x04	; 4
      00104A 40                     904 	.db #0x40	; 64
      00104B 40                     905 	.db #0x40	; 64
      00104C 40                     906 	.db #0x40	; 64
      00104D 40                     907 	.db #0x40	; 64
      00104E 40                     908 	.db #0x40	; 64
      00104F 00                     909 	.db #0x00	; 0
      001050 03                     910 	.db #0x03	; 3
      001051 05                     911 	.db #0x05	; 5
      001052 00                     912 	.db #0x00	; 0
      001053 00                     913 	.db #0x00	; 0
      001054 20                     914 	.db #0x20	; 32
      001055 54                     915 	.db #0x54	; 84	'T'
      001056 54                     916 	.db #0x54	; 84	'T'
      001057 54                     917 	.db #0x54	; 84	'T'
      001058 78                     918 	.db #0x78	; 120	'x'
      001059 7F                     919 	.db #0x7f	; 127
      00105A 48                     920 	.db #0x48	; 72	'H'
      00105B 44                     921 	.db #0x44	; 68	'D'
      00105C 44                     922 	.db #0x44	; 68	'D'
      00105D 38                     923 	.db #0x38	; 56	'8'
      00105E 38                     924 	.db #0x38	; 56	'8'
      00105F 44                     925 	.db #0x44	; 68	'D'
      001060 44                     926 	.db #0x44	; 68	'D'
      001061 44                     927 	.db #0x44	; 68	'D'
      001062 20                     928 	.db #0x20	; 32
      001063 38                     929 	.db #0x38	; 56	'8'
      001064 44                     930 	.db #0x44	; 68	'D'
      001065 44                     931 	.db #0x44	; 68	'D'
      001066 48                     932 	.db #0x48	; 72	'H'
      001067 7F                     933 	.db #0x7f	; 127
      001068 38                     934 	.db #0x38	; 56	'8'
      001069 54                     935 	.db #0x54	; 84	'T'
      00106A 54                     936 	.db #0x54	; 84	'T'
      00106B 54                     937 	.db #0x54	; 84	'T'
      00106C 18                     938 	.db #0x18	; 24
      00106D 08                     939 	.db #0x08	; 8
      00106E 7E                     940 	.db #0x7e	; 126
      00106F 09                     941 	.db #0x09	; 9
      001070 01                     942 	.db #0x01	; 1
      001071 02                     943 	.db #0x02	; 2
      001072 18                     944 	.db #0x18	; 24
      001073 A4                     945 	.db #0xa4	; 164
      001074 A4                     946 	.db #0xa4	; 164
      001075 A4                     947 	.db #0xa4	; 164
      001076 7C                     948 	.db #0x7c	; 124
      001077 7F                     949 	.db #0x7f	; 127
      001078 08                     950 	.db #0x08	; 8
      001079 04                     951 	.db #0x04	; 4
      00107A 04                     952 	.db #0x04	; 4
      00107B 78                     953 	.db #0x78	; 120	'x'
      00107C 00                     954 	.db #0x00	; 0
      00107D 44                     955 	.db #0x44	; 68	'D'
      00107E 7D                     956 	.db #0x7d	; 125
      00107F 40                     957 	.db #0x40	; 64
      001080 00                     958 	.db #0x00	; 0
      001081 40                     959 	.db #0x40	; 64
      001082 80                     960 	.db #0x80	; 128
      001083 84                     961 	.db #0x84	; 132
      001084 7D                     962 	.db #0x7d	; 125
      001085 00                     963 	.db #0x00	; 0
      001086 7F                     964 	.db #0x7f	; 127
      001087 10                     965 	.db #0x10	; 16
      001088 28                     966 	.db #0x28	; 40
      001089 44                     967 	.db #0x44	; 68	'D'
      00108A 00                     968 	.db #0x00	; 0
      00108B 00                     969 	.db #0x00	; 0
      00108C 41                     970 	.db #0x41	; 65	'A'
      00108D 7F                     971 	.db #0x7f	; 127
      00108E 40                     972 	.db #0x40	; 64
      00108F 00                     973 	.db #0x00	; 0
      001090 7C                     974 	.db #0x7c	; 124
      001091 04                     975 	.db #0x04	; 4
      001092 18                     976 	.db #0x18	; 24
      001093 04                     977 	.db #0x04	; 4
      001094 78                     978 	.db #0x78	; 120	'x'
      001095 7C                     979 	.db #0x7c	; 124
      001096 08                     980 	.db #0x08	; 8
      001097 04                     981 	.db #0x04	; 4
      001098 04                     982 	.db #0x04	; 4
      001099 78                     983 	.db #0x78	; 120	'x'
      00109A 38                     984 	.db #0x38	; 56	'8'
      00109B 44                     985 	.db #0x44	; 68	'D'
      00109C 44                     986 	.db #0x44	; 68	'D'
      00109D 44                     987 	.db #0x44	; 68	'D'
      00109E 38                     988 	.db #0x38	; 56	'8'
      00109F FC                     989 	.db #0xfc	; 252
      0010A0 24                     990 	.db #0x24	; 36
      0010A1 24                     991 	.db #0x24	; 36
      0010A2 24                     992 	.db #0x24	; 36
      0010A3 18                     993 	.db #0x18	; 24
      0010A4 18                     994 	.db #0x18	; 24
      0010A5 24                     995 	.db #0x24	; 36
      0010A6 24                     996 	.db #0x24	; 36
      0010A7 18                     997 	.db #0x18	; 24
      0010A8 FC                     998 	.db #0xfc	; 252
      0010A9 7C                     999 	.db #0x7c	; 124
      0010AA 08                    1000 	.db #0x08	; 8
      0010AB 04                    1001 	.db #0x04	; 4
      0010AC 04                    1002 	.db #0x04	; 4
      0010AD 08                    1003 	.db #0x08	; 8
      0010AE 48                    1004 	.db #0x48	; 72	'H'
      0010AF 54                    1005 	.db #0x54	; 84	'T'
      0010B0 54                    1006 	.db #0x54	; 84	'T'
      0010B1 54                    1007 	.db #0x54	; 84	'T'
      0010B2 20                    1008 	.db #0x20	; 32
      0010B3 04                    1009 	.db #0x04	; 4
      0010B4 3F                    1010 	.db #0x3f	; 63
      0010B5 44                    1011 	.db #0x44	; 68	'D'
      0010B6 40                    1012 	.db #0x40	; 64
      0010B7 20                    1013 	.db #0x20	; 32
      0010B8 3C                    1014 	.db #0x3c	; 60
      0010B9 40                    1015 	.db #0x40	; 64
      0010BA 40                    1016 	.db #0x40	; 64
      0010BB 20                    1017 	.db #0x20	; 32
      0010BC 7C                    1018 	.db #0x7c	; 124
      0010BD 1C                    1019 	.db #0x1c	; 28
      0010BE 20                    1020 	.db #0x20	; 32
      0010BF 40                    1021 	.db #0x40	; 64
      0010C0 20                    1022 	.db #0x20	; 32
      0010C1 1C                    1023 	.db #0x1c	; 28
      0010C2 3C                    1024 	.db #0x3c	; 60
      0010C3 40                    1025 	.db #0x40	; 64
      0010C4 30                    1026 	.db #0x30	; 48	'0'
      0010C5 40                    1027 	.db #0x40	; 64
      0010C6 3C                    1028 	.db #0x3c	; 60
      0010C7 44                    1029 	.db #0x44	; 68	'D'
      0010C8 28                    1030 	.db #0x28	; 40
      0010C9 10                    1031 	.db #0x10	; 16
      0010CA 28                    1032 	.db #0x28	; 40
      0010CB 44                    1033 	.db #0x44	; 68	'D'
      0010CC 1C                    1034 	.db #0x1c	; 28
      0010CD A0                    1035 	.db #0xa0	; 160
      0010CE A0                    1036 	.db #0xa0	; 160
      0010CF A0                    1037 	.db #0xa0	; 160
      0010D0 7C                    1038 	.db #0x7c	; 124
      0010D1 44                    1039 	.db #0x44	; 68	'D'
      0010D2 64                    1040 	.db #0x64	; 100	'd'
      0010D3 54                    1041 	.db #0x54	; 84	'T'
      0010D4 4C                    1042 	.db #0x4c	; 76	'L'
      0010D5 44                    1043 	.db #0x44	; 68	'D'
      0010D6 00                    1044 	.db #0x00	; 0
      0010D7 10                    1045 	.db #0x10	; 16
      0010D8 7C                    1046 	.db #0x7c	; 124
      0010D9 82                    1047 	.db #0x82	; 130
      0010DA 00                    1048 	.db #0x00	; 0
      0010DB 00                    1049 	.db #0x00	; 0
      0010DC 00                    1050 	.db #0x00	; 0
      0010DD FF                    1051 	.db #0xff	; 255
      0010DE 00                    1052 	.db #0x00	; 0
      0010DF 00                    1053 	.db #0x00	; 0
      0010E0 00                    1054 	.db #0x00	; 0
      0010E1 82                    1055 	.db #0x82	; 130
      0010E2 7C                    1056 	.db #0x7c	; 124
      0010E3 10                    1057 	.db #0x10	; 16
      0010E4 00                    1058 	.db #0x00	; 0
      0010E5 00                    1059 	.db #0x00	; 0
      0010E6 06                    1060 	.db #0x06	; 6
      0010E7 09                    1061 	.db #0x09	; 9
      0010E8 09                    1062 	.db #0x09	; 9
      0010E9 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
