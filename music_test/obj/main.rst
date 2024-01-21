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
                                    123 	.globl _stable_scan
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
      00000C                        260 _stable_scan::
      00000C                        261 	.ds 2
      00000E                        262 _music_play_note::
      00000E                        263 	.ds 2
      000010                        264 _duration_time::
      000010                        265 	.ds 2
                                    266 ;--------------------------------------------------------
                                    267 ; overlayable items in internal ram
                                    268 ;--------------------------------------------------------
                                    269 ;--------------------------------------------------------
                                    270 ; Stack segment in internal ram
                                    271 ;--------------------------------------------------------
                                    272 	.area SSEG
      000021                        273 __start__stack:
      000021                        274 	.ds	1
                                    275 
                                    276 ;--------------------------------------------------------
                                    277 ; indirectly addressable internal ram data
                                    278 ;--------------------------------------------------------
                                    279 	.area ISEG    (DATA)
                                    280 ;--------------------------------------------------------
                                    281 ; absolute internal ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area IABS    (ABS,DATA)
                                    284 	.area IABS    (ABS,DATA)
                                    285 ;--------------------------------------------------------
                                    286 ; bit data
                                    287 ;--------------------------------------------------------
                                    288 	.area BSEG    (BIT)
                                    289 ;--------------------------------------------------------
                                    290 ; paged external ram data
                                    291 ;--------------------------------------------------------
                                    292 	.area PSEG    (PAG,XDATA)
                                    293 ;--------------------------------------------------------
                                    294 ; uninitialized external ram data
                                    295 ;--------------------------------------------------------
                                    296 	.area XSEG    (XDATA)
                                    297 ;--------------------------------------------------------
                                    298 ; absolute external ram data
                                    299 ;--------------------------------------------------------
                                    300 	.area XABS    (ABS,XDATA)
                                    301 ;--------------------------------------------------------
                                    302 ; initialized external ram data
                                    303 ;--------------------------------------------------------
                                    304 	.area XISEG   (XDATA)
                                    305 	.area HOME    (CODE)
                                    306 	.area GSINIT0 (CODE)
                                    307 	.area GSINIT1 (CODE)
                                    308 	.area GSINIT2 (CODE)
                                    309 	.area GSINIT3 (CODE)
                                    310 	.area GSINIT4 (CODE)
                                    311 	.area GSINIT5 (CODE)
                                    312 	.area GSINIT  (CODE)
                                    313 	.area GSFINAL (CODE)
                                    314 	.area CSEG    (CODE)
                                    315 ;--------------------------------------------------------
                                    316 ; interrupt vector
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
      000000                        319 __interrupt_vect:
      000000 02 00 11         [24]  320 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  321 	reti
      000004                        322 	.ds	7
      00000B 02 00 82         [24]  323 	ljmp	_T0_isr
                                    324 ;--------------------------------------------------------
                                    325 ; global & static initialisations
                                    326 ;--------------------------------------------------------
                                    327 	.area HOME    (CODE)
                                    328 	.area GSINIT  (CODE)
                                    329 	.area GSFINAL (CODE)
                                    330 	.area GSINIT  (CODE)
                                    331 	.globl __sdcc_gsinit_startup
                                    332 	.globl __sdcc_program_startup
                                    333 	.globl __start__stack
                                    334 	.globl __mcs51_genXINIT
                                    335 	.globl __mcs51_genXRAMCLEAR
                                    336 	.globl __mcs51_genRAMCLEAR
                                    337 ;	./src/main.c:8: int music_on = 0, scan_cnting = 0, stable_scan = 0;
      00006A E4               [12]  338 	clr	a
      00006B F5 08            [12]  339 	mov	_music_on,a
      00006D F5 09            [12]  340 	mov	(_music_on + 1),a
                                    341 ;	./src/main.c:8: int music_play_note = 0, duration_time = 0;
      00006F F5 0A            [12]  342 	mov	_scan_cnting,a
      000071 F5 0B            [12]  343 	mov	(_scan_cnting + 1),a
                                    344 ;	./src/main.c:8: int music_on = 0, scan_cnting = 0, stable_scan = 0;
      000073 F5 0C            [12]  345 	mov	_stable_scan,a
      000075 F5 0D            [12]  346 	mov	(_stable_scan + 1),a
                                    347 ;	./src/main.c:9: int music_play_note = 0, duration_time = 0;
      000077 F5 0E            [12]  348 	mov	_music_play_note,a
      000079 F5 0F            [12]  349 	mov	(_music_play_note + 1),a
                                    350 ;	./src/main.c:9: 
      00007B F5 10            [12]  351 	mov	_duration_time,a
      00007D F5 11            [12]  352 	mov	(_duration_time + 1),a
                                    353 	.area GSFINAL (CODE)
      00007F 02 00 0E         [24]  354 	ljmp	__sdcc_program_startup
                                    355 ;--------------------------------------------------------
                                    356 ; Home
                                    357 ;--------------------------------------------------------
                                    358 	.area HOME    (CODE)
                                    359 	.area HOME    (CODE)
      00000E                        360 __sdcc_program_startup:
      00000E 02 01 76         [24]  361 	ljmp	_main
                                    362 ;	return from main will return to caller
                                    363 ;--------------------------------------------------------
                                    364 ; code
                                    365 ;--------------------------------------------------------
                                    366 	.area CSEG    (CODE)
                                    367 ;------------------------------------------------------------
                                    368 ;Allocation info for local variables in function 'T0_isr'
                                    369 ;------------------------------------------------------------
                                    370 ;	./src/main.c:26: void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
                                    371 ;	-----------------------------------------
                                    372 ;	 function T0_isr
                                    373 ;	-----------------------------------------
      000082                        374 _T0_isr:
                           000007   375 	ar7 = 0x07
                           000006   376 	ar6 = 0x06
                           000005   377 	ar5 = 0x05
                           000004   378 	ar4 = 0x04
                           000003   379 	ar3 = 0x03
                           000002   380 	ar2 = 0x02
                           000001   381 	ar1 = 0x01
                           000000   382 	ar0 = 0x00
      000082 C0 20            [24]  383 	push	bits
      000084 C0 E0            [24]  384 	push	acc
      000086 C0 F0            [24]  385 	push	b
      000088 C0 82            [24]  386 	push	dpl
      00008A C0 83            [24]  387 	push	dph
      00008C C0 07            [24]  388 	push	(0+7)
      00008E C0 06            [24]  389 	push	(0+6)
      000090 C0 05            [24]  390 	push	(0+5)
      000092 C0 04            [24]  391 	push	(0+4)
      000094 C0 03            [24]  392 	push	(0+3)
      000096 C0 02            [24]  393 	push	(0+2)
      000098 C0 01            [24]  394 	push	(0+1)
      00009A C0 00            [24]  395 	push	(0+0)
      00009C C0 D0            [24]  396 	push	psw
      00009E 75 D0 00         [24]  397 	mov	psw,#0x00
                                    398 ;	./src/main.c:29: TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
      0000A1 75 8C FC         [24]  399 	mov	_TH0,#0xfc
                                    400 ;	./src/main.c:30: TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0
      0000A4 75 8A 18         [24]  401 	mov	_TL0,#0x18
                                    402 ;	./src/main.c:32: duration_time++;
      0000A7 05 10            [12]  403 	inc	_duration_time
      0000A9 E4               [12]  404 	clr	a
      0000AA B5 10 02         [24]  405 	cjne	a,_duration_time,00134$
      0000AD 05 11            [12]  406 	inc	(_duration_time + 1)
      0000AF                        407 00134$:
                                    408 ;	./src/main.c:34: while (duration_time < duration_table[music_play_note])
      0000AF                        409 00101$:
      0000AF E5 0E            [12]  410 	mov	a,_music_play_note
      0000B1 24 E2            [12]  411 	add	a,#_duration_table
      0000B3 F5 82            [12]  412 	mov	dpl,a
      0000B5 E5 0F            [12]  413 	mov	a,(_music_play_note + 1)
      0000B7 34 05            [12]  414 	addc	a,#(_duration_table >> 8)
      0000B9 F5 83            [12]  415 	mov	dph,a
      0000BB E4               [12]  416 	clr	a
      0000BC 93               [24]  417 	movc	a,@a+dptr
      0000BD FE               [12]  418 	mov	r6,a
      0000BE 7F 00            [12]  419 	mov	r7,#0x00
      0000C0 C3               [12]  420 	clr	c
      0000C1 E5 10            [12]  421 	mov	a,_duration_time
      0000C3 9E               [12]  422 	subb	a,r6
      0000C4 E5 11            [12]  423 	mov	a,(_duration_time + 1)
      0000C6 64 80            [12]  424 	xrl	a,#0x80
      0000C8 8F F0            [24]  425 	mov	b,r7
      0000CA 63 F0 80         [24]  426 	xrl	b,#0x80
      0000CD 95 F0            [12]  427 	subb	a,b
      0000CF 50 3E            [24]  428 	jnc	00103$
                                    429 ;	./src/main.c:36: duration_time++;
      0000D1 05 10            [12]  430 	inc	_duration_time
      0000D3 E4               [12]  431 	clr	a
      0000D4 B5 10 02         [24]  432 	cjne	a,_duration_time,00136$
      0000D7 05 11            [12]  433 	inc	(_duration_time + 1)
      0000D9                        434 00136$:
                                    435 ;	./src/main.c:37: P3_7 = 1;
                                    436 ;	assignBit
      0000D9 D2 B7            [12]  437 	setb	_P3_7
                                    438 ;	./src/main.c:38: LookForSound(music_table[music_play_note]);
      0000DB E5 0E            [12]  439 	mov	a,_music_play_note
      0000DD 24 C9            [12]  440 	add	a,#_music_table
      0000DF F5 82            [12]  441 	mov	dpl,a
      0000E1 E5 0F            [12]  442 	mov	a,(_music_play_note + 1)
      0000E3 34 05            [12]  443 	addc	a,#(_music_table >> 8)
      0000E5 F5 83            [12]  444 	mov	dph,a
      0000E7 E4               [12]  445 	clr	a
      0000E8 93               [24]  446 	movc	a,@a+dptr
      0000E9 FD               [12]  447 	mov	r5,a
      0000EA 7C 00            [12]  448 	mov	r4,#0x00
      0000EC 8D 82            [24]  449 	mov	dpl,r5
      0000EE 8C 83            [24]  450 	mov	dph,r4
      0000F0 12 02 7A         [24]  451 	lcall	_LookForSound
                                    452 ;	./src/main.c:39: P3_7 = 0;
                                    453 ;	assignBit
      0000F3 C2 B7            [12]  454 	clr	_P3_7
                                    455 ;	./src/main.c:40: LookForSound(music_table[music_play_note]);
      0000F5 E5 0E            [12]  456 	mov	a,_music_play_note
      0000F7 24 C9            [12]  457 	add	a,#_music_table
      0000F9 F5 82            [12]  458 	mov	dpl,a
      0000FB E5 0F            [12]  459 	mov	a,(_music_play_note + 1)
      0000FD 34 05            [12]  460 	addc	a,#(_music_table >> 8)
      0000FF F5 83            [12]  461 	mov	dph,a
      000101 E4               [12]  462 	clr	a
      000102 93               [24]  463 	movc	a,@a+dptr
      000103 FD               [12]  464 	mov	r5,a
      000104 7C 00            [12]  465 	mov	r4,#0x00
      000106 8D 82            [24]  466 	mov	dpl,r5
      000108 8C 83            [24]  467 	mov	dph,r4
      00010A 12 02 7A         [24]  468 	lcall	_LookForSound
      00010D 80 A0            [24]  469 	sjmp	00101$
      00010F                        470 00103$:
                                    471 ;	./src/main.c:42: if (duration_time >= (duration_table[music_play_note] + blanck_table[music_play_note]))
      00010F E5 0E            [12]  472 	mov	a,_music_play_note
      000111 24 FB            [12]  473 	add	a,#_blanck_table
      000113 F5 82            [12]  474 	mov	dpl,a
      000115 E5 0F            [12]  475 	mov	a,(_music_play_note + 1)
      000117 34 05            [12]  476 	addc	a,#(_blanck_table >> 8)
      000119 F5 83            [12]  477 	mov	dph,a
      00011B E4               [12]  478 	clr	a
      00011C 93               [24]  479 	movc	a,@a+dptr
      00011D 7C 00            [12]  480 	mov	r4,#0x00
      00011F 2E               [12]  481 	add	a,r6
      000120 FE               [12]  482 	mov	r6,a
      000121 EC               [12]  483 	mov	a,r4
      000122 3F               [12]  484 	addc	a,r7
      000123 FF               [12]  485 	mov	r7,a
      000124 C3               [12]  486 	clr	c
      000125 E5 10            [12]  487 	mov	a,_duration_time
      000127 9E               [12]  488 	subb	a,r6
      000128 E5 11            [12]  489 	mov	a,(_duration_time + 1)
      00012A 64 80            [12]  490 	xrl	a,#0x80
      00012C 8F F0            [24]  491 	mov	b,r7
      00012E 63 F0 80         [24]  492 	xrl	b,#0x80
      000131 95 F0            [12]  493 	subb	a,b
      000133 40 24            [24]  494 	jc	00108$
                                    495 ;	./src/main.c:44: duration_time = 0;
      000135 E4               [12]  496 	clr	a
      000136 F5 10            [12]  497 	mov	_duration_time,a
      000138 F5 11            [12]  498 	mov	(_duration_time + 1),a
                                    499 ;	./src/main.c:45: music_play_note++;
      00013A 05 0E            [12]  500 	inc	_music_play_note
      00013C B5 0E 02         [24]  501 	cjne	a,_music_play_note,00138$
      00013F 05 0F            [12]  502 	inc	(_music_play_note + 1)
      000141                        503 00138$:
                                    504 ;	./src/main.c:47: if (music_play_note >= NOTE_NUM)
      000141 C3               [12]  505 	clr	c
      000142 E5 0E            [12]  506 	mov	a,_music_play_note
      000144 94 19            [12]  507 	subb	a,#0x19
      000146 E5 0F            [12]  508 	mov	a,(_music_play_note + 1)
      000148 64 80            [12]  509 	xrl	a,#0x80
      00014A 94 80            [12]  510 	subb	a,#0x80
      00014C 40 0B            [24]  511 	jc	00108$
                                    512 ;	./src/main.c:49: TR0 = 0;
                                    513 ;	assignBit
      00014E C2 8C            [12]  514 	clr	_TR0
                                    515 ;	./src/main.c:50: music_on = 0;
      000150 E4               [12]  516 	clr	a
      000151 F5 08            [12]  517 	mov	_music_on,a
      000153 F5 09            [12]  518 	mov	(_music_on + 1),a
                                    519 ;	./src/main.c:51: music_play_note = 0;
      000155 F5 0E            [12]  520 	mov	_music_play_note,a
      000157 F5 0F            [12]  521 	mov	(_music_play_note + 1),a
      000159                        522 00108$:
                                    523 ;	./src/main.c:54: }
      000159 D0 D0            [24]  524 	pop	psw
      00015B D0 00            [24]  525 	pop	(0+0)
      00015D D0 01            [24]  526 	pop	(0+1)
      00015F D0 02            [24]  527 	pop	(0+2)
      000161 D0 03            [24]  528 	pop	(0+3)
      000163 D0 04            [24]  529 	pop	(0+4)
      000165 D0 05            [24]  530 	pop	(0+5)
      000167 D0 06            [24]  531 	pop	(0+6)
      000169 D0 07            [24]  532 	pop	(0+7)
      00016B D0 83            [24]  533 	pop	dph
      00016D D0 82            [24]  534 	pop	dpl
      00016F D0 F0            [24]  535 	pop	b
      000171 D0 E0            [24]  536 	pop	acc
      000173 D0 20            [24]  537 	pop	bits
      000175 32               [24]  538 	reti
                                    539 ;------------------------------------------------------------
                                    540 ;Allocation info for local variables in function 'main'
                                    541 ;------------------------------------------------------------
                                    542 ;	./src/main.c:59: int main()
                                    543 ;	-----------------------------------------
                                    544 ;	 function main
                                    545 ;	-----------------------------------------
      000176                        546 _main:
                                    547 ;	./src/main.c:62: TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
      000176 75 89 01         [24]  548 	mov	_TMOD,#0x01
                                    549 ;	./src/main.c:63: TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
      000179 75 8C FC         [24]  550 	mov	_TH0,#0xfc
                                    551 ;	./src/main.c:64: TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
      00017C 75 8A 18         [24]  552 	mov	_TL0,#0x18
                                    553 ;	./src/main.c:65: ET0 = 1;                    // Enable Timer 0 interrupt
                                    554 ;	assignBit
      00017F D2 A9            [12]  555 	setb	_ET0
                                    556 ;	./src/main.c:66: EA = 1;                     // Enable all interrupt
                                    557 ;	assignBit
      000181 D2 AF            [12]  558 	setb	_EA
                                    559 ;	./src/main.c:67: TR0 = 0;                    // Start Timer 0
                                    560 ;	assignBit
      000183 C2 8C            [12]  561 	clr	_TR0
                                    562 ;	./src/main.c:70: SDA = 1;
                                    563 ;	assignBit
      000185 D2 81            [12]  564 	setb	_P0_1
                                    565 ;	./src/main.c:71: SCL = 1;
                                    566 ;	assignBit
      000187 D2 80            [12]  567 	setb	_P0_0
                                    568 ;	./src/main.c:73: OLED_Init();
      000189 12 04 2E         [24]  569 	lcall	_OLED_Init
                                    570 ;	./src/main.c:74: OLED_SetCursor(text_row, text_col);
      00018C 75 15 28         [24]  571 	mov	_OLED_SetCursor_PARM_2,#0x28
      00018F 75 82 03         [24]  572 	mov	dpl,#0x03
      000192 12 05 44         [24]  573 	lcall	_OLED_SetCursor
                                    574 ;	./src/main.c:75: OLED_DisplayString("music off!");
      000195 90 06 14         [24]  575 	mov	dptr,#___str_0
      000198 75 F0 80         [24]  576 	mov	b,#0x80
      00019B 12 04 EE         [24]  577 	lcall	_OLED_DisplayString
                                    578 ;	./src/main.c:77: while (1)
      00019E                        579 00125$:
                                    580 ;	./src/main.c:80: if (P2_0 == 0 && stable_scan == 1)
      00019E 20 A0 39         [24]  581 	jb	_P2_0,00114$
      0001A1 74 01            [12]  582 	mov	a,#0x01
      0001A3 B5 0C 06         [24]  583 	cjne	a,_stable_scan,00208$
      0001A6 14               [12]  584 	dec	a
      0001A7 B5 0D 02         [24]  585 	cjne	a,(_stable_scan + 1),00208$
      0001AA 80 02            [24]  586 	sjmp	00209$
      0001AC                        587 00208$:
      0001AC 80 2C            [24]  588 	sjmp	00114$
      0001AE                        589 00209$:
                                    590 ;	./src/main.c:82: if (scan_cnting < scan_cnt)
      0001AE C3               [12]  591 	clr	c
      0001AF E5 0A            [12]  592 	mov	a,_scan_cnting
      0001B1 94 0A            [12]  593 	subb	a,#0x0a
      0001B3 E5 0B            [12]  594 	mov	a,(_scan_cnting + 1)
      0001B5 64 80            [12]  595 	xrl	a,#0x80
      0001B7 94 80            [12]  596 	subb	a,#0x80
      0001B9 50 57            [24]  597 	jnc	00115$
                                    598 ;	./src/main.c:84: scan_cnting++;
      0001BB 05 0A            [12]  599 	inc	_scan_cnting
      0001BD E4               [12]  600 	clr	a
      0001BE B5 0A 02         [24]  601 	cjne	a,_scan_cnting,00211$
      0001C1 05 0B            [12]  602 	inc	(_scan_cnting + 1)
      0001C3                        603 00211$:
                                    604 ;	./src/main.c:85: if (scan_cnting == scan_cnt)
      0001C3 74 0A            [12]  605 	mov	a,#0x0a
      0001C5 B5 0A 06         [24]  606 	cjne	a,_scan_cnting,00212$
      0001C8 E4               [12]  607 	clr	a
      0001C9 B5 0B 02         [24]  608 	cjne	a,(_scan_cnting + 1),00212$
      0001CC 80 02            [24]  609 	sjmp	00213$
      0001CE                        610 00212$:
      0001CE 80 42            [24]  611 	sjmp	00115$
      0001D0                        612 00213$:
                                    613 ;	./src/main.c:87: music_on ^= 1;
      0001D0 63 08 01         [24]  614 	xrl	_music_on,#0x01
                                    615 ;	./src/main.c:88: stable_scan = 0;
      0001D3 E4               [12]  616 	clr	a
      0001D4 F5 0C            [12]  617 	mov	_stable_scan,a
      0001D6 F5 0D            [12]  618 	mov	(_stable_scan + 1),a
      0001D8 80 38            [24]  619 	sjmp	00115$
      0001DA                        620 00114$:
                                    621 ;	./src/main.c:92: else if (P2_0 == 1 && stable_scan == 0)
      0001DA 30 A0 30         [24]  622 	jnb	_P2_0,00110$
      0001DD E5 0C            [12]  623 	mov	a,_stable_scan
      0001DF 45 0D            [12]  624 	orl	a,(_stable_scan + 1)
      0001E1 70 2A            [24]  625 	jnz	00110$
                                    626 ;	./src/main.c:94: if (scan_cnting < scan_cnt)
      0001E3 C3               [12]  627 	clr	c
      0001E4 E5 0A            [12]  628 	mov	a,_scan_cnting
      0001E6 94 0A            [12]  629 	subb	a,#0x0a
      0001E8 E5 0B            [12]  630 	mov	a,(_scan_cnting + 1)
      0001EA 64 80            [12]  631 	xrl	a,#0x80
      0001EC 94 80            [12]  632 	subb	a,#0x80
      0001EE 50 22            [24]  633 	jnc	00115$
                                    634 ;	./src/main.c:96: scan_cnting++;
      0001F0 05 0A            [12]  635 	inc	_scan_cnting
      0001F2 E4               [12]  636 	clr	a
      0001F3 B5 0A 02         [24]  637 	cjne	a,_scan_cnting,00217$
      0001F6 05 0B            [12]  638 	inc	(_scan_cnting + 1)
      0001F8                        639 00217$:
                                    640 ;	./src/main.c:97: if (scan_cnting == scan_cnt)
      0001F8 74 0A            [12]  641 	mov	a,#0x0a
      0001FA B5 0A 06         [24]  642 	cjne	a,_scan_cnting,00218$
      0001FD E4               [12]  643 	clr	a
      0001FE B5 0B 02         [24]  644 	cjne	a,(_scan_cnting + 1),00218$
      000201 80 02            [24]  645 	sjmp	00219$
      000203                        646 00218$:
      000203 80 0D            [24]  647 	sjmp	00115$
      000205                        648 00219$:
                                    649 ;	./src/main.c:98: stable_scan = 1;
      000205 75 0C 01         [24]  650 	mov	_stable_scan,#0x01
      000208 75 0D 00         [24]  651 	mov	(_stable_scan + 1),#0x00
      00020B 80 05            [24]  652 	sjmp	00115$
      00020D                        653 00110$:
                                    654 ;	./src/main.c:102: scan_cnting = 0;
      00020D E4               [12]  655 	clr	a
      00020E F5 0A            [12]  656 	mov	_scan_cnting,a
      000210 F5 0B            [12]  657 	mov	(_scan_cnting + 1),a
      000212                        658 00115$:
                                    659 ;	./src/main.c:105: if (music_on && TR0 == 0)
      000212 E5 08            [12]  660 	mov	a,_music_on
      000214 45 09            [12]  661 	orl	a,(_music_on + 1)
      000216 60 2C            [24]  662 	jz	00121$
      000218 20 8C 29         [24]  663 	jb	_TR0,00121$
                                    664 ;	./src/main.c:107: TR0 = 1;
                                    665 ;	assignBit
      00021B D2 8C            [12]  666 	setb	_TR0
                                    667 ;	./src/main.c:108: OLED_SetCursor(text_row, text_col);
      00021D 75 15 28         [24]  668 	mov	_OLED_SetCursor_PARM_2,#0x28
      000220 75 82 03         [24]  669 	mov	dpl,#0x03
      000223 12 05 44         [24]  670 	lcall	_OLED_SetCursor
                                    671 ;	./src/main.c:109: OLED_DisplayString("           ");
      000226 90 06 1F         [24]  672 	mov	dptr,#___str_1
      000229 75 F0 80         [24]  673 	mov	b,#0x80
      00022C 12 04 EE         [24]  674 	lcall	_OLED_DisplayString
                                    675 ;	./src/main.c:110: OLED_SetCursor(text_row, text_col);
      00022F 75 15 28         [24]  676 	mov	_OLED_SetCursor_PARM_2,#0x28
      000232 75 82 03         [24]  677 	mov	dpl,#0x03
      000235 12 05 44         [24]  678 	lcall	_OLED_SetCursor
                                    679 ;	./src/main.c:111: OLED_DisplayString("music on!");
      000238 90 06 2B         [24]  680 	mov	dptr,#___str_2
      00023B 75 F0 80         [24]  681 	mov	b,#0x80
      00023E 12 04 EE         [24]  682 	lcall	_OLED_DisplayString
      000241 02 01 9E         [24]  683 	ljmp	00125$
      000244                        684 00121$:
                                    685 ;	./src/main.c:113: else if (!music_on && TR0 == 1)
      000244 E5 08            [12]  686 	mov	a,_music_on
      000246 45 09            [12]  687 	orl	a,(_music_on + 1)
      000248 60 03            [24]  688 	jz	00222$
      00024A 02 01 9E         [24]  689 	ljmp	00125$
      00024D                        690 00222$:
                                    691 ;	./src/main.c:115: TR0 = 0;
                                    692 ;	assignBit
      00024D 10 8C 03         [24]  693 	jbc	_TR0,00223$
      000250 02 01 9E         [24]  694 	ljmp	00125$
      000253                        695 00223$:
                                    696 ;	./src/main.c:116: OLED_SetCursor(text_row, text_col);
      000253 75 15 28         [24]  697 	mov	_OLED_SetCursor_PARM_2,#0x28
      000256 75 82 03         [24]  698 	mov	dpl,#0x03
      000259 12 05 44         [24]  699 	lcall	_OLED_SetCursor
                                    700 ;	./src/main.c:117: OLED_DisplayString("           ");
      00025C 90 06 1F         [24]  701 	mov	dptr,#___str_1
      00025F 75 F0 80         [24]  702 	mov	b,#0x80
      000262 12 04 EE         [24]  703 	lcall	_OLED_DisplayString
                                    704 ;	./src/main.c:118: OLED_SetCursor(text_row, text_col);
      000265 75 15 28         [24]  705 	mov	_OLED_SetCursor_PARM_2,#0x28
      000268 75 82 03         [24]  706 	mov	dpl,#0x03
      00026B 12 05 44         [24]  707 	lcall	_OLED_SetCursor
                                    708 ;	./src/main.c:119: OLED_DisplayString("music off!");
      00026E 90 06 14         [24]  709 	mov	dptr,#___str_0
      000271 75 F0 80         [24]  710 	mov	b,#0x80
      000274 12 04 EE         [24]  711 	lcall	_OLED_DisplayString
                                    712 ;	./src/main.c:122: }
      000277 02 01 9E         [24]  713 	ljmp	00125$
                                    714 ;------------------------------------------------------------
                                    715 ;Allocation info for local variables in function 'LookForSound'
                                    716 ;------------------------------------------------------------
                                    717 ;now                       Allocated to registers r6 r7 
                                    718 ;------------------------------------------------------------
                                    719 ;	./src/main.c:124: void LookForSound(int now)
                                    720 ;	-----------------------------------------
                                    721 ;	 function LookForSound
                                    722 ;	-----------------------------------------
      00027A                        723 _LookForSound:
      00027A AE 82            [24]  724 	mov	r6,dpl
      00027C AF 83            [24]  725 	mov	r7,dph
                                    726 ;	./src/main.c:126: switch (now)
      00027E BE 01 05         [24]  727 	cjne	r6,#0x01,00147$
      000281 BF 00 02         [24]  728 	cjne	r7,#0x00,00147$
      000284 80 28            [24]  729 	sjmp	00101$
      000286                        730 00147$:
      000286 BE 02 05         [24]  731 	cjne	r6,#0x02,00148$
      000289 BF 00 02         [24]  732 	cjne	r7,#0x00,00148$
      00028C 80 23            [24]  733 	sjmp	00102$
      00028E                        734 00148$:
      00028E BE 03 05         [24]  735 	cjne	r6,#0x03,00149$
      000291 BF 00 02         [24]  736 	cjne	r7,#0x00,00149$
      000294 80 1E            [24]  737 	sjmp	00103$
      000296                        738 00149$:
      000296 BE 04 05         [24]  739 	cjne	r6,#0x04,00150$
      000299 BF 00 02         [24]  740 	cjne	r7,#0x00,00150$
      00029C 80 19            [24]  741 	sjmp	00104$
      00029E                        742 00150$:
      00029E BE 05 05         [24]  743 	cjne	r6,#0x05,00151$
      0002A1 BF 00 02         [24]  744 	cjne	r7,#0x00,00151$
      0002A4 80 14            [24]  745 	sjmp	00105$
      0002A6                        746 00151$:
                                    747 ;	./src/main.c:128: case 1:
      0002A6 BE 06 17         [24]  748 	cjne	r6,#0x06,00109$
      0002A9 BF 00 14         [24]  749 	cjne	r7,#0x00,00109$
      0002AC 80 0F            [24]  750 	sjmp	00106$
      0002AE                        751 00101$:
                                    752 ;	./src/main.c:129: Delay_Do();
                                    753 ;	./src/main.c:130: break;
                                    754 ;	./src/main.c:132: case 2:
      0002AE 02 03 B5         [24]  755 	ljmp	_Delay_Do
      0002B1                        756 00102$:
                                    757 ;	./src/main.c:133: Delay_Re();
                                    758 ;	./src/main.c:134: break;
                                    759 ;	./src/main.c:136: case 3:
      0002B1 02 03 C3         [24]  760 	ljmp	_Delay_Re
      0002B4                        761 00103$:
                                    762 ;	./src/main.c:137: Delay_Mi();
                                    763 ;	./src/main.c:138: break;
                                    764 ;	./src/main.c:140: case 4:
      0002B4 02 03 D1         [24]  765 	ljmp	_Delay_Mi
      0002B7                        766 00104$:
                                    767 ;	./src/main.c:141: Delay_Fa();
                                    768 ;	./src/main.c:142: break;
                                    769 ;	./src/main.c:144: case 5:
      0002B7 02 03 DF         [24]  770 	ljmp	_Delay_Fa
      0002BA                        771 00105$:
                                    772 ;	./src/main.c:145: Delay_So();
                                    773 ;	./src/main.c:146: break;
                                    774 ;	./src/main.c:148: case 6:
      0002BA 02 03 ED         [24]  775 	ljmp	_Delay_So
      0002BD                        776 00106$:
                                    777 ;	./src/main.c:149: Delay_La();
                                    778 ;	./src/main.c:154: }
                                    779 ;	./src/main.c:155: }
      0002BD 02 03 FB         [24]  780 	ljmp	_Delay_La
      0002C0                        781 00109$:
      0002C0 22               [24]  782 	ret
                                    783 	.area CSEG    (CODE)
                                    784 	.area CONST   (CODE)
      0005C9                        785 _music_table:
      0005C9 02                     786 	.db #0x02	; 2
      0005CA 04                     787 	.db #0x04	; 4
      0005CB 03                     788 	.db #0x03	; 3
      0005CC 01                     789 	.db #0x01	; 1
      0005CD 02                     790 	.db #0x02	; 2
      0005CE 02                     791 	.db #0x02	; 2
      0005CF 04                     792 	.db #0x04	; 4
      0005D0 03                     793 	.db #0x03	; 3
      0005D1 01                     794 	.db #0x01	; 1
      0005D2 06                     795 	.db #0x06	; 6
      0005D3 04                     796 	.db #0x04	; 4
      0005D4 05                     797 	.db #0x05	; 5
      0005D5 03                     798 	.db #0x03	; 3
      0005D6 04                     799 	.db #0x04	; 4
      0005D7 02                     800 	.db #0x02	; 2
      0005D8 03                     801 	.db #0x03	; 3
      0005D9 01                     802 	.db #0x01	; 1
      0005DA 06                     803 	.db #0x06	; 6
      0005DB 04                     804 	.db #0x04	; 4
      0005DC 05                     805 	.db #0x05	; 5
      0005DD 03                     806 	.db #0x03	; 3
      0005DE 04                     807 	.db #0x04	; 4
      0005DF 02                     808 	.db #0x02	; 2
      0005E0 03                     809 	.db #0x03	; 3
      0005E1 01                     810 	.db #0x01	; 1
      0005E2                        811 _duration_table:
      0005E2 F4                     812 	.db #0xf4	; 244
      0005E3 32                     813 	.db #0x32	; 50	'2'
      0005E4 C8                     814 	.db #0xc8	; 200
      0005E5 32                     815 	.db #0x32	; 50	'2'
      0005E6 32                     816 	.db #0x32	; 50	'2'
      0005E7 32                     817 	.db #0x32	; 50	'2'
      0005E8 32                     818 	.db #0x32	; 50	'2'
      0005E9 F4                     819 	.db #0xf4	; 244
      0005EA 32                     820 	.db #0x32	; 50	'2'
      0005EB F4                     821 	.db #0xf4	; 244
      0005EC 64                     822 	.db #0x64	; 100	'd'
      0005ED F4                     823 	.db #0xf4	; 244
      0005EE F4                     824 	.db #0xf4	; 244
      0005EF C8                     825 	.db #0xc8	; 200
      0005F0 C8                     826 	.db #0xc8	; 200
      0005F1 C8                     827 	.db #0xc8	; 200
      0005F2 64                     828 	.db #0x64	; 100	'd'
      0005F3 F4                     829 	.db #0xf4	; 244
      0005F4 64                     830 	.db #0x64	; 100	'd'
      0005F5 F4                     831 	.db #0xf4	; 244
      0005F6 F4                     832 	.db #0xf4	; 244
      0005F7 C8                     833 	.db #0xc8	; 200
      0005F8 C8                     834 	.db #0xc8	; 200
      0005F9 C8                     835 	.db #0xc8	; 200
      0005FA 64                     836 	.db #0x64	; 100	'd'
      0005FB                        837 _blanck_table:
      0005FB 32                     838 	.db #0x32	; 50	'2'
      0005FC 32                     839 	.db #0x32	; 50	'2'
      0005FD 32                     840 	.db #0x32	; 50	'2'
      0005FE F4                     841 	.db #0xf4	; 244
      0005FF 32                     842 	.db #0x32	; 50	'2'
      000600 32                     843 	.db #0x32	; 50	'2'
      000601 32                     844 	.db #0x32	; 50	'2'
      000602 32                     845 	.db #0x32	; 50	'2'
      000603 F4                     846 	.db #0xf4	; 244
      000604 32                     847 	.db #0x32	; 50	'2'
      000605 32                     848 	.db #0x32	; 50	'2'
      000606 32                     849 	.db #0x32	; 50	'2'
      000607 C8                     850 	.db #0xc8	; 200
      000608 1E                     851 	.db #0x1e	; 30
      000609 1E                     852 	.db #0x1e	; 30
      00060A 1E                     853 	.db #0x1e	; 30
      00060B F4                     854 	.db #0xf4	; 244
      00060C 32                     855 	.db #0x32	; 50	'2'
      00060D 32                     856 	.db #0x32	; 50	'2'
      00060E 32                     857 	.db #0x32	; 50	'2'
      00060F C8                     858 	.db #0xc8	; 200
      000610 1E                     859 	.db #0x1e	; 30
      000611 1E                     860 	.db #0x1e	; 30
      000612 1E                     861 	.db #0x1e	; 30
      000613 F4                     862 	.db #0xf4	; 244
                                    863 	.area CONST   (CODE)
      000614                        864 ___str_0:
      000614 6D 75 73 69 63 20 6F   865 	.ascii "music off!"
             66 66 21
      00061E 00                     866 	.db 0x00
                                    867 	.area CSEG    (CODE)
                                    868 	.area CONST   (CODE)
      00061F                        869 ___str_1:
      00061F 20 20 20 20 20 20 20   870 	.ascii "           "
             20 20 20 20
      00062A 00                     871 	.db 0x00
                                    872 	.area CSEG    (CODE)
                                    873 	.area CONST   (CODE)
      00062B                        874 ___str_2:
      00062B 6D 75 73 69 63 20 6F   875 	.ascii "music on!"
             6E 21
      000634 00                     876 	.db 0x00
                                    877 	.area CSEG    (CODE)
                                    878 	.area XINIT   (CODE)
                                    879 	.area CABS    (ABS,CODE)
