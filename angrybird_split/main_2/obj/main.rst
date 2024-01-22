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
                                     11 	.globl _uart_isr
                                     12 	.globl _main
                                     13 	.globl _angrybird_state_machine
                                     14 	.globl _CY
                                     15 	.globl _AC
                                     16 	.globl _F0
                                     17 	.globl _RS1
                                     18 	.globl _RS0
                                     19 	.globl _OV
                                     20 	.globl _F1
                                     21 	.globl _P
                                     22 	.globl _PS
                                     23 	.globl _PT1
                                     24 	.globl _PX1
                                     25 	.globl _PT0
                                     26 	.globl _PX0
                                     27 	.globl _RD
                                     28 	.globl _WR
                                     29 	.globl _T1
                                     30 	.globl _T0
                                     31 	.globl _INT1
                                     32 	.globl _INT0
                                     33 	.globl _TXD
                                     34 	.globl _RXD
                                     35 	.globl _P3_7
                                     36 	.globl _P3_6
                                     37 	.globl _P3_5
                                     38 	.globl _P3_4
                                     39 	.globl _P3_3
                                     40 	.globl _P3_2
                                     41 	.globl _P3_1
                                     42 	.globl _P3_0
                                     43 	.globl _EA
                                     44 	.globl _ES
                                     45 	.globl _ET1
                                     46 	.globl _EX1
                                     47 	.globl _ET0
                                     48 	.globl _EX0
                                     49 	.globl _P2_7
                                     50 	.globl _P2_6
                                     51 	.globl _P2_5
                                     52 	.globl _P2_4
                                     53 	.globl _P2_3
                                     54 	.globl _P2_2
                                     55 	.globl _P2_1
                                     56 	.globl _P2_0
                                     57 	.globl _SM0
                                     58 	.globl _SM1
                                     59 	.globl _SM2
                                     60 	.globl _REN
                                     61 	.globl _TB8
                                     62 	.globl _RB8
                                     63 	.globl _TI
                                     64 	.globl _RI
                                     65 	.globl _P1_7
                                     66 	.globl _P1_6
                                     67 	.globl _P1_5
                                     68 	.globl _P1_4
                                     69 	.globl _P1_3
                                     70 	.globl _P1_2
                                     71 	.globl _P1_1
                                     72 	.globl _P1_0
                                     73 	.globl _TF1
                                     74 	.globl _TR1
                                     75 	.globl _TF0
                                     76 	.globl _TR0
                                     77 	.globl _IE1
                                     78 	.globl _IT1
                                     79 	.globl _IE0
                                     80 	.globl _IT0
                                     81 	.globl _P0_7
                                     82 	.globl _P0_6
                                     83 	.globl _P0_5
                                     84 	.globl _P0_4
                                     85 	.globl _P0_3
                                     86 	.globl _P0_2
                                     87 	.globl _P0_1
                                     88 	.globl _P0_0
                                     89 	.globl _B
                                     90 	.globl _ACC
                                     91 	.globl _PSW
                                     92 	.globl _IP
                                     93 	.globl _P3
                                     94 	.globl _IE
                                     95 	.globl _P2
                                     96 	.globl _SBUF
                                     97 	.globl _SCON
                                     98 	.globl _P1
                                     99 	.globl _TH1
                                    100 	.globl _TH0
                                    101 	.globl _TL1
                                    102 	.globl _TL0
                                    103 	.globl _TMOD
                                    104 	.globl _TCON
                                    105 	.globl _PCON
                                    106 	.globl _DPH
                                    107 	.globl _DPL
                                    108 	.globl _SP
                                    109 	.globl _P0
                                    110 ;--------------------------------------------------------
                                    111 ; special function registers
                                    112 ;--------------------------------------------------------
                                    113 	.area RSEG    (ABS,DATA)
      000000                        114 	.org 0x0000
                           000080   115 _P0	=	0x0080
                           000081   116 _SP	=	0x0081
                           000082   117 _DPL	=	0x0082
                           000083   118 _DPH	=	0x0083
                           000087   119 _PCON	=	0x0087
                           000088   120 _TCON	=	0x0088
                           000089   121 _TMOD	=	0x0089
                           00008A   122 _TL0	=	0x008a
                           00008B   123 _TL1	=	0x008b
                           00008C   124 _TH0	=	0x008c
                           00008D   125 _TH1	=	0x008d
                           000090   126 _P1	=	0x0090
                           000098   127 _SCON	=	0x0098
                           000099   128 _SBUF	=	0x0099
                           0000A0   129 _P2	=	0x00a0
                           0000A8   130 _IE	=	0x00a8
                           0000B0   131 _P3	=	0x00b0
                           0000B8   132 _IP	=	0x00b8
                           0000D0   133 _PSW	=	0x00d0
                           0000E0   134 _ACC	=	0x00e0
                           0000F0   135 _B	=	0x00f0
                                    136 ;--------------------------------------------------------
                                    137 ; special function bits
                                    138 ;--------------------------------------------------------
                                    139 	.area RSEG    (ABS,DATA)
      000000                        140 	.org 0x0000
                           000080   141 _P0_0	=	0x0080
                           000081   142 _P0_1	=	0x0081
                           000082   143 _P0_2	=	0x0082
                           000083   144 _P0_3	=	0x0083
                           000084   145 _P0_4	=	0x0084
                           000085   146 _P0_5	=	0x0085
                           000086   147 _P0_6	=	0x0086
                           000087   148 _P0_7	=	0x0087
                           000088   149 _IT0	=	0x0088
                           000089   150 _IE0	=	0x0089
                           00008A   151 _IT1	=	0x008a
                           00008B   152 _IE1	=	0x008b
                           00008C   153 _TR0	=	0x008c
                           00008D   154 _TF0	=	0x008d
                           00008E   155 _TR1	=	0x008e
                           00008F   156 _TF1	=	0x008f
                           000090   157 _P1_0	=	0x0090
                           000091   158 _P1_1	=	0x0091
                           000092   159 _P1_2	=	0x0092
                           000093   160 _P1_3	=	0x0093
                           000094   161 _P1_4	=	0x0094
                           000095   162 _P1_5	=	0x0095
                           000096   163 _P1_6	=	0x0096
                           000097   164 _P1_7	=	0x0097
                           000098   165 _RI	=	0x0098
                           000099   166 _TI	=	0x0099
                           00009A   167 _RB8	=	0x009a
                           00009B   168 _TB8	=	0x009b
                           00009C   169 _REN	=	0x009c
                           00009D   170 _SM2	=	0x009d
                           00009E   171 _SM1	=	0x009e
                           00009F   172 _SM0	=	0x009f
                           0000A0   173 _P2_0	=	0x00a0
                           0000A1   174 _P2_1	=	0x00a1
                           0000A2   175 _P2_2	=	0x00a2
                           0000A3   176 _P2_3	=	0x00a3
                           0000A4   177 _P2_4	=	0x00a4
                           0000A5   178 _P2_5	=	0x00a5
                           0000A6   179 _P2_6	=	0x00a6
                           0000A7   180 _P2_7	=	0x00a7
                           0000A8   181 _EX0	=	0x00a8
                           0000A9   182 _ET0	=	0x00a9
                           0000AA   183 _EX1	=	0x00aa
                           0000AB   184 _ET1	=	0x00ab
                           0000AC   185 _ES	=	0x00ac
                           0000AF   186 _EA	=	0x00af
                           0000B0   187 _P3_0	=	0x00b0
                           0000B1   188 _P3_1	=	0x00b1
                           0000B2   189 _P3_2	=	0x00b2
                           0000B3   190 _P3_3	=	0x00b3
                           0000B4   191 _P3_4	=	0x00b4
                           0000B5   192 _P3_5	=	0x00b5
                           0000B6   193 _P3_6	=	0x00b6
                           0000B7   194 _P3_7	=	0x00b7
                           0000B0   195 _RXD	=	0x00b0
                           0000B1   196 _TXD	=	0x00b1
                           0000B2   197 _INT0	=	0x00b2
                           0000B3   198 _INT1	=	0x00b3
                           0000B4   199 _T0	=	0x00b4
                           0000B5   200 _T1	=	0x00b5
                           0000B6   201 _WR	=	0x00b6
                           0000B7   202 _RD	=	0x00b7
                           0000B8   203 _PX0	=	0x00b8
                           0000B9   204 _PT0	=	0x00b9
                           0000BA   205 _PX1	=	0x00ba
                           0000BB   206 _PT1	=	0x00bb
                           0000BC   207 _PS	=	0x00bc
                           0000D0   208 _P	=	0x00d0
                           0000D1   209 _F1	=	0x00d1
                           0000D2   210 _OV	=	0x00d2
                           0000D3   211 _RS0	=	0x00d3
                           0000D4   212 _RS1	=	0x00d4
                           0000D5   213 _F0	=	0x00d5
                           0000D6   214 _AC	=	0x00d6
                           0000D7   215 _CY	=	0x00d7
                                    216 ;--------------------------------------------------------
                                    217 ; overlayable register banks
                                    218 ;--------------------------------------------------------
                                    219 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        220 	.ds 8
                                    221 ;--------------------------------------------------------
                                    222 ; internal ram data
                                    223 ;--------------------------------------------------------
                                    224 	.area DSEG    (DATA)
                                    225 ;--------------------------------------------------------
                                    226 ; overlayable items in internal ram
                                    227 ;--------------------------------------------------------
                                    228 ;--------------------------------------------------------
                                    229 ; Stack segment in internal ram
                                    230 ;--------------------------------------------------------
                                    231 	.area SSEG
      00006F                        232 __start__stack:
      00006F                        233 	.ds	1
                                    234 
                                    235 ;--------------------------------------------------------
                                    236 ; indirectly addressable internal ram data
                                    237 ;--------------------------------------------------------
                                    238 	.area ISEG    (DATA)
                                    239 ;--------------------------------------------------------
                                    240 ; absolute internal ram data
                                    241 ;--------------------------------------------------------
                                    242 	.area IABS    (ABS,DATA)
                                    243 	.area IABS    (ABS,DATA)
                                    244 ;--------------------------------------------------------
                                    245 ; bit data
                                    246 ;--------------------------------------------------------
                                    247 	.area BSEG    (BIT)
                                    248 ;--------------------------------------------------------
                                    249 ; paged external ram data
                                    250 ;--------------------------------------------------------
                                    251 	.area PSEG    (PAG,XDATA)
                                    252 ;--------------------------------------------------------
                                    253 ; uninitialized external ram data
                                    254 ;--------------------------------------------------------
                                    255 	.area XSEG    (XDATA)
                                    256 ;--------------------------------------------------------
                                    257 ; absolute external ram data
                                    258 ;--------------------------------------------------------
                                    259 	.area XABS    (ABS,XDATA)
                                    260 ;--------------------------------------------------------
                                    261 ; initialized external ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area XISEG   (XDATA)
                                    264 	.area HOME    (CODE)
                                    265 	.area GSINIT0 (CODE)
                                    266 	.area GSINIT1 (CODE)
                                    267 	.area GSINIT2 (CODE)
                                    268 	.area GSINIT3 (CODE)
                                    269 	.area GSINIT4 (CODE)
                                    270 	.area GSINIT5 (CODE)
                                    271 	.area GSINIT  (CODE)
                                    272 	.area GSFINAL (CODE)
                                    273 	.area CSEG    (CODE)
                                    274 ;--------------------------------------------------------
                                    275 ; interrupt vector
                                    276 ;--------------------------------------------------------
                                    277 	.area HOME    (CODE)
      000000                        278 __interrupt_vect:
      000000 02 00 29         [24]  279 	ljmp	__sdcc_gsinit_startup
      000003 32               [24]  280 	reti
      000004                        281 	.ds	7
      00000B 32               [24]  282 	reti
      00000C                        283 	.ds	7
      000013 32               [24]  284 	reti
      000014                        285 	.ds	7
      00001B 32               [24]  286 	reti
      00001C                        287 	.ds	7
      000023 02 00 B7         [24]  288 	ljmp	_uart_isr
                                    289 ;--------------------------------------------------------
                                    290 ; global & static initialisations
                                    291 ;--------------------------------------------------------
                                    292 	.area HOME    (CODE)
                                    293 	.area GSINIT  (CODE)
                                    294 	.area GSFINAL (CODE)
                                    295 	.area GSINIT  (CODE)
                                    296 	.globl __sdcc_gsinit_startup
                                    297 	.globl __sdcc_program_startup
                                    298 	.globl __start__stack
                                    299 	.globl __mcs51_genXINIT
                                    300 	.globl __mcs51_genXRAMCLEAR
                                    301 	.globl __mcs51_genRAMCLEAR
                                    302 	.area GSFINAL (CODE)
      0000A1 02 00 26         [24]  303 	ljmp	__sdcc_program_startup
                                    304 ;--------------------------------------------------------
                                    305 ; Home
                                    306 ;--------------------------------------------------------
                                    307 	.area HOME    (CODE)
                                    308 	.area HOME    (CODE)
      000026                        309 __sdcc_program_startup:
      000026 02 00 A4         [24]  310 	ljmp	_main
                                    311 ;	return from main will return to caller
                                    312 ;--------------------------------------------------------
                                    313 ; code
                                    314 ;--------------------------------------------------------
                                    315 	.area CSEG    (CODE)
                                    316 ;------------------------------------------------------------
                                    317 ;Allocation info for local variables in function 'main'
                                    318 ;------------------------------------------------------------
                                    319 ;	./src/main.c:5: int main()
                                    320 ;	-----------------------------------------
                                    321 ;	 function main
                                    322 ;	-----------------------------------------
      0000A4                        323 _main:
                           000007   324 	ar7 = 0x07
                           000006   325 	ar6 = 0x06
                           000005   326 	ar5 = 0x05
                           000004   327 	ar4 = 0x04
                           000003   328 	ar3 = 0x03
                           000002   329 	ar2 = 0x02
                           000001   330 	ar1 = 0x01
                           000000   331 	ar0 = 0x00
                                    332 ;	./src/main.c:13: TMOD = 0x20; // set timer1 to mode2
      0000A4 75 89 20         [24]  333 	mov	_TMOD,#0x20
                                    334 ;	./src/main.c:14: SCON = 0x50; // set serial mode1
      0000A7 75 98 50         [24]  335 	mov	_SCON,#0x50
                                    336 ;	./src/main.c:15: TH1 = 250;   // baudrate = 9600, fosc = 11.0592MHz(12)
      0000AA 75 8D FA         [24]  337 	mov	_TH1,#0xfa
                                    338 ;	./src/main.c:16: TR1 = 1;     // enable timer = 1
                                    339 ;	assignBit
      0000AD D2 8E            [12]  340 	setb	_TR1
                                    341 ;	./src/main.c:17: IE = 0x90;   // enable serial port interrupt
      0000AF 75 A8 90         [24]  342 	mov	_IE,#0x90
                                    343 ;	./src/main.c:19: while (1)
      0000B2                        344 00102$:
                                    345 ;	./src/main.c:21: angrybird_state_machine();
      0000B2 12 04 AD         [24]  346 	lcall	_angrybird_state_machine
                                    347 ;	./src/main.c:23: }
      0000B5 80 FB            [24]  348 	sjmp	00102$
                                    349 ;------------------------------------------------------------
                                    350 ;Allocation info for local variables in function 'uart_isr'
                                    351 ;------------------------------------------------------------
                                    352 ;	./src/main.c:25: void uart_isr(void) __interrupt(4)
                                    353 ;	-----------------------------------------
                                    354 ;	 function uart_isr
                                    355 ;	-----------------------------------------
      0000B7                        356 _uart_isr:
                                    357 ;	./src/main.c:27: if (TI == 1)
                                    358 ;	./src/main.c:28: TI = 0;
                                    359 ;	assignBit
      0000B7 10 99 02         [24]  360 	jbc	_TI,00119$
      0000BA 80 00            [24]  361 	sjmp	00102$
      0000BC                        362 00119$:
      0000BC                        363 00102$:
                                    364 ;	./src/main.c:30: if (RI == 1)
      0000BC 30 98 0A         [24]  365 	jnb	_RI,00105$
                                    366 ;	./src/main.c:32: P1_1 = 0;
                                    367 ;	assignBit
      0000BF C2 91            [12]  368 	clr	_P1_1
                                    369 ;	./src/main.c:33: RI = 0;               // refresh RI
                                    370 ;	assignBit
      0000C1 C2 98            [12]  371 	clr	_RI
                                    372 ;	./src/main.c:34: received_data = SBUF; // receive data from SBUF
      0000C3 85 99 23         [24]  373 	mov	_received_data,_SBUF
                                    374 ;	./src/main.c:35: received_flag = 1;    // receiving finished
      0000C6 75 24 01         [24]  375 	mov	_received_flag,#0x01
      0000C9                        376 00105$:
                                    377 ;	./src/main.c:37: }
      0000C9 32               [24]  378 	reti
                                    379 ;	eliminated unneeded mov psw,# (no regs used in bank)
                                    380 ;	eliminated unneeded push/pop not_psw
                                    381 ;	eliminated unneeded push/pop dpl
                                    382 ;	eliminated unneeded push/pop dph
                                    383 ;	eliminated unneeded push/pop b
                                    384 ;	eliminated unneeded push/pop acc
                                    385 	.area CSEG    (CODE)
                                    386 	.area CONST   (CODE)
                                    387 	.area XINIT   (CODE)
                                    388 	.area CABS    (ABS,CODE)
