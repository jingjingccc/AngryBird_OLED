                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14362 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module angry_bird
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _sine_table
                                     12 	.globl _over_page
                                     13 	.globl _win_page
                                     14 	.globl _bird_logo
                                     15 	.globl _pig_logo
                                     16 	.globl _shooter_logo
                                     17 	.globl _I2C_Stop
                                     18 	.globl _I2C_Start
                                     19 	.globl _oledSendData
                                     20 	.globl _OLED_SetCursor
                                     21 	.globl _OLED_Clear
                                     22 	.globl _OLED_DisplayString
                                     23 	.globl _OLED_Init
                                     24 	.globl _delay_ms
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
                                    121 	.globl _prebut_enter
                                    122 	.globl _prebut_right
                                    123 	.globl _prebut_left
                                    124 	.globl _prebut_down
                                    125 	.globl _prebut_up
                                    126 	.globl _cur_state
                                    127 	.globl _led_cur_state
                                    128 	.globl _control_strength
                                    129 	.globl _control_angle
                                    130 	.globl _pig_amt
                                    131 	.globl _bird_amt
                                    132 	.globl _col_offset
                                    133 	.globl _row_offset
                                    134 	.globl _received_flag
                                    135 	.globl _received_data
                                    136 	.globl _send_flag
                                    137 	.globl _send_data
                                    138 	.globl _angrybird_display_game
                                    139 	.globl _angrybird_state_machine
                                    140 	.globl _angrybird_game_state
                                    141 	.globl _getsine
                                    142 	.globl _getcosine
                                    143 	.globl _pow_2
                                    144 ;--------------------------------------------------------
                                    145 ; special function registers
                                    146 ;--------------------------------------------------------
                                    147 	.area RSEG    (ABS,DATA)
      000000                        148 	.org 0x0000
                           000080   149 _P0	=	0x0080
                           000081   150 _SP	=	0x0081
                           000082   151 _DPL	=	0x0082
                           000083   152 _DPH	=	0x0083
                           000087   153 _PCON	=	0x0087
                           000088   154 _TCON	=	0x0088
                           000089   155 _TMOD	=	0x0089
                           00008A   156 _TL0	=	0x008a
                           00008B   157 _TL1	=	0x008b
                           00008C   158 _TH0	=	0x008c
                           00008D   159 _TH1	=	0x008d
                           000090   160 _P1	=	0x0090
                           000098   161 _SCON	=	0x0098
                           000099   162 _SBUF	=	0x0099
                           0000A0   163 _P2	=	0x00a0
                           0000A8   164 _IE	=	0x00a8
                           0000B0   165 _P3	=	0x00b0
                           0000B8   166 _IP	=	0x00b8
                           0000D0   167 _PSW	=	0x00d0
                           0000E0   168 _ACC	=	0x00e0
                           0000F0   169 _B	=	0x00f0
                                    170 ;--------------------------------------------------------
                                    171 ; special function bits
                                    172 ;--------------------------------------------------------
                                    173 	.area RSEG    (ABS,DATA)
      000000                        174 	.org 0x0000
                           000080   175 _P0_0	=	0x0080
                           000081   176 _P0_1	=	0x0081
                           000082   177 _P0_2	=	0x0082
                           000083   178 _P0_3	=	0x0083
                           000084   179 _P0_4	=	0x0084
                           000085   180 _P0_5	=	0x0085
                           000086   181 _P0_6	=	0x0086
                           000087   182 _P0_7	=	0x0087
                           000088   183 _IT0	=	0x0088
                           000089   184 _IE0	=	0x0089
                           00008A   185 _IT1	=	0x008a
                           00008B   186 _IE1	=	0x008b
                           00008C   187 _TR0	=	0x008c
                           00008D   188 _TF0	=	0x008d
                           00008E   189 _TR1	=	0x008e
                           00008F   190 _TF1	=	0x008f
                           000090   191 _P1_0	=	0x0090
                           000091   192 _P1_1	=	0x0091
                           000092   193 _P1_2	=	0x0092
                           000093   194 _P1_3	=	0x0093
                           000094   195 _P1_4	=	0x0094
                           000095   196 _P1_5	=	0x0095
                           000096   197 _P1_6	=	0x0096
                           000097   198 _P1_7	=	0x0097
                           000098   199 _RI	=	0x0098
                           000099   200 _TI	=	0x0099
                           00009A   201 _RB8	=	0x009a
                           00009B   202 _TB8	=	0x009b
                           00009C   203 _REN	=	0x009c
                           00009D   204 _SM2	=	0x009d
                           00009E   205 _SM1	=	0x009e
                           00009F   206 _SM0	=	0x009f
                           0000A0   207 _P2_0	=	0x00a0
                           0000A1   208 _P2_1	=	0x00a1
                           0000A2   209 _P2_2	=	0x00a2
                           0000A3   210 _P2_3	=	0x00a3
                           0000A4   211 _P2_4	=	0x00a4
                           0000A5   212 _P2_5	=	0x00a5
                           0000A6   213 _P2_6	=	0x00a6
                           0000A7   214 _P2_7	=	0x00a7
                           0000A8   215 _EX0	=	0x00a8
                           0000A9   216 _ET0	=	0x00a9
                           0000AA   217 _EX1	=	0x00aa
                           0000AB   218 _ET1	=	0x00ab
                           0000AC   219 _ES	=	0x00ac
                           0000AF   220 _EA	=	0x00af
                           0000B0   221 _P3_0	=	0x00b0
                           0000B1   222 _P3_1	=	0x00b1
                           0000B2   223 _P3_2	=	0x00b2
                           0000B3   224 _P3_3	=	0x00b3
                           0000B4   225 _P3_4	=	0x00b4
                           0000B5   226 _P3_5	=	0x00b5
                           0000B6   227 _P3_6	=	0x00b6
                           0000B7   228 _P3_7	=	0x00b7
                           0000B0   229 _RXD	=	0x00b0
                           0000B1   230 _TXD	=	0x00b1
                           0000B2   231 _INT0	=	0x00b2
                           0000B3   232 _INT1	=	0x00b3
                           0000B4   233 _T0	=	0x00b4
                           0000B5   234 _T1	=	0x00b5
                           0000B6   235 _WR	=	0x00b6
                           0000B7   236 _RD	=	0x00b7
                           0000B8   237 _PX0	=	0x00b8
                           0000B9   238 _PT0	=	0x00b9
                           0000BA   239 _PX1	=	0x00ba
                           0000BB   240 _PT1	=	0x00bb
                           0000BC   241 _PS	=	0x00bc
                           0000D0   242 _P	=	0x00d0
                           0000D1   243 _F1	=	0x00d1
                           0000D2   244 _OV	=	0x00d2
                           0000D3   245 _RS0	=	0x00d3
                           0000D4   246 _RS1	=	0x00d4
                           0000D5   247 _F0	=	0x00d5
                           0000D6   248 _AC	=	0x00d6
                           0000D7   249 _CY	=	0x00d7
                                    250 ;--------------------------------------------------------
                                    251 ; overlayable register banks
                                    252 ;--------------------------------------------------------
                                    253 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        254 	.ds 8
                                    255 ;--------------------------------------------------------
                                    256 ; internal ram data
                                    257 ;--------------------------------------------------------
                                    258 	.area DSEG    (DATA)
      000021                        259 _send_data::
      000021                        260 	.ds 1
      000022                        261 _send_flag::
      000022                        262 	.ds 1
      000023                        263 _received_data::
      000023                        264 	.ds 1
      000024                        265 _received_flag::
      000024                        266 	.ds 1
      000025                        267 _row_offset::
      000025                        268 	.ds 2
      000027                        269 _col_offset::
      000027                        270 	.ds 2
      000029                        271 _bird_amt::
      000029                        272 	.ds 2
      00002B                        273 _pig_amt::
      00002B                        274 	.ds 2
      00002D                        275 _control_angle::
      00002D                        276 	.ds 2
      00002F                        277 _control_strength::
      00002F                        278 	.ds 2
      000031                        279 _angrybird_display_game_control_strength__65537_30:
      000031                        280 	.ds 2
      000033                        281 _angrybird_display_game_control_angle__65537_30:
      000033                        282 	.ds 5
      000038                        283 _angrybird_display_game_angle__65539_32:
      000038                        284 	.ds 2
      00003A                        285 _angrybird_display_game_k_131075_33:
      00003A                        286 	.ds 2
      00003C                        287 _led_cur_state::
      00003C                        288 	.ds 2
      00003E                        289 _cur_state::
      00003E                        290 	.ds 2
      000040                        291 _prebut_up::
      000040                        292 	.ds 2
      000042                        293 _prebut_down::
      000042                        294 	.ds 2
      000044                        295 _prebut_left::
      000044                        296 	.ds 2
      000046                        297 _prebut_right::
      000046                        298 	.ds 2
      000048                        299 _prebut_enter::
      000048                        300 	.ds 2
      00004A                        301 _angrybird_game_state_control_angle__196609_62:
      00004A                        302 	.ds 5
      00004F                        303 _angrybird_game_state_angle__196610_63:
      00004F                        304 	.ds 2
      000051                        305 _angrybird_game_state_control_strength__196609_68:
      000051                        306 	.ds 2
      000053                        307 _angrybird_game_state_delta_y_196609_75:
      000053                        308 	.ds 4
      000057                        309 _angrybird_game_state_delta_x_196609_75:
      000057                        310 	.ds 4
      00005B                        311 _angrybird_game_state_peak_x_196609_75:
      00005B                        312 	.ds 4
      00005F                        313 _angrybird_game_state_peak_y_196609_75:
      00005F                        314 	.ds 4
      000063                        315 _angrybird_game_state_a_196609_75:
      000063                        316 	.ds 4
      000067                        317 _angrybird_game_state_i_262145_80:
      000067                        318 	.ds 2
      000069                        319 _angrybird_game_state_output_row_327681_81:
      000069                        320 	.ds 2
      00006B                        321 _angrybird_game_state_sloc1_1_0:
      00006B                        322 	.ds 4
                                    323 ;--------------------------------------------------------
                                    324 ; overlayable items in internal ram
                                    325 ;--------------------------------------------------------
                                    326 ;--------------------------------------------------------
                                    327 ; indirectly addressable internal ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area ISEG    (DATA)
                                    330 ;--------------------------------------------------------
                                    331 ; absolute internal ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area IABS    (ABS,DATA)
                                    334 	.area IABS    (ABS,DATA)
                                    335 ;--------------------------------------------------------
                                    336 ; bit data
                                    337 ;--------------------------------------------------------
                                    338 	.area BSEG    (BIT)
      000000                        339 _angrybird_display_game_sloc0_1_0:
      000000                        340 	.ds 1
      000001                        341 _angrybird_game_state_sloc0_1_0:
      000001                        342 	.ds 1
                                    343 ;--------------------------------------------------------
                                    344 ; paged external ram data
                                    345 ;--------------------------------------------------------
                                    346 	.area PSEG    (PAG,XDATA)
                                    347 ;--------------------------------------------------------
                                    348 ; uninitialized external ram data
                                    349 ;--------------------------------------------------------
                                    350 	.area XSEG    (XDATA)
                                    351 ;--------------------------------------------------------
                                    352 ; absolute external ram data
                                    353 ;--------------------------------------------------------
                                    354 	.area XABS    (ABS,XDATA)
                                    355 ;--------------------------------------------------------
                                    356 ; initialized external ram data
                                    357 ;--------------------------------------------------------
                                    358 	.area XISEG   (XDATA)
                                    359 	.area HOME    (CODE)
                                    360 	.area GSINIT0 (CODE)
                                    361 	.area GSINIT1 (CODE)
                                    362 	.area GSINIT2 (CODE)
                                    363 	.area GSINIT3 (CODE)
                                    364 	.area GSINIT4 (CODE)
                                    365 	.area GSINIT5 (CODE)
                                    366 	.area GSINIT  (CODE)
                                    367 	.area GSFINAL (CODE)
                                    368 	.area CSEG    (CODE)
                                    369 ;--------------------------------------------------------
                                    370 ; global & static initialisations
                                    371 ;--------------------------------------------------------
                                    372 	.area HOME    (CODE)
                                    373 	.area GSINIT  (CODE)
                                    374 	.area GSFINAL (CODE)
                                    375 	.area GSINIT  (CODE)
                                    376 ;	./src/angry_bird.c:146: int led_cur_state = 1;
      000082 75 3C 01         [24]  377 	mov	_led_cur_state,#0x01
      000085 75 3D 00         [24]  378 	mov	(_led_cur_state + 1),#0x00
                                    379 ;	./src/angry_bird.c:164: int cur_state = 0;
      000088 E4               [12]  380 	clr	a
      000089 F5 3E            [12]  381 	mov	_cur_state,a
      00008B F5 3F            [12]  382 	mov	(_cur_state + 1),a
                                    383 ;	./src/angry_bird.c:214: unsigned int prebut_up = 0;
      00008D F5 40            [12]  384 	mov	_prebut_up,a
      00008F F5 41            [12]  385 	mov	(_prebut_up + 1),a
                                    386 ;	./src/angry_bird.c:215: unsigned int prebut_down = 0;
      000091 F5 42            [12]  387 	mov	_prebut_down,a
      000093 F5 43            [12]  388 	mov	(_prebut_down + 1),a
                                    389 ;	./src/angry_bird.c:216: unsigned int prebut_left = 0;
      000095 F5 44            [12]  390 	mov	_prebut_left,a
      000097 F5 45            [12]  391 	mov	(_prebut_left + 1),a
                                    392 ;	./src/angry_bird.c:217: unsigned int prebut_right = 0;
      000099 F5 46            [12]  393 	mov	_prebut_right,a
      00009B F5 47            [12]  394 	mov	(_prebut_right + 1),a
                                    395 ;	./src/angry_bird.c:218: unsigned int prebut_enter = 0;
      00009D F5 48            [12]  396 	mov	_prebut_enter,a
      00009F F5 49            [12]  397 	mov	(_prebut_enter + 1),a
                                    398 ;--------------------------------------------------------
                                    399 ; Home
                                    400 ;--------------------------------------------------------
                                    401 	.area HOME    (CODE)
                                    402 	.area HOME    (CODE)
                                    403 ;--------------------------------------------------------
                                    404 ; code
                                    405 ;--------------------------------------------------------
                                    406 	.area CSEG    (CODE)
                                    407 ;------------------------------------------------------------
                                    408 ;Allocation info for local variables in function 'angrybird_display_game'
                                    409 ;------------------------------------------------------------
                                    410 ;control_strength_         Allocated with name '_angrybird_display_game_control_strength__65537_30'
                                    411 ;control_angle_            Allocated with name '_angrybird_display_game_control_angle__65537_30'
                                    412 ;i                         Allocated to registers r4 r5 
                                    413 ;angle_                    Allocated with name '_angrybird_display_game_angle__65539_32'
                                    414 ;k                         Allocated with name '_angrybird_display_game_k_131075_33'
                                    415 ;j                         Allocated to registers r4 r5 
                                    416 ;i                         Allocated to registers r3 
                                    417 ;j                         Allocated to registers r6 r7 
                                    418 ;i                         Allocated to registers r5 
                                    419 ;j                         Allocated to registers r6 r7 
                                    420 ;i                         Allocated to registers r5 
                                    421 ;j                         Allocated to registers r6 r7 
                                    422 ;i                         Allocated to registers r5 
                                    423 ;------------------------------------------------------------
                                    424 ;	./src/angry_bird.c:44: void angrybird_display_game(void)
                                    425 ;	-----------------------------------------
                                    426 ;	 function angrybird_display_game
                                    427 ;	-----------------------------------------
      0001D5                        428 _angrybird_display_game:
                           000007   429 	ar7 = 0x07
                           000006   430 	ar6 = 0x06
                           000005   431 	ar5 = 0x05
                           000004   432 	ar4 = 0x04
                           000003   433 	ar3 = 0x03
                           000002   434 	ar2 = 0x02
                           000001   435 	ar1 = 0x01
                           000000   436 	ar0 = 0x00
                                    437 ;	./src/angry_bird.c:46: bird_amt = bird_total_amount;
      0001D5 75 29 09         [24]  438 	mov	_bird_amt,#0x09
      0001D8 75 2A 00         [24]  439 	mov	(_bird_amt + 1),#0x00
                                    440 ;	./src/angry_bird.c:47: pig_amt = pig_total_amount;
      0001DB 75 2B 03         [24]  441 	mov	_pig_amt,#0x03
      0001DE 75 2C 00         [24]  442 	mov	(_pig_amt + 1),#0x00
                                    443 ;	./src/angry_bird.c:48: control_angle = 60;
      0001E1 75 2D 3C         [24]  444 	mov	_control_angle,#0x3c
      0001E4 75 2E 00         [24]  445 	mov	(_control_angle + 1),#0x00
                                    446 ;	./src/angry_bird.c:49: control_strength = 3;
      0001E7 75 2F 03         [24]  447 	mov	_control_strength,#0x03
      0001EA 75 30 00         [24]  448 	mov	(_control_strength + 1),#0x00
                                    449 ;	./src/angry_bird.c:51: OLED_Clear();
      0001ED 12 0F 4A         [24]  450 	lcall	_OLED_Clear
                                    451 ;	./src/angry_bird.c:55: control_strength_[0] = '0' + control_strength;
      0001F0 AF 2F            [24]  452 	mov	r7,_control_strength
      0001F2 74 30            [12]  453 	mov	a,#0x30
      0001F4 2F               [12]  454 	add	a,r7
      0001F5 F5 31            [12]  455 	mov	_angrybird_display_game_control_strength__65537_30,a
                                    456 ;	./src/angry_bird.c:56: control_strength_[1] = '\0';
                                    457 ;	./src/angry_bird.c:58: int i = 0;
                                    458 ;	./src/angry_bird.c:59: if (control_angle < 0)
      0001F7 E4               [12]  459 	clr	a
      0001F8 F5 32            [12]  460 	mov	(_angrybird_display_game_control_strength__65537_30 + 0x0001),a
      0001FA FE               [12]  461 	mov	r6,a
      0001FB FF               [12]  462 	mov	r7,a
      0001FC E5 2E            [12]  463 	mov	a,(_control_angle + 1)
      0001FE 30 E7 07         [24]  464 	jnb	acc.7,00102$
                                    465 ;	./src/angry_bird.c:60: control_angle_[i++] = '-';
      000201 7E 01            [12]  466 	mov	r6,#0x01
      000203 7F 00            [12]  467 	mov	r7,#0x00
      000205 75 33 2D         [24]  468 	mov	_angrybird_display_game_control_angle__65537_30,#0x2d
      000208                        469 00102$:
                                    470 ;	./src/angry_bird.c:61: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      000208 E5 2E            [12]  471 	mov	a,(_control_angle + 1)
      00020A 33               [12]  472 	rlc	a
      00020B 92 00            [24]  473 	mov	_angrybird_display_game_sloc0_1_0,c
      00020D 40 06            [24]  474 	jc	00143$
      00020F AC 2D            [24]  475 	mov	r4,_control_angle
      000211 AD 2E            [24]  476 	mov	r5,(_control_angle + 1)
      000213 80 09            [24]  477 	sjmp	00144$
      000215                        478 00143$:
      000215 C3               [12]  479 	clr	c
      000216 E4               [12]  480 	clr	a
      000217 95 2D            [12]  481 	subb	a,_control_angle
      000219 FC               [12]  482 	mov	r4,a
      00021A E4               [12]  483 	clr	a
      00021B 95 2E            [12]  484 	subb	a,(_control_angle + 1)
      00021D FD               [12]  485 	mov	r5,a
      00021E                        486 00144$:
      00021E 8C 38            [24]  487 	mov	_angrybird_display_game_angle__65539_32,r4
      000220 8D 39            [24]  488 	mov	(_angrybird_display_game_angle__65539_32 + 1),r5
                                    489 ;	./src/angry_bird.c:62: if (angle_ % 100 / 10 != 0)
      000222 75 0C 64         [24]  490 	mov	__modsint_PARM_2,#0x64
      000225 75 0D 00         [24]  491 	mov	(__modsint_PARM_2 + 1),#0x00
      000228 85 38 82         [24]  492 	mov	dpl,_angrybird_display_game_angle__65539_32
      00022B 85 39 83         [24]  493 	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
      00022E C0 07            [24]  494 	push	ar7
      000230 C0 06            [24]  495 	push	ar6
      000232 12 13 41         [24]  496 	lcall	__modsint
      000235 75 0C 0A         [24]  497 	mov	__divsint_PARM_2,#0x0a
      000238 75 0D 00         [24]  498 	mov	(__divsint_PARM_2 + 1),#0x00
      00023B 12 13 A4         [24]  499 	lcall	__divsint
      00023E AA 82            [24]  500 	mov	r2,dpl
      000240 AB 83            [24]  501 	mov	r3,dph
      000242 D0 06            [24]  502 	pop	ar6
      000244 D0 07            [24]  503 	pop	ar7
      000246 EA               [12]  504 	mov	a,r2
      000247 4B               [12]  505 	orl	a,r3
      000248 60 11            [24]  506 	jz	00104$
                                    507 ;	./src/angry_bird.c:63: control_angle_[i++] = '0' + angle_ % 100 / 10;
      00024A 8E 04            [24]  508 	mov	ar4,r6
      00024C 8F 05            [24]  509 	mov	ar5,r7
      00024E 0E               [12]  510 	inc	r6
      00024F BE 00 01         [24]  511 	cjne	r6,#0x00,00304$
      000252 0F               [12]  512 	inc	r7
      000253                        513 00304$:
      000253 EC               [12]  514 	mov	a,r4
      000254 24 33            [12]  515 	add	a,#_angrybird_display_game_control_angle__65537_30
      000256 F9               [12]  516 	mov	r1,a
      000257 74 30            [12]  517 	mov	a,#0x30
      000259 2A               [12]  518 	add	a,r2
      00025A F7               [12]  519 	mov	@r1,a
      00025B                        520 00104$:
                                    521 ;	./src/angry_bird.c:64: control_angle_[i++] = '0' + angle_ % 10;
      00025B 74 01            [12]  522 	mov	a,#0x01
      00025D 2E               [12]  523 	add	a,r6
      00025E FC               [12]  524 	mov	r4,a
      00025F E4               [12]  525 	clr	a
      000260 3F               [12]  526 	addc	a,r7
      000261 FD               [12]  527 	mov	r5,a
      000262 EE               [12]  528 	mov	a,r6
      000263 24 33            [12]  529 	add	a,#_angrybird_display_game_control_angle__65537_30
      000265 F9               [12]  530 	mov	r1,a
      000266 75 0C 0A         [24]  531 	mov	__modsint_PARM_2,#0x0a
      000269 75 0D 00         [24]  532 	mov	(__modsint_PARM_2 + 1),#0x00
      00026C 85 38 82         [24]  533 	mov	dpl,_angrybird_display_game_angle__65539_32
      00026F 85 39 83         [24]  534 	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
      000272 C0 05            [24]  535 	push	ar5
      000274 C0 04            [24]  536 	push	ar4
      000276 C0 01            [24]  537 	push	ar1
      000278 12 13 41         [24]  538 	lcall	__modsint
      00027B AE 82            [24]  539 	mov	r6,dpl
      00027D D0 01            [24]  540 	pop	ar1
      00027F D0 04            [24]  541 	pop	ar4
      000281 D0 05            [24]  542 	pop	ar5
      000283 74 30            [12]  543 	mov	a,#0x30
      000285 2E               [12]  544 	add	a,r6
      000286 F7               [12]  545 	mov	@r1,a
                                    546 ;	./src/angry_bird.c:65: control_angle_[i++] = '\0';
      000287 EC               [12]  547 	mov	a,r4
      000288 24 33            [12]  548 	add	a,#_angrybird_display_game_control_angle__65537_30
      00028A F8               [12]  549 	mov	r0,a
      00028B 76 00            [12]  550 	mov	@r0,#0x00
                                    551 ;	./src/angry_bird.c:67: OLED_SetCursor(strength_text_row_cursor, 0);
      00028D 75 0B 00         [24]  552 	mov	_OLED_SetCursor_PARM_2,#0x00
      000290 75 82 00         [24]  553 	mov	dpl,#0x00
      000293 12 0F 75         [24]  554 	lcall	_OLED_SetCursor
                                    555 ;	./src/angry_bird.c:68: OLED_DisplayString("S ");
      000296 90 15 C0         [24]  556 	mov	dptr,#___str_0
      000299 75 F0 80         [24]  557 	mov	b,#0x80
      00029C 12 0F 1F         [24]  558 	lcall	_OLED_DisplayString
                                    559 ;	./src/angry_bird.c:69: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      00029F 75 0B 0A         [24]  560 	mov	_OLED_SetCursor_PARM_2,#0x0a
      0002A2 75 82 00         [24]  561 	mov	dpl,#0x00
      0002A5 12 0F 75         [24]  562 	lcall	_OLED_SetCursor
                                    563 ;	./src/angry_bird.c:70: OLED_DisplayString(control_strength_);
      0002A8 90 00 31         [24]  564 	mov	dptr,#_angrybird_display_game_control_strength__65537_30
      0002AB 75 F0 40         [24]  565 	mov	b,#0x40
      0002AE 12 0F 1F         [24]  566 	lcall	_OLED_DisplayString
                                    567 ;	./src/angry_bird.c:72: OLED_SetCursor(strength_text_row_cursor, 20);
      0002B1 75 0B 14         [24]  568 	mov	_OLED_SetCursor_PARM_2,#0x14
      0002B4 75 82 00         [24]  569 	mov	dpl,#0x00
      0002B7 12 0F 75         [24]  570 	lcall	_OLED_SetCursor
                                    571 ;	./src/angry_bird.c:73: OLED_DisplayString("A ");
      0002BA 90 15 C3         [24]  572 	mov	dptr,#___str_1
      0002BD 75 F0 80         [24]  573 	mov	b,#0x80
      0002C0 12 0F 1F         [24]  574 	lcall	_OLED_DisplayString
                                    575 ;	./src/angry_bird.c:74: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      0002C3 75 0B 1E         [24]  576 	mov	_OLED_SetCursor_PARM_2,#0x1e
      0002C6 75 82 00         [24]  577 	mov	dpl,#0x00
      0002C9 12 0F 75         [24]  578 	lcall	_OLED_SetCursor
                                    579 ;	./src/angry_bird.c:75: OLED_DisplayString(control_angle_);
      0002CC 90 00 33         [24]  580 	mov	dptr,#_angrybird_display_game_control_angle__65537_30
      0002CF 75 F0 40         [24]  581 	mov	b,#0x40
      0002D2 12 0F 1F         [24]  582 	lcall	_OLED_DisplayString
                                    583 ;	./src/angry_bird.c:78: for (int k = 0; k < bird_total_amount; k++)
      0002D5 E4               [12]  584 	clr	a
      0002D6 F5 3A            [12]  585 	mov	_angrybird_display_game_k_131075_33,a
      0002D8 F5 3B            [12]  586 	mov	(_angrybird_display_game_k_131075_33 + 1),a
      0002DA                        587 00121$:
      0002DA C3               [12]  588 	clr	c
      0002DB E5 3A            [12]  589 	mov	a,_angrybird_display_game_k_131075_33
      0002DD 94 09            [12]  590 	subb	a,#0x09
      0002DF E5 3B            [12]  591 	mov	a,(_angrybird_display_game_k_131075_33 + 1)
      0002E1 64 80            [12]  592 	xrl	a,#0x80
      0002E3 94 80            [12]  593 	subb	a,#0x80
      0002E5 40 03            [24]  594 	jc	00305$
      0002E7 02 03 72         [24]  595 	ljmp	00107$
      0002EA                        596 00305$:
                                    597 ;	./src/angry_bird.c:80: row_offset = 0;
      0002EA E4               [12]  598 	clr	a
      0002EB F5 25            [12]  599 	mov	_row_offset,a
      0002ED F5 26            [12]  600 	mov	(_row_offset + 1),a
                                    601 ;	./src/angry_bird.c:81: col_offset = bird_remain_col_cursor + k * 8;
      0002EF AC 3A            [24]  602 	mov	r4,_angrybird_display_game_k_131075_33
      0002F1 E5 3B            [12]  603 	mov	a,(_angrybird_display_game_k_131075_33 + 1)
      0002F3 C4               [12]  604 	swap	a
      0002F4 03               [12]  605 	rr	a
      0002F5 54 F8            [12]  606 	anl	a,#0xf8
      0002F7 CC               [12]  607 	xch	a,r4
      0002F8 C4               [12]  608 	swap	a
      0002F9 03               [12]  609 	rr	a
      0002FA CC               [12]  610 	xch	a,r4
      0002FB 6C               [12]  611 	xrl	a,r4
      0002FC CC               [12]  612 	xch	a,r4
      0002FD 54 F8            [12]  613 	anl	a,#0xf8
      0002FF CC               [12]  614 	xch	a,r4
      000300 6C               [12]  615 	xrl	a,r4
      000301 FD               [12]  616 	mov	r5,a
      000302 74 32            [12]  617 	mov	a,#0x32
      000304 2C               [12]  618 	add	a,r4
      000305 F5 27            [12]  619 	mov	_col_offset,a
      000307 E4               [12]  620 	clr	a
      000308 3D               [12]  621 	addc	a,r5
      000309 F5 28            [12]  622 	mov	(_col_offset + 1),a
                                    623 ;	./src/angry_bird.c:82: for (int j = 0; j < bird_cul_size; j++)
      00030B 7C 00            [12]  624 	mov	r4,#0x00
      00030D 7D 00            [12]  625 	mov	r5,#0x00
      00030F                        626 00118$:
      00030F C3               [12]  627 	clr	c
      000310 EC               [12]  628 	mov	a,r4
      000311 94 08            [12]  629 	subb	a,#0x08
      000313 ED               [12]  630 	mov	a,r5
      000314 64 80            [12]  631 	xrl	a,#0x80
      000316 94 80            [12]  632 	subb	a,#0x80
      000318 50 4D            [24]  633 	jnc	00122$
                                    634 ;	./src/angry_bird.c:84: for (int i = 0; i < bird_row_size; i++)
      00031A 7B 00            [12]  635 	mov	r3,#0x00
      00031C                        636 00115$:
      00031C BB 01 00         [24]  637 	cjne	r3,#0x01,00307$
      00031F                        638 00307$:
      00031F 50 3F            [24]  639 	jnc	00119$
                                    640 ;	./src/angry_bird.c:86: OLED_SetCursor(row_offset + i, col_offset + j);
      000321 AA 25            [24]  641 	mov	r2,_row_offset
      000323 E4               [12]  642 	clr	a
      000324 2A               [12]  643 	add	a,r2
      000325 F5 82            [12]  644 	mov	dpl,a
      000327 AA 27            [24]  645 	mov	r2,_col_offset
      000329 8C 07            [24]  646 	mov	ar7,r4
      00032B EF               [12]  647 	mov	a,r7
      00032C 2A               [12]  648 	add	a,r2
      00032D F5 0B            [12]  649 	mov	_OLED_SetCursor_PARM_2,a
      00032F C0 07            [24]  650 	push	ar7
      000331 C0 05            [24]  651 	push	ar5
      000333 C0 04            [24]  652 	push	ar4
      000335 12 0F 75         [24]  653 	lcall	_OLED_SetCursor
      000338 D0 04            [24]  654 	pop	ar4
      00033A D0 05            [24]  655 	pop	ar5
      00033C D0 07            [24]  656 	pop	ar7
                                    657 ;	./src/angry_bird.c:87: oledSendData(bird_logo[bird_cul_size * i + j]);
      00033E EF               [12]  658 	mov	a,r7
      00033F 33               [12]  659 	rlc	a
      000340 95 E0            [12]  660 	subb	a,acc
      000342 FE               [12]  661 	mov	r6,a
      000343 EF               [12]  662 	mov	a,r7
      000344 24 B8            [12]  663 	add	a,#_bird_logo
      000346 F5 82            [12]  664 	mov	dpl,a
      000348 EE               [12]  665 	mov	a,r6
      000349 34 14            [12]  666 	addc	a,#(_bird_logo >> 8)
      00034B F5 83            [12]  667 	mov	dph,a
      00034D E4               [12]  668 	clr	a
      00034E 93               [24]  669 	movc	a,@a+dptr
      00034F F5 82            [12]  670 	mov	dpl,a
      000351 C0 05            [24]  671 	push	ar5
      000353 C0 04            [24]  672 	push	ar4
      000355 12 0F B1         [24]  673 	lcall	_oledSendData
      000358 D0 04            [24]  674 	pop	ar4
      00035A D0 05            [24]  675 	pop	ar5
                                    676 ;	./src/angry_bird.c:84: for (int i = 0; i < bird_row_size; i++)
      00035C 7B 01            [12]  677 	mov	r3,#0x01
      00035E 80 BC            [24]  678 	sjmp	00115$
      000360                        679 00119$:
                                    680 ;	./src/angry_bird.c:82: for (int j = 0; j < bird_cul_size; j++)
      000360 0C               [12]  681 	inc	r4
      000361 BC 00 AB         [24]  682 	cjne	r4,#0x00,00118$
      000364 0D               [12]  683 	inc	r5
      000365 80 A8            [24]  684 	sjmp	00118$
      000367                        685 00122$:
                                    686 ;	./src/angry_bird.c:78: for (int k = 0; k < bird_total_amount; k++)
      000367 05 3A            [12]  687 	inc	_angrybird_display_game_k_131075_33
      000369 E4               [12]  688 	clr	a
      00036A B5 3A 02         [24]  689 	cjne	a,_angrybird_display_game_k_131075_33,00310$
      00036D 05 3B            [12]  690 	inc	(_angrybird_display_game_k_131075_33 + 1)
      00036F                        691 00310$:
      00036F 02 02 DA         [24]  692 	ljmp	00121$
      000372                        693 00107$:
                                    694 ;	./src/angry_bird.c:93: row_offset = shoot_row_cursor;
      000372 75 25 06         [24]  695 	mov	_row_offset,#0x06
                                    696 ;	./src/angry_bird.c:94: col_offset = shoot_col_cursor;
      000375 E4               [12]  697 	clr	a
      000376 F5 26            [12]  698 	mov	(_row_offset + 1),a
      000378 F5 27            [12]  699 	mov	_col_offset,a
      00037A F5 28            [12]  700 	mov	(_col_offset + 1),a
                                    701 ;	./src/angry_bird.c:95: for (int j = 0; j < shoot_cul_size; j++)
      00037C FE               [12]  702 	mov	r6,a
      00037D FF               [12]  703 	mov	r7,a
      00037E                        704 00127$:
      00037E C3               [12]  705 	clr	c
      00037F EE               [12]  706 	mov	a,r6
      000380 94 08            [12]  707 	subb	a,#0x08
      000382 EF               [12]  708 	mov	a,r7
      000383 64 80            [12]  709 	xrl	a,#0x80
      000385 94 80            [12]  710 	subb	a,#0x80
      000387 50 54            [24]  711 	jnc	00109$
                                    712 ;	./src/angry_bird.c:97: for (int i = 0; i < shoot_row_size; i++)
      000389 7D 00            [12]  713 	mov	r5,#0x00
      00038B                        714 00124$:
      00038B BD 02 00         [24]  715 	cjne	r5,#0x02,00312$
      00038E                        716 00312$:
      00038E 50 46            [24]  717 	jnc	00128$
                                    718 ;	./src/angry_bird.c:99: OLED_SetCursor(row_offset + i, col_offset + j);
      000390 AC 25            [24]  719 	mov	r4,_row_offset
      000392 8D 03            [24]  720 	mov	ar3,r5
      000394 EB               [12]  721 	mov	a,r3
      000395 2C               [12]  722 	add	a,r4
      000396 F5 82            [12]  723 	mov	dpl,a
      000398 AC 27            [24]  724 	mov	r4,_col_offset
      00039A 8E 02            [24]  725 	mov	ar2,r6
      00039C EA               [12]  726 	mov	a,r2
      00039D 2C               [12]  727 	add	a,r4
      00039E F5 0B            [12]  728 	mov	_OLED_SetCursor_PARM_2,a
      0003A0 C0 07            [24]  729 	push	ar7
      0003A2 C0 06            [24]  730 	push	ar6
      0003A4 C0 05            [24]  731 	push	ar5
      0003A6 C0 03            [24]  732 	push	ar3
      0003A8 C0 02            [24]  733 	push	ar2
      0003AA 12 0F 75         [24]  734 	lcall	_OLED_SetCursor
      0003AD D0 02            [24]  735 	pop	ar2
      0003AF D0 03            [24]  736 	pop	ar3
                                    737 ;	./src/angry_bird.c:100: oledSendData(shooter_logo[shoot_cul_size * i + j]);
      0003B1 EB               [12]  738 	mov	a,r3
      0003B2 C4               [12]  739 	swap	a
      0003B3 03               [12]  740 	rr	a
      0003B4 54 F8            [12]  741 	anl	a,#0xf8
      0003B6 2A               [12]  742 	add	a,r2
      0003B7 FA               [12]  743 	mov	r2,a
      0003B8 33               [12]  744 	rlc	a
      0003B9 95 E0            [12]  745 	subb	a,acc
      0003BB FC               [12]  746 	mov	r4,a
      0003BC EA               [12]  747 	mov	a,r2
      0003BD 24 90            [12]  748 	add	a,#_shooter_logo
      0003BF F5 82            [12]  749 	mov	dpl,a
      0003C1 EC               [12]  750 	mov	a,r4
      0003C2 34 14            [12]  751 	addc	a,#(_shooter_logo >> 8)
      0003C4 F5 83            [12]  752 	mov	dph,a
      0003C6 E4               [12]  753 	clr	a
      0003C7 93               [24]  754 	movc	a,@a+dptr
      0003C8 F5 82            [12]  755 	mov	dpl,a
      0003CA 12 0F B1         [24]  756 	lcall	_oledSendData
      0003CD D0 05            [24]  757 	pop	ar5
      0003CF D0 06            [24]  758 	pop	ar6
      0003D1 D0 07            [24]  759 	pop	ar7
                                    760 ;	./src/angry_bird.c:97: for (int i = 0; i < shoot_row_size; i++)
      0003D3 0D               [12]  761 	inc	r5
      0003D4 80 B5            [24]  762 	sjmp	00124$
      0003D6                        763 00128$:
                                    764 ;	./src/angry_bird.c:95: for (int j = 0; j < shoot_cul_size; j++)
      0003D6 0E               [12]  765 	inc	r6
      0003D7 BE 00 A4         [24]  766 	cjne	r6,#0x00,00127$
      0003DA 0F               [12]  767 	inc	r7
      0003DB 80 A1            [24]  768 	sjmp	00127$
      0003DD                        769 00109$:
                                    770 ;	./src/angry_bird.c:105: row_offset = bird_init_row_cursor;
      0003DD 75 25 07         [24]  771 	mov	_row_offset,#0x07
      0003E0 75 26 00         [24]  772 	mov	(_row_offset + 1),#0x00
                                    773 ;	./src/angry_bird.c:106: col_offset = bird_init_col_cursor;
      0003E3 75 27 08         [24]  774 	mov	_col_offset,#0x08
      0003E6 75 28 00         [24]  775 	mov	(_col_offset + 1),#0x00
                                    776 ;	./src/angry_bird.c:107: for (int j = 0; j < bird_cul_size; j++)
      0003E9 7E 00            [12]  777 	mov	r6,#0x00
      0003EB 7F 00            [12]  778 	mov	r7,#0x00
      0003ED                        779 00133$:
      0003ED C3               [12]  780 	clr	c
      0003EE EE               [12]  781 	mov	a,r6
      0003EF 94 08            [12]  782 	subb	a,#0x08
      0003F1 EF               [12]  783 	mov	a,r7
      0003F2 64 80            [12]  784 	xrl	a,#0x80
      0003F4 94 80            [12]  785 	subb	a,#0x80
      0003F6 50 45            [24]  786 	jnc	00111$
                                    787 ;	./src/angry_bird.c:109: for (int i = 0; i < bird_row_size; i++)
      0003F8 7D 00            [12]  788 	mov	r5,#0x00
      0003FA                        789 00130$:
      0003FA BD 01 00         [24]  790 	cjne	r5,#0x01,00316$
      0003FD                        791 00316$:
      0003FD 50 37            [24]  792 	jnc	00134$
                                    793 ;	./src/angry_bird.c:111: OLED_SetCursor(row_offset + i, col_offset + j);
      0003FF AC 25            [24]  794 	mov	r4,_row_offset
      000401 E4               [12]  795 	clr	a
      000402 2C               [12]  796 	add	a,r4
      000403 F5 82            [12]  797 	mov	dpl,a
      000405 AC 27            [24]  798 	mov	r4,_col_offset
      000407 8E 03            [24]  799 	mov	ar3,r6
      000409 EB               [12]  800 	mov	a,r3
      00040A 2C               [12]  801 	add	a,r4
      00040B F5 0B            [12]  802 	mov	_OLED_SetCursor_PARM_2,a
      00040D C0 07            [24]  803 	push	ar7
      00040F C0 06            [24]  804 	push	ar6
      000411 C0 03            [24]  805 	push	ar3
      000413 12 0F 75         [24]  806 	lcall	_OLED_SetCursor
      000416 D0 03            [24]  807 	pop	ar3
                                    808 ;	./src/angry_bird.c:112: oledSendData(bird_logo[bird_cul_size * i + j]);
      000418 EB               [12]  809 	mov	a,r3
      000419 33               [12]  810 	rlc	a
      00041A 95 E0            [12]  811 	subb	a,acc
      00041C FC               [12]  812 	mov	r4,a
      00041D EB               [12]  813 	mov	a,r3
      00041E 24 B8            [12]  814 	add	a,#_bird_logo
      000420 F5 82            [12]  815 	mov	dpl,a
      000422 EC               [12]  816 	mov	a,r4
      000423 34 14            [12]  817 	addc	a,#(_bird_logo >> 8)
      000425 F5 83            [12]  818 	mov	dph,a
      000427 E4               [12]  819 	clr	a
      000428 93               [24]  820 	movc	a,@a+dptr
      000429 F5 82            [12]  821 	mov	dpl,a
      00042B 12 0F B1         [24]  822 	lcall	_oledSendData
      00042E D0 06            [24]  823 	pop	ar6
      000430 D0 07            [24]  824 	pop	ar7
                                    825 ;	./src/angry_bird.c:109: for (int i = 0; i < bird_row_size; i++)
      000432 7D 01            [12]  826 	mov	r5,#0x01
      000434 80 C4            [24]  827 	sjmp	00130$
      000436                        828 00134$:
                                    829 ;	./src/angry_bird.c:107: for (int j = 0; j < bird_cul_size; j++)
      000436 0E               [12]  830 	inc	r6
      000437 BE 00 B3         [24]  831 	cjne	r6,#0x00,00133$
      00043A 0F               [12]  832 	inc	r7
      00043B 80 B0            [24]  833 	sjmp	00133$
      00043D                        834 00111$:
                                    835 ;	./src/angry_bird.c:134: row_offset = pig1_row_cursor;
      00043D 75 25 03         [24]  836 	mov	_row_offset,#0x03
      000440 75 26 00         [24]  837 	mov	(_row_offset + 1),#0x00
                                    838 ;	./src/angry_bird.c:135: col_offset = pig1_col_cursor;
      000443 75 27 50         [24]  839 	mov	_col_offset,#0x50
      000446 75 28 00         [24]  840 	mov	(_col_offset + 1),#0x00
                                    841 ;	./src/angry_bird.c:136: for (int j = 0; j < pig_cul_size; j++)
      000449 7E 00            [12]  842 	mov	r6,#0x00
      00044B 7F 00            [12]  843 	mov	r7,#0x00
      00044D                        844 00139$:
      00044D C3               [12]  845 	clr	c
      00044E EE               [12]  846 	mov	a,r6
      00044F 94 0C            [12]  847 	subb	a,#0x0c
      000451 EF               [12]  848 	mov	a,r7
      000452 64 80            [12]  849 	xrl	a,#0x80
      000454 94 80            [12]  850 	subb	a,#0x80
      000456 50 54            [24]  851 	jnc	00141$
                                    852 ;	./src/angry_bird.c:138: for (int i = 0; i < pig_row_size; i++)
      000458 7D 00            [12]  853 	mov	r5,#0x00
      00045A                        854 00136$:
      00045A BD 02 00         [24]  855 	cjne	r5,#0x02,00320$
      00045D                        856 00320$:
      00045D 50 46            [24]  857 	jnc	00140$
                                    858 ;	./src/angry_bird.c:140: OLED_SetCursor(row_offset + i, col_offset + j);
      00045F AC 25            [24]  859 	mov	r4,_row_offset
      000461 8D 03            [24]  860 	mov	ar3,r5
      000463 EB               [12]  861 	mov	a,r3
      000464 2C               [12]  862 	add	a,r4
      000465 F5 82            [12]  863 	mov	dpl,a
      000467 AC 27            [24]  864 	mov	r4,_col_offset
      000469 8E 02            [24]  865 	mov	ar2,r6
      00046B EA               [12]  866 	mov	a,r2
      00046C 2C               [12]  867 	add	a,r4
      00046D F5 0B            [12]  868 	mov	_OLED_SetCursor_PARM_2,a
      00046F C0 07            [24]  869 	push	ar7
      000471 C0 06            [24]  870 	push	ar6
      000473 C0 05            [24]  871 	push	ar5
      000475 C0 03            [24]  872 	push	ar3
      000477 C0 02            [24]  873 	push	ar2
      000479 12 0F 75         [24]  874 	lcall	_OLED_SetCursor
      00047C D0 02            [24]  875 	pop	ar2
      00047E D0 03            [24]  876 	pop	ar3
                                    877 ;	./src/angry_bird.c:141: oledSendData(pig_logo[pig_cul_size * i + j]);
      000480 EB               [12]  878 	mov	a,r3
      000481 75 F0 0C         [24]  879 	mov	b,#0x0c
      000484 A4               [48]  880 	mul	ab
      000485 2A               [12]  881 	add	a,r2
      000486 FA               [12]  882 	mov	r2,a
      000487 33               [12]  883 	rlc	a
      000488 95 E0            [12]  884 	subb	a,acc
      00048A FC               [12]  885 	mov	r4,a
      00048B EA               [12]  886 	mov	a,r2
      00048C 24 A0            [12]  887 	add	a,#_pig_logo
      00048E F5 82            [12]  888 	mov	dpl,a
      000490 EC               [12]  889 	mov	a,r4
      000491 34 14            [12]  890 	addc	a,#(_pig_logo >> 8)
      000493 F5 83            [12]  891 	mov	dph,a
      000495 E4               [12]  892 	clr	a
      000496 93               [24]  893 	movc	a,@a+dptr
      000497 F5 82            [12]  894 	mov	dpl,a
      000499 12 0F B1         [24]  895 	lcall	_oledSendData
      00049C D0 05            [24]  896 	pop	ar5
      00049E D0 06            [24]  897 	pop	ar6
      0004A0 D0 07            [24]  898 	pop	ar7
                                    899 ;	./src/angry_bird.c:138: for (int i = 0; i < pig_row_size; i++)
      0004A2 0D               [12]  900 	inc	r5
      0004A3 80 B5            [24]  901 	sjmp	00136$
      0004A5                        902 00140$:
                                    903 ;	./src/angry_bird.c:136: for (int j = 0; j < pig_cul_size; j++)
      0004A5 0E               [12]  904 	inc	r6
      0004A6 BE 00 A4         [24]  905 	cjne	r6,#0x00,00139$
      0004A9 0F               [12]  906 	inc	r7
      0004AA 80 A1            [24]  907 	sjmp	00139$
      0004AC                        908 00141$:
                                    909 ;	./src/angry_bird.c:144: }
      0004AC 22               [24]  910 	ret
                                    911 ;------------------------------------------------------------
                                    912 ;Allocation info for local variables in function 'angrybird_state_machine'
                                    913 ;------------------------------------------------------------
                                    914 ;	./src/angry_bird.c:165: void angrybird_state_machine(void)
                                    915 ;	-----------------------------------------
                                    916 ;	 function angrybird_state_machine
                                    917 ;	-----------------------------------------
      0004AD                        918 _angrybird_state_machine:
                                    919 ;	./src/angry_bird.c:167: switch (cur_state)
      0004AD 74 03            [12]  920 	mov	a,#0x03
      0004AF B5 3E 06         [24]  921 	cjne	a,_cur_state,00155$
      0004B2 E4               [12]  922 	clr	a
      0004B3 B5 3F 02         [24]  923 	cjne	a,(_cur_state + 1),00155$
      0004B6 80 0D            [24]  924 	sjmp	00102$
      0004B8                        925 00155$:
      0004B8 74 04            [12]  926 	mov	a,#0x04
      0004BA B5 3E 06         [24]  927 	cjne	a,_cur_state,00156$
      0004BD E4               [12]  928 	clr	a
      0004BE B5 3F 02         [24]  929 	cjne	a,(_cur_state + 1),00156$
      0004C1 80 02            [24]  930 	sjmp	00157$
      0004C3                        931 00156$:
      0004C3 80 07            [24]  932 	sjmp	00103$
      0004C5                        933 00157$:
                                    934 ;	./src/angry_bird.c:170: case STATE_PLAY_HARD:
      0004C5                        935 00102$:
                                    936 ;	./src/angry_bird.c:171: P1_0 = 0;
                                    937 ;	assignBit
      0004C5 C2 90            [12]  938 	clr	_P1_0
                                    939 ;	./src/angry_bird.c:172: angrybird_game_state();
      0004C7 12 05 39         [24]  940 	lcall	_angrybird_game_state
                                    941 ;	./src/angry_bird.c:173: break;
                                    942 ;	./src/angry_bird.c:175: default:
      0004CA 80 2D            [24]  943 	sjmp	00109$
      0004CC                        944 00103$:
                                    945 ;	./src/angry_bird.c:176: if (led_cur_state == 0)
      0004CC E5 3C            [12]  946 	mov	a,_led_cur_state
      0004CE 45 3D            [12]  947 	orl	a,(_led_cur_state + 1)
                                    948 ;	./src/angry_bird.c:177: led_cur_state = 1;
      0004D0 70 07            [24]  949 	jnz	00107$
      0004D2 75 3C 01         [24]  950 	mov	_led_cur_state,#0x01
      0004D5 F5 3D            [12]  951 	mov	(_led_cur_state + 1),a
      0004D7 80 12            [24]  952 	sjmp	00108$
      0004D9                        953 00107$:
                                    954 ;	./src/angry_bird.c:178: else if (led_cur_state == 1)
      0004D9 74 01            [12]  955 	mov	a,#0x01
      0004DB B5 3C 06         [24]  956 	cjne	a,_led_cur_state,00159$
      0004DE 14               [12]  957 	dec	a
      0004DF B5 3D 02         [24]  958 	cjne	a,(_led_cur_state + 1),00159$
      0004E2 80 02            [24]  959 	sjmp	00160$
      0004E4                        960 00159$:
      0004E4 80 05            [24]  961 	sjmp	00108$
      0004E6                        962 00160$:
                                    963 ;	./src/angry_bird.c:179: led_cur_state = 0;
      0004E6 E4               [12]  964 	clr	a
      0004E7 F5 3C            [12]  965 	mov	_led_cur_state,a
      0004E9 F5 3D            [12]  966 	mov	(_led_cur_state + 1),a
      0004EB                        967 00108$:
                                    968 ;	./src/angry_bird.c:180: P1_0 = led_cur_state;
                                    969 ;	assignBit
      0004EB E5 3C            [12]  970 	mov	a,_led_cur_state
      0004ED 45 3D            [12]  971 	orl	a,(_led_cur_state + 1)
      0004EF 24 FF            [12]  972 	add	a,#0xff
      0004F1 92 90            [24]  973 	mov	_P1_0,c
                                    974 ;	./src/angry_bird.c:182: delay_ms(500);
      0004F3 90 01 F4         [24]  975 	mov	dptr,#0x01f4
      0004F6 12 01 BE         [24]  976 	lcall	_delay_ms
                                    977 ;	./src/angry_bird.c:184: }
      0004F9                        978 00109$:
                                    979 ;	./src/angry_bird.c:187: if (received_flag == 1)
      0004F9 74 01            [12]  980 	mov	a,#0x01
      0004FB B5 24 2C         [24]  981 	cjne	a,_received_flag,00114$
                                    982 ;	./src/angry_bird.c:189: cur_state = received_data;
      0004FE 85 23 3E         [24]  983 	mov	_cur_state,_received_data
      000501 75 3F 00         [24]  984 	mov	(_cur_state + 1),#0x00
                                    985 ;	./src/angry_bird.c:190: received_flag = 0;
      000504 75 24 00         [24]  986 	mov	_received_flag,#0x00
                                    987 ;	./src/angry_bird.c:191: P1_0 = 0;
                                    988 ;	assignBit
      000507 C2 90            [12]  989 	clr	_P1_0
                                    990 ;	./src/angry_bird.c:193: I2C_Start();
      000509 12 00 CA         [24]  991 	lcall	_I2C_Start
                                    992 ;	./src/angry_bird.c:194: OLED_Init();
      00050C 12 0E 5F         [24]  993 	lcall	_OLED_Init
                                    994 ;	./src/angry_bird.c:197: if (cur_state == STATE_PLAY_EASY || cur_state == STATE_PLAY_HARD)
      00050F 74 03            [12]  995 	mov	a,#0x03
      000511 B5 3E 06         [24]  996 	cjne	a,_cur_state,00163$
      000514 E4               [12]  997 	clr	a
      000515 B5 3F 02         [24]  998 	cjne	a,(_cur_state + 1),00163$
      000518 80 0D            [24]  999 	sjmp	00110$
      00051A                       1000 00163$:
      00051A 74 04            [12] 1001 	mov	a,#0x04
      00051C B5 3E 06         [24] 1002 	cjne	a,_cur_state,00164$
      00051F E4               [12] 1003 	clr	a
      000520 B5 3F 02         [24] 1004 	cjne	a,(_cur_state + 1),00164$
      000523 80 02            [24] 1005 	sjmp	00165$
      000525                       1006 00164$:
      000525 80 03            [24] 1007 	sjmp	00114$
      000527                       1008 00165$:
      000527                       1009 00110$:
                                   1010 ;	./src/angry_bird.c:198: angrybird_display_game();
      000527 12 01 D5         [24] 1011 	lcall	_angrybird_display_game
      00052A                       1012 00114$:
                                   1013 ;	./src/angry_bird.c:202: if (send_flag == 1)
      00052A 74 01            [12] 1014 	mov	a,#0x01
      00052C B5 22 09         [24] 1015 	cjne	a,_send_flag,00117$
                                   1016 ;	./src/angry_bird.c:204: I2C_Stop();
      00052F 12 00 D9         [24] 1017 	lcall	_I2C_Stop
                                   1018 ;	./src/angry_bird.c:205: SBUF = send_data; // send data to SBUF
      000532 85 21 99         [24] 1019 	mov	_SBUF,_send_data
                                   1020 ;	./src/angry_bird.c:206: send_flag = 0;
      000535 75 22 00         [24] 1021 	mov	_send_flag,#0x00
      000538                       1022 00117$:
                                   1023 ;	./src/angry_bird.c:212: }
      000538 22               [24] 1024 	ret
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'angrybird_game_state'
                                   1027 ;------------------------------------------------------------
                                   1028 ;which                     Allocated to registers r7 
                                   1029 ;control_angle_            Allocated with name '_angrybird_game_state_control_angle__196609_62'
                                   1030 ;i                         Allocated to registers r4 r5 
                                   1031 ;angle_                    Allocated with name '_angrybird_game_state_angle__196610_63'
                                   1032 ;which                     Allocated to registers r7 
                                   1033 ;control_strength_         Allocated with name '_angrybird_game_state_control_strength__196609_68'
                                   1034 ;j                         Allocated to registers r6 r7 
                                   1035 ;i                         Allocated to registers r5 
                                   1036 ;delta_y                   Allocated with name '_angrybird_game_state_delta_y_196609_75'
                                   1037 ;delta_x                   Allocated with name '_angrybird_game_state_delta_x_196609_75'
                                   1038 ;peak_x                    Allocated with name '_angrybird_game_state_peak_x_196609_75'
                                   1039 ;peak_y                    Allocated with name '_angrybird_game_state_peak_y_196609_75'
                                   1040 ;a                         Allocated with name '_angrybird_game_state_a_196609_75'
                                   1041 ;j                         Allocated to registers r2 r3 
                                   1042 ;i                         Allocated to registers r7 
                                   1043 ;i                         Allocated with name '_angrybird_game_state_i_262145_80'
                                   1044 ;output_row                Allocated with name '_angrybird_game_state_output_row_327681_81'
                                   1045 ;j                         Allocated to registers r2 r3 
                                   1046 ;i                         Allocated to registers r5 
                                   1047 ;j                         Allocated to registers r6 r7 
                                   1048 ;i                         Allocated to registers r5 
                                   1049 ;j                         Allocated to registers r6 r7 
                                   1050 ;i                         Allocated to registers r5 
                                   1051 ;j                         Allocated to registers r6 r7 
                                   1052 ;i                         Allocated to registers r5 
                                   1053 ;j                         Allocated to registers r6 r7 
                                   1054 ;i                         Allocated to registers r4 r5 
                                   1055 ;j                         Allocated to registers r6 r7 
                                   1056 ;i                         Allocated to registers r4 r5 
                                   1057 ;sloc1                     Allocated with name '_angrybird_game_state_sloc1_1_0'
                                   1058 ;------------------------------------------------------------
                                   1059 ;	./src/angry_bird.c:222: void angrybird_game_state(void)
                                   1060 ;	-----------------------------------------
                                   1061 ;	 function angrybird_game_state
                                   1062 ;	-----------------------------------------
      000539                       1063 _angrybird_game_state:
                                   1064 ;	./src/angry_bird.c:225: if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
      000539 20 A0 0B         [24] 1065 	jb	_P2_0,00119$
      00053C 74 01            [12] 1066 	mov	a,#0x01
      00053E B5 40 06         [24] 1067 	cjne	a,_prebut_up,00691$
      000541 14               [12] 1068 	dec	a
      000542 B5 41 02         [24] 1069 	cjne	a,(_prebut_up + 1),00691$
      000545 80 14            [24] 1070 	sjmp	00115$
      000547                       1071 00691$:
      000547                       1072 00119$:
      000547 30 A1 03         [24] 1073 	jnb	_P2_1,00692$
      00054A 02 06 60         [24] 1074 	ljmp	00116$
      00054D                       1075 00692$:
      00054D 74 01            [12] 1076 	mov	a,#0x01
      00054F B5 42 06         [24] 1077 	cjne	a,_prebut_down,00693$
      000552 14               [12] 1078 	dec	a
      000553 B5 43 02         [24] 1079 	cjne	a,(_prebut_down + 1),00693$
      000556 80 03            [24] 1080 	sjmp	00694$
      000558                       1081 00693$:
      000558 02 06 60         [24] 1082 	ljmp	00116$
      00055B                       1083 00694$:
      00055B                       1084 00115$:
                                   1085 ;	./src/angry_bird.c:228: int which = (but_up == 0) ? 1 : 0;
      00055B 20 A0 04         [24] 1086 	jb	_P2_0,00226$
      00055E 7F 01            [12] 1087 	mov	r7,#0x01
      000560 80 02            [24] 1088 	sjmp	00227$
      000562                       1089 00226$:
      000562 7F 00            [12] 1090 	mov	r7,#0x00
      000564                       1091 00227$:
                                   1092 ;	./src/angry_bird.c:229: if (but_up == 0 || but_down == 0)
      000564 30 A0 06         [24] 1093 	jnb	_P2_0,00112$
      000567 30 A1 03         [24] 1094 	jnb	_P2_1,00697$
      00056A 02 06 60         [24] 1095 	ljmp	00116$
      00056D                       1096 00697$:
      00056D                       1097 00112$:
                                   1098 ;	./src/angry_bird.c:231: if (which == 1)
      00056D BF 01 24         [24] 1099 	cjne	r7,#0x01,00106$
                                   1100 ;	./src/angry_bird.c:233: control_angle += 10;
      000570 74 0A            [12] 1101 	mov	a,#0x0a
      000572 25 2D            [12] 1102 	add	a,_control_angle
      000574 F5 2D            [12] 1103 	mov	_control_angle,a
      000576 E4               [12] 1104 	clr	a
      000577 35 2E            [12] 1105 	addc	a,(_control_angle + 1)
      000579 F5 2E            [12] 1106 	mov	(_control_angle + 1),a
                                   1107 ;	./src/angry_bird.c:234: if (control_angle > 90)
      00057B C3               [12] 1108 	clr	c
      00057C 74 5A            [12] 1109 	mov	a,#0x5a
      00057E 95 2D            [12] 1110 	subb	a,_control_angle
      000580 74 80            [12] 1111 	mov	a,#(0x00 ^ 0x80)
      000582 85 2E F0         [24] 1112 	mov	b,(_control_angle + 1)
      000585 63 F0 80         [24] 1113 	xrl	b,#0x80
      000588 95 F0            [12] 1114 	subb	a,b
      00058A 50 1C            [24] 1115 	jnc	00107$
                                   1116 ;	./src/angry_bird.c:235: control_angle = 90;
      00058C 75 2D 5A         [24] 1117 	mov	_control_angle,#0x5a
      00058F 75 2E 00         [24] 1118 	mov	(_control_angle + 1),#0x00
      000592 80 14            [24] 1119 	sjmp	00107$
      000594                       1120 00106$:
                                   1121 ;	./src/angry_bird.c:239: control_angle -= 10;
      000594 E5 2D            [12] 1122 	mov	a,_control_angle
      000596 24 F6            [12] 1123 	add	a,#0xf6
      000598 F5 2D            [12] 1124 	mov	_control_angle,a
      00059A E5 2E            [12] 1125 	mov	a,(_control_angle + 1)
      00059C 34 FF            [12] 1126 	addc	a,#0xff
                                   1127 ;	./src/angry_bird.c:240: if (control_angle < 0)
      00059E F5 2E            [12] 1128 	mov	(_control_angle + 1),a
      0005A0 30 E7 05         [24] 1129 	jnb	acc.7,00107$
                                   1130 ;	./src/angry_bird.c:241: control_angle = 0;
      0005A3 E4               [12] 1131 	clr	a
      0005A4 F5 2D            [12] 1132 	mov	_control_angle,a
      0005A6 F5 2E            [12] 1133 	mov	(_control_angle + 1),a
      0005A8                       1134 00107$:
                                   1135 ;	./src/angry_bird.c:246: int i = 0;
                                   1136 ;	./src/angry_bird.c:247: if (control_angle < 0)
      0005A8 E4               [12] 1137 	clr	a
      0005A9 FE               [12] 1138 	mov	r6,a
      0005AA FF               [12] 1139 	mov	r7,a
      0005AB E5 2E            [12] 1140 	mov	a,(_control_angle + 1)
      0005AD 30 E7 07         [24] 1141 	jnb	acc.7,00109$
                                   1142 ;	./src/angry_bird.c:248: control_angle_[i++] = '-';
      0005B0 7E 01            [12] 1143 	mov	r6,#0x01
      0005B2 7F 00            [12] 1144 	mov	r7,#0x00
      0005B4 75 4A 2D         [24] 1145 	mov	_angrybird_game_state_control_angle__196609_62,#0x2d
      0005B7                       1146 00109$:
                                   1147 ;	./src/angry_bird.c:249: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      0005B7 E5 2E            [12] 1148 	mov	a,(_control_angle + 1)
      0005B9 33               [12] 1149 	rlc	a
      0005BA 92 01            [24] 1150 	mov	_angrybird_game_state_sloc0_1_0,c
      0005BC 40 06            [24] 1151 	jc	00228$
      0005BE AC 2D            [24] 1152 	mov	r4,_control_angle
      0005C0 AD 2E            [24] 1153 	mov	r5,(_control_angle + 1)
      0005C2 80 09            [24] 1154 	sjmp	00229$
      0005C4                       1155 00228$:
      0005C4 C3               [12] 1156 	clr	c
      0005C5 E4               [12] 1157 	clr	a
      0005C6 95 2D            [12] 1158 	subb	a,_control_angle
      0005C8 FC               [12] 1159 	mov	r4,a
      0005C9 E4               [12] 1160 	clr	a
      0005CA 95 2E            [12] 1161 	subb	a,(_control_angle + 1)
      0005CC FD               [12] 1162 	mov	r5,a
      0005CD                       1163 00229$:
      0005CD 8C 4F            [24] 1164 	mov	_angrybird_game_state_angle__196610_63,r4
      0005CF 8D 50            [24] 1165 	mov	(_angrybird_game_state_angle__196610_63 + 1),r5
                                   1166 ;	./src/angry_bird.c:250: if (angle_ % 100 / 10 != 0)
      0005D1 75 0C 64         [24] 1167 	mov	__modsint_PARM_2,#0x64
      0005D4 75 0D 00         [24] 1168 	mov	(__modsint_PARM_2 + 1),#0x00
      0005D7 85 4F 82         [24] 1169 	mov	dpl,_angrybird_game_state_angle__196610_63
      0005DA 85 50 83         [24] 1170 	mov	dph,(_angrybird_game_state_angle__196610_63 + 1)
      0005DD C0 07            [24] 1171 	push	ar7
      0005DF C0 06            [24] 1172 	push	ar6
      0005E1 12 13 41         [24] 1173 	lcall	__modsint
      0005E4 75 0C 0A         [24] 1174 	mov	__divsint_PARM_2,#0x0a
      0005E7 75 0D 00         [24] 1175 	mov	(__divsint_PARM_2 + 1),#0x00
      0005EA 12 13 A4         [24] 1176 	lcall	__divsint
      0005ED AA 82            [24] 1177 	mov	r2,dpl
      0005EF AB 83            [24] 1178 	mov	r3,dph
      0005F1 D0 06            [24] 1179 	pop	ar6
      0005F3 D0 07            [24] 1180 	pop	ar7
      0005F5 EA               [12] 1181 	mov	a,r2
      0005F6 4B               [12] 1182 	orl	a,r3
      0005F7 60 11            [24] 1183 	jz	00111$
                                   1184 ;	./src/angry_bird.c:251: control_angle_[i++] = '0' + angle_ % 100 / 10;
      0005F9 8E 04            [24] 1185 	mov	ar4,r6
      0005FB 8F 05            [24] 1186 	mov	ar5,r7
      0005FD 0E               [12] 1187 	inc	r6
      0005FE BE 00 01         [24] 1188 	cjne	r6,#0x00,00705$
      000601 0F               [12] 1189 	inc	r7
      000602                       1190 00705$:
      000602 EC               [12] 1191 	mov	a,r4
      000603 24 4A            [12] 1192 	add	a,#_angrybird_game_state_control_angle__196609_62
      000605 F9               [12] 1193 	mov	r1,a
      000606 74 30            [12] 1194 	mov	a,#0x30
      000608 2A               [12] 1195 	add	a,r2
      000609 F7               [12] 1196 	mov	@r1,a
      00060A                       1197 00111$:
                                   1198 ;	./src/angry_bird.c:252: control_angle_[i++] = '0' + angle_ % 10;
      00060A 74 01            [12] 1199 	mov	a,#0x01
      00060C 2E               [12] 1200 	add	a,r6
      00060D FC               [12] 1201 	mov	r4,a
      00060E E4               [12] 1202 	clr	a
      00060F 3F               [12] 1203 	addc	a,r7
      000610 FD               [12] 1204 	mov	r5,a
      000611 EE               [12] 1205 	mov	a,r6
      000612 24 4A            [12] 1206 	add	a,#_angrybird_game_state_control_angle__196609_62
      000614 F9               [12] 1207 	mov	r1,a
      000615 75 0C 0A         [24] 1208 	mov	__modsint_PARM_2,#0x0a
      000618 75 0D 00         [24] 1209 	mov	(__modsint_PARM_2 + 1),#0x00
      00061B 85 4F 82         [24] 1210 	mov	dpl,_angrybird_game_state_angle__196610_63
      00061E 85 50 83         [24] 1211 	mov	dph,(_angrybird_game_state_angle__196610_63 + 1)
      000621 C0 05            [24] 1212 	push	ar5
      000623 C0 04            [24] 1213 	push	ar4
      000625 C0 01            [24] 1214 	push	ar1
      000627 12 13 41         [24] 1215 	lcall	__modsint
      00062A AE 82            [24] 1216 	mov	r6,dpl
      00062C D0 01            [24] 1217 	pop	ar1
      00062E D0 04            [24] 1218 	pop	ar4
      000630 D0 05            [24] 1219 	pop	ar5
      000632 74 30            [12] 1220 	mov	a,#0x30
      000634 2E               [12] 1221 	add	a,r6
      000635 F7               [12] 1222 	mov	@r1,a
                                   1223 ;	./src/angry_bird.c:253: control_angle_[i++] = '\0';
      000636 EC               [12] 1224 	mov	a,r4
      000637 24 4A            [12] 1225 	add	a,#_angrybird_game_state_control_angle__196609_62
      000639 F8               [12] 1226 	mov	r0,a
      00063A 76 00            [12] 1227 	mov	@r0,#0x00
                                   1228 ;	./src/angry_bird.c:255: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      00063C 75 0B 1E         [24] 1229 	mov	_OLED_SetCursor_PARM_2,#0x1e
      00063F 75 82 00         [24] 1230 	mov	dpl,#0x00
      000642 12 0F 75         [24] 1231 	lcall	_OLED_SetCursor
                                   1232 ;	./src/angry_bird.c:256: OLED_DisplayString("   ");
      000645 90 15 C6         [24] 1233 	mov	dptr,#___str_2
      000648 75 F0 80         [24] 1234 	mov	b,#0x80
      00064B 12 0F 1F         [24] 1235 	lcall	_OLED_DisplayString
                                   1236 ;	./src/angry_bird.c:257: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      00064E 75 0B 1E         [24] 1237 	mov	_OLED_SetCursor_PARM_2,#0x1e
      000651 75 82 00         [24] 1238 	mov	dpl,#0x00
      000654 12 0F 75         [24] 1239 	lcall	_OLED_SetCursor
                                   1240 ;	./src/angry_bird.c:258: OLED_DisplayString(control_angle_);
      000657 90 00 4A         [24] 1241 	mov	dptr,#_angrybird_game_state_control_angle__196609_62
      00065A 75 F0 40         [24] 1242 	mov	b,#0x40
      00065D 12 0F 1F         [24] 1243 	lcall	_OLED_DisplayString
      000660                       1244 00116$:
                                   1245 ;	./src/angry_bird.c:263: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
      000660 20 B2 0B         [24] 1246 	jb	_INT0,00134$
      000663 74 01            [12] 1247 	mov	a,#0x01
      000665 B5 44 06         [24] 1248 	cjne	a,_prebut_left,00707$
      000668 14               [12] 1249 	dec	a
      000669 B5 45 02         [24] 1250 	cjne	a,(_prebut_left + 1),00707$
      00066C 80 14            [24] 1251 	sjmp	00130$
      00066E                       1252 00707$:
      00066E                       1253 00134$:
      00066E 30 B3 03         [24] 1254 	jnb	_INT1,00708$
      000671 02 06 FF         [24] 1255 	ljmp	00131$
      000674                       1256 00708$:
      000674 74 01            [12] 1257 	mov	a,#0x01
      000676 B5 46 06         [24] 1258 	cjne	a,_prebut_right,00709$
      000679 14               [12] 1259 	dec	a
      00067A B5 47 02         [24] 1260 	cjne	a,(_prebut_right + 1),00709$
      00067D 80 03            [24] 1261 	sjmp	00710$
      00067F                       1262 00709$:
      00067F 02 06 FF         [24] 1263 	ljmp	00131$
      000682                       1264 00710$:
      000682                       1265 00130$:
                                   1266 ;	./src/angry_bird.c:266: int which = (but_left == 0) ? 1 : 0;
      000682 20 B2 04         [24] 1267 	jb	_INT0,00230$
      000685 7F 01            [12] 1268 	mov	r7,#0x01
      000687 80 02            [24] 1269 	sjmp	00231$
      000689                       1270 00230$:
      000689 7F 00            [12] 1271 	mov	r7,#0x00
      00068B                       1272 00231$:
                                   1273 ;	./src/angry_bird.c:267: if (but_left == 0 || but_right == 0)
      00068B 30 B2 03         [24] 1274 	jnb	_INT0,00127$
      00068E 20 B3 6E         [24] 1275 	jb	_INT1,00131$
      000691                       1276 00127$:
                                   1277 ;	./src/angry_bird.c:269: if (which == 1)
      000691 BF 01 1E         [24] 1278 	cjne	r7,#0x01,00125$
                                   1279 ;	./src/angry_bird.c:271: control_strength--;
      000694 15 2F            [12] 1280 	dec	_control_strength
      000696 74 FF            [12] 1281 	mov	a,#0xff
      000698 B5 2F 02         [24] 1282 	cjne	a,_control_strength,00716$
      00069B 15 30            [12] 1283 	dec	(_control_strength + 1)
      00069D                       1284 00716$:
                                   1285 ;	./src/angry_bird.c:272: if (control_strength < 1)
      00069D C3               [12] 1286 	clr	c
      00069E E5 2F            [12] 1287 	mov	a,_control_strength
      0006A0 94 01            [12] 1288 	subb	a,#0x01
      0006A2 E5 30            [12] 1289 	mov	a,(_control_strength + 1)
      0006A4 64 80            [12] 1290 	xrl	a,#0x80
      0006A6 94 80            [12] 1291 	subb	a,#0x80
      0006A8 50 27            [24] 1292 	jnc	00126$
                                   1293 ;	./src/angry_bird.c:273: control_strength = 1;
      0006AA 75 2F 01         [24] 1294 	mov	_control_strength,#0x01
      0006AD 75 30 00         [24] 1295 	mov	(_control_strength + 1),#0x00
      0006B0 80 1F            [24] 1296 	sjmp	00126$
      0006B2                       1297 00125$:
                                   1298 ;	./src/angry_bird.c:277: control_strength++;
      0006B2 05 2F            [12] 1299 	inc	_control_strength
      0006B4 E4               [12] 1300 	clr	a
      0006B5 B5 2F 02         [24] 1301 	cjne	a,_control_strength,00718$
      0006B8 05 30            [12] 1302 	inc	(_control_strength + 1)
      0006BA                       1303 00718$:
                                   1304 ;	./src/angry_bird.c:278: if (control_strength > 3)
      0006BA C3               [12] 1305 	clr	c
      0006BB 74 03            [12] 1306 	mov	a,#0x03
      0006BD 95 2F            [12] 1307 	subb	a,_control_strength
      0006BF 74 80            [12] 1308 	mov	a,#(0x00 ^ 0x80)
      0006C1 85 30 F0         [24] 1309 	mov	b,(_control_strength + 1)
      0006C4 63 F0 80         [24] 1310 	xrl	b,#0x80
      0006C7 95 F0            [12] 1311 	subb	a,b
      0006C9 50 06            [24] 1312 	jnc	00126$
                                   1313 ;	./src/angry_bird.c:279: control_strength = 3;
      0006CB 75 2F 03         [24] 1314 	mov	_control_strength,#0x03
      0006CE 75 30 00         [24] 1315 	mov	(_control_strength + 1),#0x00
      0006D1                       1316 00126$:
                                   1317 ;	./src/angry_bird.c:284: control_strength_[0] = '0' + control_strength;
      0006D1 AF 2F            [24] 1318 	mov	r7,_control_strength
      0006D3 74 30            [12] 1319 	mov	a,#0x30
      0006D5 2F               [12] 1320 	add	a,r7
      0006D6 F5 51            [12] 1321 	mov	_angrybird_game_state_control_strength__196609_68,a
                                   1322 ;	./src/angry_bird.c:285: control_strength_[1] = '\0';
      0006D8 75 52 00         [24] 1323 	mov	(_angrybird_game_state_control_strength__196609_68 + 0x0001),#0x00
                                   1324 ;	./src/angry_bird.c:287: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      0006DB 75 0B 0A         [24] 1325 	mov	_OLED_SetCursor_PARM_2,#0x0a
      0006DE 75 82 00         [24] 1326 	mov	dpl,#0x00
      0006E1 12 0F 75         [24] 1327 	lcall	_OLED_SetCursor
                                   1328 ;	./src/angry_bird.c:288: OLED_DisplayString(" ");
      0006E4 90 15 CA         [24] 1329 	mov	dptr,#___str_3
      0006E7 75 F0 80         [24] 1330 	mov	b,#0x80
      0006EA 12 0F 1F         [24] 1331 	lcall	_OLED_DisplayString
                                   1332 ;	./src/angry_bird.c:289: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      0006ED 75 0B 0A         [24] 1333 	mov	_OLED_SetCursor_PARM_2,#0x0a
      0006F0 75 82 00         [24] 1334 	mov	dpl,#0x00
      0006F3 12 0F 75         [24] 1335 	lcall	_OLED_SetCursor
                                   1336 ;	./src/angry_bird.c:290: OLED_DisplayString(control_strength_);
      0006F6 90 00 51         [24] 1337 	mov	dptr,#_angrybird_game_state_control_strength__196609_68
      0006F9 75 F0 40         [24] 1338 	mov	b,#0x40
      0006FC 12 0F 1F         [24] 1339 	lcall	_OLED_DisplayString
      0006FF                       1340 00131$:
                                   1341 ;	./src/angry_bird.c:295: if ((but_enter == 0) && (prebut_enter == 1))
      0006FF 30 A2 03         [24] 1342 	jnb	_P2_2,00720$
      000702 02 0B 9F         [24] 1343 	ljmp	00159$
      000705                       1344 00720$:
      000705 74 01            [12] 1345 	mov	a,#0x01
      000707 B5 48 06         [24] 1346 	cjne	a,_prebut_enter,00721$
      00070A 14               [12] 1347 	dec	a
      00070B B5 49 02         [24] 1348 	cjne	a,(_prebut_enter + 1),00721$
      00070E 80 03            [24] 1349 	sjmp	00722$
      000710                       1350 00721$:
      000710 02 0B 9F         [24] 1351 	ljmp	00159$
      000713                       1352 00722$:
                                   1353 ;	./src/angry_bird.c:297: delay_ms(10);
      000713 90 00 0A         [24] 1354 	mov	dptr,#0x000a
      000716 12 01 BE         [24] 1355 	lcall	_delay_ms
                                   1356 ;	./src/angry_bird.c:298: if (but_enter == 0)
      000719 30 A2 03         [24] 1357 	jnb	_P2_2,00723$
      00071C 02 0B 9F         [24] 1358 	ljmp	00159$
      00071F                       1359 00723$:
                                   1360 ;	./src/angry_bird.c:300: bird_amt--;
      00071F 15 29            [12] 1361 	dec	_bird_amt
      000721 74 FF            [12] 1362 	mov	a,#0xff
      000723 B5 29 02         [24] 1363 	cjne	a,_bird_amt,00724$
      000726 15 2A            [12] 1364 	dec	(_bird_amt + 1)
      000728                       1365 00724$:
                                   1366 ;	./src/angry_bird.c:302: row_offset = 0;
      000728 E4               [12] 1367 	clr	a
      000729 F5 25            [12] 1368 	mov	_row_offset,a
      00072B F5 26            [12] 1369 	mov	(_row_offset + 1),a
                                   1370 ;	./src/angry_bird.c:303: col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
      00072D 74 08            [12] 1371 	mov	a,#0x08
      00072F C3               [12] 1372 	clr	c
      000730 95 29            [12] 1373 	subb	a,_bird_amt
      000732 FE               [12] 1374 	mov	r6,a
      000733 E4               [12] 1375 	clr	a
      000734 95 2A            [12] 1376 	subb	a,(_bird_amt + 1)
      000736 C4               [12] 1377 	swap	a
      000737 03               [12] 1378 	rr	a
      000738 54 F8            [12] 1379 	anl	a,#0xf8
      00073A CE               [12] 1380 	xch	a,r6
      00073B C4               [12] 1381 	swap	a
      00073C 03               [12] 1382 	rr	a
      00073D CE               [12] 1383 	xch	a,r6
      00073E 6E               [12] 1384 	xrl	a,r6
      00073F CE               [12] 1385 	xch	a,r6
      000740 54 F8            [12] 1386 	anl	a,#0xf8
      000742 CE               [12] 1387 	xch	a,r6
      000743 6E               [12] 1388 	xrl	a,r6
      000744 FF               [12] 1389 	mov	r7,a
      000745 74 32            [12] 1390 	mov	a,#0x32
      000747 2E               [12] 1391 	add	a,r6
      000748 F5 27            [12] 1392 	mov	_col_offset,a
      00074A E4               [12] 1393 	clr	a
      00074B 3F               [12] 1394 	addc	a,r7
      00074C F5 28            [12] 1395 	mov	(_col_offset + 1),a
                                   1396 ;	./src/angry_bird.c:304: for (int j = 0; j < bird_cul_size; j++)
      00074E 7E 00            [12] 1397 	mov	r6,#0x00
      000750 7F 00            [12] 1398 	mov	r7,#0x00
      000752                       1399 00177$:
      000752 C3               [12] 1400 	clr	c
      000753 EE               [12] 1401 	mov	a,r6
      000754 94 08            [12] 1402 	subb	a,#0x08
      000756 EF               [12] 1403 	mov	a,r7
      000757 64 80            [12] 1404 	xrl	a,#0x80
      000759 94 80            [12] 1405 	subb	a,#0x80
      00075B 50 31            [24] 1406 	jnc	00136$
                                   1407 ;	./src/angry_bird.c:306: for (int i = 0; i < bird_row_size; i++)
      00075D 7D 00            [12] 1408 	mov	r5,#0x00
      00075F                       1409 00174$:
      00075F BD 01 00         [24] 1410 	cjne	r5,#0x01,00726$
      000762                       1411 00726$:
      000762 50 23            [24] 1412 	jnc	00178$
                                   1413 ;	./src/angry_bird.c:308: OLED_SetCursor(row_offset + i, col_offset + j);
      000764 AC 25            [24] 1414 	mov	r4,_row_offset
      000766 E4               [12] 1415 	clr	a
      000767 2C               [12] 1416 	add	a,r4
      000768 F5 82            [12] 1417 	mov	dpl,a
      00076A AC 27            [24] 1418 	mov	r4,_col_offset
      00076C 8E 03            [24] 1419 	mov	ar3,r6
      00076E EB               [12] 1420 	mov	a,r3
      00076F 2C               [12] 1421 	add	a,r4
      000770 F5 0B            [12] 1422 	mov	_OLED_SetCursor_PARM_2,a
      000772 C0 07            [24] 1423 	push	ar7
      000774 C0 06            [24] 1424 	push	ar6
      000776 12 0F 75         [24] 1425 	lcall	_OLED_SetCursor
                                   1426 ;	./src/angry_bird.c:309: oledSendData(0x00);
      000779 75 82 00         [24] 1427 	mov	dpl,#0x00
      00077C 12 0F B1         [24] 1428 	lcall	_oledSendData
      00077F D0 06            [24] 1429 	pop	ar6
      000781 D0 07            [24] 1430 	pop	ar7
                                   1431 ;	./src/angry_bird.c:306: for (int i = 0; i < bird_row_size; i++)
      000783 7D 01            [12] 1432 	mov	r5,#0x01
      000785 80 D8            [24] 1433 	sjmp	00174$
      000787                       1434 00178$:
                                   1435 ;	./src/angry_bird.c:304: for (int j = 0; j < bird_cul_size; j++)
      000787 0E               [12] 1436 	inc	r6
      000788 BE 00 C7         [24] 1437 	cjne	r6,#0x00,00177$
      00078B 0F               [12] 1438 	inc	r7
      00078C 80 C4            [24] 1439 	sjmp	00177$
      00078E                       1440 00136$:
                                   1441 ;	./src/angry_bird.c:316: float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
      00078E 85 2D 82         [24] 1442 	mov	dpl,_control_angle
      000791 85 2E 83         [24] 1443 	mov	dph,(_control_angle + 1)
      000794 12 0D 2E         [24] 1444 	lcall	_getsine
      000797 AC 82            [24] 1445 	mov	r4,dpl
      000799 AD 83            [24] 1446 	mov	r5,dph
      00079B AE F0            [24] 1447 	mov	r6,b
      00079D FF               [12] 1448 	mov	r7,a
      00079E C0 04            [24] 1449 	push	ar4
      0007A0 C0 05            [24] 1450 	push	ar5
      0007A2 C0 06            [24] 1451 	push	ar6
      0007A4 C0 07            [24] 1452 	push	ar7
                                   1453 ;	./src/angry_bird.c:317: float delta_x = control_strength_value * control_strength - delta_y * 4;
      0007A6 90 C3 B7         [24] 1454 	mov	dptr,#0xc3b7
      0007A9 75 F0 07         [24] 1455 	mov	b,#0x07
      0007AC 74 41            [12] 1456 	mov	a,#0x41
      0007AE 12 0F C8         [24] 1457 	lcall	___fsmul
      0007B1 85 82 53         [24] 1458 	mov	_angrybird_game_state_delta_y_196609_75,dpl
      0007B4 85 83 54         [24] 1459 	mov	(_angrybird_game_state_delta_y_196609_75 + 1),dph
      0007B7 85 F0 55         [24] 1460 	mov	(_angrybird_game_state_delta_y_196609_75 + 2),b
      0007BA F5 56            [12] 1461 	mov	(_angrybird_game_state_delta_y_196609_75 + 3),a
      0007BC E5 81            [12] 1462 	mov	a,sp
      0007BE 24 FC            [12] 1463 	add	a,#0xfc
      0007C0 F5 81            [12] 1464 	mov	sp,a
      0007C2 85 2F 0C         [24] 1465 	mov	__mulint_PARM_2,_control_strength
      0007C5 85 30 0D         [24] 1466 	mov	(__mulint_PARM_2 + 1),(_control_strength + 1)
      0007C8 90 00 19         [24] 1467 	mov	dptr,#0x0019
      0007CB 12 10 CC         [24] 1468 	lcall	__mulint
      0007CE AA 82            [24] 1469 	mov	r2,dpl
      0007D0 AB 83            [24] 1470 	mov	r3,dph
      0007D2 C0 03            [24] 1471 	push	ar3
      0007D4 C0 02            [24] 1472 	push	ar2
      0007D6 C0 53            [24] 1473 	push	_angrybird_game_state_delta_y_196609_75
      0007D8 C0 54            [24] 1474 	push	(_angrybird_game_state_delta_y_196609_75 + 1)
      0007DA C0 55            [24] 1475 	push	(_angrybird_game_state_delta_y_196609_75 + 2)
      0007DC C0 56            [24] 1476 	push	(_angrybird_game_state_delta_y_196609_75 + 3)
      0007DE 90 00 00         [24] 1477 	mov	dptr,#0x0000
      0007E1 75 F0 80         [24] 1478 	mov	b,#0x80
      0007E4 74 40            [12] 1479 	mov	a,#0x40
      0007E6 12 0F C8         [24] 1480 	lcall	___fsmul
      0007E9 85 82 6B         [24] 1481 	mov	_angrybird_game_state_sloc1_1_0,dpl
      0007EC 85 83 6C         [24] 1482 	mov	(_angrybird_game_state_sloc1_1_0 + 1),dph
      0007EF 85 F0 6D         [24] 1483 	mov	(_angrybird_game_state_sloc1_1_0 + 2),b
      0007F2 F5 6E            [12] 1484 	mov	(_angrybird_game_state_sloc1_1_0 + 3),a
      0007F4 E5 81            [12] 1485 	mov	a,sp
      0007F6 24 FC            [12] 1486 	add	a,#0xfc
      0007F8 F5 81            [12] 1487 	mov	sp,a
      0007FA D0 02            [24] 1488 	pop	ar2
      0007FC D0 03            [24] 1489 	pop	ar3
      0007FE 8A 82            [24] 1490 	mov	dpl,r2
      000800 8B 83            [24] 1491 	mov	dph,r3
      000802 12 11 B8         [24] 1492 	lcall	___sint2fs
      000805 AA 82            [24] 1493 	mov	r2,dpl
      000807 AB 83            [24] 1494 	mov	r3,dph
      000809 AE F0            [24] 1495 	mov	r6,b
      00080B FF               [12] 1496 	mov	r7,a
      00080C C0 6B            [24] 1497 	push	_angrybird_game_state_sloc1_1_0
      00080E C0 6C            [24] 1498 	push	(_angrybird_game_state_sloc1_1_0 + 1)
      000810 C0 6D            [24] 1499 	push	(_angrybird_game_state_sloc1_1_0 + 2)
      000812 C0 6E            [24] 1500 	push	(_angrybird_game_state_sloc1_1_0 + 3)
                                   1501 ;	./src/angry_bird.c:318: float peak_x = bird_init_col_cursor + delta_x;
      000814 8A 82            [24] 1502 	mov	dpl,r2
      000816 8B 83            [24] 1503 	mov	dph,r3
      000818 8E F0            [24] 1504 	mov	b,r6
      00081A EF               [12] 1505 	mov	a,r7
      00081B 12 0F BD         [24] 1506 	lcall	___fssub
      00081E 85 82 57         [24] 1507 	mov	_angrybird_game_state_delta_x_196609_75,dpl
      000821 85 83 58         [24] 1508 	mov	(_angrybird_game_state_delta_x_196609_75 + 1),dph
      000824 85 F0 59         [24] 1509 	mov	(_angrybird_game_state_delta_x_196609_75 + 2),b
      000827 F5 5A            [12] 1510 	mov	(_angrybird_game_state_delta_x_196609_75 + 3),a
      000829 E5 81            [12] 1511 	mov	a,sp
      00082B 24 FC            [12] 1512 	add	a,#0xfc
      00082D F5 81            [12] 1513 	mov	sp,a
      00082F E4               [12] 1514 	clr	a
      000830 C0 E0            [24] 1515 	push	acc
      000832 C0 E0            [24] 1516 	push	acc
      000834 C0 E0            [24] 1517 	push	acc
      000836 74 41            [12] 1518 	mov	a,#0x41
      000838 C0 E0            [24] 1519 	push	acc
                                   1520 ;	./src/angry_bird.c:319: float peak_y = bird_init_row_cursor - delta_y;
      00083A 85 57 82         [24] 1521 	mov	dpl,_angrybird_game_state_delta_x_196609_75
      00083D 85 58 83         [24] 1522 	mov	dph,(_angrybird_game_state_delta_x_196609_75 + 1)
      000840 85 59 F0         [24] 1523 	mov	b,(_angrybird_game_state_delta_x_196609_75 + 2)
      000843 E5 5A            [12] 1524 	mov	a,(_angrybird_game_state_delta_x_196609_75 + 3)
      000845 12 11 5F         [24] 1525 	lcall	___fsadd
      000848 85 82 5B         [24] 1526 	mov	_angrybird_game_state_peak_x_196609_75,dpl
      00084B 85 83 5C         [24] 1527 	mov	(_angrybird_game_state_peak_x_196609_75 + 1),dph
      00084E 85 F0 5D         [24] 1528 	mov	(_angrybird_game_state_peak_x_196609_75 + 2),b
      000851 F5 5E            [12] 1529 	mov	(_angrybird_game_state_peak_x_196609_75 + 3),a
      000853 E5 81            [12] 1530 	mov	a,sp
      000855 24 FC            [12] 1531 	add	a,#0xfc
      000857 F5 81            [12] 1532 	mov	sp,a
      000859 C0 53            [24] 1533 	push	_angrybird_game_state_delta_y_196609_75
      00085B C0 54            [24] 1534 	push	(_angrybird_game_state_delta_y_196609_75 + 1)
      00085D C0 55            [24] 1535 	push	(_angrybird_game_state_delta_y_196609_75 + 2)
      00085F C0 56            [24] 1536 	push	(_angrybird_game_state_delta_y_196609_75 + 3)
                                   1537 ;	./src/angry_bird.c:320: float a = delta_y / pow_2(delta_x);
      000861 90 00 00         [24] 1538 	mov	dptr,#0x0000
      000864 75 F0 E0         [24] 1539 	mov	b,#0xe0
      000867 74 40            [12] 1540 	mov	a,#0x40
      000869 12 0F BD         [24] 1541 	lcall	___fssub
      00086C 85 82 5F         [24] 1542 	mov	_angrybird_game_state_peak_y_196609_75,dpl
      00086F 85 83 60         [24] 1543 	mov	(_angrybird_game_state_peak_y_196609_75 + 1),dph
      000872 85 F0 61         [24] 1544 	mov	(_angrybird_game_state_peak_y_196609_75 + 2),b
      000875 F5 62            [12] 1545 	mov	(_angrybird_game_state_peak_y_196609_75 + 3),a
      000877 E5 81            [12] 1546 	mov	a,sp
      000879 24 FC            [12] 1547 	add	a,#0xfc
      00087B F5 81            [12] 1548 	mov	sp,a
      00087D 85 57 82         [24] 1549 	mov	dpl,_angrybird_game_state_delta_x_196609_75
      000880 85 58 83         [24] 1550 	mov	dph,(_angrybird_game_state_delta_x_196609_75 + 1)
      000883 85 59 F0         [24] 1551 	mov	b,(_angrybird_game_state_delta_x_196609_75 + 2)
      000886 E5 5A            [12] 1552 	mov	a,(_angrybird_game_state_delta_x_196609_75 + 3)
      000888 12 0E 09         [24] 1553 	lcall	_pow_2
      00088B AA 82            [24] 1554 	mov	r2,dpl
      00088D AB 83            [24] 1555 	mov	r3,dph
      00088F AE F0            [24] 1556 	mov	r6,b
      000891 FF               [12] 1557 	mov	r7,a
      000892 C0 02            [24] 1558 	push	ar2
      000894 C0 03            [24] 1559 	push	ar3
      000896 C0 06            [24] 1560 	push	ar6
      000898 C0 07            [24] 1561 	push	ar7
                                   1562 ;	./src/angry_bird.c:322: row_offset = bird_init_row_cursor;
      00089A 85 53 82         [24] 1563 	mov	dpl,_angrybird_game_state_delta_y_196609_75
      00089D 85 54 83         [24] 1564 	mov	dph,(_angrybird_game_state_delta_y_196609_75 + 1)
      0008A0 85 55 F0         [24] 1565 	mov	b,(_angrybird_game_state_delta_y_196609_75 + 2)
      0008A3 E5 56            [12] 1566 	mov	a,(_angrybird_game_state_delta_y_196609_75 + 3)
      0008A5 12 12 62         [24] 1567 	lcall	___fsdiv
      0008A8 85 82 63         [24] 1568 	mov	_angrybird_game_state_a_196609_75,dpl
      0008AB 85 83 64         [24] 1569 	mov	(_angrybird_game_state_a_196609_75 + 1),dph
      0008AE 85 F0 65         [24] 1570 	mov	(_angrybird_game_state_a_196609_75 + 2),b
      0008B1 F5 66            [12] 1571 	mov	(_angrybird_game_state_a_196609_75 + 3),a
      0008B3 E5 81            [12] 1572 	mov	a,sp
      0008B5 24 FC            [12] 1573 	add	a,#0xfc
      0008B7 F5 81            [12] 1574 	mov	sp,a
      0008B9 75 25 07         [24] 1575 	mov	_row_offset,#0x07
      0008BC 75 26 00         [24] 1576 	mov	(_row_offset + 1),#0x00
                                   1577 ;	./src/angry_bird.c:323: col_offset = bird_init_col_cursor;
      0008BF 75 27 08         [24] 1578 	mov	_col_offset,#0x08
      0008C2 75 28 00         [24] 1579 	mov	(_col_offset + 1),#0x00
                                   1580 ;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
      0008C5 7A 00            [12] 1581 	mov	r2,#0x00
      0008C7 7B 00            [12] 1582 	mov	r3,#0x00
      0008C9                       1583 00183$:
      0008C9 C3               [12] 1584 	clr	c
      0008CA EA               [12] 1585 	mov	a,r2
      0008CB 94 08            [12] 1586 	subb	a,#0x08
      0008CD EB               [12] 1587 	mov	a,r3
      0008CE 64 80            [12] 1588 	xrl	a,#0x80
      0008D0 94 80            [12] 1589 	subb	a,#0x80
      0008D2 50 31            [24] 1590 	jnc	00138$
                                   1591 ;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
      0008D4 7F 00            [12] 1592 	mov	r7,#0x00
      0008D6                       1593 00180$:
      0008D6 BF 01 00         [24] 1594 	cjne	r7,#0x01,00730$
      0008D9                       1595 00730$:
      0008D9 50 23            [24] 1596 	jnc	00184$
                                   1597 ;	./src/angry_bird.c:328: OLED_SetCursor(row_offset + i, col_offset + j);
      0008DB AE 25            [24] 1598 	mov	r6,_row_offset
      0008DD E4               [12] 1599 	clr	a
      0008DE 2E               [12] 1600 	add	a,r6
      0008DF F5 82            [12] 1601 	mov	dpl,a
      0008E1 AE 27            [24] 1602 	mov	r6,_col_offset
      0008E3 8A 05            [24] 1603 	mov	ar5,r2
      0008E5 ED               [12] 1604 	mov	a,r5
      0008E6 2E               [12] 1605 	add	a,r6
      0008E7 F5 0B            [12] 1606 	mov	_OLED_SetCursor_PARM_2,a
      0008E9 C0 03            [24] 1607 	push	ar3
      0008EB C0 02            [24] 1608 	push	ar2
      0008ED 12 0F 75         [24] 1609 	lcall	_OLED_SetCursor
                                   1610 ;	./src/angry_bird.c:329: oledSendData(0x00);
      0008F0 75 82 00         [24] 1611 	mov	dpl,#0x00
      0008F3 12 0F B1         [24] 1612 	lcall	_oledSendData
      0008F6 D0 02            [24] 1613 	pop	ar2
      0008F8 D0 03            [24] 1614 	pop	ar3
                                   1615 ;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
      0008FA 7F 01            [12] 1616 	mov	r7,#0x01
      0008FC 80 D8            [24] 1617 	sjmp	00180$
      0008FE                       1618 00184$:
                                   1619 ;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
      0008FE 0A               [12] 1620 	inc	r2
      0008FF BA 00 C7         [24] 1621 	cjne	r2,#0x00,00183$
      000902 0B               [12] 1622 	inc	r3
      000903 80 C4            [24] 1623 	sjmp	00183$
      000905                       1624 00138$:
                                   1625 ;	./src/angry_bird.c:333: for (int i = 16; i <= 119; i += 8)
      000905 75 67 10         [24] 1626 	mov	_angrybird_game_state_i_262145_80,#0x10
      000908 75 68 00         [24] 1627 	mov	(_angrybird_game_state_i_262145_80 + 1),#0x00
      00090B                       1628 00204$:
      00090B C3               [12] 1629 	clr	c
      00090C 74 77            [12] 1630 	mov	a,#0x77
      00090E 95 67            [12] 1631 	subb	a,_angrybird_game_state_i_262145_80
      000910 74 80            [12] 1632 	mov	a,#(0x00 ^ 0x80)
      000912 85 68 F0         [24] 1633 	mov	b,(_angrybird_game_state_i_262145_80 + 1)
      000915 63 F0 80         [24] 1634 	xrl	b,#0x80
      000918 95 F0            [12] 1635 	subb	a,b
      00091A 50 03            [24] 1636 	jnc	00733$
      00091C 02 0B 3F         [24] 1637 	ljmp	00153$
      00091F                       1638 00733$:
                                   1639 ;	./src/angry_bird.c:335: int output_row = a * pow_2(i - peak_x) + peak_y;
      00091F 85 67 82         [24] 1640 	mov	dpl,_angrybird_game_state_i_262145_80
      000922 85 68 83         [24] 1641 	mov	dph,(_angrybird_game_state_i_262145_80 + 1)
      000925 12 11 B8         [24] 1642 	lcall	___sint2fs
      000928 AA 82            [24] 1643 	mov	r2,dpl
      00092A AB 83            [24] 1644 	mov	r3,dph
      00092C AC F0            [24] 1645 	mov	r4,b
      00092E FD               [12] 1646 	mov	r5,a
      00092F C0 5B            [24] 1647 	push	_angrybird_game_state_peak_x_196609_75
      000931 C0 5C            [24] 1648 	push	(_angrybird_game_state_peak_x_196609_75 + 1)
      000933 C0 5D            [24] 1649 	push	(_angrybird_game_state_peak_x_196609_75 + 2)
      000935 C0 5E            [24] 1650 	push	(_angrybird_game_state_peak_x_196609_75 + 3)
      000937 8A 82            [24] 1651 	mov	dpl,r2
      000939 8B 83            [24] 1652 	mov	dph,r3
      00093B 8C F0            [24] 1653 	mov	b,r4
      00093D ED               [12] 1654 	mov	a,r5
      00093E 12 0F BD         [24] 1655 	lcall	___fssub
      000941 AA 82            [24] 1656 	mov	r2,dpl
      000943 AB 83            [24] 1657 	mov	r3,dph
      000945 AC F0            [24] 1658 	mov	r4,b
      000947 FD               [12] 1659 	mov	r5,a
      000948 E5 81            [12] 1660 	mov	a,sp
      00094A 24 FC            [12] 1661 	add	a,#0xfc
      00094C F5 81            [12] 1662 	mov	sp,a
      00094E 8A 82            [24] 1663 	mov	dpl,r2
      000950 8B 83            [24] 1664 	mov	dph,r3
      000952 8C F0            [24] 1665 	mov	b,r4
      000954 ED               [12] 1666 	mov	a,r5
      000955 12 0E 09         [24] 1667 	lcall	_pow_2
      000958 AA 82            [24] 1668 	mov	r2,dpl
      00095A AB 83            [24] 1669 	mov	r3,dph
      00095C AC F0            [24] 1670 	mov	r4,b
      00095E FD               [12] 1671 	mov	r5,a
      00095F C0 02            [24] 1672 	push	ar2
      000961 C0 03            [24] 1673 	push	ar3
      000963 C0 04            [24] 1674 	push	ar4
      000965 C0 05            [24] 1675 	push	ar5
      000967 85 63 82         [24] 1676 	mov	dpl,_angrybird_game_state_a_196609_75
      00096A 85 64 83         [24] 1677 	mov	dph,(_angrybird_game_state_a_196609_75 + 1)
      00096D 85 65 F0         [24] 1678 	mov	b,(_angrybird_game_state_a_196609_75 + 2)
      000970 E5 66            [12] 1679 	mov	a,(_angrybird_game_state_a_196609_75 + 3)
      000972 12 0F C8         [24] 1680 	lcall	___fsmul
      000975 AA 82            [24] 1681 	mov	r2,dpl
      000977 AB 83            [24] 1682 	mov	r3,dph
      000979 AC F0            [24] 1683 	mov	r4,b
      00097B FD               [12] 1684 	mov	r5,a
      00097C E5 81            [12] 1685 	mov	a,sp
      00097E 24 FC            [12] 1686 	add	a,#0xfc
      000980 F5 81            [12] 1687 	mov	sp,a
      000982 C0 5F            [24] 1688 	push	_angrybird_game_state_peak_y_196609_75
      000984 C0 60            [24] 1689 	push	(_angrybird_game_state_peak_y_196609_75 + 1)
      000986 C0 61            [24] 1690 	push	(_angrybird_game_state_peak_y_196609_75 + 2)
      000988 C0 62            [24] 1691 	push	(_angrybird_game_state_peak_y_196609_75 + 3)
      00098A 8A 82            [24] 1692 	mov	dpl,r2
      00098C 8B 83            [24] 1693 	mov	dph,r3
      00098E 8C F0            [24] 1694 	mov	b,r4
      000990 ED               [12] 1695 	mov	a,r5
      000991 12 11 5F         [24] 1696 	lcall	___fsadd
      000994 AA 82            [24] 1697 	mov	r2,dpl
      000996 AB 83            [24] 1698 	mov	r3,dph
      000998 AC F0            [24] 1699 	mov	r4,b
      00099A FD               [12] 1700 	mov	r5,a
      00099B E5 81            [12] 1701 	mov	a,sp
      00099D 24 FC            [12] 1702 	add	a,#0xfc
      00099F F5 81            [12] 1703 	mov	sp,a
      0009A1 8A 82            [24] 1704 	mov	dpl,r2
      0009A3 8B 83            [24] 1705 	mov	dph,r3
      0009A5 8C F0            [24] 1706 	mov	b,r4
      0009A7 ED               [12] 1707 	mov	a,r5
      0009A8 12 11 C5         [24] 1708 	lcall	___fs2sint
      0009AB 85 82 69         [24] 1709 	mov	_angrybird_game_state_output_row_327681_81,dpl
      0009AE 85 83 6A         [24] 1710 	mov	(_angrybird_game_state_output_row_327681_81 + 1),dph
                                   1711 ;	./src/angry_bird.c:337: if (1 <= output_row && output_row <= 7)
      0009B1 C3               [12] 1712 	clr	c
      0009B2 E5 69            [12] 1713 	mov	a,_angrybird_game_state_output_row_327681_81
      0009B4 94 01            [12] 1714 	subb	a,#0x01
      0009B6 E5 6A            [12] 1715 	mov	a,(_angrybird_game_state_output_row_327681_81 + 1)
      0009B8 64 80            [12] 1716 	xrl	a,#0x80
      0009BA 94 80            [12] 1717 	subb	a,#0x80
      0009BC 50 03            [24] 1718 	jnc	00734$
      0009BE 02 0B 31         [24] 1719 	ljmp	00205$
      0009C1                       1720 00734$:
      0009C1 C3               [12] 1721 	clr	c
      0009C2 74 07            [12] 1722 	mov	a,#0x07
      0009C4 95 69            [12] 1723 	subb	a,_angrybird_game_state_output_row_327681_81
      0009C6 74 80            [12] 1724 	mov	a,#(0x00 ^ 0x80)
      0009C8 85 6A F0         [24] 1725 	mov	b,(_angrybird_game_state_output_row_327681_81 + 1)
      0009CB 63 F0 80         [24] 1726 	xrl	b,#0x80
      0009CE 95 F0            [12] 1727 	subb	a,b
      0009D0 50 03            [24] 1728 	jnc	00735$
      0009D2 02 0B 31         [24] 1729 	ljmp	00205$
      0009D5                       1730 00735$:
                                   1731 ;	./src/angry_bird.c:340: row_offset = output_row;
      0009D5 85 69 25         [24] 1732 	mov	_row_offset,_angrybird_game_state_output_row_327681_81
      0009D8 85 6A 26         [24] 1733 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_81 + 1)
                                   1734 ;	./src/angry_bird.c:341: col_offset = bird_init_col_cursor + i;
      0009DB 74 08            [12] 1735 	mov	a,#0x08
      0009DD 25 67            [12] 1736 	add	a,_angrybird_game_state_i_262145_80
      0009DF F5 27            [12] 1737 	mov	_col_offset,a
      0009E1 E4               [12] 1738 	clr	a
      0009E2 35 68            [12] 1739 	addc	a,(_angrybird_game_state_i_262145_80 + 1)
      0009E4 F5 28            [12] 1740 	mov	(_col_offset + 1),a
                                   1741 ;	./src/angry_bird.c:342: for (int j = 0; j < bird_cul_size; j++)
      0009E6 7A 00            [12] 1742 	mov	r2,#0x00
      0009E8 7B 00            [12] 1743 	mov	r3,#0x00
      0009EA                       1744 00189$:
      0009EA C3               [12] 1745 	clr	c
      0009EB EA               [12] 1746 	mov	a,r2
      0009EC 94 08            [12] 1747 	subb	a,#0x08
      0009EE EB               [12] 1748 	mov	a,r3
      0009EF 64 80            [12] 1749 	xrl	a,#0x80
      0009F1 94 80            [12] 1750 	subb	a,#0x80
      0009F3 50 4D            [24] 1751 	jnc	00140$
                                   1752 ;	./src/angry_bird.c:344: for (int i = 0; i < bird_row_size; i++)
      0009F5 7D 00            [12] 1753 	mov	r5,#0x00
      0009F7                       1754 00186$:
      0009F7 BD 01 00         [24] 1755 	cjne	r5,#0x01,00737$
      0009FA                       1756 00737$:
      0009FA 50 3F            [24] 1757 	jnc	00190$
                                   1758 ;	./src/angry_bird.c:346: OLED_SetCursor(row_offset + i, col_offset + j);
      0009FC AC 25            [24] 1759 	mov	r4,_row_offset
      0009FE E4               [12] 1760 	clr	a
      0009FF 2C               [12] 1761 	add	a,r4
      000A00 F5 82            [12] 1762 	mov	dpl,a
      000A02 AC 27            [24] 1763 	mov	r4,_col_offset
      000A04 8A 07            [24] 1764 	mov	ar7,r2
      000A06 EF               [12] 1765 	mov	a,r7
      000A07 2C               [12] 1766 	add	a,r4
      000A08 F5 0B            [12] 1767 	mov	_OLED_SetCursor_PARM_2,a
      000A0A C0 07            [24] 1768 	push	ar7
      000A0C C0 03            [24] 1769 	push	ar3
      000A0E C0 02            [24] 1770 	push	ar2
      000A10 12 0F 75         [24] 1771 	lcall	_OLED_SetCursor
      000A13 D0 02            [24] 1772 	pop	ar2
      000A15 D0 03            [24] 1773 	pop	ar3
      000A17 D0 07            [24] 1774 	pop	ar7
                                   1775 ;	./src/angry_bird.c:347: oledSendData(bird_logo[bird_cul_size * i + j]);
      000A19 EF               [12] 1776 	mov	a,r7
      000A1A 33               [12] 1777 	rlc	a
      000A1B 95 E0            [12] 1778 	subb	a,acc
      000A1D FE               [12] 1779 	mov	r6,a
      000A1E EF               [12] 1780 	mov	a,r7
      000A1F 24 B8            [12] 1781 	add	a,#_bird_logo
      000A21 F5 82            [12] 1782 	mov	dpl,a
      000A23 EE               [12] 1783 	mov	a,r6
      000A24 34 14            [12] 1784 	addc	a,#(_bird_logo >> 8)
      000A26 F5 83            [12] 1785 	mov	dph,a
      000A28 E4               [12] 1786 	clr	a
      000A29 93               [24] 1787 	movc	a,@a+dptr
      000A2A F5 82            [12] 1788 	mov	dpl,a
      000A2C C0 03            [24] 1789 	push	ar3
      000A2E C0 02            [24] 1790 	push	ar2
      000A30 12 0F B1         [24] 1791 	lcall	_oledSendData
      000A33 D0 02            [24] 1792 	pop	ar2
      000A35 D0 03            [24] 1793 	pop	ar3
                                   1794 ;	./src/angry_bird.c:344: for (int i = 0; i < bird_row_size; i++)
      000A37 7D 01            [12] 1795 	mov	r5,#0x01
      000A39 80 BC            [24] 1796 	sjmp	00186$
      000A3B                       1797 00190$:
                                   1798 ;	./src/angry_bird.c:342: for (int j = 0; j < bird_cul_size; j++)
      000A3B 0A               [12] 1799 	inc	r2
      000A3C BA 00 AB         [24] 1800 	cjne	r2,#0x00,00189$
      000A3F 0B               [12] 1801 	inc	r3
      000A40 80 A8            [24] 1802 	sjmp	00189$
      000A42                       1803 00140$:
                                   1804 ;	./src/angry_bird.c:350: delay_ms(400);
      000A42 90 01 90         [24] 1805 	mov	dptr,#0x0190
      000A45 12 01 BE         [24] 1806 	lcall	_delay_ms
                                   1807 ;	./src/angry_bird.c:374: if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
      000A48 C3               [12] 1808 	clr	c
      000A49 E5 25            [12] 1809 	mov	a,_row_offset
      000A4B 94 03            [12] 1810 	subb	a,#0x03
      000A4D E5 26            [12] 1811 	mov	a,(_row_offset + 1)
      000A4F 64 80            [12] 1812 	xrl	a,#0x80
      000A51 94 80            [12] 1813 	subb	a,#0x80
      000A53 50 03            [24] 1814 	jnc	00740$
      000A55 02 0A E0         [24] 1815 	ljmp	00144$
      000A58                       1816 00740$:
      000A58 C3               [12] 1817 	clr	c
      000A59 74 04            [12] 1818 	mov	a,#0x04
      000A5B 95 25            [12] 1819 	subb	a,_row_offset
      000A5D 74 80            [12] 1820 	mov	a,#(0x00 ^ 0x80)
      000A5F 85 26 F0         [24] 1821 	mov	b,(_row_offset + 1)
      000A62 63 F0 80         [24] 1822 	xrl	b,#0x80
      000A65 95 F0            [12] 1823 	subb	a,b
      000A67 40 77            [24] 1824 	jc	00144$
      000A69 74 48            [12] 1825 	mov	a,#0x48
      000A6B 95 27            [12] 1826 	subb	a,_col_offset
      000A6D 74 80            [12] 1827 	mov	a,#(0x00 ^ 0x80)
      000A6F 85 28 F0         [24] 1828 	mov	b,(_col_offset + 1)
      000A72 63 F0 80         [24] 1829 	xrl	b,#0x80
      000A75 95 F0            [12] 1830 	subb	a,b
      000A77 50 67            [24] 1831 	jnc	00144$
      000A79 C3               [12] 1832 	clr	c
      000A7A E5 27            [12] 1833 	mov	a,_col_offset
      000A7C 94 5C            [12] 1834 	subb	a,#0x5c
      000A7E E5 28            [12] 1835 	mov	a,(_col_offset + 1)
      000A80 64 80            [12] 1836 	xrl	a,#0x80
      000A82 94 80            [12] 1837 	subb	a,#0x80
      000A84 50 5A            [24] 1838 	jnc	00144$
                                   1839 ;	./src/angry_bird.c:376: pig_amt--;
      000A86 15 2B            [12] 1840 	dec	_pig_amt
      000A88 74 FF            [12] 1841 	mov	a,#0xff
      000A8A B5 2B 02         [24] 1842 	cjne	a,_pig_amt,00744$
      000A8D 15 2C            [12] 1843 	dec	(_pig_amt + 1)
      000A8F                       1844 00744$:
                                   1845 ;	./src/angry_bird.c:377: row_offset = pig1_row_cursor;
      000A8F 75 25 03         [24] 1846 	mov	_row_offset,#0x03
      000A92 75 26 00         [24] 1847 	mov	(_row_offset + 1),#0x00
                                   1848 ;	./src/angry_bird.c:378: col_offset = pig1_col_cursor;
      000A95 75 27 50         [24] 1849 	mov	_col_offset,#0x50
      000A98 75 28 00         [24] 1850 	mov	(_col_offset + 1),#0x00
                                   1851 ;	./src/angry_bird.c:379: for (int j = 0; j < pig_cul_size; j++)
      000A9B 7E 00            [12] 1852 	mov	r6,#0x00
      000A9D 7F 00            [12] 1853 	mov	r7,#0x00
      000A9F                       1854 00195$:
      000A9F C3               [12] 1855 	clr	c
      000AA0 EE               [12] 1856 	mov	a,r6
      000AA1 94 0C            [12] 1857 	subb	a,#0x0c
      000AA3 EF               [12] 1858 	mov	a,r7
      000AA4 64 80            [12] 1859 	xrl	a,#0x80
      000AA6 94 80            [12] 1860 	subb	a,#0x80
      000AA8 50 36            [24] 1861 	jnc	00144$
                                   1862 ;	./src/angry_bird.c:381: for (int i = 0; i < pig_row_size; i++)
      000AAA 7D 00            [12] 1863 	mov	r5,#0x00
      000AAC                       1864 00192$:
      000AAC BD 02 00         [24] 1865 	cjne	r5,#0x02,00746$
      000AAF                       1866 00746$:
      000AAF 50 28            [24] 1867 	jnc	00196$
                                   1868 ;	./src/angry_bird.c:383: OLED_SetCursor(row_offset + i, col_offset + j);
      000AB1 AC 25            [24] 1869 	mov	r4,_row_offset
      000AB3 8D 03            [24] 1870 	mov	ar3,r5
      000AB5 EB               [12] 1871 	mov	a,r3
      000AB6 2C               [12] 1872 	add	a,r4
      000AB7 F5 82            [12] 1873 	mov	dpl,a
      000AB9 AC 27            [24] 1874 	mov	r4,_col_offset
      000ABB 8E 03            [24] 1875 	mov	ar3,r6
      000ABD EB               [12] 1876 	mov	a,r3
      000ABE 2C               [12] 1877 	add	a,r4
      000ABF F5 0B            [12] 1878 	mov	_OLED_SetCursor_PARM_2,a
      000AC1 C0 07            [24] 1879 	push	ar7
      000AC3 C0 06            [24] 1880 	push	ar6
      000AC5 C0 05            [24] 1881 	push	ar5
      000AC7 12 0F 75         [24] 1882 	lcall	_OLED_SetCursor
                                   1883 ;	./src/angry_bird.c:384: oledSendData(0x00);
      000ACA 75 82 00         [24] 1884 	mov	dpl,#0x00
      000ACD 12 0F B1         [24] 1885 	lcall	_oledSendData
      000AD0 D0 05            [24] 1886 	pop	ar5
      000AD2 D0 06            [24] 1887 	pop	ar6
      000AD4 D0 07            [24] 1888 	pop	ar7
                                   1889 ;	./src/angry_bird.c:381: for (int i = 0; i < pig_row_size; i++)
      000AD6 0D               [12] 1890 	inc	r5
      000AD7 80 D3            [24] 1891 	sjmp	00192$
      000AD9                       1892 00196$:
                                   1893 ;	./src/angry_bird.c:379: for (int j = 0; j < pig_cul_size; j++)
      000AD9 0E               [12] 1894 	inc	r6
      000ADA BE 00 C2         [24] 1895 	cjne	r6,#0x00,00195$
      000ADD 0F               [12] 1896 	inc	r7
      000ADE 80 BF            [24] 1897 	sjmp	00195$
      000AE0                       1898 00144$:
                                   1899 ;	./src/angry_bird.c:389: row_offset = output_row;
      000AE0 85 69 25         [24] 1900 	mov	_row_offset,_angrybird_game_state_output_row_327681_81
      000AE3 85 6A 26         [24] 1901 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_81 + 1)
                                   1902 ;	./src/angry_bird.c:390: col_offset = bird_init_col_cursor + i;
      000AE6 74 08            [12] 1903 	mov	a,#0x08
      000AE8 25 67            [12] 1904 	add	a,_angrybird_game_state_i_262145_80
      000AEA F5 27            [12] 1905 	mov	_col_offset,a
      000AEC E4               [12] 1906 	clr	a
      000AED 35 68            [12] 1907 	addc	a,(_angrybird_game_state_i_262145_80 + 1)
      000AEF F5 28            [12] 1908 	mov	(_col_offset + 1),a
                                   1909 ;	./src/angry_bird.c:391: for (int j = 0; j < bird_cul_size; j++)
      000AF1 7E 00            [12] 1910 	mov	r6,#0x00
      000AF3 7F 00            [12] 1911 	mov	r7,#0x00
      000AF5                       1912 00201$:
      000AF5 C3               [12] 1913 	clr	c
      000AF6 EE               [12] 1914 	mov	a,r6
      000AF7 94 08            [12] 1915 	subb	a,#0x08
      000AF9 EF               [12] 1916 	mov	a,r7
      000AFA 64 80            [12] 1917 	xrl	a,#0x80
      000AFC 94 80            [12] 1918 	subb	a,#0x80
      000AFE 50 31            [24] 1919 	jnc	00205$
                                   1920 ;	./src/angry_bird.c:393: for (int i = 0; i < bird_row_size; i++)
      000B00 7D 00            [12] 1921 	mov	r5,#0x00
      000B02                       1922 00198$:
      000B02 BD 01 00         [24] 1923 	cjne	r5,#0x01,00750$
      000B05                       1924 00750$:
      000B05 50 23            [24] 1925 	jnc	00202$
                                   1926 ;	./src/angry_bird.c:395: OLED_SetCursor(row_offset + i, col_offset + j);
      000B07 AC 25            [24] 1927 	mov	r4,_row_offset
      000B09 E4               [12] 1928 	clr	a
      000B0A 2C               [12] 1929 	add	a,r4
      000B0B F5 82            [12] 1930 	mov	dpl,a
      000B0D AC 27            [24] 1931 	mov	r4,_col_offset
      000B0F 8E 03            [24] 1932 	mov	ar3,r6
      000B11 EB               [12] 1933 	mov	a,r3
      000B12 2C               [12] 1934 	add	a,r4
      000B13 F5 0B            [12] 1935 	mov	_OLED_SetCursor_PARM_2,a
      000B15 C0 07            [24] 1936 	push	ar7
      000B17 C0 06            [24] 1937 	push	ar6
      000B19 12 0F 75         [24] 1938 	lcall	_OLED_SetCursor
                                   1939 ;	./src/angry_bird.c:396: oledSendData(0x00);
      000B1C 75 82 00         [24] 1940 	mov	dpl,#0x00
      000B1F 12 0F B1         [24] 1941 	lcall	_oledSendData
      000B22 D0 06            [24] 1942 	pop	ar6
      000B24 D0 07            [24] 1943 	pop	ar7
                                   1944 ;	./src/angry_bird.c:393: for (int i = 0; i < bird_row_size; i++)
      000B26 7D 01            [12] 1945 	mov	r5,#0x01
      000B28 80 D8            [24] 1946 	sjmp	00198$
      000B2A                       1947 00202$:
                                   1948 ;	./src/angry_bird.c:391: for (int j = 0; j < bird_cul_size; j++)
      000B2A 0E               [12] 1949 	inc	r6
      000B2B BE 00 C7         [24] 1950 	cjne	r6,#0x00,00201$
      000B2E 0F               [12] 1951 	inc	r7
      000B2F 80 C4            [24] 1952 	sjmp	00201$
      000B31                       1953 00205$:
                                   1954 ;	./src/angry_bird.c:333: for (int i = 16; i <= 119; i += 8)
      000B31 74 08            [12] 1955 	mov	a,#0x08
      000B33 25 67            [12] 1956 	add	a,_angrybird_game_state_i_262145_80
      000B35 F5 67            [12] 1957 	mov	_angrybird_game_state_i_262145_80,a
      000B37 E4               [12] 1958 	clr	a
      000B38 35 68            [12] 1959 	addc	a,(_angrybird_game_state_i_262145_80 + 1)
      000B3A F5 68            [12] 1960 	mov	(_angrybird_game_state_i_262145_80 + 1),a
      000B3C 02 09 0B         [24] 1961 	ljmp	00204$
      000B3F                       1962 00153$:
                                   1963 ;	./src/angry_bird.c:403: row_offset = bird_init_row_cursor;
      000B3F 75 25 07         [24] 1964 	mov	_row_offset,#0x07
      000B42 75 26 00         [24] 1965 	mov	(_row_offset + 1),#0x00
                                   1966 ;	./src/angry_bird.c:404: col_offset = bird_init_col_cursor;
      000B45 75 27 08         [24] 1967 	mov	_col_offset,#0x08
      000B48 75 28 00         [24] 1968 	mov	(_col_offset + 1),#0x00
                                   1969 ;	./src/angry_bird.c:405: for (int j = 0; j < bird_cul_size; j++)
      000B4B 7E 00            [12] 1970 	mov	r6,#0x00
      000B4D 7F 00            [12] 1971 	mov	r7,#0x00
      000B4F                       1972 00210$:
      000B4F C3               [12] 1973 	clr	c
      000B50 EE               [12] 1974 	mov	a,r6
      000B51 94 08            [12] 1975 	subb	a,#0x08
      000B53 EF               [12] 1976 	mov	a,r7
      000B54 64 80            [12] 1977 	xrl	a,#0x80
      000B56 94 80            [12] 1978 	subb	a,#0x80
      000B58 50 45            [24] 1979 	jnc	00159$
                                   1980 ;	./src/angry_bird.c:407: for (int i = 0; i < bird_row_size; i++)
      000B5A 7D 00            [12] 1981 	mov	r5,#0x00
      000B5C                       1982 00207$:
      000B5C BD 01 00         [24] 1983 	cjne	r5,#0x01,00754$
      000B5F                       1984 00754$:
      000B5F 50 37            [24] 1985 	jnc	00211$
                                   1986 ;	./src/angry_bird.c:409: OLED_SetCursor(row_offset + i, col_offset + j);
      000B61 AC 25            [24] 1987 	mov	r4,_row_offset
      000B63 E4               [12] 1988 	clr	a
      000B64 2C               [12] 1989 	add	a,r4
      000B65 F5 82            [12] 1990 	mov	dpl,a
      000B67 AC 27            [24] 1991 	mov	r4,_col_offset
      000B69 8E 03            [24] 1992 	mov	ar3,r6
      000B6B EB               [12] 1993 	mov	a,r3
      000B6C 2C               [12] 1994 	add	a,r4
      000B6D F5 0B            [12] 1995 	mov	_OLED_SetCursor_PARM_2,a
      000B6F C0 07            [24] 1996 	push	ar7
      000B71 C0 06            [24] 1997 	push	ar6
      000B73 C0 03            [24] 1998 	push	ar3
      000B75 12 0F 75         [24] 1999 	lcall	_OLED_SetCursor
      000B78 D0 03            [24] 2000 	pop	ar3
                                   2001 ;	./src/angry_bird.c:410: oledSendData(bird_logo[bird_cul_size * i + j]);
      000B7A EB               [12] 2002 	mov	a,r3
      000B7B 33               [12] 2003 	rlc	a
      000B7C 95 E0            [12] 2004 	subb	a,acc
      000B7E FC               [12] 2005 	mov	r4,a
      000B7F EB               [12] 2006 	mov	a,r3
      000B80 24 B8            [12] 2007 	add	a,#_bird_logo
      000B82 F5 82            [12] 2008 	mov	dpl,a
      000B84 EC               [12] 2009 	mov	a,r4
      000B85 34 14            [12] 2010 	addc	a,#(_bird_logo >> 8)
      000B87 F5 83            [12] 2011 	mov	dph,a
      000B89 E4               [12] 2012 	clr	a
      000B8A 93               [24] 2013 	movc	a,@a+dptr
      000B8B F5 82            [12] 2014 	mov	dpl,a
      000B8D 12 0F B1         [24] 2015 	lcall	_oledSendData
      000B90 D0 06            [24] 2016 	pop	ar6
      000B92 D0 07            [24] 2017 	pop	ar7
                                   2018 ;	./src/angry_bird.c:407: for (int i = 0; i < bird_row_size; i++)
      000B94 7D 01            [12] 2019 	mov	r5,#0x01
      000B96 80 C4            [24] 2020 	sjmp	00207$
      000B98                       2021 00211$:
                                   2022 ;	./src/angry_bird.c:405: for (int j = 0; j < bird_cul_size; j++)
      000B98 0E               [12] 2023 	inc	r6
      000B99 BE 00 B3         [24] 2024 	cjne	r6,#0x00,00210$
      000B9C 0F               [12] 2025 	inc	r7
      000B9D 80 B0            [24] 2026 	sjmp	00210$
      000B9F                       2027 00159$:
                                   2028 ;	./src/angry_bird.c:421: if (pig_amt == 0 || bird_amt == 0)
      000B9F E5 2B            [12] 2029 	mov	a,_pig_amt
      000BA1 45 2C            [12] 2030 	orl	a,(_pig_amt + 1)
      000BA3 60 09            [24] 2031 	jz	00170$
      000BA5 E5 29            [12] 2032 	mov	a,_bird_amt
      000BA7 45 2A            [12] 2033 	orl	a,(_bird_amt + 1)
      000BA9 60 03            [24] 2034 	jz	00758$
      000BAB 02 0C FB         [24] 2035 	ljmp	00171$
      000BAE                       2036 00758$:
      000BAE                       2037 00170$:
                                   2038 ;	./src/angry_bird.c:423: if (pig_amt == 0)
      000BAE E5 2B            [12] 2039 	mov	a,_pig_amt
      000BB0 45 2C            [12] 2040 	orl	a,(_pig_amt + 1)
      000BB2 60 03            [24] 2041 	jz	00759$
      000BB4 02 0C 4D         [24] 2042 	ljmp	00168$
      000BB7                       2043 00759$:
                                   2044 ;	./src/angry_bird.c:425: OLED_SetCursor(win_row_cursor, win_col_cursor);
      000BB7 75 0B 1F         [24] 2045 	mov	_OLED_SetCursor_PARM_2,#0x1f
      000BBA 75 82 03         [24] 2046 	mov	dpl,#0x03
      000BBD 12 0F 75         [24] 2047 	lcall	_OLED_SetCursor
                                   2048 ;	./src/angry_bird.c:426: for (int j = 0; j < win_cul_size; j++)
      000BC0 7E 00            [12] 2049 	mov	r6,#0x00
      000BC2 7F 00            [12] 2050 	mov	r7,#0x00
      000BC4                       2051 00216$:
      000BC4 C3               [12] 2052 	clr	c
      000BC5 EE               [12] 2053 	mov	a,r6
      000BC6 94 40            [12] 2054 	subb	a,#0x40
      000BC8 EF               [12] 2055 	mov	a,r7
      000BC9 64 80            [12] 2056 	xrl	a,#0x80
      000BCB 94 80            [12] 2057 	subb	a,#0x80
      000BCD 40 03            [24] 2058 	jc	00760$
      000BCF 02 0C E9         [24] 2059 	ljmp	00169$
      000BD2                       2060 00760$:
                                   2061 ;	./src/angry_bird.c:428: for (int i = 0; i < win_row_size; i++)
      000BD2 7C 00            [12] 2062 	mov	r4,#0x00
      000BD4 7D 00            [12] 2063 	mov	r5,#0x00
      000BD6                       2064 00213$:
      000BD6 C3               [12] 2065 	clr	c
      000BD7 EC               [12] 2066 	mov	a,r4
      000BD8 94 02            [12] 2067 	subb	a,#0x02
      000BDA ED               [12] 2068 	mov	a,r5
      000BDB 64 80            [12] 2069 	xrl	a,#0x80
      000BDD 94 80            [12] 2070 	subb	a,#0x80
      000BDF 50 64            [24] 2071 	jnc	00217$
                                   2072 ;	./src/angry_bird.c:430: OLED_SetCursor(row_offset + i, col_offset + j);
      000BE1 AB 25            [24] 2073 	mov	r3,_row_offset
      000BE3 8C 02            [24] 2074 	mov	ar2,r4
      000BE5 EA               [12] 2075 	mov	a,r2
      000BE6 2B               [12] 2076 	add	a,r3
      000BE7 F5 82            [12] 2077 	mov	dpl,a
      000BE9 AB 27            [24] 2078 	mov	r3,_col_offset
      000BEB 8E 02            [24] 2079 	mov	ar2,r6
      000BED EA               [12] 2080 	mov	a,r2
      000BEE 2B               [12] 2081 	add	a,r3
      000BEF F5 0B            [12] 2082 	mov	_OLED_SetCursor_PARM_2,a
      000BF1 C0 07            [24] 2083 	push	ar7
      000BF3 C0 06            [24] 2084 	push	ar6
      000BF5 C0 05            [24] 2085 	push	ar5
      000BF7 C0 04            [24] 2086 	push	ar4
      000BF9 12 0F 75         [24] 2087 	lcall	_OLED_SetCursor
      000BFC D0 04            [24] 2088 	pop	ar4
      000BFE D0 05            [24] 2089 	pop	ar5
      000C00 D0 06            [24] 2090 	pop	ar6
      000C02 D0 07            [24] 2091 	pop	ar7
                                   2092 ;	./src/angry_bird.c:431: oledSendData(win_page[win_cul_size * i + j]);
      000C04 8C 02            [24] 2093 	mov	ar2,r4
      000C06 ED               [12] 2094 	mov	a,r5
      000C07 54 03            [12] 2095 	anl	a,#0x03
      000C09 A2 E0            [12] 2096 	mov	c,acc.0
      000C0B CA               [12] 2097 	xch	a,r2
      000C0C 13               [12] 2098 	rrc	a
      000C0D CA               [12] 2099 	xch	a,r2
      000C0E 13               [12] 2100 	rrc	a
      000C0F A2 E0            [12] 2101 	mov	c,acc.0
      000C11 CA               [12] 2102 	xch	a,r2
      000C12 13               [12] 2103 	rrc	a
      000C13 CA               [12] 2104 	xch	a,r2
      000C14 13               [12] 2105 	rrc	a
      000C15 CA               [12] 2106 	xch	a,r2
      000C16 FB               [12] 2107 	mov	r3,a
      000C17 EE               [12] 2108 	mov	a,r6
      000C18 2A               [12] 2109 	add	a,r2
      000C19 FA               [12] 2110 	mov	r2,a
      000C1A EF               [12] 2111 	mov	a,r7
      000C1B 3B               [12] 2112 	addc	a,r3
      000C1C FB               [12] 2113 	mov	r3,a
      000C1D EA               [12] 2114 	mov	a,r2
      000C1E 24 C0            [12] 2115 	add	a,#_win_page
      000C20 F5 82            [12] 2116 	mov	dpl,a
      000C22 EB               [12] 2117 	mov	a,r3
      000C23 34 14            [12] 2118 	addc	a,#(_win_page >> 8)
      000C25 F5 83            [12] 2119 	mov	dph,a
      000C27 E4               [12] 2120 	clr	a
      000C28 93               [24] 2121 	movc	a,@a+dptr
      000C29 F5 82            [12] 2122 	mov	dpl,a
      000C2B C0 07            [24] 2123 	push	ar7
      000C2D C0 06            [24] 2124 	push	ar6
      000C2F C0 05            [24] 2125 	push	ar5
      000C31 C0 04            [24] 2126 	push	ar4
      000C33 12 0F B1         [24] 2127 	lcall	_oledSendData
      000C36 D0 04            [24] 2128 	pop	ar4
      000C38 D0 05            [24] 2129 	pop	ar5
      000C3A D0 06            [24] 2130 	pop	ar6
      000C3C D0 07            [24] 2131 	pop	ar7
                                   2132 ;	./src/angry_bird.c:428: for (int i = 0; i < win_row_size; i++)
      000C3E 0C               [12] 2133 	inc	r4
      000C3F BC 00 94         [24] 2134 	cjne	r4,#0x00,00213$
      000C42 0D               [12] 2135 	inc	r5
      000C43 80 91            [24] 2136 	sjmp	00213$
      000C45                       2137 00217$:
                                   2138 ;	./src/angry_bird.c:426: for (int j = 0; j < win_cul_size; j++)
      000C45 0E               [12] 2139 	inc	r6
      000C46 BE 00 01         [24] 2140 	cjne	r6,#0x00,00763$
      000C49 0F               [12] 2141 	inc	r7
      000C4A                       2142 00763$:
      000C4A 02 0B C4         [24] 2143 	ljmp	00216$
      000C4D                       2144 00168$:
                                   2145 ;	./src/angry_bird.c:435: else if (bird_amt == 0)
      000C4D E5 29            [12] 2146 	mov	a,_bird_amt
      000C4F 45 2A            [12] 2147 	orl	a,(_bird_amt + 1)
      000C51 60 03            [24] 2148 	jz	00764$
      000C53 02 0C E9         [24] 2149 	ljmp	00169$
      000C56                       2150 00764$:
                                   2151 ;	./src/angry_bird.c:437: OLED_SetCursor(over_row_cursor, over_col_cursor);
      000C56 75 0B 1F         [24] 2152 	mov	_OLED_SetCursor_PARM_2,#0x1f
      000C59 75 82 03         [24] 2153 	mov	dpl,#0x03
      000C5C 12 0F 75         [24] 2154 	lcall	_OLED_SetCursor
                                   2155 ;	./src/angry_bird.c:438: for (int j = 0; j < over_cul_size; j++)
      000C5F 7E 00            [12] 2156 	mov	r6,#0x00
      000C61 7F 00            [12] 2157 	mov	r7,#0x00
      000C63                       2158 00222$:
      000C63 C3               [12] 2159 	clr	c
      000C64 EE               [12] 2160 	mov	a,r6
      000C65 94 40            [12] 2161 	subb	a,#0x40
      000C67 EF               [12] 2162 	mov	a,r7
      000C68 64 80            [12] 2163 	xrl	a,#0x80
      000C6A 94 80            [12] 2164 	subb	a,#0x80
      000C6C 50 7B            [24] 2165 	jnc	00169$
                                   2166 ;	./src/angry_bird.c:440: for (int i = 0; i < over_row_size; i++)
      000C6E 7C 00            [12] 2167 	mov	r4,#0x00
      000C70 7D 00            [12] 2168 	mov	r5,#0x00
      000C72                       2169 00219$:
      000C72 C3               [12] 2170 	clr	c
      000C73 EC               [12] 2171 	mov	a,r4
      000C74 94 02            [12] 2172 	subb	a,#0x02
      000C76 ED               [12] 2173 	mov	a,r5
      000C77 64 80            [12] 2174 	xrl	a,#0x80
      000C79 94 80            [12] 2175 	subb	a,#0x80
      000C7B 50 64            [24] 2176 	jnc	00223$
                                   2177 ;	./src/angry_bird.c:442: OLED_SetCursor(row_offset + i, col_offset + j);
      000C7D AB 25            [24] 2178 	mov	r3,_row_offset
      000C7F 8C 02            [24] 2179 	mov	ar2,r4
      000C81 EA               [12] 2180 	mov	a,r2
      000C82 2B               [12] 2181 	add	a,r3
      000C83 F5 82            [12] 2182 	mov	dpl,a
      000C85 AB 27            [24] 2183 	mov	r3,_col_offset
      000C87 8E 02            [24] 2184 	mov	ar2,r6
      000C89 EA               [12] 2185 	mov	a,r2
      000C8A 2B               [12] 2186 	add	a,r3
      000C8B F5 0B            [12] 2187 	mov	_OLED_SetCursor_PARM_2,a
      000C8D C0 07            [24] 2188 	push	ar7
      000C8F C0 06            [24] 2189 	push	ar6
      000C91 C0 05            [24] 2190 	push	ar5
      000C93 C0 04            [24] 2191 	push	ar4
      000C95 12 0F 75         [24] 2192 	lcall	_OLED_SetCursor
      000C98 D0 04            [24] 2193 	pop	ar4
      000C9A D0 05            [24] 2194 	pop	ar5
      000C9C D0 06            [24] 2195 	pop	ar6
      000C9E D0 07            [24] 2196 	pop	ar7
                                   2197 ;	./src/angry_bird.c:443: oledSendData(over_page[over_cul_size * i + j]);
      000CA0 8C 02            [24] 2198 	mov	ar2,r4
      000CA2 ED               [12] 2199 	mov	a,r5
      000CA3 54 03            [12] 2200 	anl	a,#0x03
      000CA5 A2 E0            [12] 2201 	mov	c,acc.0
      000CA7 CA               [12] 2202 	xch	a,r2
      000CA8 13               [12] 2203 	rrc	a
      000CA9 CA               [12] 2204 	xch	a,r2
      000CAA 13               [12] 2205 	rrc	a
      000CAB A2 E0            [12] 2206 	mov	c,acc.0
      000CAD CA               [12] 2207 	xch	a,r2
      000CAE 13               [12] 2208 	rrc	a
      000CAF CA               [12] 2209 	xch	a,r2
      000CB0 13               [12] 2210 	rrc	a
      000CB1 CA               [12] 2211 	xch	a,r2
      000CB2 FB               [12] 2212 	mov	r3,a
      000CB3 EE               [12] 2213 	mov	a,r6
      000CB4 2A               [12] 2214 	add	a,r2
      000CB5 FA               [12] 2215 	mov	r2,a
      000CB6 EF               [12] 2216 	mov	a,r7
      000CB7 3B               [12] 2217 	addc	a,r3
      000CB8 FB               [12] 2218 	mov	r3,a
      000CB9 EA               [12] 2219 	mov	a,r2
      000CBA 24 40            [12] 2220 	add	a,#_over_page
      000CBC F5 82            [12] 2221 	mov	dpl,a
      000CBE EB               [12] 2222 	mov	a,r3
      000CBF 34 15            [12] 2223 	addc	a,#(_over_page >> 8)
      000CC1 F5 83            [12] 2224 	mov	dph,a
      000CC3 E4               [12] 2225 	clr	a
      000CC4 93               [24] 2226 	movc	a,@a+dptr
      000CC5 F5 82            [12] 2227 	mov	dpl,a
      000CC7 C0 07            [24] 2228 	push	ar7
      000CC9 C0 06            [24] 2229 	push	ar6
      000CCB C0 05            [24] 2230 	push	ar5
      000CCD C0 04            [24] 2231 	push	ar4
      000CCF 12 0F B1         [24] 2232 	lcall	_oledSendData
      000CD2 D0 04            [24] 2233 	pop	ar4
      000CD4 D0 05            [24] 2234 	pop	ar5
      000CD6 D0 06            [24] 2235 	pop	ar6
      000CD8 D0 07            [24] 2236 	pop	ar7
                                   2237 ;	./src/angry_bird.c:440: for (int i = 0; i < over_row_size; i++)
      000CDA 0C               [12] 2238 	inc	r4
      000CDB BC 00 94         [24] 2239 	cjne	r4,#0x00,00219$
      000CDE 0D               [12] 2240 	inc	r5
      000CDF 80 91            [24] 2241 	sjmp	00219$
      000CE1                       2242 00223$:
                                   2243 ;	./src/angry_bird.c:438: for (int j = 0; j < over_cul_size; j++)
      000CE1 0E               [12] 2244 	inc	r6
      000CE2 BE 00 01         [24] 2245 	cjne	r6,#0x00,00768$
      000CE5 0F               [12] 2246 	inc	r7
      000CE6                       2247 00768$:
      000CE6 02 0C 63         [24] 2248 	ljmp	00222$
      000CE9                       2249 00169$:
                                   2250 ;	./src/angry_bird.c:447: delay_ms(1000);
      000CE9 90 03 E8         [24] 2251 	mov	dptr,#0x03e8
      000CEC 12 01 BE         [24] 2252 	lcall	_delay_ms
                                   2253 ;	./src/angry_bird.c:448: cur_state = STATE_HOME;
      000CEF 75 3E 01         [24] 2254 	mov	_cur_state,#0x01
      000CF2 75 3F 00         [24] 2255 	mov	(_cur_state + 1),#0x00
                                   2256 ;	./src/angry_bird.c:450: send_data = cur_state;
      000CF5 75 21 01         [24] 2257 	mov	_send_data,#0x01
                                   2258 ;	./src/angry_bird.c:451: send_flag = 1;
      000CF8 75 22 01         [24] 2259 	mov	_send_flag,#0x01
      000CFB                       2260 00171$:
                                   2261 ;	./src/angry_bird.c:455: prebut_enter = but_enter;
      000CFB A2 A2            [12] 2262 	mov	c,_P2_2
      000CFD E4               [12] 2263 	clr	a
      000CFE 33               [12] 2264 	rlc	a
      000CFF F5 48            [12] 2265 	mov	_prebut_enter,a
      000D01 75 49 00         [24] 2266 	mov	(_prebut_enter + 1),#0x00
                                   2267 ;	./src/angry_bird.c:456: prebut_up = but_up;
      000D04 A2 A0            [12] 2268 	mov	c,_P2_0
      000D06 E4               [12] 2269 	clr	a
      000D07 33               [12] 2270 	rlc	a
      000D08 F5 40            [12] 2271 	mov	_prebut_up,a
      000D0A 75 41 00         [24] 2272 	mov	(_prebut_up + 1),#0x00
                                   2273 ;	./src/angry_bird.c:457: prebut_down = but_down;
      000D0D A2 A1            [12] 2274 	mov	c,_P2_1
      000D0F E4               [12] 2275 	clr	a
      000D10 33               [12] 2276 	rlc	a
      000D11 F5 42            [12] 2277 	mov	_prebut_down,a
      000D13 75 43 00         [24] 2278 	mov	(_prebut_down + 1),#0x00
                                   2279 ;	./src/angry_bird.c:458: prebut_left = but_left;
      000D16 A2 B2            [12] 2280 	mov	c,_INT0
      000D18 E4               [12] 2281 	clr	a
      000D19 33               [12] 2282 	rlc	a
      000D1A F5 44            [12] 2283 	mov	_prebut_left,a
      000D1C 75 45 00         [24] 2284 	mov	(_prebut_left + 1),#0x00
                                   2285 ;	./src/angry_bird.c:459: prebut_right = but_right;
      000D1F A2 B3            [12] 2286 	mov	c,_INT1
      000D21 E4               [12] 2287 	clr	a
      000D22 33               [12] 2288 	rlc	a
      000D23 F5 46            [12] 2289 	mov	_prebut_right,a
      000D25 75 47 00         [24] 2290 	mov	(_prebut_right + 1),#0x00
                                   2291 ;	./src/angry_bird.c:460: delay_ms(10);
      000D28 90 00 0A         [24] 2292 	mov	dptr,#0x000a
                                   2293 ;	./src/angry_bird.c:461: }
      000D2B 02 01 BE         [24] 2294 	ljmp	_delay_ms
                                   2295 ;------------------------------------------------------------
                                   2296 ;Allocation info for local variables in function 'getsine'
                                   2297 ;------------------------------------------------------------
                                   2298 ;angle                     Allocated to registers r6 r7 
                                   2299 ;index                     Allocated to registers r6 r7 
                                   2300 ;------------------------------------------------------------
                                   2301 ;	./src/angry_bird.c:467: float getsine(int angle)
                                   2302 ;	-----------------------------------------
                                   2303 ;	 function getsine
                                   2304 ;	-----------------------------------------
      000D2E                       2305 _getsine:
      000D2E AE 82            [24] 2306 	mov	r6,dpl
      000D30 AF 83            [24] 2307 	mov	r7,dph
                                   2308 ;	./src/angry_bird.c:469: int index = (angle > 0) ? (angle / 10) : (-angle / 10);
      000D32 C3               [12] 2309 	clr	c
      000D33 E4               [12] 2310 	clr	a
      000D34 9E               [12] 2311 	subb	a,r6
      000D35 74 80            [12] 2312 	mov	a,#(0x00 ^ 0x80)
      000D37 8F F0            [24] 2313 	mov	b,r7
      000D39 63 F0 80         [24] 2314 	xrl	b,#0x80
      000D3C 95 F0            [12] 2315 	subb	a,b
      000D3E E4               [12] 2316 	clr	a
      000D3F 33               [12] 2317 	rlc	a
      000D40 FD               [12] 2318 	mov	r5,a
      000D41 60 17            [24] 2319 	jz	00103$
      000D43 75 0C 0A         [24] 2320 	mov	__divsint_PARM_2,#0x0a
      000D46 75 0D 00         [24] 2321 	mov	(__divsint_PARM_2 + 1),#0x00
      000D49 8E 82            [24] 2322 	mov	dpl,r6
      000D4B 8F 83            [24] 2323 	mov	dph,r7
      000D4D C0 05            [24] 2324 	push	ar5
      000D4F 12 13 A4         [24] 2325 	lcall	__divsint
      000D52 AB 82            [24] 2326 	mov	r3,dpl
      000D54 AC 83            [24] 2327 	mov	r4,dph
      000D56 D0 05            [24] 2328 	pop	ar5
      000D58 80 1A            [24] 2329 	sjmp	00104$
      000D5A                       2330 00103$:
      000D5A C3               [12] 2331 	clr	c
      000D5B E4               [12] 2332 	clr	a
      000D5C 9E               [12] 2333 	subb	a,r6
      000D5D F5 82            [12] 2334 	mov	dpl,a
      000D5F E4               [12] 2335 	clr	a
      000D60 9F               [12] 2336 	subb	a,r7
      000D61 F5 83            [12] 2337 	mov	dph,a
      000D63 75 0C 0A         [24] 2338 	mov	__divsint_PARM_2,#0x0a
      000D66 75 0D 00         [24] 2339 	mov	(__divsint_PARM_2 + 1),#0x00
      000D69 C0 05            [24] 2340 	push	ar5
      000D6B 12 13 A4         [24] 2341 	lcall	__divsint
      000D6E AB 82            [24] 2342 	mov	r3,dpl
      000D70 AC 83            [24] 2343 	mov	r4,dph
      000D72 D0 05            [24] 2344 	pop	ar5
      000D74                       2345 00104$:
      000D74 8B 06            [24] 2346 	mov	ar6,r3
      000D76 8C 07            [24] 2347 	mov	ar7,r4
                                   2348 ;	./src/angry_bird.c:470: return (angle > 0) ? sine_table[index] : -sine_table[index];
      000D78 ED               [12] 2349 	mov	a,r5
      000D79 60 27            [24] 2350 	jz	00105$
      000D7B EE               [12] 2351 	mov	a,r6
      000D7C 2E               [12] 2352 	add	a,r6
      000D7D FC               [12] 2353 	mov	r4,a
      000D7E EF               [12] 2354 	mov	a,r7
      000D7F 33               [12] 2355 	rlc	a
      000D80 FD               [12] 2356 	mov	r5,a
      000D81 EC               [12] 2357 	mov	a,r4
      000D82 2C               [12] 2358 	add	a,r4
      000D83 FC               [12] 2359 	mov	r4,a
      000D84 ED               [12] 2360 	mov	a,r5
      000D85 33               [12] 2361 	rlc	a
      000D86 FD               [12] 2362 	mov	r5,a
      000D87 EC               [12] 2363 	mov	a,r4
      000D88 24 37            [12] 2364 	add	a,#_sine_table
      000D8A F5 82            [12] 2365 	mov	dpl,a
      000D8C ED               [12] 2366 	mov	a,r5
      000D8D 34 0E            [12] 2367 	addc	a,#(_sine_table >> 8)
      000D8F F5 83            [12] 2368 	mov	dph,a
      000D91 E4               [12] 2369 	clr	a
      000D92 93               [24] 2370 	movc	a,@a+dptr
      000D93 FA               [12] 2371 	mov	r2,a
      000D94 A3               [24] 2372 	inc	dptr
      000D95 E4               [12] 2373 	clr	a
      000D96 93               [24] 2374 	movc	a,@a+dptr
      000D97 FB               [12] 2375 	mov	r3,a
      000D98 A3               [24] 2376 	inc	dptr
      000D99 E4               [12] 2377 	clr	a
      000D9A 93               [24] 2378 	movc	a,@a+dptr
      000D9B FC               [12] 2379 	mov	r4,a
      000D9C A3               [24] 2380 	inc	dptr
      000D9D E4               [12] 2381 	clr	a
      000D9E 93               [24] 2382 	movc	a,@a+dptr
      000D9F FD               [12] 2383 	mov	r5,a
      000DA0 80 2F            [24] 2384 	sjmp	00106$
      000DA2                       2385 00105$:
      000DA2 EE               [12] 2386 	mov	a,r6
      000DA3 2E               [12] 2387 	add	a,r6
      000DA4 FE               [12] 2388 	mov	r6,a
      000DA5 EF               [12] 2389 	mov	a,r7
      000DA6 33               [12] 2390 	rlc	a
      000DA7 FF               [12] 2391 	mov	r7,a
      000DA8 EE               [12] 2392 	mov	a,r6
      000DA9 2E               [12] 2393 	add	a,r6
      000DAA FE               [12] 2394 	mov	r6,a
      000DAB EF               [12] 2395 	mov	a,r7
      000DAC 33               [12] 2396 	rlc	a
      000DAD FF               [12] 2397 	mov	r7,a
      000DAE EE               [12] 2398 	mov	a,r6
      000DAF 24 37            [12] 2399 	add	a,#_sine_table
      000DB1 F5 82            [12] 2400 	mov	dpl,a
      000DB3 EF               [12] 2401 	mov	a,r7
      000DB4 34 0E            [12] 2402 	addc	a,#(_sine_table >> 8)
      000DB6 F5 83            [12] 2403 	mov	dph,a
      000DB8 E4               [12] 2404 	clr	a
      000DB9 93               [24] 2405 	movc	a,@a+dptr
      000DBA F8               [12] 2406 	mov	r0,a
      000DBB A3               [24] 2407 	inc	dptr
      000DBC E4               [12] 2408 	clr	a
      000DBD 93               [24] 2409 	movc	a,@a+dptr
      000DBE F9               [12] 2410 	mov	r1,a
      000DBF A3               [24] 2411 	inc	dptr
      000DC0 E4               [12] 2412 	clr	a
      000DC1 93               [24] 2413 	movc	a,@a+dptr
      000DC2 FE               [12] 2414 	mov	r6,a
      000DC3 A3               [24] 2415 	inc	dptr
      000DC4 E4               [12] 2416 	clr	a
      000DC5 93               [24] 2417 	movc	a,@a+dptr
      000DC6 FF               [12] 2418 	mov	r7,a
      000DC7 88 02            [24] 2419 	mov	ar2,r0
      000DC9 89 03            [24] 2420 	mov	ar3,r1
      000DCB 8E 04            [24] 2421 	mov	ar4,r6
      000DCD EF               [12] 2422 	mov	a,r7
      000DCE B2 E7            [12] 2423 	cpl	acc.7
      000DD0 FD               [12] 2424 	mov	r5,a
      000DD1                       2425 00106$:
      000DD1 8A 82            [24] 2426 	mov	dpl,r2
      000DD3 8B 83            [24] 2427 	mov	dph,r3
      000DD5 8C F0            [24] 2428 	mov	b,r4
      000DD7 ED               [12] 2429 	mov	a,r5
                                   2430 ;	./src/angry_bird.c:471: }
      000DD8 22               [24] 2431 	ret
                                   2432 ;------------------------------------------------------------
                                   2433 ;Allocation info for local variables in function 'getcosine'
                                   2434 ;------------------------------------------------------------
                                   2435 ;angle                     Allocated to registers r6 r7 
                                   2436 ;------------------------------------------------------------
                                   2437 ;	./src/angry_bird.c:472: float getcosine(int angle)
                                   2438 ;	-----------------------------------------
                                   2439 ;	 function getcosine
                                   2440 ;	-----------------------------------------
      000DD9                       2441 _getcosine:
      000DD9 AE 82            [24] 2442 	mov	r6,dpl
      000DDB AF 83            [24] 2443 	mov	r7,dph
                                   2444 ;	./src/angry_bird.c:474: return getsine((angle > 0) ? -angle + 90 : angle + 90);
      000DDD C3               [12] 2445 	clr	c
      000DDE E4               [12] 2446 	clr	a
      000DDF 9E               [12] 2447 	subb	a,r6
      000DE0 74 80            [12] 2448 	mov	a,#(0x00 ^ 0x80)
      000DE2 8F F0            [24] 2449 	mov	b,r7
      000DE4 63 F0 80         [24] 2450 	xrl	b,#0x80
      000DE7 95 F0            [12] 2451 	subb	a,b
      000DE9 50 10            [24] 2452 	jnc	00103$
      000DEB C3               [12] 2453 	clr	c
      000DEC E4               [12] 2454 	clr	a
      000DED 9E               [12] 2455 	subb	a,r6
      000DEE FC               [12] 2456 	mov	r4,a
      000DEF E4               [12] 2457 	clr	a
      000DF0 9F               [12] 2458 	subb	a,r7
      000DF1 FD               [12] 2459 	mov	r5,a
      000DF2 74 5A            [12] 2460 	mov	a,#0x5a
      000DF4 2C               [12] 2461 	add	a,r4
      000DF5 FC               [12] 2462 	mov	r4,a
      000DF6 E4               [12] 2463 	clr	a
      000DF7 3D               [12] 2464 	addc	a,r5
      000DF8 FD               [12] 2465 	mov	r5,a
      000DF9 80 07            [24] 2466 	sjmp	00104$
      000DFB                       2467 00103$:
      000DFB 74 5A            [12] 2468 	mov	a,#0x5a
      000DFD 2E               [12] 2469 	add	a,r6
      000DFE FC               [12] 2470 	mov	r4,a
      000DFF E4               [12] 2471 	clr	a
      000E00 3F               [12] 2472 	addc	a,r7
      000E01 FD               [12] 2473 	mov	r5,a
      000E02                       2474 00104$:
      000E02 8C 82            [24] 2475 	mov	dpl,r4
      000E04 8D 83            [24] 2476 	mov	dph,r5
                                   2477 ;	./src/angry_bird.c:475: }
      000E06 02 0D 2E         [24] 2478 	ljmp	_getsine
                                   2479 ;------------------------------------------------------------
                                   2480 ;Allocation info for local variables in function 'pow_2'
                                   2481 ;------------------------------------------------------------
                                   2482 ;n                         Allocated to registers r4 r5 r6 r7 
                                   2483 ;------------------------------------------------------------
                                   2484 ;	./src/angry_bird.c:476: float pow_2(float n)
                                   2485 ;	-----------------------------------------
                                   2486 ;	 function pow_2
                                   2487 ;	-----------------------------------------
      000E09                       2488 _pow_2:
      000E09 AC 82            [24] 2489 	mov	r4,dpl
      000E0B AD 83            [24] 2490 	mov	r5,dph
      000E0D AE F0            [24] 2491 	mov	r6,b
      000E0F FF               [12] 2492 	mov	r7,a
                                   2493 ;	./src/angry_bird.c:478: return n * n;
      000E10 C0 04            [24] 2494 	push	ar4
      000E12 C0 05            [24] 2495 	push	ar5
      000E14 C0 06            [24] 2496 	push	ar6
      000E16 C0 07            [24] 2497 	push	ar7
      000E18 8C 82            [24] 2498 	mov	dpl,r4
      000E1A 8D 83            [24] 2499 	mov	dph,r5
      000E1C 8E F0            [24] 2500 	mov	b,r6
      000E1E EF               [12] 2501 	mov	a,r7
      000E1F 12 0F C8         [24] 2502 	lcall	___fsmul
      000E22 AC 82            [24] 2503 	mov	r4,dpl
      000E24 AD 83            [24] 2504 	mov	r5,dph
      000E26 AE F0            [24] 2505 	mov	r6,b
      000E28 FF               [12] 2506 	mov	r7,a
      000E29 E5 81            [12] 2507 	mov	a,sp
      000E2B 24 FC            [12] 2508 	add	a,#0xfc
      000E2D F5 81            [12] 2509 	mov	sp,a
      000E2F 8C 82            [24] 2510 	mov	dpl,r4
      000E31 8D 83            [24] 2511 	mov	dph,r5
      000E33 8E F0            [24] 2512 	mov	b,r6
      000E35 EF               [12] 2513 	mov	a,r7
                                   2514 ;	./src/angry_bird.c:479: }
      000E36 22               [24] 2515 	ret
                                   2516 	.area CSEG    (CODE)
                                   2517 	.area CONST   (CODE)
      001490                       2518 _shooter_logo:
      001490 00                    2519 	.db #0x00	; 0
      001491 FF                    2520 	.db #0xff	; 255
      001492 FF                    2521 	.db #0xff	; 255
      001493 F6                    2522 	.db #0xf6	; 246
      001494 00                    2523 	.db #0x00	; 0
      001495 FE                    2524 	.db #0xfe	; 254
      001496 FF                    2525 	.db #0xff	; 255
      001497 FE                    2526 	.db #0xfe	; 254
      001498 00                    2527 	.db #0x00	; 0
      001499 01                    2528 	.db #0x01	; 1
      00149A 07                    2529 	.db #0x07	; 7
      00149B FF                    2530 	.db #0xff	; 255
      00149C FE                    2531 	.db #0xfe	; 254
      00149D FF                    2532 	.db #0xff	; 255
      00149E 07                    2533 	.db #0x07	; 7
      00149F 00                    2534 	.db #0x00	; 0
      0014A0                       2535 _pig_logo:
      0014A0 C0                    2536 	.db #0xc0	; 192
      0014A1 30                    2537 	.db #0x30	; 48	'0'
      0014A2 38                    2538 	.db #0x38	; 56	'8'
      0014A3 FC                    2539 	.db #0xfc	; 252
      0014A4 FF                    2540 	.db #0xff	; 255
      0014A5 FF                    2541 	.db #0xff	; 255
      0014A6 FC                    2542 	.db #0xfc	; 252
      0014A7 FC                    2543 	.db #0xfc	; 252
      0014A8 3E                    2544 	.db #0x3e	; 62
      0014A9 3E                    2545 	.db #0x3e	; 62
      0014AA F0                    2546 	.db #0xf0	; 240
      0014AB C0                    2547 	.db #0xc0	; 192
      0014AC 01                    2548 	.db #0x01	; 1
      0014AD 03                    2549 	.db #0x03	; 3
      0014AE 07                    2550 	.db #0x07	; 7
      0014AF 0F                    2551 	.db #0x0f	; 15
      0014B0 0F                    2552 	.db #0x0f	; 15
      0014B1 0F                    2553 	.db #0x0f	; 15
      0014B2 0F                    2554 	.db #0x0f	; 15
      0014B3 0F                    2555 	.db #0x0f	; 15
      0014B4 0F                    2556 	.db #0x0f	; 15
      0014B5 07                    2557 	.db #0x07	; 7
      0014B6 03                    2558 	.db #0x03	; 3
      0014B7 01                    2559 	.db #0x01	; 1
      0014B8                       2560 _bird_logo:
      0014B8 7E                    2561 	.db #0x7e	; 126
      0014B9 C3                    2562 	.db #0xc3	; 195
      0014BA 81                    2563 	.db #0x81	; 129
      0014BB 81                    2564 	.db #0x81	; 129
      0014BC 81                    2565 	.db #0x81	; 129
      0014BD 81                    2566 	.db #0x81	; 129
      0014BE C3                    2567 	.db #0xc3	; 195
      0014BF 7E                    2568 	.db #0x7e	; 126
      0014C0                       2569 _win_page:
      0014C0 00                    2570 	.db #0x00	; 0
      0014C1 00                    2571 	.db #0x00	; 0
      0014C2 00                    2572 	.db #0x00	; 0
      0014C3 00                    2573 	.db #0x00	; 0
      0014C4 00                    2574 	.db #0x00	; 0
      0014C5 00                    2575 	.db #0x00	; 0
      0014C6 00                    2576 	.db #0x00	; 0
      0014C7 00                    2577 	.db #0x00	; 0
      0014C8 00                    2578 	.db #0x00	; 0
      0014C9 00                    2579 	.db #0x00	; 0
      0014CA 01                    2580 	.db #0x01	; 1
      0014CB 1F                    2581 	.db #0x1f	; 31
      0014CC FF                    2582 	.db #0xff	; 255
      0014CD FF                    2583 	.db #0xff	; 255
      0014CE F0                    2584 	.db #0xf0	; 240
      0014CF E0                    2585 	.db #0xe0	; 224
      0014D0 FC                    2586 	.db #0xfc	; 252
      0014D1 FF                    2587 	.db #0xff	; 255
      0014D2 1F                    2588 	.db #0x1f	; 31
      0014D3 3F                    2589 	.db #0x3f	; 63
      0014D4 FF                    2590 	.db #0xff	; 255
      0014D5 F8                    2591 	.db #0xf8	; 248
      0014D6 E0                    2592 	.db #0xe0	; 224
      0014D7 FC                    2593 	.db #0xfc	; 252
      0014D8 FF                    2594 	.db #0xff	; 255
      0014D9 7F                    2595 	.db #0x7f	; 127
      0014DA 07                    2596 	.db #0x07	; 7
      0014DB 00                    2597 	.db #0x00	; 0
      0014DC 00                    2598 	.db #0x00	; 0
      0014DD FF                    2599 	.db #0xff	; 255
      0014DE FF                    2600 	.db #0xff	; 255
      0014DF FF                    2601 	.db #0xff	; 255
      0014E0 00                    2602 	.db #0x00	; 0
      0014E1 00                    2603 	.db #0x00	; 0
      0014E2 00                    2604 	.db #0x00	; 0
      0014E3 FF                    2605 	.db #0xff	; 255
      0014E4 FF                    2606 	.db #0xff	; 255
      0014E5 FF                    2607 	.db #0xff	; 255
      0014E6 FF                    2608 	.db #0xff	; 255
      0014E7 3E                    2609 	.db #0x3e	; 62
      0014E8 7C                    2610 	.db #0x7c	; 124
      0014E9 F0                    2611 	.db #0xf0	; 240
      0014EA E0                    2612 	.db #0xe0	; 224
      0014EB FF                    2613 	.db #0xff	; 255
      0014EC FF                    2614 	.db #0xff	; 255
      0014ED FF                    2615 	.db #0xff	; 255
      0014EE FF                    2616 	.db #0xff	; 255
      0014EF 00                    2617 	.db #0x00	; 0
      0014F0 00                    2618 	.db #0x00	; 0
      0014F1 0F                    2619 	.db #0x0f	; 15
      0014F2 7F                    2620 	.db #0x7f	; 127
      0014F3 7F                    2621 	.db #0x7f	; 127
      0014F4 1F                    2622 	.db #0x1f	; 31
      0014F5 00                    2623 	.db #0x00	; 0
      0014F6 00                    2624 	.db #0x00	; 0
      0014F7 00                    2625 	.db #0x00	; 0
      0014F8 00                    2626 	.db #0x00	; 0
      0014F9 00                    2627 	.db #0x00	; 0
      0014FA 00                    2628 	.db #0x00	; 0
      0014FB 00                    2629 	.db #0x00	; 0
      0014FC 00                    2630 	.db #0x00	; 0
      0014FD 00                    2631 	.db #0x00	; 0
      0014FE 00                    2632 	.db #0x00	; 0
      0014FF 00                    2633 	.db #0x00	; 0
      001500 00                    2634 	.db #0x00	; 0
      001501 00                    2635 	.db #0x00	; 0
      001502 00                    2636 	.db #0x00	; 0
      001503 00                    2637 	.db #0x00	; 0
      001504 00                    2638 	.db #0x00	; 0
      001505 00                    2639 	.db #0x00	; 0
      001506 00                    2640 	.db #0x00	; 0
      001507 00                    2641 	.db #0x00	; 0
      001508 00                    2642 	.db #0x00	; 0
      001509 00                    2643 	.db #0x00	; 0
      00150A 00                    2644 	.db #0x00	; 0
      00150B 00                    2645 	.db #0x00	; 0
      00150C 01                    2646 	.db #0x01	; 1
      00150D 07                    2647 	.db #0x07	; 7
      00150E 07                    2648 	.db #0x07	; 7
      00150F 07                    2649 	.db #0x07	; 7
      001510 07                    2650 	.db #0x07	; 7
      001511 00                    2651 	.db #0x00	; 0
      001512 00                    2652 	.db #0x00	; 0
      001513 00                    2653 	.db #0x00	; 0
      001514 03                    2654 	.db #0x03	; 3
      001515 07                    2655 	.db #0x07	; 7
      001516 07                    2656 	.db #0x07	; 7
      001517 07                    2657 	.db #0x07	; 7
      001518 07                    2658 	.db #0x07	; 7
      001519 00                    2659 	.db #0x00	; 0
      00151A 00                    2660 	.db #0x00	; 0
      00151B 00                    2661 	.db #0x00	; 0
      00151C 00                    2662 	.db #0x00	; 0
      00151D 07                    2663 	.db #0x07	; 7
      00151E 07                    2664 	.db #0x07	; 7
      00151F 07                    2665 	.db #0x07	; 7
      001520 00                    2666 	.db #0x00	; 0
      001521 00                    2667 	.db #0x00	; 0
      001522 00                    2668 	.db #0x00	; 0
      001523 07                    2669 	.db #0x07	; 7
      001524 07                    2670 	.db #0x07	; 7
      001525 07                    2671 	.db #0x07	; 7
      001526 07                    2672 	.db #0x07	; 7
      001527 00                    2673 	.db #0x00	; 0
      001528 00                    2674 	.db #0x00	; 0
      001529 00                    2675 	.db #0x00	; 0
      00152A 03                    2676 	.db #0x03	; 3
      00152B 07                    2677 	.db #0x07	; 7
      00152C 07                    2678 	.db #0x07	; 7
      00152D 07                    2679 	.db #0x07	; 7
      00152E 07                    2680 	.db #0x07	; 7
      00152F 00                    2681 	.db #0x00	; 0
      001530 00                    2682 	.db #0x00	; 0
      001531 07                    2683 	.db #0x07	; 7
      001532 07                    2684 	.db #0x07	; 7
      001533 07                    2685 	.db #0x07	; 7
      001534 07                    2686 	.db #0x07	; 7
      001535 00                    2687 	.db #0x00	; 0
      001536 00                    2688 	.db #0x00	; 0
      001537 00                    2689 	.db #0x00	; 0
      001538 00                    2690 	.db #0x00	; 0
      001539 00                    2691 	.db #0x00	; 0
      00153A 00                    2692 	.db #0x00	; 0
      00153B 00                    2693 	.db #0x00	; 0
      00153C 00                    2694 	.db #0x00	; 0
      00153D 00                    2695 	.db #0x00	; 0
      00153E 00                    2696 	.db #0x00	; 0
      00153F 00                    2697 	.db #0x00	; 0
      001540                       2698 _over_page:
      001540 00                    2699 	.db #0x00	; 0
      001541 00                    2700 	.db #0x00	; 0
      001542 00                    2701 	.db #0x00	; 0
      001543 00                    2702 	.db #0x00	; 0
      001544 00                    2703 	.db #0x00	; 0
      001545 00                    2704 	.db #0x00	; 0
      001546 00                    2705 	.db #0x00	; 0
      001547 00                    2706 	.db #0x00	; 0
      001548 00                    2707 	.db #0x00	; 0
      001549 00                    2708 	.db #0x00	; 0
      00154A FC                    2709 	.db #0xfc	; 252
      00154B FE                    2710 	.db #0xfe	; 254
      00154C FF                    2711 	.db #0xff	; 255
      00154D 07                    2712 	.db #0x07	; 7
      00154E 03                    2713 	.db #0x03	; 3
      00154F 03                    2714 	.db #0x03	; 3
      001550 07                    2715 	.db #0x07	; 7
      001551 DF                    2716 	.db #0xdf	; 223
      001552 FE                    2717 	.db #0xfe	; 254
      001553 FE                    2718 	.db #0xfe	; 254
      001554 F8                    2719 	.db #0xf8	; 248
      001555 03                    2720 	.db #0x03	; 3
      001556 0F                    2721 	.db #0x0f	; 15
      001557 7F                    2722 	.db #0x7f	; 127
      001558 FE                    2723 	.db #0xfe	; 254
      001559 F0                    2724 	.db #0xf0	; 240
      00155A 80                    2725 	.db #0x80	; 128
      00155B E0                    2726 	.db #0xe0	; 224
      00155C FC                    2727 	.db #0xfc	; 252
      00155D FF                    2728 	.db #0xff	; 255
      00155E 1F                    2729 	.db #0x1f	; 31
      00155F 07                    2730 	.db #0x07	; 7
      001560 00                    2731 	.db #0x00	; 0
      001561 00                    2732 	.db #0x00	; 0
      001562 FF                    2733 	.db #0xff	; 255
      001563 FF                    2734 	.db #0xff	; 255
      001564 FF                    2735 	.db #0xff	; 255
      001565 33                    2736 	.db #0x33	; 51	'3'
      001566 33                    2737 	.db #0x33	; 51	'3'
      001567 33                    2738 	.db #0x33	; 51	'3'
      001568 33                    2739 	.db #0x33	; 51	'3'
      001569 33                    2740 	.db #0x33	; 51	'3'
      00156A 03                    2741 	.db #0x03	; 3
      00156B 00                    2742 	.db #0x00	; 0
      00156C FE                    2743 	.db #0xfe	; 254
      00156D FF                    2744 	.db #0xff	; 255
      00156E FF                    2745 	.db #0xff	; 255
      00156F FF                    2746 	.db #0xff	; 255
      001570 73                    2747 	.db #0x73	; 115	's'
      001571 F3                    2748 	.db #0xf3	; 243
      001572 F7                    2749 	.db #0xf7	; 247
      001573 FF                    2750 	.db #0xff	; 255
      001574 BF                    2751 	.db #0xbf	; 191
      001575 1E                    2752 	.db #0x1e	; 30
      001576 00                    2753 	.db #0x00	; 0
      001577 00                    2754 	.db #0x00	; 0
      001578 00                    2755 	.db #0x00	; 0
      001579 00                    2756 	.db #0x00	; 0
      00157A 00                    2757 	.db #0x00	; 0
      00157B 00                    2758 	.db #0x00	; 0
      00157C 00                    2759 	.db #0x00	; 0
      00157D 00                    2760 	.db #0x00	; 0
      00157E 00                    2761 	.db #0x00	; 0
      00157F 00                    2762 	.db #0x00	; 0
      001580 00                    2763 	.db #0x00	; 0
      001581 00                    2764 	.db #0x00	; 0
      001582 00                    2765 	.db #0x00	; 0
      001583 00                    2766 	.db #0x00	; 0
      001584 00                    2767 	.db #0x00	; 0
      001585 00                    2768 	.db #0x00	; 0
      001586 00                    2769 	.db #0x00	; 0
      001587 00                    2770 	.db #0x00	; 0
      001588 00                    2771 	.db #0x00	; 0
      001589 00                    2772 	.db #0x00	; 0
      00158A 01                    2773 	.db #0x01	; 1
      00158B 03                    2774 	.db #0x03	; 3
      00158C 07                    2775 	.db #0x07	; 7
      00158D 07                    2776 	.db #0x07	; 7
      00158E 07                    2777 	.db #0x07	; 7
      00158F 07                    2778 	.db #0x07	; 7
      001590 07                    2779 	.db #0x07	; 7
      001591 07                    2780 	.db #0x07	; 7
      001592 03                    2781 	.db #0x03	; 3
      001593 01                    2782 	.db #0x01	; 1
      001594 00                    2783 	.db #0x00	; 0
      001595 00                    2784 	.db #0x00	; 0
      001596 00                    2785 	.db #0x00	; 0
      001597 00                    2786 	.db #0x00	; 0
      001598 03                    2787 	.db #0x03	; 3
      001599 07                    2788 	.db #0x07	; 7
      00159A 07                    2789 	.db #0x07	; 7
      00159B 07                    2790 	.db #0x07	; 7
      00159C 07                    2791 	.db #0x07	; 7
      00159D 00                    2792 	.db #0x00	; 0
      00159E 00                    2793 	.db #0x00	; 0
      00159F 00                    2794 	.db #0x00	; 0
      0015A0 00                    2795 	.db #0x00	; 0
      0015A1 00                    2796 	.db #0x00	; 0
      0015A2 07                    2797 	.db #0x07	; 7
      0015A3 07                    2798 	.db #0x07	; 7
      0015A4 07                    2799 	.db #0x07	; 7
      0015A5 07                    2800 	.db #0x07	; 7
      0015A6 07                    2801 	.db #0x07	; 7
      0015A7 07                    2802 	.db #0x07	; 7
      0015A8 07                    2803 	.db #0x07	; 7
      0015A9 07                    2804 	.db #0x07	; 7
      0015AA 07                    2805 	.db #0x07	; 7
      0015AB 00                    2806 	.db #0x00	; 0
      0015AC 03                    2807 	.db #0x03	; 3
      0015AD 07                    2808 	.db #0x07	; 7
      0015AE 07                    2809 	.db #0x07	; 7
      0015AF 07                    2810 	.db #0x07	; 7
      0015B0 00                    2811 	.db #0x00	; 0
      0015B1 00                    2812 	.db #0x00	; 0
      0015B2 01                    2813 	.db #0x01	; 1
      0015B3 07                    2814 	.db #0x07	; 7
      0015B4 07                    2815 	.db #0x07	; 7
      0015B5 07                    2816 	.db #0x07	; 7
      0015B6 04                    2817 	.db #0x04	; 4
      0015B7 00                    2818 	.db #0x00	; 0
      0015B8 00                    2819 	.db #0x00	; 0
      0015B9 00                    2820 	.db #0x00	; 0
      0015BA 00                    2821 	.db #0x00	; 0
      0015BB 00                    2822 	.db #0x00	; 0
      0015BC 00                    2823 	.db #0x00	; 0
      0015BD 00                    2824 	.db #0x00	; 0
      0015BE 00                    2825 	.db #0x00	; 0
      0015BF 00                    2826 	.db #0x00	; 0
                                   2827 	.area CONST   (CODE)
      0015C0                       2828 ___str_0:
      0015C0 53 20                 2829 	.ascii "S "
      0015C2 00                    2830 	.db 0x00
                                   2831 	.area CSEG    (CODE)
                                   2832 	.area CONST   (CODE)
      0015C3                       2833 ___str_1:
      0015C3 41 20                 2834 	.ascii "A "
      0015C5 00                    2835 	.db 0x00
                                   2836 	.area CSEG    (CODE)
      000E37                       2837 _sine_table:
      000E37 00 00 00 00           2838 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      000E3B 33 C4 31 3E           2839 	.byte #0x33, #0xc4, #0x31, #0x3e	;  1.736000e-01
      000E3F A0 1A AF 3E           2840 	.byte #0xa0, #0x1a, #0xaf, #0x3e	;  3.420000e-01
      000E43 00 00 00 3F           2841 	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
      000E47 8A 8E 24 3F           2842 	.byte #0x8a, #0x8e, #0x24, #0x3f	;  6.428000e-01
      000E4B 93 18 44 3F           2843 	.byte #0x93, #0x18, #0x44, #0x3f	;  7.660000e-01
      000E4F 2D B2 5D 3F           2844 	.byte #0x2d, #0xb2, #0x5d, #0x3f	;  8.660000e-01
      000E53 2E 90 70 3F           2845 	.byte #0x2e, #0x90, #0x70, #0x3f	;  9.397000e-01
      000E57 DA 1B 7C 3F           2846 	.byte #0xda, #0x1b, #0x7c, #0x3f	;  9.848000e-01
      000E5B 00 00 80 3F           2847 	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
                                   2848 	.area CONST   (CODE)
      0015C6                       2849 ___str_2:
      0015C6 20 20 20              2850 	.ascii "   "
      0015C9 00                    2851 	.db 0x00
                                   2852 	.area CSEG    (CODE)
                                   2853 	.area CONST   (CODE)
      0015CA                       2854 ___str_3:
      0015CA 20                    2855 	.ascii " "
      0015CB 00                    2856 	.db 0x00
                                   2857 	.area CSEG    (CODE)
                                   2858 	.area XINIT   (CODE)
                                   2859 	.area CABS    (ABS,CODE)
