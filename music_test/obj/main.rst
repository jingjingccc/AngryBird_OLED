                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14362 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module main
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _blanck_table
                                     12 	.globl _duration_table
                                     13 	.globl _music_table
                                     14 	.globl _main
                                     15 	.globl _T0_isr
                                     16 	.globl _OLED_SetCursor
                                     17 	.globl _OLED_DisplayString
                                     18 	.globl _OLED_Init
                                     19 	.globl _Delay_La
                                     20 	.globl _Delay_So
                                     21 	.globl _Delay_Fa
                                     22 	.globl _Delay_Mi
                                     23 	.globl _Delay_Re
                                     24 	.globl _Delay_Do
                                     25 	.globl _CY
                                     26 	.globl _AC
                                     27 	.globl _F0
                                     28 	.globl _RS1
                                     29 	.globl _RS0
                                     30 	.globl _OV
                                     31 	.globl _F1
                                     32 	.globl _P
                                     33 	.globl _PS
                                     34 	.globl _PT1
                                     35 	.globl _PX1
                                     36 	.globl _PT0
                                     37 	.globl _PX0
                                     38 	.globl _RD
                                     39 	.globl _WR
                                     40 	.globl _T1
                                     41 	.globl _T0
                                     42 	.globl _INT1
                                     43 	.globl _INT0
                                     44 	.globl _TXD
                                     45 	.globl _RXD
                                     46 	.globl _P3_7
                                     47 	.globl _P3_6
                                     48 	.globl _P3_5
                                     49 	.globl _P3_4
                                     50 	.globl _P3_3
                                     51 	.globl _P3_2
                                     52 	.globl _P3_1
                                     53 	.globl _P3_0
                                     54 	.globl _EA
                                     55 	.globl _ES
                                     56 	.globl _ET1
                                     57 	.globl _EX1
                                     58 	.globl _ET0
                                     59 	.globl _EX0
                                     60 	.globl _P2_7
                                     61 	.globl _P2_6
                                     62 	.globl _P2_5
                                     63 	.globl _P2_4
                                     64 	.globl _P2_3
                                     65 	.globl _P2_2
                                     66 	.globl _P2_1
                                     67 	.globl _P2_0
                                     68 	.globl _SM0
                                     69 	.globl _SM1
                                     70 	.globl _SM2
                                     71 	.globl _REN
                                     72 	.globl _TB8
                                     73 	.globl _RB8
                                     74 	.globl _TI
                                     75 	.globl _RI
                                     76 	.globl _P1_7
                                     77 	.globl _P1_6
                                     78 	.globl _P1_5
                                     79 	.globl _P1_4
                                     80 	.globl _P1_3
                                     81 	.globl _P1_2
                                     82 	.globl _P1_1
                                     83 	.globl _P1_0
                                     84 	.globl _TF1
                                     85 	.globl _TR1
                                     86 	.globl _TF0
                                     87 	.globl _TR0
                                     88 	.globl _IE1
                                     89 	.globl _IT1
                                     90 	.globl _IE0
                                     91 	.globl _IT0
                                     92 	.globl _P0_7
                                     93 	.globl _P0_6
                                     94 	.globl _P0_5
                                     95 	.globl _P0_4
                                     96 	.globl _P0_3
                                     97 	.globl _P0_2
                                     98 	.globl _P0_1
                                     99 	.globl _P0_0
                                    100 	.globl _B
                                    101 	.globl _ACC
                                    102 	.globl _PSW
                                    103 	.globl _IP
                                    104 	.globl _P3
                                    105 	.globl _IE
                                    106 	.globl _P2
                                    107 	.globl _SBUF
                                    108 	.globl _SCON
                                    109 	.globl _P1
                                    110 	.globl _TH1
                                    111 	.globl _TH0
                                    112 	.globl _TL1
                                    113 	.globl _TL0
                                    114 	.globl _TMOD
                                    115 	.globl _TCON
                                    116 	.globl _PCON
                                    117 	.globl _DPH
                                    118 	.globl _DPL
                                    119 	.globl _SP
                                    120 	.globl _P0
                                    121 	.globl _duration_time
                                    122 	.globl _music_play_note
                                    123 	.globl _stable_but
                                    124 	.globl _scan_cnting
                                    125 	.globl _music_on
                                    126 	.globl _LookForSound
                                    127 ;--------------------------------------------------------
                                    128 ; special function registers
                                    129 ;--------------------------------------------------------
                                    130 	.area RSEG    (ABS,DATA)
      000000                        131 	.org 0x0000
                           000080   132 _P0	=	0x0080
                           000081   133 _SP	=	0x0081
                           000082   134 _DPL	=	0x0082
                           000083   135 _DPH	=	0x0083
                           000087   136 _PCON	=	0x0087
                           000088   137 _TCON	=	0x0088
                           000089   138 _TMOD	=	0x0089
                           00008A   139 _TL0	=	0x008a
                           00008B   140 _TL1	=	0x008b
                           00008C   141 _TH0	=	0x008c
                           00008D   142 _TH1	=	0x008d
                           000090   143 _P1	=	0x0090
                           000098   144 _SCON	=	0x0098
                           000099   145 _SBUF	=	0x0099
                           0000A0   146 _P2	=	0x00a0
                           0000A8   147 _IE	=	0x00a8
                           0000B0   148 _P3	=	0x00b0
                           0000B8   149 _IP	=	0x00b8
                           0000D0   150 _PSW	=	0x00d0
                           0000E0   151 _ACC	=	0x00e0
                           0000F0   152 _B	=	0x00f0
                                    153 ;--------------------------------------------------------
                                    154 ; special function bits
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0_0	=	0x0080
                           000081   159 _P0_1	=	0x0081
                           000082   160 _P0_2	=	0x0082
                           000083   161 _P0_3	=	0x0083
                           000084   162 _P0_4	=	0x0084
                           000085   163 _P0_5	=	0x0085
                           000086   164 _P0_6	=	0x0086
                           000087   165 _P0_7	=	0x0087
                           000088   166 _IT0	=	0x0088
                           000089   167 _IE0	=	0x0089
                           00008A   168 _IT1	=	0x008a
                           00008B   169 _IE1	=	0x008b
                           00008C   170 _TR0	=	0x008c
                           00008D   171 _TF0	=	0x008d
                           00008E   172 _TR1	=	0x008e
                           00008F   173 _TF1	=	0x008f
                           000090   174 _P1_0	=	0x0090
                           000091   175 _P1_1	=	0x0091
                           000092   176 _P1_2	=	0x0092
                           000093   177 _P1_3	=	0x0093
                           000094   178 _P1_4	=	0x0094
                           000095   179 _P1_5	=	0x0095
                           000096   180 _P1_6	=	0x0096
                           000097   181 _P1_7	=	0x0097
                           000098   182 _RI	=	0x0098
                           000099   183 _TI	=	0x0099
                           00009A   184 _RB8	=	0x009a
                           00009B   185 _TB8	=	0x009b
                           00009C   186 _REN	=	0x009c
                           00009D   187 _SM2	=	0x009d
                           00009E   188 _SM1	=	0x009e
                           00009F   189 _SM0	=	0x009f
                           0000A0   190 _P2_0	=	0x00a0
                           0000A1   191 _P2_1	=	0x00a1
                           0000A2   192 _P2_2	=	0x00a2
                           0000A3   193 _P2_3	=	0x00a3
                           0000A4   194 _P2_4	=	0x00a4
                           0000A5   195 _P2_5	=	0x00a5
                           0000A6   196 _P2_6	=	0x00a6
                           0000A7   197 _P2_7	=	0x00a7
                           0000A8   198 _EX0	=	0x00a8
                           0000A9   199 _ET0	=	0x00a9
                           0000AA   200 _EX1	=	0x00aa
                           0000AB   201 _ET1	=	0x00ab
                           0000AC   202 _ES	=	0x00ac
                           0000AF   203 _EA	=	0x00af
                           0000B0   204 _P3_0	=	0x00b0
                           0000B1   205 _P3_1	=	0x00b1
                           0000B2   206 _P3_2	=	0x00b2
                           0000B3   207 _P3_3	=	0x00b3
                           0000B4   208 _P3_4	=	0x00b4
                           0000B5   209 _P3_5	=	0x00b5
                           0000B6   210 _P3_6	=	0x00b6
                           0000B7   211 _P3_7	=	0x00b7
                           0000B0   212 _RXD	=	0x00b0
                           0000B1   213 _TXD	=	0x00b1
                           0000B2   214 _INT0	=	0x00b2
                           0000B3   215 _INT1	=	0x00b3
                           0000B4   216 _T0	=	0x00b4
                           0000B5   217 _T1	=	0x00b5
                           0000B6   218 _WR	=	0x00b6
                           0000B7   219 _RD	=	0x00b7
                           0000B8   220 _PX0	=	0x00b8
                           0000B9   221 _PT0	=	0x00b9
                           0000BA   222 _PX1	=	0x00ba
                           0000BB   223 _PT1	=	0x00bb
                           0000BC   224 _PS	=	0x00bc
                           0000D0   225 _P	=	0x00d0
                           0000D1   226 _F1	=	0x00d1
                           0000D2   227 _OV	=	0x00d2
                           0000D3   228 _RS0	=	0x00d3
                           0000D4   229 _RS1	=	0x00d4
                           0000D5   230 _F0	=	0x00d5
                           0000D6   231 _AC	=	0x00d6
                           0000D7   232 _CY	=	0x00d7
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable register banks
                                    235 ;--------------------------------------------------------
                                    236 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        237 	.ds 8
                                    238 ;--------------------------------------------------------
                                    239 ; overlayable bit register bank
                                    240 ;--------------------------------------------------------
                                    241 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        242 bits:
      000020                        243 	.ds 1
                           008000   244 	b0 = bits[0]
                           008100   245 	b1 = bits[1]
                           008200   246 	b2 = bits[2]
                           008300   247 	b3 = bits[3]
                           008400   248 	b4 = bits[4]
                           008500   249 	b5 = bits[5]
                           008600   250 	b6 = bits[6]
                           008700   251 	b7 = bits[7]
                                    252 ;--------------------------------------------------------
                                    253 ; internal ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area DSEG    (DATA)
      000008                        256 _music_on::
      000008                        257 	.ds 2
      00000A                        258 _scan_cnting::
      00000A                        259 	.ds 2
      00000C                        260 _stable_but::
      00000C                        261 	.ds 2
      00000E                        262 _music_play_note::
      00000E                        263 	.ds 2
      000010                        264 _duration_time::
      000010                        265 	.ds 2
      000012                        266 _main_a_131073_42:
      000012                        267 	.ds 2
                                    268 ;--------------------------------------------------------
                                    269 ; overlayable items in internal ram
                                    270 ;--------------------------------------------------------
                                    271 ;--------------------------------------------------------
                                    272 ; Stack segment in internal ram
                                    273 ;--------------------------------------------------------
                                    274 	.area SSEG
      000021                        275 __start__stack:
      000021                        276 	.ds	1
                                    277 
                                    278 ;--------------------------------------------------------
                                    279 ; indirectly addressable internal ram data
                                    280 ;--------------------------------------------------------
                                    281 	.area ISEG    (DATA)
                                    282 ;--------------------------------------------------------
                                    283 ; absolute internal ram data
                                    284 ;--------------------------------------------------------
                                    285 	.area IABS    (ABS,DATA)
                                    286 	.area IABS    (ABS,DATA)
                                    287 ;--------------------------------------------------------
                                    288 ; bit data
                                    289 ;--------------------------------------------------------
                                    290 	.area BSEG    (BIT)
                                    291 ;--------------------------------------------------------
                                    292 ; paged external ram data
                                    293 ;--------------------------------------------------------
                                    294 	.area PSEG    (PAG,XDATA)
                                    295 ;--------------------------------------------------------
                                    296 ; uninitialized external ram data
                                    297 ;--------------------------------------------------------
                                    298 	.area XSEG    (XDATA)
                                    299 ;--------------------------------------------------------
                                    300 ; absolute external ram data
                                    301 ;--------------------------------------------------------
                                    302 	.area XABS    (ABS,XDATA)
                                    303 ;--------------------------------------------------------
                                    304 ; initialized external ram data
                                    305 ;--------------------------------------------------------
                                    306 	.area XISEG   (XDATA)
                                    307 	.area HOME    (CODE)
                                    308 	.area GSINIT0 (CODE)
                                    309 	.area GSINIT1 (CODE)
                                    310 	.area GSINIT2 (CODE)
                                    311 	.area GSINIT3 (CODE)
                                    312 	.area GSINIT4 (CODE)
                                    313 	.area GSINIT5 (CODE)
                                    314 	.area GSINIT  (CODE)
                                    315 	.area GSFINAL (CODE)
                                    316 	.area CSEG    (CODE)
                                    317 ;--------------------------------------------------------
                                    318 ; interrupt vector
                                    319 ;--------------------------------------------------------
                                    320 	.area HOME    (CODE)
      000000                        321 __interrupt_vect:
      000000 02 00 11         [24]  322 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  323 	reti
      000004                        324 	.ds	7
      00000B 02 00 82         [24]  325 	ljmp	_T0_isr
                                    326 ;--------------------------------------------------------
                                    327 ; global & static initialisations
                                    328 ;--------------------------------------------------------
                                    329 	.area HOME    (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.area GSFINAL (CODE)
                                    332 	.area GSINIT  (CODE)
                                    333 	.globl __sdcc_gsinit_startup
                                    334 	.globl __sdcc_program_startup
                                    335 	.globl __start__stack
                                    336 	.globl __mcs51_genXINIT
                                    337 	.globl __mcs51_genXRAMCLEAR
                                    338 	.globl __mcs51_genRAMCLEAR
                                    339 ;	./src/main.c:9: int music_on = 0, scan_cnting = 0, stable_but = 0;
      00006A E4               [12]  340 	clr	a
      00006B F5 08            [12]  341 	mov	_music_on,a
      00006D F5 09            [12]  342 	mov	(_music_on + 1),a
                                    343 ;	./src/main.c:9: int music_play_note = 0, duration_time = 0;
      00006F F5 0A            [12]  344 	mov	_scan_cnting,a
      000071 F5 0B            [12]  345 	mov	(_scan_cnting + 1),a
                                    346 ;	./src/main.c:9: int music_on = 0, scan_cnting = 0, stable_but = 0;
      000073 F5 0C            [12]  347 	mov	_stable_but,a
      000075 F5 0D            [12]  348 	mov	(_stable_but + 1),a
                                    349 ;	./src/main.c:10: int music_play_note = 0, duration_time = 0;
      000077 F5 0E            [12]  350 	mov	_music_play_note,a
      000079 F5 0F            [12]  351 	mov	(_music_play_note + 1),a
                                    352 ;	./src/main.c:10: 
      00007B F5 10            [12]  353 	mov	_duration_time,a
      00007D F5 11            [12]  354 	mov	(_duration_time + 1),a
                                    355 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  356 	ljmp	__sdcc_program_startup
                                    357 ;--------------------------------------------------------
                                    358 ; Home
                                    359 ;--------------------------------------------------------
                                    360 	.area HOME    (CODE)
                                    361 	.area HOME    (CODE)
      00000E                        362 __sdcc_program_startup:
      00000E 02 01 74         [24]  363 	ljmp	_main
                                    364 ;	return from main will return to caller
                                    365 ;--------------------------------------------------------
                                    366 ; code
                                    367 ;--------------------------------------------------------
                                    368 	.area CSEG    (CODE)
                                    369 ;------------------------------------------------------------
                                    370 ;Allocation info for local variables in function 'T0_isr'
                                    371 ;------------------------------------------------------------
                                    372 ;	./src/main.c:27: void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
                                    373 ;	-----------------------------------------
                                    374 ;	 function T0_isr
                                    375 ;	-----------------------------------------
      000082                        376 _T0_isr:
                           000007   377 	ar7 = 0x07
                           000006   378 	ar6 = 0x06
                           000005   379 	ar5 = 0x05
                           000004   380 	ar4 = 0x04
                           000003   381 	ar3 = 0x03
                           000002   382 	ar2 = 0x02
                           000001   383 	ar1 = 0x01
                           000000   384 	ar0 = 0x00
      000082 C0 20            [24]  385 	push	bits
      000084 C0 E0            [24]  386 	push	acc
      000086 C0 F0            [24]  387 	push	b
      000088 C0 82            [24]  388 	push	dpl
      00008A C0 83            [24]  389 	push	dph
      00008C C0 07            [24]  390 	push	(0+7)
      00008E C0 06            [24]  391 	push	(0+6)
      000090 C0 05            [24]  392 	push	(0+5)
      000092 C0 04            [24]  393 	push	(0+4)
      000094 C0 03            [24]  394 	push	(0+3)
      000096 C0 02            [24]  395 	push	(0+2)
      000098 C0 01            [24]  396 	push	(0+1)
      00009A C0 00            [24]  397 	push	(0+0)
      00009C C0 D0            [24]  398 	push	psw
      00009E 75 D0 00         [24]  399 	mov	psw,#0x00
                                    400 ;	./src/main.c:30: TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
      0000A1 75 8C FC         [24]  401 	mov	_TH0,#0xfc
                                    402 ;	./src/main.c:31: TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0
      0000A4 75 8A 18         [24]  403 	mov	_TL0,#0x18
                                    404 ;	./src/main.c:33: duration_time++;
      0000A7 05 10            [12]  405 	inc	_duration_time
      0000A9 E4               [12]  406 	clr	a
      0000AA B5 10 02         [24]  407 	cjne	a,_duration_time,00134$
      0000AD 05 11            [12]  408 	inc	(_duration_time + 1)
      0000AF                        409 00134$:
                                    410 ;	./src/main.c:35: while (duration_time < duration_table[music_play_note])
      0000AF                        411 00101$:
      0000AF E5 0E            [12]  412 	mov	a,_music_play_note
      0000B1 24 15            [12]  413 	add	a,#_duration_table
      0000B3 F5 82            [12]  414 	mov	dpl,a
      0000B5 E5 0F            [12]  415 	mov	a,(_music_play_note + 1)
      0000B7 34 06            [12]  416 	addc	a,#(_duration_table >> 8)
      0000B9 F5 83            [12]  417 	mov	dph,a
      0000BB E4               [12]  418 	clr	a
      0000BC 93               [24]  419 	movc	a,@a+dptr
      0000BD FE               [12]  420 	mov	r6,a
      0000BE 7F 00            [12]  421 	mov	r7,#0x00
      0000C0 C3               [12]  422 	clr	c
      0000C1 E5 10            [12]  423 	mov	a,_duration_time
      0000C3 9E               [12]  424 	subb	a,r6
      0000C4 E5 11            [12]  425 	mov	a,(_duration_time + 1)
      0000C6 64 80            [12]  426 	xrl	a,#0x80
      0000C8 8F F0            [24]  427 	mov	b,r7
      0000CA 63 F0 80         [24]  428 	xrl	b,#0x80
      0000CD 95 F0            [12]  429 	subb	a,b
      0000CF 50 3E            [24]  430 	jnc	00103$
                                    431 ;	./src/main.c:37: duration_time++;
      0000D1 05 10            [12]  432 	inc	_duration_time
      0000D3 E4               [12]  433 	clr	a
      0000D4 B5 10 02         [24]  434 	cjne	a,_duration_time,00136$
      0000D7 05 11            [12]  435 	inc	(_duration_time + 1)
      0000D9                        436 00136$:
                                    437 ;	./src/main.c:38: P3_7 = 1;
                                    438 ;	assignBit
      0000D9 D2 B7            [12]  439 	setb	_P3_7
                                    440 ;	./src/main.c:39: LookForSound(music_table[music_play_note]);
      0000DB E5 0E            [12]  441 	mov	a,_music_play_note
      0000DD 24 FC            [12]  442 	add	a,#_music_table
      0000DF F5 82            [12]  443 	mov	dpl,a
      0000E1 E5 0F            [12]  444 	mov	a,(_music_play_note + 1)
      0000E3 34 05            [12]  445 	addc	a,#(_music_table >> 8)
      0000E5 F5 83            [12]  446 	mov	dph,a
      0000E7 E4               [12]  447 	clr	a
      0000E8 93               [24]  448 	movc	a,@a+dptr
      0000E9 FD               [12]  449 	mov	r5,a
      0000EA 7C 00            [12]  450 	mov	r4,#0x00
      0000EC 8D 82            [24]  451 	mov	dpl,r5
      0000EE 8C 83            [24]  452 	mov	dph,r4
      0000F0 12 02 AD         [24]  453 	lcall	_LookForSound
                                    454 ;	./src/main.c:40: P3_7 = 0;
                                    455 ;	assignBit
      0000F3 C2 B7            [12]  456 	clr	_P3_7
                                    457 ;	./src/main.c:41: LookForSound(music_table[music_play_note]);
      0000F5 E5 0E            [12]  458 	mov	a,_music_play_note
      0000F7 24 FC            [12]  459 	add	a,#_music_table
      0000F9 F5 82            [12]  460 	mov	dpl,a
      0000FB E5 0F            [12]  461 	mov	a,(_music_play_note + 1)
      0000FD 34 05            [12]  462 	addc	a,#(_music_table >> 8)
      0000FF F5 83            [12]  463 	mov	dph,a
      000101 E4               [12]  464 	clr	a
      000102 93               [24]  465 	movc	a,@a+dptr
      000103 FD               [12]  466 	mov	r5,a
      000104 7C 00            [12]  467 	mov	r4,#0x00
      000106 8D 82            [24]  468 	mov	dpl,r5
      000108 8C 83            [24]  469 	mov	dph,r4
      00010A 12 02 AD         [24]  470 	lcall	_LookForSound
      00010D 80 A0            [24]  471 	sjmp	00101$
      00010F                        472 00103$:
                                    473 ;	./src/main.c:43: if (duration_time >= (duration_table[music_play_note] + blanck_table[music_play_note]))
      00010F E5 0E            [12]  474 	mov	a,_music_play_note
      000111 24 2E            [12]  475 	add	a,#_blanck_table
      000113 F5 82            [12]  476 	mov	dpl,a
      000115 E5 0F            [12]  477 	mov	a,(_music_play_note + 1)
      000117 34 06            [12]  478 	addc	a,#(_blanck_table >> 8)
      000119 F5 83            [12]  479 	mov	dph,a
      00011B E4               [12]  480 	clr	a
      00011C 93               [24]  481 	movc	a,@a+dptr
      00011D 7C 00            [12]  482 	mov	r4,#0x00
      00011F 2E               [12]  483 	add	a,r6
      000120 FE               [12]  484 	mov	r6,a
      000121 EC               [12]  485 	mov	a,r4
      000122 3F               [12]  486 	addc	a,r7
      000123 FF               [12]  487 	mov	r7,a
      000124 C3               [12]  488 	clr	c
      000125 E5 10            [12]  489 	mov	a,_duration_time
      000127 9E               [12]  490 	subb	a,r6
      000128 E5 11            [12]  491 	mov	a,(_duration_time + 1)
      00012A 64 80            [12]  492 	xrl	a,#0x80
      00012C 8F F0            [24]  493 	mov	b,r7
      00012E 63 F0 80         [24]  494 	xrl	b,#0x80
      000131 95 F0            [12]  495 	subb	a,b
      000133 40 22            [24]  496 	jc	00108$
                                    497 ;	./src/main.c:45: duration_time = 0;
      000135 E4               [12]  498 	clr	a
      000136 F5 10            [12]  499 	mov	_duration_time,a
      000138 F5 11            [12]  500 	mov	(_duration_time + 1),a
                                    501 ;	./src/main.c:46: music_play_note++;
      00013A 05 0E            [12]  502 	inc	_music_play_note
      00013C B5 0E 02         [24]  503 	cjne	a,_music_play_note,00138$
      00013F 05 0F            [12]  504 	inc	(_music_play_note + 1)
      000141                        505 00138$:
                                    506 ;	./src/main.c:48: if (music_play_note >= NOTE_NUM)
      000141 C3               [12]  507 	clr	c
      000142 E5 0E            [12]  508 	mov	a,_music_play_note
      000144 94 19            [12]  509 	subb	a,#0x19
      000146 E5 0F            [12]  510 	mov	a,(_music_play_note + 1)
      000148 64 80            [12]  511 	xrl	a,#0x80
      00014A 94 80            [12]  512 	subb	a,#0x80
      00014C 40 09            [24]  513 	jc	00108$
                                    514 ;	./src/main.c:50: music_on = 0;
      00014E E4               [12]  515 	clr	a
      00014F F5 08            [12]  516 	mov	_music_on,a
      000151 F5 09            [12]  517 	mov	(_music_on + 1),a
                                    518 ;	./src/main.c:51: music_play_note = 0;
      000153 F5 0E            [12]  519 	mov	_music_play_note,a
      000155 F5 0F            [12]  520 	mov	(_music_play_note + 1),a
      000157                        521 00108$:
                                    522 ;	./src/main.c:54: }
      000157 D0 D0            [24]  523 	pop	psw
      000159 D0 00            [24]  524 	pop	(0+0)
      00015B D0 01            [24]  525 	pop	(0+1)
      00015D D0 02            [24]  526 	pop	(0+2)
      00015F D0 03            [24]  527 	pop	(0+3)
      000161 D0 04            [24]  528 	pop	(0+4)
      000163 D0 05            [24]  529 	pop	(0+5)
      000165 D0 06            [24]  530 	pop	(0+6)
      000167 D0 07            [24]  531 	pop	(0+7)
      000169 D0 83            [24]  532 	pop	dph
      00016B D0 82            [24]  533 	pop	dpl
      00016D D0 F0            [24]  534 	pop	b
      00016F D0 E0            [24]  535 	pop	acc
      000171 D0 20            [24]  536 	pop	bits
      000173 32               [24]  537 	reti
                                    538 ;------------------------------------------------------------
                                    539 ;Allocation info for local variables in function 'main'
                                    540 ;------------------------------------------------------------
                                    541 ;a                         Allocated with name '_main_a_131073_42'
                                    542 ;------------------------------------------------------------
                                    543 ;	./src/main.c:59: int main()
                                    544 ;	-----------------------------------------
                                    545 ;	 function main
                                    546 ;	-----------------------------------------
      000174                        547 _main:
                                    548 ;	./src/main.c:62: TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
      000174 75 89 01         [24]  549 	mov	_TMOD,#0x01
                                    550 ;	./src/main.c:63: TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
      000177 75 8C FC         [24]  551 	mov	_TH0,#0xfc
                                    552 ;	./src/main.c:64: TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
      00017A 75 8A 18         [24]  553 	mov	_TL0,#0x18
                                    554 ;	./src/main.c:65: ET0 = 1;                    // Enable Timer 0 interrupt
                                    555 ;	assignBit
      00017D D2 A9            [12]  556 	setb	_ET0
                                    557 ;	./src/main.c:66: EA = 1;                     // Enable all interrupt
                                    558 ;	assignBit
      00017F D2 AF            [12]  559 	setb	_EA
                                    560 ;	./src/main.c:67: TR0 = 0;                    // Start Timer 0
                                    561 ;	assignBit
      000181 C2 8C            [12]  562 	clr	_TR0
                                    563 ;	./src/main.c:70: SDA = 1;
                                    564 ;	assignBit
      000183 D2 81            [12]  565 	setb	_P0_1
                                    566 ;	./src/main.c:71: SCL = 1;
                                    567 ;	assignBit
      000185 D2 80            [12]  568 	setb	_P0_0
                                    569 ;	./src/main.c:73: OLED_Init();
      000187 12 04 61         [24]  570 	lcall	_OLED_Init
                                    571 ;	./src/main.c:74: OLED_SetCursor(text_row, text_col);
      00018A 75 17 28         [24]  572 	mov	_OLED_SetCursor_PARM_2,#0x28
      00018D 75 82 03         [24]  573 	mov	dpl,#0x03
      000190 12 05 77         [24]  574 	lcall	_OLED_SetCursor
                                    575 ;	./src/main.c:75: OLED_DisplayString("music off!");
      000193 90 06 47         [24]  576 	mov	dptr,#___str_0
      000196 75 F0 80         [24]  577 	mov	b,#0x80
      000199 12 05 21         [24]  578 	lcall	_OLED_DisplayString
                                    579 ;	./src/main.c:77: while (1)
      00019C                        580 00125$:
                                    581 ;	./src/main.c:80: if (but == 0 && stable_but == 1)
      00019C 20 A2 39         [24]  582 	jb	_P2_2,00114$
      00019F 74 01            [12]  583 	mov	a,#0x01
      0001A1 B5 0C 06         [24]  584 	cjne	a,_stable_but,00208$
      0001A4 14               [12]  585 	dec	a
      0001A5 B5 0D 02         [24]  586 	cjne	a,(_stable_but + 1),00208$
      0001A8 80 02            [24]  587 	sjmp	00209$
      0001AA                        588 00208$:
      0001AA 80 2C            [24]  589 	sjmp	00114$
      0001AC                        590 00209$:
                                    591 ;	./src/main.c:82: if (scan_cnting < scan_cnt)
      0001AC C3               [12]  592 	clr	c
      0001AD E5 0A            [12]  593 	mov	a,_scan_cnting
      0001AF 94 09            [12]  594 	subb	a,#0x09
      0001B1 E5 0B            [12]  595 	mov	a,(_scan_cnting + 1)
      0001B3 64 80            [12]  596 	xrl	a,#0x80
      0001B5 94 80            [12]  597 	subb	a,#0x80
      0001B7 50 57            [24]  598 	jnc	00115$
                                    599 ;	./src/main.c:84: scan_cnting++;
      0001B9 05 0A            [12]  600 	inc	_scan_cnting
      0001BB E4               [12]  601 	clr	a
      0001BC B5 0A 02         [24]  602 	cjne	a,_scan_cnting,00211$
      0001BF 05 0B            [12]  603 	inc	(_scan_cnting + 1)
      0001C1                        604 00211$:
                                    605 ;	./src/main.c:85: if (scan_cnting == scan_cnt)
      0001C1 74 09            [12]  606 	mov	a,#0x09
      0001C3 B5 0A 06         [24]  607 	cjne	a,_scan_cnting,00212$
      0001C6 E4               [12]  608 	clr	a
      0001C7 B5 0B 02         [24]  609 	cjne	a,(_scan_cnting + 1),00212$
      0001CA 80 02            [24]  610 	sjmp	00213$
      0001CC                        611 00212$:
      0001CC 80 42            [24]  612 	sjmp	00115$
      0001CE                        613 00213$:
                                    614 ;	./src/main.c:87: music_on ^= 1;
      0001CE 63 08 01         [24]  615 	xrl	_music_on,#0x01
                                    616 ;	./src/main.c:88: stable_but = 0;
      0001D1 E4               [12]  617 	clr	a
      0001D2 F5 0C            [12]  618 	mov	_stable_but,a
      0001D4 F5 0D            [12]  619 	mov	(_stable_but + 1),a
      0001D6 80 38            [24]  620 	sjmp	00115$
      0001D8                        621 00114$:
                                    622 ;	./src/main.c:92: else if (but == 1 && stable_but == 0)
      0001D8 30 A2 30         [24]  623 	jnb	_P2_2,00110$
      0001DB E5 0C            [12]  624 	mov	a,_stable_but
      0001DD 45 0D            [12]  625 	orl	a,(_stable_but + 1)
      0001DF 70 2A            [24]  626 	jnz	00110$
                                    627 ;	./src/main.c:94: if (scan_cnting < scan_cnt)
      0001E1 C3               [12]  628 	clr	c
      0001E2 E5 0A            [12]  629 	mov	a,_scan_cnting
      0001E4 94 09            [12]  630 	subb	a,#0x09
      0001E6 E5 0B            [12]  631 	mov	a,(_scan_cnting + 1)
      0001E8 64 80            [12]  632 	xrl	a,#0x80
      0001EA 94 80            [12]  633 	subb	a,#0x80
      0001EC 50 22            [24]  634 	jnc	00115$
                                    635 ;	./src/main.c:96: scan_cnting++;
      0001EE 05 0A            [12]  636 	inc	_scan_cnting
      0001F0 E4               [12]  637 	clr	a
      0001F1 B5 0A 02         [24]  638 	cjne	a,_scan_cnting,00217$
      0001F4 05 0B            [12]  639 	inc	(_scan_cnting + 1)
      0001F6                        640 00217$:
                                    641 ;	./src/main.c:97: if (scan_cnting == scan_cnt)
      0001F6 74 09            [12]  642 	mov	a,#0x09
      0001F8 B5 0A 06         [24]  643 	cjne	a,_scan_cnting,00218$
      0001FB E4               [12]  644 	clr	a
      0001FC B5 0B 02         [24]  645 	cjne	a,(_scan_cnting + 1),00218$
      0001FF 80 02            [24]  646 	sjmp	00219$
      000201                        647 00218$:
      000201 80 0D            [24]  648 	sjmp	00115$
      000203                        649 00219$:
                                    650 ;	./src/main.c:98: stable_but = 1;
      000203 75 0C 01         [24]  651 	mov	_stable_but,#0x01
      000206 75 0D 00         [24]  652 	mov	(_stable_but + 1),#0x00
      000209 80 05            [24]  653 	sjmp	00115$
      00020B                        654 00110$:
                                    655 ;	./src/main.c:102: scan_cnting = 0;
      00020B E4               [12]  656 	clr	a
      00020C F5 0A            [12]  657 	mov	_scan_cnting,a
      00020E F5 0B            [12]  658 	mov	(_scan_cnting + 1),a
      000210                        659 00115$:
                                    660 ;	./src/main.c:104: OLED_SetCursor(5, text_col);
      000210 75 17 28         [24]  661 	mov	_OLED_SetCursor_PARM_2,#0x28
      000213 75 82 05         [24]  662 	mov	dpl,#0x05
      000216 12 05 77         [24]  663 	lcall	_OLED_SetCursor
                                    664 ;	./src/main.c:106: a[0] = '0' + scan_cnting;
      000219 AF 0A            [24]  665 	mov	r7,_scan_cnting
      00021B 74 30            [12]  666 	mov	a,#0x30
      00021D 2F               [12]  667 	add	a,r7
      00021E F5 12            [12]  668 	mov	_main_a_131073_42,a
                                    669 ;	./src/main.c:107: a[1] = '\0';
      000220 75 13 00         [24]  670 	mov	(_main_a_131073_42 + 0x0001),#0x00
                                    671 ;	./src/main.c:108: OLED_DisplayString(a);
      000223 90 00 12         [24]  672 	mov	dptr,#_main_a_131073_42
      000226 75 F0 40         [24]  673 	mov	b,#0x40
      000229 12 05 21         [24]  674 	lcall	_OLED_DisplayString
                                    675 ;	./src/main.c:109: OLED_SetCursor(6, text_col);
      00022C 75 17 28         [24]  676 	mov	_OLED_SetCursor_PARM_2,#0x28
      00022F 75 82 06         [24]  677 	mov	dpl,#0x06
      000232 12 05 77         [24]  678 	lcall	_OLED_SetCursor
                                    679 ;	./src/main.c:110: a[0] = '0' + stable_but;
      000235 AF 0C            [24]  680 	mov	r7,_stable_but
      000237 74 30            [12]  681 	mov	a,#0x30
      000239 2F               [12]  682 	add	a,r7
      00023A F5 12            [12]  683 	mov	_main_a_131073_42,a
                                    684 ;	./src/main.c:111: OLED_DisplayString(a);
      00023C 90 00 12         [24]  685 	mov	dptr,#_main_a_131073_42
      00023F 75 F0 40         [24]  686 	mov	b,#0x40
      000242 12 05 21         [24]  687 	lcall	_OLED_DisplayString
                                    688 ;	./src/main.c:114: if (music_on && TR0 == 0)
      000245 E5 08            [12]  689 	mov	a,_music_on
      000247 45 09            [12]  690 	orl	a,(_music_on + 1)
      000249 60 2C            [24]  691 	jz	00121$
      00024B 20 8C 29         [24]  692 	jb	_TR0,00121$
                                    693 ;	./src/main.c:116: TR0 = 1;
                                    694 ;	assignBit
      00024E D2 8C            [12]  695 	setb	_TR0
                                    696 ;	./src/main.c:117: OLED_SetCursor(text_row, text_col);
      000250 75 17 28         [24]  697 	mov	_OLED_SetCursor_PARM_2,#0x28
      000253 75 82 03         [24]  698 	mov	dpl,#0x03
      000256 12 05 77         [24]  699 	lcall	_OLED_SetCursor
                                    700 ;	./src/main.c:118: OLED_DisplayString("           ");
      000259 90 06 52         [24]  701 	mov	dptr,#___str_1
      00025C 75 F0 80         [24]  702 	mov	b,#0x80
      00025F 12 05 21         [24]  703 	lcall	_OLED_DisplayString
                                    704 ;	./src/main.c:119: OLED_SetCursor(text_row, text_col);
      000262 75 17 28         [24]  705 	mov	_OLED_SetCursor_PARM_2,#0x28
      000265 75 82 03         [24]  706 	mov	dpl,#0x03
      000268 12 05 77         [24]  707 	lcall	_OLED_SetCursor
                                    708 ;	./src/main.c:120: OLED_DisplayString("music on!");
      00026B 90 06 5E         [24]  709 	mov	dptr,#___str_2
      00026E 75 F0 80         [24]  710 	mov	b,#0x80
      000271 12 05 21         [24]  711 	lcall	_OLED_DisplayString
      000274 02 01 9C         [24]  712 	ljmp	00125$
      000277                        713 00121$:
                                    714 ;	./src/main.c:122: else if (!music_on && TR0 == 1)
      000277 E5 08            [12]  715 	mov	a,_music_on
      000279 45 09            [12]  716 	orl	a,(_music_on + 1)
      00027B 60 03            [24]  717 	jz	00222$
      00027D 02 01 9C         [24]  718 	ljmp	00125$
      000280                        719 00222$:
                                    720 ;	./src/main.c:124: TR0 = 0;
                                    721 ;	assignBit
      000280 10 8C 03         [24]  722 	jbc	_TR0,00223$
      000283 02 01 9C         [24]  723 	ljmp	00125$
      000286                        724 00223$:
                                    725 ;	./src/main.c:125: OLED_SetCursor(text_row, text_col);
      000286 75 17 28         [24]  726 	mov	_OLED_SetCursor_PARM_2,#0x28
      000289 75 82 03         [24]  727 	mov	dpl,#0x03
      00028C 12 05 77         [24]  728 	lcall	_OLED_SetCursor
                                    729 ;	./src/main.c:126: OLED_DisplayString("           ");
      00028F 90 06 52         [24]  730 	mov	dptr,#___str_1
      000292 75 F0 80         [24]  731 	mov	b,#0x80
      000295 12 05 21         [24]  732 	lcall	_OLED_DisplayString
                                    733 ;	./src/main.c:127: OLED_SetCursor(text_row, text_col);
      000298 75 17 28         [24]  734 	mov	_OLED_SetCursor_PARM_2,#0x28
      00029B 75 82 03         [24]  735 	mov	dpl,#0x03
      00029E 12 05 77         [24]  736 	lcall	_OLED_SetCursor
                                    737 ;	./src/main.c:128: OLED_DisplayString("music off!");
      0002A1 90 06 47         [24]  738 	mov	dptr,#___str_0
      0002A4 75 F0 80         [24]  739 	mov	b,#0x80
      0002A7 12 05 21         [24]  740 	lcall	_OLED_DisplayString
                                    741 ;	./src/main.c:131: }
      0002AA 02 01 9C         [24]  742 	ljmp	00125$
                                    743 ;------------------------------------------------------------
                                    744 ;Allocation info for local variables in function 'LookForSound'
                                    745 ;------------------------------------------------------------
                                    746 ;now                       Allocated to registers r6 r7 
                                    747 ;------------------------------------------------------------
                                    748 ;	./src/main.c:133: void LookForSound(int now)
                                    749 ;	-----------------------------------------
                                    750 ;	 function LookForSound
                                    751 ;	-----------------------------------------
      0002AD                        752 _LookForSound:
      0002AD AE 82            [24]  753 	mov	r6,dpl
      0002AF AF 83            [24]  754 	mov	r7,dph
                                    755 ;	./src/main.c:135: switch (now)
      0002B1 BE 01 05         [24]  756 	cjne	r6,#0x01,00147$
      0002B4 BF 00 02         [24]  757 	cjne	r7,#0x00,00147$
      0002B7 80 28            [24]  758 	sjmp	00101$
      0002B9                        759 00147$:
      0002B9 BE 02 05         [24]  760 	cjne	r6,#0x02,00148$
      0002BC BF 00 02         [24]  761 	cjne	r7,#0x00,00148$
      0002BF 80 23            [24]  762 	sjmp	00102$
      0002C1                        763 00148$:
      0002C1 BE 03 05         [24]  764 	cjne	r6,#0x03,00149$
      0002C4 BF 00 02         [24]  765 	cjne	r7,#0x00,00149$
      0002C7 80 1E            [24]  766 	sjmp	00103$
      0002C9                        767 00149$:
      0002C9 BE 04 05         [24]  768 	cjne	r6,#0x04,00150$
      0002CC BF 00 02         [24]  769 	cjne	r7,#0x00,00150$
      0002CF 80 19            [24]  770 	sjmp	00104$
      0002D1                        771 00150$:
      0002D1 BE 05 05         [24]  772 	cjne	r6,#0x05,00151$
      0002D4 BF 00 02         [24]  773 	cjne	r7,#0x00,00151$
      0002D7 80 14            [24]  774 	sjmp	00105$
      0002D9                        775 00151$:
                                    776 ;	./src/main.c:137: case 1:
      0002D9 BE 06 17         [24]  777 	cjne	r6,#0x06,00109$
      0002DC BF 00 14         [24]  778 	cjne	r7,#0x00,00109$
      0002DF 80 0F            [24]  779 	sjmp	00106$
      0002E1                        780 00101$:
                                    781 ;	./src/main.c:138: Delay_Do();
                                    782 ;	./src/main.c:139: break;
                                    783 ;	./src/main.c:141: case 2:
      0002E1 02 03 E8         [24]  784 	ljmp	_Delay_Do
      0002E4                        785 00102$:
                                    786 ;	./src/main.c:142: Delay_Re();
                                    787 ;	./src/main.c:143: break;
                                    788 ;	./src/main.c:145: case 3:
      0002E4 02 03 F6         [24]  789 	ljmp	_Delay_Re
      0002E7                        790 00103$:
                                    791 ;	./src/main.c:146: Delay_Mi();
                                    792 ;	./src/main.c:147: break;
                                    793 ;	./src/main.c:149: case 4:
      0002E7 02 04 04         [24]  794 	ljmp	_Delay_Mi
      0002EA                        795 00104$:
                                    796 ;	./src/main.c:150: Delay_Fa();
                                    797 ;	./src/main.c:151: break;
                                    798 ;	./src/main.c:153: case 5:
      0002EA 02 04 12         [24]  799 	ljmp	_Delay_Fa
      0002ED                        800 00105$:
                                    801 ;	./src/main.c:154: Delay_So();
                                    802 ;	./src/main.c:155: break;
                                    803 ;	./src/main.c:157: case 6:
      0002ED 02 04 20         [24]  804 	ljmp	_Delay_So
      0002F0                        805 00106$:
                                    806 ;	./src/main.c:158: Delay_La();
                                    807 ;	./src/main.c:163: }
                                    808 ;	./src/main.c:164: }
      0002F0 02 04 2E         [24]  809 	ljmp	_Delay_La
      0002F3                        810 00109$:
      0002F3 22               [24]  811 	ret
                                    812 	.area CSEG    (CODE)
                                    813 	.area CONST   (CODE)
      0005FC                        814 _music_table:
      0005FC 02                     815 	.db #0x02	; 2
      0005FD 04                     816 	.db #0x04	; 4
      0005FE 03                     817 	.db #0x03	; 3
      0005FF 01                     818 	.db #0x01	; 1
      000600 02                     819 	.db #0x02	; 2
      000601 02                     820 	.db #0x02	; 2
      000602 04                     821 	.db #0x04	; 4
      000603 03                     822 	.db #0x03	; 3
      000604 01                     823 	.db #0x01	; 1
      000605 06                     824 	.db #0x06	; 6
      000606 04                     825 	.db #0x04	; 4
      000607 05                     826 	.db #0x05	; 5
      000608 03                     827 	.db #0x03	; 3
      000609 04                     828 	.db #0x04	; 4
      00060A 02                     829 	.db #0x02	; 2
      00060B 03                     830 	.db #0x03	; 3
      00060C 01                     831 	.db #0x01	; 1
      00060D 06                     832 	.db #0x06	; 6
      00060E 04                     833 	.db #0x04	; 4
      00060F 05                     834 	.db #0x05	; 5
      000610 03                     835 	.db #0x03	; 3
      000611 04                     836 	.db #0x04	; 4
      000612 02                     837 	.db #0x02	; 2
      000613 03                     838 	.db #0x03	; 3
      000614 01                     839 	.db #0x01	; 1
      000615                        840 _duration_table:
      000615 F4                     841 	.db #0xf4	; 244
      000616 32                     842 	.db #0x32	; 50	'2'
      000617 C8                     843 	.db #0xc8	; 200
      000618 32                     844 	.db #0x32	; 50	'2'
      000619 32                     845 	.db #0x32	; 50	'2'
      00061A 32                     846 	.db #0x32	; 50	'2'
      00061B 32                     847 	.db #0x32	; 50	'2'
      00061C F4                     848 	.db #0xf4	; 244
      00061D 32                     849 	.db #0x32	; 50	'2'
      00061E F4                     850 	.db #0xf4	; 244
      00061F 64                     851 	.db #0x64	; 100	'd'
      000620 F4                     852 	.db #0xf4	; 244
      000621 F4                     853 	.db #0xf4	; 244
      000622 C8                     854 	.db #0xc8	; 200
      000623 C8                     855 	.db #0xc8	; 200
      000624 C8                     856 	.db #0xc8	; 200
      000625 64                     857 	.db #0x64	; 100	'd'
      000626 F4                     858 	.db #0xf4	; 244
      000627 64                     859 	.db #0x64	; 100	'd'
      000628 F4                     860 	.db #0xf4	; 244
      000629 F4                     861 	.db #0xf4	; 244
      00062A C8                     862 	.db #0xc8	; 200
      00062B C8                     863 	.db #0xc8	; 200
      00062C C8                     864 	.db #0xc8	; 200
      00062D 64                     865 	.db #0x64	; 100	'd'
      00062E                        866 _blanck_table:
      00062E 32                     867 	.db #0x32	; 50	'2'
      00062F 32                     868 	.db #0x32	; 50	'2'
      000630 32                     869 	.db #0x32	; 50	'2'
      000631 F4                     870 	.db #0xf4	; 244
      000632 32                     871 	.db #0x32	; 50	'2'
      000633 32                     872 	.db #0x32	; 50	'2'
      000634 32                     873 	.db #0x32	; 50	'2'
      000635 32                     874 	.db #0x32	; 50	'2'
      000636 F4                     875 	.db #0xf4	; 244
      000637 32                     876 	.db #0x32	; 50	'2'
      000638 32                     877 	.db #0x32	; 50	'2'
      000639 32                     878 	.db #0x32	; 50	'2'
      00063A C8                     879 	.db #0xc8	; 200
      00063B 1E                     880 	.db #0x1e	; 30
      00063C 1E                     881 	.db #0x1e	; 30
      00063D 1E                     882 	.db #0x1e	; 30
      00063E F4                     883 	.db #0xf4	; 244
      00063F 32                     884 	.db #0x32	; 50	'2'
      000640 32                     885 	.db #0x32	; 50	'2'
      000641 32                     886 	.db #0x32	; 50	'2'
      000642 C8                     887 	.db #0xc8	; 200
      000643 1E                     888 	.db #0x1e	; 30
      000644 1E                     889 	.db #0x1e	; 30
      000645 1E                     890 	.db #0x1e	; 30
      000646 F4                     891 	.db #0xf4	; 244
                                    892 	.area CONST   (CODE)
      000647                        893 ___str_0:
      000647 6D 75 73 69 63 20 6F   894 	.ascii "music off!"
             66 66 21
      000651 00                     895 	.db 0x00
                                    896 	.area CSEG    (CODE)
                                    897 	.area CONST   (CODE)
      000652                        898 ___str_1:
      000652 20 20 20 20 20 20 20   899 	.ascii "           "
             20 20 20 20
      00065D 00                     900 	.db 0x00
                                    901 	.area CSEG    (CODE)
                                    902 	.area CONST   (CODE)
      00065E                        903 ___str_2:
      00065E 6D 75 73 69 63 20 6F   904 	.ascii "music on!"
             6E 21
      000667 00                     905 	.db 0x00
                                    906 	.area CSEG    (CODE)
                                    907 	.area XINIT   (CODE)
                                    908 	.area CABS    (ABS,CODE)
