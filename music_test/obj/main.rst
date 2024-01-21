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
                                     16 	.globl _Delay_La
                                     17 	.globl _Delay_So
                                     18 	.globl _Delay_Fa
                                     19 	.globl _Delay_Mi
                                     20 	.globl _Delay_Re
                                     21 	.globl _Delay_Do
                                     22 	.globl _CY
                                     23 	.globl _AC
                                     24 	.globl _F0
                                     25 	.globl _RS1
                                     26 	.globl _RS0
                                     27 	.globl _OV
                                     28 	.globl _F1
                                     29 	.globl _P
                                     30 	.globl _PS
                                     31 	.globl _PT1
                                     32 	.globl _PX1
                                     33 	.globl _PT0
                                     34 	.globl _PX0
                                     35 	.globl _RD
                                     36 	.globl _WR
                                     37 	.globl _T1
                                     38 	.globl _T0
                                     39 	.globl _INT1
                                     40 	.globl _INT0
                                     41 	.globl _TXD
                                     42 	.globl _RXD
                                     43 	.globl _P3_7
                                     44 	.globl _P3_6
                                     45 	.globl _P3_5
                                     46 	.globl _P3_4
                                     47 	.globl _P3_3
                                     48 	.globl _P3_2
                                     49 	.globl _P3_1
                                     50 	.globl _P3_0
                                     51 	.globl _EA
                                     52 	.globl _ES
                                     53 	.globl _ET1
                                     54 	.globl _EX1
                                     55 	.globl _ET0
                                     56 	.globl _EX0
                                     57 	.globl _P2_7
                                     58 	.globl _P2_6
                                     59 	.globl _P2_5
                                     60 	.globl _P2_4
                                     61 	.globl _P2_3
                                     62 	.globl _P2_2
                                     63 	.globl _P2_1
                                     64 	.globl _P2_0
                                     65 	.globl _SM0
                                     66 	.globl _SM1
                                     67 	.globl _SM2
                                     68 	.globl _REN
                                     69 	.globl _TB8
                                     70 	.globl _RB8
                                     71 	.globl _TI
                                     72 	.globl _RI
                                     73 	.globl _P1_7
                                     74 	.globl _P1_6
                                     75 	.globl _P1_5
                                     76 	.globl _P1_4
                                     77 	.globl _P1_3
                                     78 	.globl _P1_2
                                     79 	.globl _P1_1
                                     80 	.globl _P1_0
                                     81 	.globl _TF1
                                     82 	.globl _TR1
                                     83 	.globl _TF0
                                     84 	.globl _TR0
                                     85 	.globl _IE1
                                     86 	.globl _IT1
                                     87 	.globl _IE0
                                     88 	.globl _IT0
                                     89 	.globl _P0_7
                                     90 	.globl _P0_6
                                     91 	.globl _P0_5
                                     92 	.globl _P0_4
                                     93 	.globl _P0_3
                                     94 	.globl _P0_2
                                     95 	.globl _P0_1
                                     96 	.globl _P0_0
                                     97 	.globl _B
                                     98 	.globl _ACC
                                     99 	.globl _PSW
                                    100 	.globl _IP
                                    101 	.globl _P3
                                    102 	.globl _IE
                                    103 	.globl _P2
                                    104 	.globl _SBUF
                                    105 	.globl _SCON
                                    106 	.globl _P1
                                    107 	.globl _TH1
                                    108 	.globl _TH0
                                    109 	.globl _TL1
                                    110 	.globl _TL0
                                    111 	.globl _TMOD
                                    112 	.globl _TCON
                                    113 	.globl _PCON
                                    114 	.globl _DPH
                                    115 	.globl _DPL
                                    116 	.globl _SP
                                    117 	.globl _P0
                                    118 	.globl _black_space
                                    119 	.globl _duration_time
                                    120 	.globl _music_plat_note
                                    121 	.globl _LookForSound
                                    122 ;--------------------------------------------------------
                                    123 ; special function registers
                                    124 ;--------------------------------------------------------
                                    125 	.area RSEG    (ABS,DATA)
      000000                        126 	.org 0x0000
                           000080   127 _P0	=	0x0080
                           000081   128 _SP	=	0x0081
                           000082   129 _DPL	=	0x0082
                           000083   130 _DPH	=	0x0083
                           000087   131 _PCON	=	0x0087
                           000088   132 _TCON	=	0x0088
                           000089   133 _TMOD	=	0x0089
                           00008A   134 _TL0	=	0x008a
                           00008B   135 _TL1	=	0x008b
                           00008C   136 _TH0	=	0x008c
                           00008D   137 _TH1	=	0x008d
                           000090   138 _P1	=	0x0090
                           000098   139 _SCON	=	0x0098
                           000099   140 _SBUF	=	0x0099
                           0000A0   141 _P2	=	0x00a0
                           0000A8   142 _IE	=	0x00a8
                           0000B0   143 _P3	=	0x00b0
                           0000B8   144 _IP	=	0x00b8
                           0000D0   145 _PSW	=	0x00d0
                           0000E0   146 _ACC	=	0x00e0
                           0000F0   147 _B	=	0x00f0
                                    148 ;--------------------------------------------------------
                                    149 ; special function bits
                                    150 ;--------------------------------------------------------
                                    151 	.area RSEG    (ABS,DATA)
      000000                        152 	.org 0x0000
                           000080   153 _P0_0	=	0x0080
                           000081   154 _P0_1	=	0x0081
                           000082   155 _P0_2	=	0x0082
                           000083   156 _P0_3	=	0x0083
                           000084   157 _P0_4	=	0x0084
                           000085   158 _P0_5	=	0x0085
                           000086   159 _P0_6	=	0x0086
                           000087   160 _P0_7	=	0x0087
                           000088   161 _IT0	=	0x0088
                           000089   162 _IE0	=	0x0089
                           00008A   163 _IT1	=	0x008a
                           00008B   164 _IE1	=	0x008b
                           00008C   165 _TR0	=	0x008c
                           00008D   166 _TF0	=	0x008d
                           00008E   167 _TR1	=	0x008e
                           00008F   168 _TF1	=	0x008f
                           000090   169 _P1_0	=	0x0090
                           000091   170 _P1_1	=	0x0091
                           000092   171 _P1_2	=	0x0092
                           000093   172 _P1_3	=	0x0093
                           000094   173 _P1_4	=	0x0094
                           000095   174 _P1_5	=	0x0095
                           000096   175 _P1_6	=	0x0096
                           000097   176 _P1_7	=	0x0097
                           000098   177 _RI	=	0x0098
                           000099   178 _TI	=	0x0099
                           00009A   179 _RB8	=	0x009a
                           00009B   180 _TB8	=	0x009b
                           00009C   181 _REN	=	0x009c
                           00009D   182 _SM2	=	0x009d
                           00009E   183 _SM1	=	0x009e
                           00009F   184 _SM0	=	0x009f
                           0000A0   185 _P2_0	=	0x00a0
                           0000A1   186 _P2_1	=	0x00a1
                           0000A2   187 _P2_2	=	0x00a2
                           0000A3   188 _P2_3	=	0x00a3
                           0000A4   189 _P2_4	=	0x00a4
                           0000A5   190 _P2_5	=	0x00a5
                           0000A6   191 _P2_6	=	0x00a6
                           0000A7   192 _P2_7	=	0x00a7
                           0000A8   193 _EX0	=	0x00a8
                           0000A9   194 _ET0	=	0x00a9
                           0000AA   195 _EX1	=	0x00aa
                           0000AB   196 _ET1	=	0x00ab
                           0000AC   197 _ES	=	0x00ac
                           0000AF   198 _EA	=	0x00af
                           0000B0   199 _P3_0	=	0x00b0
                           0000B1   200 _P3_1	=	0x00b1
                           0000B2   201 _P3_2	=	0x00b2
                           0000B3   202 _P3_3	=	0x00b3
                           0000B4   203 _P3_4	=	0x00b4
                           0000B5   204 _P3_5	=	0x00b5
                           0000B6   205 _P3_6	=	0x00b6
                           0000B7   206 _P3_7	=	0x00b7
                           0000B0   207 _RXD	=	0x00b0
                           0000B1   208 _TXD	=	0x00b1
                           0000B2   209 _INT0	=	0x00b2
                           0000B3   210 _INT1	=	0x00b3
                           0000B4   211 _T0	=	0x00b4
                           0000B5   212 _T1	=	0x00b5
                           0000B6   213 _WR	=	0x00b6
                           0000B7   214 _RD	=	0x00b7
                           0000B8   215 _PX0	=	0x00b8
                           0000B9   216 _PT0	=	0x00b9
                           0000BA   217 _PX1	=	0x00ba
                           0000BB   218 _PT1	=	0x00bb
                           0000BC   219 _PS	=	0x00bc
                           0000D0   220 _P	=	0x00d0
                           0000D1   221 _F1	=	0x00d1
                           0000D2   222 _OV	=	0x00d2
                           0000D3   223 _RS0	=	0x00d3
                           0000D4   224 _RS1	=	0x00d4
                           0000D5   225 _F0	=	0x00d5
                           0000D6   226 _AC	=	0x00d6
                           0000D7   227 _CY	=	0x00d7
                                    228 ;--------------------------------------------------------
                                    229 ; overlayable register banks
                                    230 ;--------------------------------------------------------
                                    231 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        232 	.ds 8
                                    233 ;--------------------------------------------------------
                                    234 ; overlayable bit register bank
                                    235 ;--------------------------------------------------------
                                    236 	.area BIT_BANK	(REL,OVR,DATA)
      000020                        237 bits:
      000020                        238 	.ds 1
                           008000   239 	b0 = bits[0]
                           008100   240 	b1 = bits[1]
                           008200   241 	b2 = bits[2]
                           008300   242 	b3 = bits[3]
                           008400   243 	b4 = bits[4]
                           008500   244 	b5 = bits[5]
                           008600   245 	b6 = bits[6]
                           008700   246 	b7 = bits[7]
                                    247 ;--------------------------------------------------------
                                    248 ; internal ram data
                                    249 ;--------------------------------------------------------
                                    250 	.area DSEG    (DATA)
      000008                        251 _music_plat_note::
      000008                        252 	.ds 2
      00000A                        253 _duration_time::
      00000A                        254 	.ds 2
      00000C                        255 _black_space::
      00000C                        256 	.ds 2
                                    257 ;--------------------------------------------------------
                                    258 ; overlayable items in internal ram
                                    259 ;--------------------------------------------------------
                                    260 ;--------------------------------------------------------
                                    261 ; Stack segment in internal ram
                                    262 ;--------------------------------------------------------
                                    263 	.area SSEG
      000021                        264 __start__stack:
      000021                        265 	.ds	1
                                    266 
                                    267 ;--------------------------------------------------------
                                    268 ; indirectly addressable internal ram data
                                    269 ;--------------------------------------------------------
                                    270 	.area ISEG    (DATA)
                                    271 ;--------------------------------------------------------
                                    272 ; absolute internal ram data
                                    273 ;--------------------------------------------------------
                                    274 	.area IABS    (ABS,DATA)
                                    275 	.area IABS    (ABS,DATA)
                                    276 ;--------------------------------------------------------
                                    277 ; bit data
                                    278 ;--------------------------------------------------------
                                    279 	.area BSEG    (BIT)
                                    280 ;--------------------------------------------------------
                                    281 ; paged external ram data
                                    282 ;--------------------------------------------------------
                                    283 	.area PSEG    (PAG,XDATA)
                                    284 ;--------------------------------------------------------
                                    285 ; uninitialized external ram data
                                    286 ;--------------------------------------------------------
                                    287 	.area XSEG    (XDATA)
                                    288 ;--------------------------------------------------------
                                    289 ; absolute external ram data
                                    290 ;--------------------------------------------------------
                                    291 	.area XABS    (ABS,XDATA)
                                    292 ;--------------------------------------------------------
                                    293 ; initialized external ram data
                                    294 ;--------------------------------------------------------
                                    295 	.area XISEG   (XDATA)
                                    296 	.area HOME    (CODE)
                                    297 	.area GSINIT0 (CODE)
                                    298 	.area GSINIT1 (CODE)
                                    299 	.area GSINIT2 (CODE)
                                    300 	.area GSINIT3 (CODE)
                                    301 	.area GSINIT4 (CODE)
                                    302 	.area GSINIT5 (CODE)
                                    303 	.area GSINIT  (CODE)
                                    304 	.area GSFINAL (CODE)
                                    305 	.area CSEG    (CODE)
                                    306 ;--------------------------------------------------------
                                    307 ; interrupt vector
                                    308 ;--------------------------------------------------------
                                    309 	.area HOME    (CODE)
      000000                        310 __interrupt_vect:
      000000 02 00 11         [24]  311 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  312 	reti
      000004                        313 	.ds	7
      00000B 02 00 7B         [24]  314 	ljmp	_T0_isr
                                    315 ;--------------------------------------------------------
                                    316 ; global & static initialisations
                                    317 ;--------------------------------------------------------
                                    318 	.area HOME    (CODE)
                                    319 	.area GSINIT  (CODE)
                                    320 	.area GSFINAL (CODE)
                                    321 	.area GSINIT  (CODE)
                                    322 	.globl __sdcc_gsinit_startup
                                    323 	.globl __sdcc_program_startup
                                    324 	.globl __start__stack
                                    325 	.globl __mcs51_genXINIT
                                    326 	.globl __mcs51_genXRAMCLEAR
                                    327 	.globl __mcs51_genRAMCLEAR
                                    328 ;	./src/main.c:5: int music_plat_note = 0, duration_time = 0, black_space = 50; // Adjust blank_space as needed
      00006A E4               [12]  329 	clr	a
      00006B F5 08            [12]  330 	mov	_music_plat_note,a
      00006D F5 09            [12]  331 	mov	(_music_plat_note + 1),a
                                    332 ;	./src/main.c:5: 
      00006F F5 0A            [12]  333 	mov	_duration_time,a
      000071 F5 0B            [12]  334 	mov	(_duration_time + 1),a
                                    335 ;	./src/main.c:5: int music_plat_note = 0, duration_time = 0, black_space = 50; // Adjust blank_space as needed
      000073 75 0C 32         [24]  336 	mov	_black_space,#0x32
      000076 F5 0D            [12]  337 	mov	(_black_space + 1),a
                                    338 	.area GSFINAL (CODE)
      000078 02 00 0E         [24]  339 	ljmp	__sdcc_program_startup
                                    340 ;--------------------------------------------------------
                                    341 ; Home
                                    342 ;--------------------------------------------------------
                                    343 	.area HOME    (CODE)
                                    344 	.area HOME    (CODE)
      00000E                        345 __sdcc_program_startup:
      00000E 02 01 D1         [24]  346 	ljmp	_main
                                    347 ;	return from main will return to caller
                                    348 ;--------------------------------------------------------
                                    349 ; code
                                    350 ;--------------------------------------------------------
                                    351 	.area CSEG    (CODE)
                                    352 ;------------------------------------------------------------
                                    353 ;Allocation info for local variables in function 'T0_isr'
                                    354 ;------------------------------------------------------------
                                    355 ;	./src/main.c:18: void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
                                    356 ;	-----------------------------------------
                                    357 ;	 function T0_isr
                                    358 ;	-----------------------------------------
      00007B                        359 _T0_isr:
                           000007   360 	ar7 = 0x07
                           000006   361 	ar6 = 0x06
                           000005   362 	ar5 = 0x05
                           000004   363 	ar4 = 0x04
                           000003   364 	ar3 = 0x03
                           000002   365 	ar2 = 0x02
                           000001   366 	ar1 = 0x01
                           000000   367 	ar0 = 0x00
      00007B C0 20            [24]  368 	push	bits
      00007D C0 E0            [24]  369 	push	acc
      00007F C0 F0            [24]  370 	push	b
      000081 C0 82            [24]  371 	push	dpl
      000083 C0 83            [24]  372 	push	dph
      000085 C0 07            [24]  373 	push	(0+7)
      000087 C0 06            [24]  374 	push	(0+6)
      000089 C0 05            [24]  375 	push	(0+5)
      00008B C0 04            [24]  376 	push	(0+4)
      00008D C0 03            [24]  377 	push	(0+3)
      00008F C0 02            [24]  378 	push	(0+2)
      000091 C0 01            [24]  379 	push	(0+1)
      000093 C0 00            [24]  380 	push	(0+0)
      000095 C0 D0            [24]  381 	push	psw
      000097 75 D0 00         [24]  382 	mov	psw,#0x00
                                    383 ;	./src/main.c:21: TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
      00009A 75 8C FC         [24]  384 	mov	_TH0,#0xfc
                                    385 ;	./src/main.c:22: TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0
      00009D 75 8A 18         [24]  386 	mov	_TL0,#0x18
                                    387 ;	./src/main.c:24: duration_time++;
      0000A0 05 0A            [12]  388 	inc	_duration_time
      0000A2 E4               [12]  389 	clr	a
      0000A3 B5 0A 02         [24]  390 	cjne	a,_duration_time,00159$
      0000A6 05 0B            [12]  391 	inc	(_duration_time + 1)
      0000A8                        392 00159$:
                                    393 ;	./src/main.c:26: while (duration_time < duration_table[music_plat_note])
      0000A8                        394 00101$:
      0000A8 E5 08            [12]  395 	mov	a,_music_plat_note
      0000AA 24 C1            [12]  396 	add	a,#_duration_table
      0000AC F5 82            [12]  397 	mov	dpl,a
      0000AE E5 09            [12]  398 	mov	a,(_music_plat_note + 1)
      0000B0 34 02            [12]  399 	addc	a,#(_duration_table >> 8)
      0000B2 F5 83            [12]  400 	mov	dph,a
      0000B4 E4               [12]  401 	clr	a
      0000B5 93               [24]  402 	movc	a,@a+dptr
      0000B6 FE               [12]  403 	mov	r6,a
      0000B7 7F 00            [12]  404 	mov	r7,#0x00
      0000B9 C3               [12]  405 	clr	c
      0000BA E5 0A            [12]  406 	mov	a,_duration_time
      0000BC 9E               [12]  407 	subb	a,r6
      0000BD E5 0B            [12]  408 	mov	a,(_duration_time + 1)
      0000BF 64 80            [12]  409 	xrl	a,#0x80
      0000C1 8F F0            [24]  410 	mov	b,r7
      0000C3 63 F0 80         [24]  411 	xrl	b,#0x80
      0000C6 95 F0            [12]  412 	subb	a,b
      0000C8 50 3E            [24]  413 	jnc	00103$
                                    414 ;	./src/main.c:28: duration_time++;
      0000CA 05 0A            [12]  415 	inc	_duration_time
      0000CC E4               [12]  416 	clr	a
      0000CD B5 0A 02         [24]  417 	cjne	a,_duration_time,00161$
      0000D0 05 0B            [12]  418 	inc	(_duration_time + 1)
      0000D2                        419 00161$:
                                    420 ;	./src/main.c:29: P3_7 = 1;
                                    421 ;	assignBit
      0000D2 D2 B7            [12]  422 	setb	_P3_7
                                    423 ;	./src/main.c:30: LookForSound(music_table[music_plat_note]);
      0000D4 E5 08            [12]  424 	mov	a,_music_plat_note
      0000D6 24 B0            [12]  425 	add	a,#_music_table
      0000D8 F5 82            [12]  426 	mov	dpl,a
      0000DA E5 09            [12]  427 	mov	a,(_music_plat_note + 1)
      0000DC 34 02            [12]  428 	addc	a,#(_music_table >> 8)
      0000DE F5 83            [12]  429 	mov	dph,a
      0000E0 E4               [12]  430 	clr	a
      0000E1 93               [24]  431 	movc	a,@a+dptr
      0000E2 FD               [12]  432 	mov	r5,a
      0000E3 7C 00            [12]  433 	mov	r4,#0x00
      0000E5 8D 82            [24]  434 	mov	dpl,r5
      0000E7 8C 83            [24]  435 	mov	dph,r4
      0000E9 12 01 E2         [24]  436 	lcall	_LookForSound
                                    437 ;	./src/main.c:31: P3_7 = 0;
                                    438 ;	assignBit
      0000EC C2 B7            [12]  439 	clr	_P3_7
                                    440 ;	./src/main.c:32: LookForSound(music_table[music_plat_note]);
      0000EE E5 08            [12]  441 	mov	a,_music_plat_note
      0000F0 24 B0            [12]  442 	add	a,#_music_table
      0000F2 F5 82            [12]  443 	mov	dpl,a
      0000F4 E5 09            [12]  444 	mov	a,(_music_plat_note + 1)
      0000F6 34 02            [12]  445 	addc	a,#(_music_table >> 8)
      0000F8 F5 83            [12]  446 	mov	dph,a
      0000FA E4               [12]  447 	clr	a
      0000FB 93               [24]  448 	movc	a,@a+dptr
      0000FC FD               [12]  449 	mov	r5,a
      0000FD 7C 00            [12]  450 	mov	r4,#0x00
      0000FF 8D 82            [24]  451 	mov	dpl,r5
      000101 8C 83            [24]  452 	mov	dph,r4
      000103 12 01 E2         [24]  453 	lcall	_LookForSound
      000106 80 A0            [24]  454 	sjmp	00101$
      000108                        455 00103$:
                                    456 ;	./src/main.c:34: if (duration_time >= duration_table[music_plat_note] && duration_time < (100 + blanck_table[music_plat_note]))
      000108 C3               [12]  457 	clr	c
      000109 E5 0A            [12]  458 	mov	a,_duration_time
      00010B 9E               [12]  459 	subb	a,r6
      00010C E5 0B            [12]  460 	mov	a,(_duration_time + 1)
      00010E 64 80            [12]  461 	xrl	a,#0x80
      000110 8F F0            [24]  462 	mov	b,r7
      000112 63 F0 80         [24]  463 	xrl	b,#0x80
      000115 95 F0            [12]  464 	subb	a,b
      000117 40 2D            [24]  465 	jc	00112$
      000119 E5 08            [12]  466 	mov	a,_music_plat_note
      00011B 24 D2            [12]  467 	add	a,#_blanck_table
      00011D F5 82            [12]  468 	mov	dpl,a
      00011F E5 09            [12]  469 	mov	a,(_music_plat_note + 1)
      000121 34 02            [12]  470 	addc	a,#(_blanck_table >> 8)
      000123 F5 83            [12]  471 	mov	dph,a
      000125 E4               [12]  472 	clr	a
      000126 93               [24]  473 	movc	a,@a+dptr
      000127 FF               [12]  474 	mov	r7,a
      000128 7E 00            [12]  475 	mov	r6,#0x00
      00012A 74 64            [12]  476 	mov	a,#0x64
      00012C 2F               [12]  477 	add	a,r7
      00012D FF               [12]  478 	mov	r7,a
      00012E E4               [12]  479 	clr	a
      00012F 3E               [12]  480 	addc	a,r6
      000130 FE               [12]  481 	mov	r6,a
      000131 C3               [12]  482 	clr	c
      000132 E5 0A            [12]  483 	mov	a,_duration_time
      000134 9F               [12]  484 	subb	a,r7
      000135 E5 0B            [12]  485 	mov	a,(_duration_time + 1)
      000137 64 80            [12]  486 	xrl	a,#0x80
      000139 8E F0            [24]  487 	mov	b,r6
      00013B 63 F0 80         [24]  488 	xrl	b,#0x80
      00013E 95 F0            [12]  489 	subb	a,b
      000140 50 04            [24]  490 	jnc	00112$
                                    491 ;	./src/main.c:36: P3_7 = 0; // Buzzer OFF or set to desired state
                                    492 ;	assignBit
      000142 C2 B7            [12]  493 	clr	_P3_7
      000144 80 6E            [24]  494 	sjmp	00115$
      000146                        495 00112$:
                                    496 ;	./src/main.c:38: else if (duration_time >= (duration_table[music_plat_note] + blanck_table[music_plat_note]))
      000146 E5 08            [12]  497 	mov	a,_music_plat_note
      000148 24 C1            [12]  498 	add	a,#_duration_table
      00014A F5 82            [12]  499 	mov	dpl,a
      00014C E5 09            [12]  500 	mov	a,(_music_plat_note + 1)
      00014E 34 02            [12]  501 	addc	a,#(_duration_table >> 8)
      000150 F5 83            [12]  502 	mov	dph,a
      000152 E4               [12]  503 	clr	a
      000153 93               [24]  504 	movc	a,@a+dptr
      000154 FF               [12]  505 	mov	r7,a
      000155 7E 00            [12]  506 	mov	r6,#0x00
      000157 E5 08            [12]  507 	mov	a,_music_plat_note
      000159 24 D2            [12]  508 	add	a,#_blanck_table
      00015B F5 82            [12]  509 	mov	dpl,a
      00015D E5 09            [12]  510 	mov	a,(_music_plat_note + 1)
      00015F 34 02            [12]  511 	addc	a,#(_blanck_table >> 8)
      000161 F5 83            [12]  512 	mov	dph,a
      000163 E4               [12]  513 	clr	a
      000164 93               [24]  514 	movc	a,@a+dptr
      000165 FD               [12]  515 	mov	r5,a
      000166 7C 00            [12]  516 	mov	r4,#0x00
      000168 2F               [12]  517 	add	a,r7
      000169 FF               [12]  518 	mov	r7,a
      00016A EC               [12]  519 	mov	a,r4
      00016B 3E               [12]  520 	addc	a,r6
      00016C FE               [12]  521 	mov	r6,a
      00016D C3               [12]  522 	clr	c
      00016E E5 0A            [12]  523 	mov	a,_duration_time
      000170 9F               [12]  524 	subb	a,r7
      000171 E5 0B            [12]  525 	mov	a,(_duration_time + 1)
      000173 64 80            [12]  526 	xrl	a,#0x80
      000175 8E F0            [24]  527 	mov	b,r6
      000177 63 F0 80         [24]  528 	xrl	b,#0x80
      00017A 95 F0            [12]  529 	subb	a,b
      00017C 40 36            [24]  530 	jc	00115$
                                    531 ;	./src/main.c:40: duration_time = 0;
      00017E E4               [12]  532 	clr	a
      00017F F5 0A            [12]  533 	mov	_duration_time,a
      000181 F5 0B            [12]  534 	mov	(_duration_time + 1),a
                                    535 ;	./src/main.c:41: music_plat_note++;
      000183 05 08            [12]  536 	inc	_music_plat_note
      000185 B5 08 02         [24]  537 	cjne	a,_music_plat_note,00165$
      000188 05 09            [12]  538 	inc	(_music_plat_note + 1)
      00018A                        539 00165$:
                                    540 ;	./src/main.c:43: if (music_plat_note == 9)
      00018A 74 09            [12]  541 	mov	a,#0x09
      00018C B5 08 06         [24]  542 	cjne	a,_music_plat_note,00166$
      00018F E4               [12]  543 	clr	a
      000190 B5 09 02         [24]  544 	cjne	a,(_music_plat_note + 1),00166$
      000193 80 02            [24]  545 	sjmp	00167$
      000195                        546 00166$:
      000195 80 08            [24]  547 	sjmp	00105$
      000197                        548 00167$:
                                    549 ;	./src/main.c:44: black_space = 200;
      000197 75 0C C8         [24]  550 	mov	_black_space,#0xc8
      00019A 75 0D 00         [24]  551 	mov	(_black_space + 1),#0x00
      00019D 80 06            [24]  552 	sjmp	00106$
      00019F                        553 00105$:
                                    554 ;	./src/main.c:46: black_space = 50;
      00019F 75 0C 32         [24]  555 	mov	_black_space,#0x32
      0001A2 75 0D 00         [24]  556 	mov	(_black_space + 1),#0x00
      0001A5                        557 00106$:
                                    558 ;	./src/main.c:48: if (music_plat_note >= NOTE_NUM)
      0001A5 C3               [12]  559 	clr	c
      0001A6 E5 08            [12]  560 	mov	a,_music_plat_note
      0001A8 94 11            [12]  561 	subb	a,#0x11
      0001AA E5 09            [12]  562 	mov	a,(_music_plat_note + 1)
      0001AC 64 80            [12]  563 	xrl	a,#0x80
      0001AE 94 80            [12]  564 	subb	a,#0x80
      0001B0 40 02            [24]  565 	jc	00115$
                                    566 ;	./src/main.c:49: TR0 = 0;
                                    567 ;	assignBit
      0001B2 C2 8C            [12]  568 	clr	_TR0
      0001B4                        569 00115$:
                                    570 ;	./src/main.c:51: }
      0001B4 D0 D0            [24]  571 	pop	psw
      0001B6 D0 00            [24]  572 	pop	(0+0)
      0001B8 D0 01            [24]  573 	pop	(0+1)
      0001BA D0 02            [24]  574 	pop	(0+2)
      0001BC D0 03            [24]  575 	pop	(0+3)
      0001BE D0 04            [24]  576 	pop	(0+4)
      0001C0 D0 05            [24]  577 	pop	(0+5)
      0001C2 D0 06            [24]  578 	pop	(0+6)
      0001C4 D0 07            [24]  579 	pop	(0+7)
      0001C6 D0 83            [24]  580 	pop	dph
      0001C8 D0 82            [24]  581 	pop	dpl
      0001CA D0 F0            [24]  582 	pop	b
      0001CC D0 E0            [24]  583 	pop	acc
      0001CE D0 20            [24]  584 	pop	bits
      0001D0 32               [24]  585 	reti
                                    586 ;------------------------------------------------------------
                                    587 ;Allocation info for local variables in function 'main'
                                    588 ;------------------------------------------------------------
                                    589 ;	./src/main.c:53: int main()
                                    590 ;	-----------------------------------------
                                    591 ;	 function main
                                    592 ;	-----------------------------------------
      0001D1                        593 _main:
                                    594 ;	./src/main.c:56: TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
      0001D1 75 89 01         [24]  595 	mov	_TMOD,#0x01
                                    596 ;	./src/main.c:57: TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
      0001D4 75 8C FC         [24]  597 	mov	_TH0,#0xfc
                                    598 ;	./src/main.c:58: TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
      0001D7 75 8A 18         [24]  599 	mov	_TL0,#0x18
                                    600 ;	./src/main.c:59: ET0 = 1;                    // Enable Timer 0 interrupt
                                    601 ;	assignBit
      0001DA D2 A9            [12]  602 	setb	_ET0
                                    603 ;	./src/main.c:60: EA = 1;                     // Enable all interrupt
                                    604 ;	assignBit
      0001DC D2 AF            [12]  605 	setb	_EA
                                    606 ;	./src/main.c:61: TR0 = 1;                    // Start Timer 0
                                    607 ;	assignBit
      0001DE D2 8C            [12]  608 	setb	_TR0
                                    609 ;	./src/main.c:63: while (1)
      0001E0                        610 00102$:
                                    611 ;	./src/main.c:67: }
      0001E0 80 FE            [24]  612 	sjmp	00102$
                                    613 ;------------------------------------------------------------
                                    614 ;Allocation info for local variables in function 'LookForSound'
                                    615 ;------------------------------------------------------------
                                    616 ;now                       Allocated to registers r6 r7 
                                    617 ;------------------------------------------------------------
                                    618 ;	./src/main.c:69: void LookForSound(int now)
                                    619 ;	-----------------------------------------
                                    620 ;	 function LookForSound
                                    621 ;	-----------------------------------------
      0001E2                        622 _LookForSound:
      0001E2 AE 82            [24]  623 	mov	r6,dpl
      0001E4 AF 83            [24]  624 	mov	r7,dph
                                    625 ;	./src/main.c:71: P1 = 0xff;
      0001E6 75 90 FF         [24]  626 	mov	_P1,#0xff
                                    627 ;	./src/main.c:72: switch (now)
      0001E9 BE 01 05         [24]  628 	cjne	r6,#0x01,00147$
      0001EC BF 00 02         [24]  629 	cjne	r7,#0x00,00147$
      0001EF 80 28            [24]  630 	sjmp	00101$
      0001F1                        631 00147$:
      0001F1 BE 02 05         [24]  632 	cjne	r6,#0x02,00148$
      0001F4 BF 00 02         [24]  633 	cjne	r7,#0x00,00148$
      0001F7 80 26            [24]  634 	sjmp	00102$
      0001F9                        635 00148$:
      0001F9 BE 03 05         [24]  636 	cjne	r6,#0x03,00149$
      0001FC BF 00 02         [24]  637 	cjne	r7,#0x00,00149$
      0001FF 80 24            [24]  638 	sjmp	00103$
      000201                        639 00149$:
      000201 BE 04 05         [24]  640 	cjne	r6,#0x04,00150$
      000204 BF 00 02         [24]  641 	cjne	r7,#0x00,00150$
      000207 80 22            [24]  642 	sjmp	00104$
      000209                        643 00150$:
      000209 BE 05 05         [24]  644 	cjne	r6,#0x05,00151$
      00020C BF 00 02         [24]  645 	cjne	r7,#0x00,00151$
      00020F 80 20            [24]  646 	sjmp	00105$
      000211                        647 00151$:
                                    648 ;	./src/main.c:74: case 1:
      000211 BE 06 28         [24]  649 	cjne	r6,#0x06,00109$
      000214 BF 00 25         [24]  650 	cjne	r7,#0x00,00109$
      000217 80 1E            [24]  651 	sjmp	00106$
      000219                        652 00101$:
                                    653 ;	./src/main.c:75: Delay_Do();
      000219 12 02 3D         [24]  654 	lcall	_Delay_Do
                                    655 ;	./src/main.c:76: P1_7 = 0;
                                    656 ;	assignBit
      00021C C2 97            [12]  657 	clr	_P1_7
                                    658 ;	./src/main.c:77: break;
                                    659 ;	./src/main.c:79: case 2:
      00021E 22               [24]  660 	ret
      00021F                        661 00102$:
                                    662 ;	./src/main.c:80: Delay_Re();
      00021F 12 02 4B         [24]  663 	lcall	_Delay_Re
                                    664 ;	./src/main.c:81: P1_6 = 0;
                                    665 ;	assignBit
      000222 C2 96            [12]  666 	clr	_P1_6
                                    667 ;	./src/main.c:82: break;
                                    668 ;	./src/main.c:84: case 3:
      000224 22               [24]  669 	ret
      000225                        670 00103$:
                                    671 ;	./src/main.c:85: Delay_Mi();
      000225 12 02 59         [24]  672 	lcall	_Delay_Mi
                                    673 ;	./src/main.c:86: P1_5 = 0;
                                    674 ;	assignBit
      000228 C2 95            [12]  675 	clr	_P1_5
                                    676 ;	./src/main.c:87: break;
                                    677 ;	./src/main.c:89: case 4:
      00022A 22               [24]  678 	ret
      00022B                        679 00104$:
                                    680 ;	./src/main.c:90: Delay_Fa();
      00022B 12 02 67         [24]  681 	lcall	_Delay_Fa
                                    682 ;	./src/main.c:91: P1_4 = 0;
                                    683 ;	assignBit
      00022E C2 94            [12]  684 	clr	_P1_4
                                    685 ;	./src/main.c:92: break;
                                    686 ;	./src/main.c:94: case 5:
      000230 22               [24]  687 	ret
      000231                        688 00105$:
                                    689 ;	./src/main.c:95: Delay_So();
      000231 12 02 75         [24]  690 	lcall	_Delay_So
                                    691 ;	./src/main.c:96: P1_3 = 0;
                                    692 ;	assignBit
      000234 C2 93            [12]  693 	clr	_P1_3
                                    694 ;	./src/main.c:97: break;
                                    695 ;	./src/main.c:99: case 6:
      000236 22               [24]  696 	ret
      000237                        697 00106$:
                                    698 ;	./src/main.c:100: Delay_La();
      000237 12 02 83         [24]  699 	lcall	_Delay_La
                                    700 ;	./src/main.c:101: P1_2 = 0;
                                    701 ;	assignBit
      00023A C2 92            [12]  702 	clr	_P1_2
                                    703 ;	./src/main.c:106: }
      00023C                        704 00109$:
                                    705 ;	./src/main.c:107: }
      00023C 22               [24]  706 	ret
                                    707 	.area CSEG    (CODE)
                                    708 	.area CONST   (CODE)
      0002B0                        709 _music_table:
      0002B0 02                     710 	.db #0x02	; 2
      0002B1 04                     711 	.db #0x04	; 4
      0002B2 03                     712 	.db #0x03	; 3
      0002B3 01                     713 	.db #0x01	; 1
      0002B4 02                     714 	.db #0x02	; 2
      0002B5 02                     715 	.db #0x02	; 2
      0002B6 04                     716 	.db #0x04	; 4
      0002B7 03                     717 	.db #0x03	; 3
      0002B8 01                     718 	.db #0x01	; 1
      0002B9 06                     719 	.db #0x06	; 6
      0002BA 04                     720 	.db #0x04	; 4
      0002BB 05                     721 	.db #0x05	; 5
      0002BC 03                     722 	.db #0x03	; 3
      0002BD 04                     723 	.db #0x04	; 4
      0002BE 02                     724 	.db #0x02	; 2
      0002BF 03                     725 	.db #0x03	; 3
      0002C0 01                     726 	.db #0x01	; 1
      0002C1                        727 _duration_table:
      0002C1 F4                     728 	.db #0xf4	; 244
      0002C2 32                     729 	.db #0x32	; 50	'2'
      0002C3 C8                     730 	.db #0xc8	; 200
      0002C4 32                     731 	.db #0x32	; 50	'2'
      0002C5 32                     732 	.db #0x32	; 50	'2'
      0002C6 32                     733 	.db #0x32	; 50	'2'
      0002C7 32                     734 	.db #0x32	; 50	'2'
      0002C8 F4                     735 	.db #0xf4	; 244
      0002C9 32                     736 	.db #0x32	; 50	'2'
      0002CA F4                     737 	.db #0xf4	; 244
      0002CB 32                     738 	.db #0x32	; 50	'2'
      0002CC 96                     739 	.db #0x96	; 150
      0002CD 32                     740 	.db #0x32	; 50	'2'
      0002CE 64                     741 	.db #0x64	; 100	'd'
      0002CF 64                     742 	.db #0x64	; 100	'd'
      0002D0 32                     743 	.db #0x32	; 50	'2'
      0002D1 64                     744 	.db #0x64	; 100	'd'
      0002D2                        745 _blanck_table:
      0002D2 32                     746 	.db #0x32	; 50	'2'
      0002D3 32                     747 	.db #0x32	; 50	'2'
      0002D4 32                     748 	.db #0x32	; 50	'2'
      0002D5 32                     749 	.db #0x32	; 50	'2'
      0002D6 32                     750 	.db #0x32	; 50	'2'
      0002D7 32                     751 	.db #0x32	; 50	'2'
      0002D8 32                     752 	.db #0x32	; 50	'2'
      0002D9 32                     753 	.db #0x32	; 50	'2'
      0002DA 32                     754 	.db #0x32	; 50	'2'
      0002DB C8                     755 	.db #0xc8	; 200
      0002DC 32                     756 	.db #0x32	; 50	'2'
      0002DD 32                     757 	.db #0x32	; 50	'2'
      0002DE 32                     758 	.db #0x32	; 50	'2'
      0002DF 32                     759 	.db #0x32	; 50	'2'
      0002E0 1E                     760 	.db #0x1e	; 30
      0002E1 1E                     761 	.db #0x1e	; 30
      0002E2 1E                     762 	.db #0x1e	; 30
                                    763 	.area XINIT   (CODE)
                                    764 	.area CABS    (ABS,CODE)
