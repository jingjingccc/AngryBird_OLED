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
      00000B                        232 _OLED_SetCursor_PARM_2:
      00000B                        233 	.ds 1
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
      000F86                        299 _OLED_Init:
                           000007   300 	ar7 = 0x07
                           000006   301 	ar6 = 0x06
                           000005   302 	ar5 = 0x05
                           000004   303 	ar4 = 0x04
                           000003   304 	ar3 = 0x03
                           000002   305 	ar2 = 0x02
                           000001   306 	ar1 = 0x01
                           000000   307 	ar0 = 0x00
                                    308 ;	./src/oled_i2c.c:19: oledSendCommand(0xa8); // Set MUX Ratio
      000F86 75 82 A8         [24]  309 	mov	dpl,#0xa8
      000F89 12 10 CC         [24]  310 	lcall	_oledSendCommand
                                    311 ;	./src/oled_i2c.c:20: oledSendCommand(0x3f);
      000F8C 75 82 3F         [24]  312 	mov	dpl,#0x3f
      000F8F 12 10 CC         [24]  313 	lcall	_oledSendCommand
                                    314 ;	./src/oled_i2c.c:21: oledSendCommand(0xd3); // Set Display Offset
      000F92 75 82 D3         [24]  315 	mov	dpl,#0xd3
      000F95 12 10 CC         [24]  316 	lcall	_oledSendCommand
                                    317 ;	./src/oled_i2c.c:22: oledSendCommand(0x00);
      000F98 75 82 00         [24]  318 	mov	dpl,#0x00
      000F9B 12 10 CC         [24]  319 	lcall	_oledSendCommand
                                    320 ;	./src/oled_i2c.c:23: oledSendCommand(0x40); // Set Display Start Line
      000F9E 75 82 40         [24]  321 	mov	dpl,#0x40
      000FA1 12 10 CC         [24]  322 	lcall	_oledSendCommand
                                    323 ;	./src/oled_i2c.c:24: oledSendCommand(0xa1); // Set Segment re-map A0h/A1h
      000FA4 75 82 A1         [24]  324 	mov	dpl,#0xa1
      000FA7 12 10 CC         [24]  325 	lcall	_oledSendCommand
                                    326 ;	./src/oled_i2c.c:25: oledSendCommand(0xc8); // Set COM OUTput
      000FAA 75 82 C8         [24]  327 	mov	dpl,#0xc8
      000FAD 12 10 CC         [24]  328 	lcall	_oledSendCommand
                                    329 ;	./src/oled_i2c.c:26: oledSendCommand(0xda);
      000FB0 75 82 DA         [24]  330 	mov	dpl,#0xda
      000FB3 12 10 CC         [24]  331 	lcall	_oledSendCommand
                                    332 ;	./src/oled_i2c.c:27: oledSendCommand(0x12);
      000FB6 75 82 12         [24]  333 	mov	dpl,#0x12
      000FB9 12 10 CC         [24]  334 	lcall	_oledSendCommand
                                    335 ;	./src/oled_i2c.c:28: oledSendCommand(0x81);
      000FBC 75 82 81         [24]  336 	mov	dpl,#0x81
      000FBF 12 10 CC         [24]  337 	lcall	_oledSendCommand
                                    338 ;	./src/oled_i2c.c:29: oledSendCommand(0x7f);
      000FC2 75 82 7F         [24]  339 	mov	dpl,#0x7f
      000FC5 12 10 CC         [24]  340 	lcall	_oledSendCommand
                                    341 ;	./src/oled_i2c.c:30: oledSendCommand(0xa4);
      000FC8 75 82 A4         [24]  342 	mov	dpl,#0xa4
      000FCB 12 10 CC         [24]  343 	lcall	_oledSendCommand
                                    344 ;	./src/oled_i2c.c:31: oledSendCommand(0xa6);
      000FCE 75 82 A6         [24]  345 	mov	dpl,#0xa6
      000FD1 12 10 CC         [24]  346 	lcall	_oledSendCommand
                                    347 ;	./src/oled_i2c.c:32: oledSendCommand(0xd5);
      000FD4 75 82 D5         [24]  348 	mov	dpl,#0xd5
      000FD7 12 10 CC         [24]  349 	lcall	_oledSendCommand
                                    350 ;	./src/oled_i2c.c:33: oledSendCommand(0x80);
      000FDA 75 82 80         [24]  351 	mov	dpl,#0x80
      000FDD 12 10 CC         [24]  352 	lcall	_oledSendCommand
                                    353 ;	./src/oled_i2c.c:34: oledSendCommand(0x8d);
      000FE0 75 82 8D         [24]  354 	mov	dpl,#0x8d
      000FE3 12 10 CC         [24]  355 	lcall	_oledSendCommand
                                    356 ;	./src/oled_i2c.c:35: oledSendCommand(0x14);
      000FE6 75 82 14         [24]  357 	mov	dpl,#0x14
      000FE9 12 10 CC         [24]  358 	lcall	_oledSendCommand
                                    359 ;	./src/oled_i2c.c:36: oledSendCommand(0xaf);
      000FEC 75 82 AF         [24]  360 	mov	dpl,#0xaf
      000FEF 12 10 CC         [24]  361 	lcall	_oledSendCommand
                                    362 ;	./src/oled_i2c.c:38: OLED_Clear(); // Clear the complete LCD during init
                                    363 ;	./src/oled_i2c.c:39: }
      000FF2 02 10 71         [24]  364 	ljmp	_OLED_Clear
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
      000FF5                        376 _OLED_DisplayChar:
      000FF5 AF 82            [24]  377 	mov	r7,dpl
                                    378 ;	./src/oled_i2c.c:56: if (ch != '\n')
      000FF7 BF 0A 01         [24]  379 	cjne	r7,#0x0a,00130$
      000FFA 22               [24]  380 	ret
      000FFB                        381 00130$:
                                    382 ;	./src/oled_i2c.c:58: index = (ch - 0x20);
      000FFB 7E 00            [12]  383 	mov	r6,#0x00
      000FFD EF               [12]  384 	mov	a,r7
      000FFE 24 E0            [12]  385 	add	a,#0xe0
      001000 F5 0C            [12]  386 	mov	__mulint_PARM_2,a
      001002 EE               [12]  387 	mov	a,r6
      001003 34 FF            [12]  388 	addc	a,#0xff
      001005 F5 0D            [12]  389 	mov	(__mulint_PARM_2 + 1),a
                                    390 ;	./src/oled_i2c.c:59: index = index * 5; // As the lookup table starts from Space(0x20)
                                    391 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      001007 90 00 05         [24]  392 	mov	dptr,#0x0005
      00100A 12 11 F3         [24]  393 	lcall	__mulint
      00100D AE 82            [24]  394 	mov	r6,dpl
      00100F AF 83            [24]  395 	mov	r7,dph
      001011 7D 00            [12]  396 	mov	r5,#0x00
      001013                        397 00104$:
                                    398 ;	./src/oled_i2c.c:62: oledSendData(OledFontTable[index + i]); /* Get the data to be displayed for LookUptable*/
      001013 8D 03            [24]  399 	mov	ar3,r5
      001015 7C 00            [12]  400 	mov	r4,#0x00
      001017 EB               [12]  401 	mov	a,r3
      001018 2E               [12]  402 	add	a,r6
      001019 FB               [12]  403 	mov	r3,a
      00101A EC               [12]  404 	mov	a,r4
      00101B 3F               [12]  405 	addc	a,r7
      00101C FC               [12]  406 	mov	r4,a
      00101D EB               [12]  407 	mov	a,r3
      00101E 24 99            [12]  408 	add	a,#_OledFontTable
      001020 F5 82            [12]  409 	mov	dpl,a
      001022 EC               [12]  410 	mov	a,r4
      001023 34 18            [12]  411 	addc	a,#(_OledFontTable >> 8)
      001025 F5 83            [12]  412 	mov	dph,a
      001027 E4               [12]  413 	clr	a
      001028 93               [24]  414 	movc	a,@a+dptr
      001029 F5 82            [12]  415 	mov	dpl,a
      00102B C0 07            [24]  416 	push	ar7
      00102D C0 06            [24]  417 	push	ar6
      00102F C0 05            [24]  418 	push	ar5
      001031 12 10 D8         [24]  419 	lcall	_oledSendData
      001034 D0 05            [24]  420 	pop	ar5
      001036 D0 06            [24]  421 	pop	ar6
      001038 D0 07            [24]  422 	pop	ar7
                                    423 ;	./src/oled_i2c.c:61: for (i = 0; i < 5; i++)
      00103A 0D               [12]  424 	inc	r5
      00103B BD 05 00         [24]  425 	cjne	r5,#0x05,00131$
      00103E                        426 00131$:
      00103E 40 D3            [24]  427 	jc	00104$
                                    428 ;	./src/oled_i2c.c:64: oledSendData(0x00); /* Display the data and keep track of cursor */
      001040 75 82 00         [24]  429 	mov	dpl,#0x00
                                    430 ;	./src/oled_i2c.c:66: }
      001043 02 10 D8         [24]  431 	ljmp	_oledSendData
                                    432 ;------------------------------------------------------------
                                    433 ;Allocation info for local variables in function 'OLED_DisplayString'
                                    434 ;------------------------------------------------------------
                                    435 ;ptr                       Allocated to registers 
                                    436 ;------------------------------------------------------------
                                    437 ;	./src/oled_i2c.c:81: void OLED_DisplayString(uint8_t *ptr)
                                    438 ;	-----------------------------------------
                                    439 ;	 function OLED_DisplayString
                                    440 ;	-----------------------------------------
      001046                        441 _OLED_DisplayString:
      001046 AD 82            [24]  442 	mov	r5,dpl
      001048 AE 83            [24]  443 	mov	r6,dph
      00104A AF F0            [24]  444 	mov	r7,b
                                    445 ;	./src/oled_i2c.c:83: while (*ptr)
      00104C                        446 00101$:
      00104C 8D 82            [24]  447 	mov	dpl,r5
      00104E 8E 83            [24]  448 	mov	dph,r6
      001050 8F F0            [24]  449 	mov	b,r7
      001052 12 14 64         [24]  450 	lcall	__gptrget
      001055 FC               [12]  451 	mov	r4,a
      001056 60 18            [24]  452 	jz	00104$
                                    453 ;	./src/oled_i2c.c:84: OLED_DisplayChar(*ptr++);
      001058 8C 82            [24]  454 	mov	dpl,r4
      00105A 0D               [12]  455 	inc	r5
      00105B BD 00 01         [24]  456 	cjne	r5,#0x00,00120$
      00105E 0E               [12]  457 	inc	r6
      00105F                        458 00120$:
      00105F C0 07            [24]  459 	push	ar7
      001061 C0 06            [24]  460 	push	ar6
      001063 C0 05            [24]  461 	push	ar5
      001065 12 0F F5         [24]  462 	lcall	_OLED_DisplayChar
      001068 D0 05            [24]  463 	pop	ar5
      00106A D0 06            [24]  464 	pop	ar6
      00106C D0 07            [24]  465 	pop	ar7
      00106E 80 DC            [24]  466 	sjmp	00101$
      001070                        467 00104$:
                                    468 ;	./src/oled_i2c.c:85: }
      001070 22               [24]  469 	ret
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
      001071                        480 _OLED_Clear:
                                    481 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      001071 7F 00            [12]  482 	mov	r7,#0x00
      001073                        483 00105$:
                                    484 ;	./src/oled_i2c.c:101: OLED_SetCursor(oled_clean_page, 0);
      001073 75 0B 00         [24]  485 	mov	_OLED_SetCursor_PARM_2,#0x00
      001076 8F 82            [24]  486 	mov	dpl,r7
      001078 C0 07            [24]  487 	push	ar7
      00107A 12 10 9C         [24]  488 	lcall	_OLED_SetCursor
      00107D D0 07            [24]  489 	pop	ar7
                                    490 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      00107F 7E 00            [12]  491 	mov	r6,#0x00
      001081                        492 00103$:
                                    493 ;	./src/oled_i2c.c:104: oledSendData(0);
      001081 75 82 00         [24]  494 	mov	dpl,#0x00
      001084 C0 07            [24]  495 	push	ar7
      001086 C0 06            [24]  496 	push	ar6
      001088 12 10 D8         [24]  497 	lcall	_oledSendData
      00108B D0 06            [24]  498 	pop	ar6
      00108D D0 07            [24]  499 	pop	ar7
                                    500 ;	./src/oled_i2c.c:102: for (oled_clean_col = 0; oled_clean_col < 128; oled_clean_col++)
      00108F 0E               [12]  501 	inc	r6
      001090 BE 80 00         [24]  502 	cjne	r6,#0x80,00129$
      001093                        503 00129$:
      001093 40 EC            [24]  504 	jc	00103$
                                    505 ;	./src/oled_i2c.c:99: for (oled_clean_page = 0; oled_clean_page < 8; oled_clean_page++)
      001095 0F               [12]  506 	inc	r7
      001096 BF 08 00         [24]  507 	cjne	r7,#0x08,00131$
      001099                        508 00131$:
      001099 40 D8            [24]  509 	jc	00105$
                                    510 ;	./src/oled_i2c.c:107: }
      00109B 22               [24]  511 	ret
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
      00109C                        522 _OLED_SetCursor:
      00109C AF 82            [24]  523 	mov	r7,dpl
                                    524 ;	./src/oled_i2c.c:126: cursorPosition = cursorPosition + 2;
      00109E AE 0B            [24]  525 	mov	r6,_OLED_SetCursor_PARM_2
      0010A0 74 02            [12]  526 	mov	a,#0x02
      0010A2 2E               [12]  527 	add	a,r6
      0010A3 F5 0B            [12]  528 	mov	_OLED_SetCursor_PARM_2,a
                                    529 ;	./src/oled_i2c.c:127: oledSendCommand(0x0f & cursorPosition);        // Select SEG lower 4 bits
      0010A5 AE 0B            [24]  530 	mov	r6,_OLED_SetCursor_PARM_2
      0010A7 74 0F            [12]  531 	mov	a,#0x0f
      0010A9 5E               [12]  532 	anl	a,r6
      0010AA F5 82            [12]  533 	mov	dpl,a
      0010AC C0 07            [24]  534 	push	ar7
      0010AE C0 06            [24]  535 	push	ar6
      0010B0 12 10 CC         [24]  536 	lcall	_oledSendCommand
      0010B3 D0 06            [24]  537 	pop	ar6
                                    538 ;	./src/oled_i2c.c:128: oledSendCommand(0x10 | (cursorPosition >> 4)); // Select SEG higher 4 bits
      0010B5 EE               [12]  539 	mov	a,r6
      0010B6 C4               [12]  540 	swap	a
      0010B7 54 0F            [12]  541 	anl	a,#0x0f
      0010B9 FE               [12]  542 	mov	r6,a
      0010BA 74 10            [12]  543 	mov	a,#0x10
      0010BC 4E               [12]  544 	orl	a,r6
      0010BD F5 82            [12]  545 	mov	dpl,a
      0010BF 12 10 CC         [24]  546 	lcall	_oledSendCommand
      0010C2 D0 07            [24]  547 	pop	ar7
                                    548 ;	./src/oled_i2c.c:129: oledSendCommand(0xb0 | lineNumber);            // Select PAGE
      0010C4 74 B0            [12]  549 	mov	a,#0xb0
      0010C6 4F               [12]  550 	orl	a,r7
      0010C7 F5 82            [12]  551 	mov	dpl,a
                                    552 ;	./src/oled_i2c.c:130: }
      0010C9 02 10 CC         [24]  553 	ljmp	_oledSendCommand
                                    554 ;------------------------------------------------------------
                                    555 ;Allocation info for local variables in function 'oledSendCommand'
                                    556 ;------------------------------------------------------------
                                    557 ;cmd                       Allocated to registers 
                                    558 ;------------------------------------------------------------
                                    559 ;	./src/oled_i2c.c:135: void oledSendCommand(uint8_t cmd)
                                    560 ;	-----------------------------------------
                                    561 ;	 function oledSendCommand
                                    562 ;	-----------------------------------------
      0010CC                        563 _oledSendCommand:
      0010CC 85 82 09         [24]  564 	mov	_Single_WriteI2C_PARM_3,dpl
                                    565 ;	./src/oled_i2c.c:137: Single_WriteI2C(OLED_SlaveAddress, SSD1306_COMMAND, cmd);
      0010CF 75 08 00         [24]  566 	mov	_Single_WriteI2C_PARM_2,#0x00
      0010D2 75 82 78         [24]  567 	mov	dpl,#0x78
                                    568 ;	./src/oled_i2c.c:138: }
      0010D5 02 01 62         [24]  569 	ljmp	_Single_WriteI2C
                                    570 ;------------------------------------------------------------
                                    571 ;Allocation info for local variables in function 'oledSendData'
                                    572 ;------------------------------------------------------------
                                    573 ;cmd                       Allocated to registers 
                                    574 ;------------------------------------------------------------
                                    575 ;	./src/oled_i2c.c:140: void oledSendData(uint8_t cmd)
                                    576 ;	-----------------------------------------
                                    577 ;	 function oledSendData
                                    578 ;	-----------------------------------------
      0010D8                        579 _oledSendData:
      0010D8 85 82 09         [24]  580 	mov	_Single_WriteI2C_PARM_3,dpl
                                    581 ;	./src/oled_i2c.c:142: Single_WriteI2C(OLED_SlaveAddress, SSD1306_DATA_CONTINUE, cmd);
      0010DB 75 08 40         [24]  582 	mov	_Single_WriteI2C_PARM_2,#0x40
      0010DE 75 82 78         [24]  583 	mov	dpl,#0x78
                                    584 ;	./src/oled_i2c.c:143: }
      0010E1 02 01 62         [24]  585 	ljmp	_Single_WriteI2C
                                    586 	.area CSEG    (CODE)
                                    587 	.area CONST   (CODE)
      001899                        588 _OledFontTable:
      001899 00                     589 	.db #0x00	; 0
      00189A 00                     590 	.db #0x00	; 0
      00189B 00                     591 	.db #0x00	; 0
      00189C 00                     592 	.db #0x00	; 0
      00189D 00                     593 	.db #0x00	; 0
      00189E 00                     594 	.db #0x00	; 0
      00189F 00                     595 	.db #0x00	; 0
      0018A0 2F                     596 	.db #0x2f	; 47
      0018A1 00                     597 	.db #0x00	; 0
      0018A2 00                     598 	.db #0x00	; 0
      0018A3 00                     599 	.db #0x00	; 0
      0018A4 07                     600 	.db #0x07	; 7
      0018A5 00                     601 	.db #0x00	; 0
      0018A6 07                     602 	.db #0x07	; 7
      0018A7 00                     603 	.db #0x00	; 0
      0018A8 14                     604 	.db #0x14	; 20
      0018A9 7F                     605 	.db #0x7f	; 127
      0018AA 14                     606 	.db #0x14	; 20
      0018AB 7F                     607 	.db #0x7f	; 127
      0018AC 14                     608 	.db #0x14	; 20
      0018AD 24                     609 	.db #0x24	; 36
      0018AE 2A                     610 	.db #0x2a	; 42
      0018AF 7F                     611 	.db #0x7f	; 127
      0018B0 2A                     612 	.db #0x2a	; 42
      0018B1 12                     613 	.db #0x12	; 18
      0018B2 23                     614 	.db #0x23	; 35
      0018B3 13                     615 	.db #0x13	; 19
      0018B4 08                     616 	.db #0x08	; 8
      0018B5 64                     617 	.db #0x64	; 100	'd'
      0018B6 62                     618 	.db #0x62	; 98	'b'
      0018B7 36                     619 	.db #0x36	; 54	'6'
      0018B8 49                     620 	.db #0x49	; 73	'I'
      0018B9 55                     621 	.db #0x55	; 85	'U'
      0018BA 22                     622 	.db #0x22	; 34
      0018BB 50                     623 	.db #0x50	; 80	'P'
      0018BC 00                     624 	.db #0x00	; 0
      0018BD 05                     625 	.db #0x05	; 5
      0018BE 03                     626 	.db #0x03	; 3
      0018BF 00                     627 	.db #0x00	; 0
      0018C0 00                     628 	.db #0x00	; 0
      0018C1 00                     629 	.db #0x00	; 0
      0018C2 1C                     630 	.db #0x1c	; 28
      0018C3 22                     631 	.db #0x22	; 34
      0018C4 41                     632 	.db #0x41	; 65	'A'
      0018C5 00                     633 	.db #0x00	; 0
      0018C6 00                     634 	.db #0x00	; 0
      0018C7 41                     635 	.db #0x41	; 65	'A'
      0018C8 22                     636 	.db #0x22	; 34
      0018C9 1C                     637 	.db #0x1c	; 28
      0018CA 00                     638 	.db #0x00	; 0
      0018CB 14                     639 	.db #0x14	; 20
      0018CC 08                     640 	.db #0x08	; 8
      0018CD 3E                     641 	.db #0x3e	; 62
      0018CE 08                     642 	.db #0x08	; 8
      0018CF 14                     643 	.db #0x14	; 20
      0018D0 08                     644 	.db #0x08	; 8
      0018D1 08                     645 	.db #0x08	; 8
      0018D2 3E                     646 	.db #0x3e	; 62
      0018D3 08                     647 	.db #0x08	; 8
      0018D4 08                     648 	.db #0x08	; 8
      0018D5 00                     649 	.db #0x00	; 0
      0018D6 00                     650 	.db #0x00	; 0
      0018D7 A0                     651 	.db #0xa0	; 160
      0018D8 60                     652 	.db #0x60	; 96
      0018D9 00                     653 	.db #0x00	; 0
      0018DA 08                     654 	.db #0x08	; 8
      0018DB 08                     655 	.db #0x08	; 8
      0018DC 08                     656 	.db #0x08	; 8
      0018DD 08                     657 	.db #0x08	; 8
      0018DE 08                     658 	.db #0x08	; 8
      0018DF 00                     659 	.db #0x00	; 0
      0018E0 60                     660 	.db #0x60	; 96
      0018E1 60                     661 	.db #0x60	; 96
      0018E2 00                     662 	.db #0x00	; 0
      0018E3 00                     663 	.db #0x00	; 0
      0018E4 20                     664 	.db #0x20	; 32
      0018E5 10                     665 	.db #0x10	; 16
      0018E6 08                     666 	.db #0x08	; 8
      0018E7 04                     667 	.db #0x04	; 4
      0018E8 02                     668 	.db #0x02	; 2
      0018E9 3E                     669 	.db #0x3e	; 62
      0018EA 51                     670 	.db #0x51	; 81	'Q'
      0018EB 49                     671 	.db #0x49	; 73	'I'
      0018EC 45                     672 	.db #0x45	; 69	'E'
      0018ED 3E                     673 	.db #0x3e	; 62
      0018EE 00                     674 	.db #0x00	; 0
      0018EF 42                     675 	.db #0x42	; 66	'B'
      0018F0 7F                     676 	.db #0x7f	; 127
      0018F1 40                     677 	.db #0x40	; 64
      0018F2 00                     678 	.db #0x00	; 0
      0018F3 42                     679 	.db #0x42	; 66	'B'
      0018F4 61                     680 	.db #0x61	; 97	'a'
      0018F5 51                     681 	.db #0x51	; 81	'Q'
      0018F6 49                     682 	.db #0x49	; 73	'I'
      0018F7 46                     683 	.db #0x46	; 70	'F'
      0018F8 21                     684 	.db #0x21	; 33
      0018F9 41                     685 	.db #0x41	; 65	'A'
      0018FA 45                     686 	.db #0x45	; 69	'E'
      0018FB 4B                     687 	.db #0x4b	; 75	'K'
      0018FC 31                     688 	.db #0x31	; 49	'1'
      0018FD 18                     689 	.db #0x18	; 24
      0018FE 14                     690 	.db #0x14	; 20
      0018FF 12                     691 	.db #0x12	; 18
      001900 7F                     692 	.db #0x7f	; 127
      001901 10                     693 	.db #0x10	; 16
      001902 27                     694 	.db #0x27	; 39
      001903 45                     695 	.db #0x45	; 69	'E'
      001904 45                     696 	.db #0x45	; 69	'E'
      001905 45                     697 	.db #0x45	; 69	'E'
      001906 39                     698 	.db #0x39	; 57	'9'
      001907 3C                     699 	.db #0x3c	; 60
      001908 4A                     700 	.db #0x4a	; 74	'J'
      001909 49                     701 	.db #0x49	; 73	'I'
      00190A 49                     702 	.db #0x49	; 73	'I'
      00190B 30                     703 	.db #0x30	; 48	'0'
      00190C 01                     704 	.db #0x01	; 1
      00190D 71                     705 	.db #0x71	; 113	'q'
      00190E 09                     706 	.db #0x09	; 9
      00190F 05                     707 	.db #0x05	; 5
      001910 03                     708 	.db #0x03	; 3
      001911 36                     709 	.db #0x36	; 54	'6'
      001912 49                     710 	.db #0x49	; 73	'I'
      001913 49                     711 	.db #0x49	; 73	'I'
      001914 49                     712 	.db #0x49	; 73	'I'
      001915 36                     713 	.db #0x36	; 54	'6'
      001916 06                     714 	.db #0x06	; 6
      001917 49                     715 	.db #0x49	; 73	'I'
      001918 49                     716 	.db #0x49	; 73	'I'
      001919 29                     717 	.db #0x29	; 41
      00191A 1E                     718 	.db #0x1e	; 30
      00191B 00                     719 	.db #0x00	; 0
      00191C 36                     720 	.db #0x36	; 54	'6'
      00191D 36                     721 	.db #0x36	; 54	'6'
      00191E 00                     722 	.db #0x00	; 0
      00191F 00                     723 	.db #0x00	; 0
      001920 00                     724 	.db #0x00	; 0
      001921 56                     725 	.db #0x56	; 86	'V'
      001922 36                     726 	.db #0x36	; 54	'6'
      001923 00                     727 	.db #0x00	; 0
      001924 00                     728 	.db #0x00	; 0
      001925 08                     729 	.db #0x08	; 8
      001926 14                     730 	.db #0x14	; 20
      001927 22                     731 	.db #0x22	; 34
      001928 41                     732 	.db #0x41	; 65	'A'
      001929 00                     733 	.db #0x00	; 0
      00192A 14                     734 	.db #0x14	; 20
      00192B 14                     735 	.db #0x14	; 20
      00192C 14                     736 	.db #0x14	; 20
      00192D 14                     737 	.db #0x14	; 20
      00192E 14                     738 	.db #0x14	; 20
      00192F 00                     739 	.db #0x00	; 0
      001930 41                     740 	.db #0x41	; 65	'A'
      001931 22                     741 	.db #0x22	; 34
      001932 14                     742 	.db #0x14	; 20
      001933 08                     743 	.db #0x08	; 8
      001934 02                     744 	.db #0x02	; 2
      001935 01                     745 	.db #0x01	; 1
      001936 51                     746 	.db #0x51	; 81	'Q'
      001937 09                     747 	.db #0x09	; 9
      001938 06                     748 	.db #0x06	; 6
      001939 32                     749 	.db #0x32	; 50	'2'
      00193A 49                     750 	.db #0x49	; 73	'I'
      00193B 59                     751 	.db #0x59	; 89	'Y'
      00193C 51                     752 	.db #0x51	; 81	'Q'
      00193D 3E                     753 	.db #0x3e	; 62
      00193E 7C                     754 	.db #0x7c	; 124
      00193F 12                     755 	.db #0x12	; 18
      001940 11                     756 	.db #0x11	; 17
      001941 12                     757 	.db #0x12	; 18
      001942 7C                     758 	.db #0x7c	; 124
      001943 7F                     759 	.db #0x7f	; 127
      001944 49                     760 	.db #0x49	; 73	'I'
      001945 49                     761 	.db #0x49	; 73	'I'
      001946 49                     762 	.db #0x49	; 73	'I'
      001947 36                     763 	.db #0x36	; 54	'6'
      001948 3E                     764 	.db #0x3e	; 62
      001949 41                     765 	.db #0x41	; 65	'A'
      00194A 41                     766 	.db #0x41	; 65	'A'
      00194B 41                     767 	.db #0x41	; 65	'A'
      00194C 22                     768 	.db #0x22	; 34
      00194D 7F                     769 	.db #0x7f	; 127
      00194E 41                     770 	.db #0x41	; 65	'A'
      00194F 41                     771 	.db #0x41	; 65	'A'
      001950 22                     772 	.db #0x22	; 34
      001951 1C                     773 	.db #0x1c	; 28
      001952 7F                     774 	.db #0x7f	; 127
      001953 49                     775 	.db #0x49	; 73	'I'
      001954 49                     776 	.db #0x49	; 73	'I'
      001955 49                     777 	.db #0x49	; 73	'I'
      001956 41                     778 	.db #0x41	; 65	'A'
      001957 7F                     779 	.db #0x7f	; 127
      001958 09                     780 	.db #0x09	; 9
      001959 09                     781 	.db #0x09	; 9
      00195A 09                     782 	.db #0x09	; 9
      00195B 01                     783 	.db #0x01	; 1
      00195C 3E                     784 	.db #0x3e	; 62
      00195D 41                     785 	.db #0x41	; 65	'A'
      00195E 49                     786 	.db #0x49	; 73	'I'
      00195F 49                     787 	.db #0x49	; 73	'I'
      001960 7A                     788 	.db #0x7a	; 122	'z'
      001961 7F                     789 	.db #0x7f	; 127
      001962 08                     790 	.db #0x08	; 8
      001963 08                     791 	.db #0x08	; 8
      001964 08                     792 	.db #0x08	; 8
      001965 7F                     793 	.db #0x7f	; 127
      001966 00                     794 	.db #0x00	; 0
      001967 41                     795 	.db #0x41	; 65	'A'
      001968 7F                     796 	.db #0x7f	; 127
      001969 41                     797 	.db #0x41	; 65	'A'
      00196A 00                     798 	.db #0x00	; 0
      00196B 20                     799 	.db #0x20	; 32
      00196C 40                     800 	.db #0x40	; 64
      00196D 41                     801 	.db #0x41	; 65	'A'
      00196E 3F                     802 	.db #0x3f	; 63
      00196F 01                     803 	.db #0x01	; 1
      001970 7F                     804 	.db #0x7f	; 127
      001971 08                     805 	.db #0x08	; 8
      001972 14                     806 	.db #0x14	; 20
      001973 22                     807 	.db #0x22	; 34
      001974 41                     808 	.db #0x41	; 65	'A'
      001975 7F                     809 	.db #0x7f	; 127
      001976 40                     810 	.db #0x40	; 64
      001977 40                     811 	.db #0x40	; 64
      001978 40                     812 	.db #0x40	; 64
      001979 40                     813 	.db #0x40	; 64
      00197A 7F                     814 	.db #0x7f	; 127
      00197B 02                     815 	.db #0x02	; 2
      00197C 0C                     816 	.db #0x0c	; 12
      00197D 02                     817 	.db #0x02	; 2
      00197E 7F                     818 	.db #0x7f	; 127
      00197F 7F                     819 	.db #0x7f	; 127
      001980 04                     820 	.db #0x04	; 4
      001981 08                     821 	.db #0x08	; 8
      001982 10                     822 	.db #0x10	; 16
      001983 7F                     823 	.db #0x7f	; 127
      001984 3E                     824 	.db #0x3e	; 62
      001985 41                     825 	.db #0x41	; 65	'A'
      001986 41                     826 	.db #0x41	; 65	'A'
      001987 41                     827 	.db #0x41	; 65	'A'
      001988 3E                     828 	.db #0x3e	; 62
      001989 7F                     829 	.db #0x7f	; 127
      00198A 09                     830 	.db #0x09	; 9
      00198B 09                     831 	.db #0x09	; 9
      00198C 09                     832 	.db #0x09	; 9
      00198D 06                     833 	.db #0x06	; 6
      00198E 3E                     834 	.db #0x3e	; 62
      00198F 41                     835 	.db #0x41	; 65	'A'
      001990 51                     836 	.db #0x51	; 81	'Q'
      001991 21                     837 	.db #0x21	; 33
      001992 5E                     838 	.db #0x5e	; 94
      001993 7F                     839 	.db #0x7f	; 127
      001994 09                     840 	.db #0x09	; 9
      001995 19                     841 	.db #0x19	; 25
      001996 29                     842 	.db #0x29	; 41
      001997 46                     843 	.db #0x46	; 70	'F'
      001998 46                     844 	.db #0x46	; 70	'F'
      001999 49                     845 	.db #0x49	; 73	'I'
      00199A 49                     846 	.db #0x49	; 73	'I'
      00199B 49                     847 	.db #0x49	; 73	'I'
      00199C 31                     848 	.db #0x31	; 49	'1'
      00199D 01                     849 	.db #0x01	; 1
      00199E 01                     850 	.db #0x01	; 1
      00199F 7F                     851 	.db #0x7f	; 127
      0019A0 01                     852 	.db #0x01	; 1
      0019A1 01                     853 	.db #0x01	; 1
      0019A2 3F                     854 	.db #0x3f	; 63
      0019A3 40                     855 	.db #0x40	; 64
      0019A4 40                     856 	.db #0x40	; 64
      0019A5 40                     857 	.db #0x40	; 64
      0019A6 3F                     858 	.db #0x3f	; 63
      0019A7 1F                     859 	.db #0x1f	; 31
      0019A8 20                     860 	.db #0x20	; 32
      0019A9 40                     861 	.db #0x40	; 64
      0019AA 20                     862 	.db #0x20	; 32
      0019AB 1F                     863 	.db #0x1f	; 31
      0019AC 3F                     864 	.db #0x3f	; 63
      0019AD 40                     865 	.db #0x40	; 64
      0019AE 38                     866 	.db #0x38	; 56	'8'
      0019AF 40                     867 	.db #0x40	; 64
      0019B0 3F                     868 	.db #0x3f	; 63
      0019B1 63                     869 	.db #0x63	; 99	'c'
      0019B2 14                     870 	.db #0x14	; 20
      0019B3 08                     871 	.db #0x08	; 8
      0019B4 14                     872 	.db #0x14	; 20
      0019B5 63                     873 	.db #0x63	; 99	'c'
      0019B6 07                     874 	.db #0x07	; 7
      0019B7 08                     875 	.db #0x08	; 8
      0019B8 70                     876 	.db #0x70	; 112	'p'
      0019B9 08                     877 	.db #0x08	; 8
      0019BA 07                     878 	.db #0x07	; 7
      0019BB 61                     879 	.db #0x61	; 97	'a'
      0019BC 51                     880 	.db #0x51	; 81	'Q'
      0019BD 49                     881 	.db #0x49	; 73	'I'
      0019BE 45                     882 	.db #0x45	; 69	'E'
      0019BF 43                     883 	.db #0x43	; 67	'C'
      0019C0 00                     884 	.db #0x00	; 0
      0019C1 7F                     885 	.db #0x7f	; 127
      0019C2 41                     886 	.db #0x41	; 65	'A'
      0019C3 41                     887 	.db #0x41	; 65	'A'
      0019C4 00                     888 	.db #0x00	; 0
      0019C5 55                     889 	.db #0x55	; 85	'U'
      0019C6 AA                     890 	.db #0xaa	; 170
      0019C7 55                     891 	.db #0x55	; 85	'U'
      0019C8 AA                     892 	.db #0xaa	; 170
      0019C9 55                     893 	.db #0x55	; 85	'U'
      0019CA 00                     894 	.db #0x00	; 0
      0019CB 41                     895 	.db #0x41	; 65	'A'
      0019CC 41                     896 	.db #0x41	; 65	'A'
      0019CD 7F                     897 	.db #0x7f	; 127
      0019CE 00                     898 	.db #0x00	; 0
      0019CF 04                     899 	.db #0x04	; 4
      0019D0 02                     900 	.db #0x02	; 2
      0019D1 01                     901 	.db #0x01	; 1
      0019D2 02                     902 	.db #0x02	; 2
      0019D3 04                     903 	.db #0x04	; 4
      0019D4 40                     904 	.db #0x40	; 64
      0019D5 40                     905 	.db #0x40	; 64
      0019D6 40                     906 	.db #0x40	; 64
      0019D7 40                     907 	.db #0x40	; 64
      0019D8 40                     908 	.db #0x40	; 64
      0019D9 00                     909 	.db #0x00	; 0
      0019DA 03                     910 	.db #0x03	; 3
      0019DB 05                     911 	.db #0x05	; 5
      0019DC 00                     912 	.db #0x00	; 0
      0019DD 00                     913 	.db #0x00	; 0
      0019DE 20                     914 	.db #0x20	; 32
      0019DF 54                     915 	.db #0x54	; 84	'T'
      0019E0 54                     916 	.db #0x54	; 84	'T'
      0019E1 54                     917 	.db #0x54	; 84	'T'
      0019E2 78                     918 	.db #0x78	; 120	'x'
      0019E3 7F                     919 	.db #0x7f	; 127
      0019E4 48                     920 	.db #0x48	; 72	'H'
      0019E5 44                     921 	.db #0x44	; 68	'D'
      0019E6 44                     922 	.db #0x44	; 68	'D'
      0019E7 38                     923 	.db #0x38	; 56	'8'
      0019E8 38                     924 	.db #0x38	; 56	'8'
      0019E9 44                     925 	.db #0x44	; 68	'D'
      0019EA 44                     926 	.db #0x44	; 68	'D'
      0019EB 44                     927 	.db #0x44	; 68	'D'
      0019EC 20                     928 	.db #0x20	; 32
      0019ED 38                     929 	.db #0x38	; 56	'8'
      0019EE 44                     930 	.db #0x44	; 68	'D'
      0019EF 44                     931 	.db #0x44	; 68	'D'
      0019F0 48                     932 	.db #0x48	; 72	'H'
      0019F1 7F                     933 	.db #0x7f	; 127
      0019F2 38                     934 	.db #0x38	; 56	'8'
      0019F3 54                     935 	.db #0x54	; 84	'T'
      0019F4 54                     936 	.db #0x54	; 84	'T'
      0019F5 54                     937 	.db #0x54	; 84	'T'
      0019F6 18                     938 	.db #0x18	; 24
      0019F7 08                     939 	.db #0x08	; 8
      0019F8 7E                     940 	.db #0x7e	; 126
      0019F9 09                     941 	.db #0x09	; 9
      0019FA 01                     942 	.db #0x01	; 1
      0019FB 02                     943 	.db #0x02	; 2
      0019FC 18                     944 	.db #0x18	; 24
      0019FD A4                     945 	.db #0xa4	; 164
      0019FE A4                     946 	.db #0xa4	; 164
      0019FF A4                     947 	.db #0xa4	; 164
      001A00 7C                     948 	.db #0x7c	; 124
      001A01 7F                     949 	.db #0x7f	; 127
      001A02 08                     950 	.db #0x08	; 8
      001A03 04                     951 	.db #0x04	; 4
      001A04 04                     952 	.db #0x04	; 4
      001A05 78                     953 	.db #0x78	; 120	'x'
      001A06 00                     954 	.db #0x00	; 0
      001A07 44                     955 	.db #0x44	; 68	'D'
      001A08 7D                     956 	.db #0x7d	; 125
      001A09 40                     957 	.db #0x40	; 64
      001A0A 00                     958 	.db #0x00	; 0
      001A0B 40                     959 	.db #0x40	; 64
      001A0C 80                     960 	.db #0x80	; 128
      001A0D 84                     961 	.db #0x84	; 132
      001A0E 7D                     962 	.db #0x7d	; 125
      001A0F 00                     963 	.db #0x00	; 0
      001A10 7F                     964 	.db #0x7f	; 127
      001A11 10                     965 	.db #0x10	; 16
      001A12 28                     966 	.db #0x28	; 40
      001A13 44                     967 	.db #0x44	; 68	'D'
      001A14 00                     968 	.db #0x00	; 0
      001A15 00                     969 	.db #0x00	; 0
      001A16 41                     970 	.db #0x41	; 65	'A'
      001A17 7F                     971 	.db #0x7f	; 127
      001A18 40                     972 	.db #0x40	; 64
      001A19 00                     973 	.db #0x00	; 0
      001A1A 7C                     974 	.db #0x7c	; 124
      001A1B 04                     975 	.db #0x04	; 4
      001A1C 18                     976 	.db #0x18	; 24
      001A1D 04                     977 	.db #0x04	; 4
      001A1E 78                     978 	.db #0x78	; 120	'x'
      001A1F 7C                     979 	.db #0x7c	; 124
      001A20 08                     980 	.db #0x08	; 8
      001A21 04                     981 	.db #0x04	; 4
      001A22 04                     982 	.db #0x04	; 4
      001A23 78                     983 	.db #0x78	; 120	'x'
      001A24 38                     984 	.db #0x38	; 56	'8'
      001A25 44                     985 	.db #0x44	; 68	'D'
      001A26 44                     986 	.db #0x44	; 68	'D'
      001A27 44                     987 	.db #0x44	; 68	'D'
      001A28 38                     988 	.db #0x38	; 56	'8'
      001A29 FC                     989 	.db #0xfc	; 252
      001A2A 24                     990 	.db #0x24	; 36
      001A2B 24                     991 	.db #0x24	; 36
      001A2C 24                     992 	.db #0x24	; 36
      001A2D 18                     993 	.db #0x18	; 24
      001A2E 18                     994 	.db #0x18	; 24
      001A2F 24                     995 	.db #0x24	; 36
      001A30 24                     996 	.db #0x24	; 36
      001A31 18                     997 	.db #0x18	; 24
      001A32 FC                     998 	.db #0xfc	; 252
      001A33 7C                     999 	.db #0x7c	; 124
      001A34 08                    1000 	.db #0x08	; 8
      001A35 04                    1001 	.db #0x04	; 4
      001A36 04                    1002 	.db #0x04	; 4
      001A37 08                    1003 	.db #0x08	; 8
      001A38 48                    1004 	.db #0x48	; 72	'H'
      001A39 54                    1005 	.db #0x54	; 84	'T'
      001A3A 54                    1006 	.db #0x54	; 84	'T'
      001A3B 54                    1007 	.db #0x54	; 84	'T'
      001A3C 20                    1008 	.db #0x20	; 32
      001A3D 04                    1009 	.db #0x04	; 4
      001A3E 3F                    1010 	.db #0x3f	; 63
      001A3F 44                    1011 	.db #0x44	; 68	'D'
      001A40 40                    1012 	.db #0x40	; 64
      001A41 20                    1013 	.db #0x20	; 32
      001A42 3C                    1014 	.db #0x3c	; 60
      001A43 40                    1015 	.db #0x40	; 64
      001A44 40                    1016 	.db #0x40	; 64
      001A45 20                    1017 	.db #0x20	; 32
      001A46 7C                    1018 	.db #0x7c	; 124
      001A47 1C                    1019 	.db #0x1c	; 28
      001A48 20                    1020 	.db #0x20	; 32
      001A49 40                    1021 	.db #0x40	; 64
      001A4A 20                    1022 	.db #0x20	; 32
      001A4B 1C                    1023 	.db #0x1c	; 28
      001A4C 3C                    1024 	.db #0x3c	; 60
      001A4D 40                    1025 	.db #0x40	; 64
      001A4E 30                    1026 	.db #0x30	; 48	'0'
      001A4F 40                    1027 	.db #0x40	; 64
      001A50 3C                    1028 	.db #0x3c	; 60
      001A51 44                    1029 	.db #0x44	; 68	'D'
      001A52 28                    1030 	.db #0x28	; 40
      001A53 10                    1031 	.db #0x10	; 16
      001A54 28                    1032 	.db #0x28	; 40
      001A55 44                    1033 	.db #0x44	; 68	'D'
      001A56 1C                    1034 	.db #0x1c	; 28
      001A57 A0                    1035 	.db #0xa0	; 160
      001A58 A0                    1036 	.db #0xa0	; 160
      001A59 A0                    1037 	.db #0xa0	; 160
      001A5A 7C                    1038 	.db #0x7c	; 124
      001A5B 44                    1039 	.db #0x44	; 68	'D'
      001A5C 64                    1040 	.db #0x64	; 100	'd'
      001A5D 54                    1041 	.db #0x54	; 84	'T'
      001A5E 4C                    1042 	.db #0x4c	; 76	'L'
      001A5F 44                    1043 	.db #0x44	; 68	'D'
      001A60 00                    1044 	.db #0x00	; 0
      001A61 10                    1045 	.db #0x10	; 16
      001A62 7C                    1046 	.db #0x7c	; 124
      001A63 82                    1047 	.db #0x82	; 130
      001A64 00                    1048 	.db #0x00	; 0
      001A65 00                    1049 	.db #0x00	; 0
      001A66 00                    1050 	.db #0x00	; 0
      001A67 FF                    1051 	.db #0xff	; 255
      001A68 00                    1052 	.db #0x00	; 0
      001A69 00                    1053 	.db #0x00	; 0
      001A6A 00                    1054 	.db #0x00	; 0
      001A6B 82                    1055 	.db #0x82	; 130
      001A6C 7C                    1056 	.db #0x7c	; 124
      001A6D 10                    1057 	.db #0x10	; 16
      001A6E 00                    1058 	.db #0x00	; 0
      001A6F 00                    1059 	.db #0x00	; 0
      001A70 06                    1060 	.db #0x06	; 6
      001A71 09                    1061 	.db #0x09	; 9
      001A72 09                    1062 	.db #0x09	; 9
      001A73 06                    1063 	.db #0x06	; 6
                                   1064 	.area XINIT   (CODE)
                                   1065 	.area CABS    (ABS,CODE)
