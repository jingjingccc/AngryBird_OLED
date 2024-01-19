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
                                     12 	.globl _bird_logo
                                     13 	.globl _pig_logo
                                     14 	.globl _shooter_logo
                                     15 	.globl _display_for_OLED_debug
                                     16 	.globl _I2C_Stop
                                     17 	.globl _I2C_Start
                                     18 	.globl _oledSendData
                                     19 	.globl _OLED_SetCursor
                                     20 	.globl _OLED_Clear
                                     21 	.globl _OLED_DisplayString
                                     22 	.globl _OLED_Init
                                     23 	.globl _delay_ms
                                     24 	.globl _CY
                                     25 	.globl _AC
                                     26 	.globl _F0
                                     27 	.globl _RS1
                                     28 	.globl _RS0
                                     29 	.globl _OV
                                     30 	.globl _F1
                                     31 	.globl _P
                                     32 	.globl _PS
                                     33 	.globl _PT1
                                     34 	.globl _PX1
                                     35 	.globl _PT0
                                     36 	.globl _PX0
                                     37 	.globl _RD
                                     38 	.globl _WR
                                     39 	.globl _T1
                                     40 	.globl _T0
                                     41 	.globl _INT1
                                     42 	.globl _INT0
                                     43 	.globl _TXD
                                     44 	.globl _RXD
                                     45 	.globl _P3_7
                                     46 	.globl _P3_6
                                     47 	.globl _P3_5
                                     48 	.globl _P3_4
                                     49 	.globl _P3_3
                                     50 	.globl _P3_2
                                     51 	.globl _P3_1
                                     52 	.globl _P3_0
                                     53 	.globl _EA
                                     54 	.globl _ES
                                     55 	.globl _ET1
                                     56 	.globl _EX1
                                     57 	.globl _ET0
                                     58 	.globl _EX0
                                     59 	.globl _P2_7
                                     60 	.globl _P2_6
                                     61 	.globl _P2_5
                                     62 	.globl _P2_4
                                     63 	.globl _P2_3
                                     64 	.globl _P2_2
                                     65 	.globl _P2_1
                                     66 	.globl _P2_0
                                     67 	.globl _SM0
                                     68 	.globl _SM1
                                     69 	.globl _SM2
                                     70 	.globl _REN
                                     71 	.globl _TB8
                                     72 	.globl _RB8
                                     73 	.globl _TI
                                     74 	.globl _RI
                                     75 	.globl _P1_7
                                     76 	.globl _P1_6
                                     77 	.globl _P1_5
                                     78 	.globl _P1_4
                                     79 	.globl _P1_3
                                     80 	.globl _P1_2
                                     81 	.globl _P1_1
                                     82 	.globl _P1_0
                                     83 	.globl _TF1
                                     84 	.globl _TR1
                                     85 	.globl _TF0
                                     86 	.globl _TR0
                                     87 	.globl _IE1
                                     88 	.globl _IT1
                                     89 	.globl _IE0
                                     90 	.globl _IT0
                                     91 	.globl _P0_7
                                     92 	.globl _P0_6
                                     93 	.globl _P0_5
                                     94 	.globl _P0_4
                                     95 	.globl _P0_3
                                     96 	.globl _P0_2
                                     97 	.globl _P0_1
                                     98 	.globl _P0_0
                                     99 	.globl _B
                                    100 	.globl _ACC
                                    101 	.globl _PSW
                                    102 	.globl _IP
                                    103 	.globl _P3
                                    104 	.globl _IE
                                    105 	.globl _P2
                                    106 	.globl _SBUF
                                    107 	.globl _SCON
                                    108 	.globl _P1
                                    109 	.globl _TH1
                                    110 	.globl _TH0
                                    111 	.globl _TL1
                                    112 	.globl _TL0
                                    113 	.globl _TMOD
                                    114 	.globl _TCON
                                    115 	.globl _PCON
                                    116 	.globl _DPH
                                    117 	.globl _DPL
                                    118 	.globl _SP
                                    119 	.globl _P0
                                    120 	.globl _prebut_enter
                                    121 	.globl _prebut_right
                                    122 	.globl _prebut_left
                                    123 	.globl _prebut_down
                                    124 	.globl _prebut_up
                                    125 	.globl _cur_state
                                    126 	.globl _led_cur_state
                                    127 	.globl _control_strength
                                    128 	.globl _control_angle
                                    129 	.globl _pig_amt
                                    130 	.globl _bird_amt
                                    131 	.globl _col_offset
                                    132 	.globl _row_offset
                                    133 	.globl _received_flag
                                    134 	.globl _received_data
                                    135 	.globl _send_flag
                                    136 	.globl _send_data
                                    137 	.globl _angrybird_display_game
                                    138 	.globl _angrybird_state_machine
                                    139 	.globl _angrybird_game_state
                                    140 	.globl _getsine
                                    141 	.globl _getcosine
                                    142 	.globl _pow_2
                                    143 ;--------------------------------------------------------
                                    144 ; special function registers
                                    145 ;--------------------------------------------------------
                                    146 	.area RSEG    (ABS,DATA)
      000000                        147 	.org 0x0000
                           000080   148 _P0	=	0x0080
                           000081   149 _SP	=	0x0081
                           000082   150 _DPL	=	0x0082
                           000083   151 _DPH	=	0x0083
                           000087   152 _PCON	=	0x0087
                           000088   153 _TCON	=	0x0088
                           000089   154 _TMOD	=	0x0089
                           00008A   155 _TL0	=	0x008a
                           00008B   156 _TL1	=	0x008b
                           00008C   157 _TH0	=	0x008c
                           00008D   158 _TH1	=	0x008d
                           000090   159 _P1	=	0x0090
                           000098   160 _SCON	=	0x0098
                           000099   161 _SBUF	=	0x0099
                           0000A0   162 _P2	=	0x00a0
                           0000A8   163 _IE	=	0x00a8
                           0000B0   164 _P3	=	0x00b0
                           0000B8   165 _IP	=	0x00b8
                           0000D0   166 _PSW	=	0x00d0
                           0000E0   167 _ACC	=	0x00e0
                           0000F0   168 _B	=	0x00f0
                                    169 ;--------------------------------------------------------
                                    170 ; special function bits
                                    171 ;--------------------------------------------------------
                                    172 	.area RSEG    (ABS,DATA)
      000000                        173 	.org 0x0000
                           000080   174 _P0_0	=	0x0080
                           000081   175 _P0_1	=	0x0081
                           000082   176 _P0_2	=	0x0082
                           000083   177 _P0_3	=	0x0083
                           000084   178 _P0_4	=	0x0084
                           000085   179 _P0_5	=	0x0085
                           000086   180 _P0_6	=	0x0086
                           000087   181 _P0_7	=	0x0087
                           000088   182 _IT0	=	0x0088
                           000089   183 _IE0	=	0x0089
                           00008A   184 _IT1	=	0x008a
                           00008B   185 _IE1	=	0x008b
                           00008C   186 _TR0	=	0x008c
                           00008D   187 _TF0	=	0x008d
                           00008E   188 _TR1	=	0x008e
                           00008F   189 _TF1	=	0x008f
                           000090   190 _P1_0	=	0x0090
                           000091   191 _P1_1	=	0x0091
                           000092   192 _P1_2	=	0x0092
                           000093   193 _P1_3	=	0x0093
                           000094   194 _P1_4	=	0x0094
                           000095   195 _P1_5	=	0x0095
                           000096   196 _P1_6	=	0x0096
                           000097   197 _P1_7	=	0x0097
                           000098   198 _RI	=	0x0098
                           000099   199 _TI	=	0x0099
                           00009A   200 _RB8	=	0x009a
                           00009B   201 _TB8	=	0x009b
                           00009C   202 _REN	=	0x009c
                           00009D   203 _SM2	=	0x009d
                           00009E   204 _SM1	=	0x009e
                           00009F   205 _SM0	=	0x009f
                           0000A0   206 _P2_0	=	0x00a0
                           0000A1   207 _P2_1	=	0x00a1
                           0000A2   208 _P2_2	=	0x00a2
                           0000A3   209 _P2_3	=	0x00a3
                           0000A4   210 _P2_4	=	0x00a4
                           0000A5   211 _P2_5	=	0x00a5
                           0000A6   212 _P2_6	=	0x00a6
                           0000A7   213 _P2_7	=	0x00a7
                           0000A8   214 _EX0	=	0x00a8
                           0000A9   215 _ET0	=	0x00a9
                           0000AA   216 _EX1	=	0x00aa
                           0000AB   217 _ET1	=	0x00ab
                           0000AC   218 _ES	=	0x00ac
                           0000AF   219 _EA	=	0x00af
                           0000B0   220 _P3_0	=	0x00b0
                           0000B1   221 _P3_1	=	0x00b1
                           0000B2   222 _P3_2	=	0x00b2
                           0000B3   223 _P3_3	=	0x00b3
                           0000B4   224 _P3_4	=	0x00b4
                           0000B5   225 _P3_5	=	0x00b5
                           0000B6   226 _P3_6	=	0x00b6
                           0000B7   227 _P3_7	=	0x00b7
                           0000B0   228 _RXD	=	0x00b0
                           0000B1   229 _TXD	=	0x00b1
                           0000B2   230 _INT0	=	0x00b2
                           0000B3   231 _INT1	=	0x00b3
                           0000B4   232 _T0	=	0x00b4
                           0000B5   233 _T1	=	0x00b5
                           0000B6   234 _WR	=	0x00b6
                           0000B7   235 _RD	=	0x00b7
                           0000B8   236 _PX0	=	0x00b8
                           0000B9   237 _PT0	=	0x00b9
                           0000BA   238 _PX1	=	0x00ba
                           0000BB   239 _PT1	=	0x00bb
                           0000BC   240 _PS	=	0x00bc
                           0000D0   241 _P	=	0x00d0
                           0000D1   242 _F1	=	0x00d1
                           0000D2   243 _OV	=	0x00d2
                           0000D3   244 _RS0	=	0x00d3
                           0000D4   245 _RS1	=	0x00d4
                           0000D5   246 _F0	=	0x00d5
                           0000D6   247 _AC	=	0x00d6
                           0000D7   248 _CY	=	0x00d7
                                    249 ;--------------------------------------------------------
                                    250 ; overlayable register banks
                                    251 ;--------------------------------------------------------
                                    252 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        253 	.ds 8
                                    254 ;--------------------------------------------------------
                                    255 ; internal ram data
                                    256 ;--------------------------------------------------------
                                    257 	.area DSEG    (DATA)
      000021                        258 _send_data::
      000021                        259 	.ds 1
      000022                        260 _send_flag::
      000022                        261 	.ds 1
      000023                        262 _received_data::
      000023                        263 	.ds 1
      000024                        264 _received_flag::
      000024                        265 	.ds 1
      000025                        266 _row_offset::
      000025                        267 	.ds 2
      000027                        268 _col_offset::
      000027                        269 	.ds 2
      000029                        270 _bird_amt::
      000029                        271 	.ds 2
      00002B                        272 _pig_amt::
      00002B                        273 	.ds 2
      00002D                        274 _control_angle::
      00002D                        275 	.ds 2
      00002F                        276 _control_strength::
      00002F                        277 	.ds 2
      000031                        278 _angrybird_display_game_control_strength__65537_30:
      000031                        279 	.ds 2
      000033                        280 _angrybird_display_game_control_angle__65537_30:
      000033                        281 	.ds 5
      000038                        282 _angrybird_display_game_angle__65539_32:
      000038                        283 	.ds 2
      00003A                        284 _angrybird_display_game_k_131075_33:
      00003A                        285 	.ds 2
      00003C                        286 _led_cur_state::
      00003C                        287 	.ds 2
      00003E                        288 _cur_state::
      00003E                        289 	.ds 2
      000040                        290 _prebut_up::
      000040                        291 	.ds 2
      000042                        292 _prebut_down::
      000042                        293 	.ds 2
      000044                        294 _prebut_left::
      000044                        295 	.ds 2
      000046                        296 _prebut_right::
      000046                        297 	.ds 2
      000048                        298 _prebut_enter::
      000048                        299 	.ds 2
      00004A                        300 _angrybird_game_state_control_angle__196609_65:
      00004A                        301 	.ds 5
      00004F                        302 _angrybird_game_state_angle__196610_66:
      00004F                        303 	.ds 2
      000051                        304 _angrybird_game_state_control_strength__196609_71:
      000051                        305 	.ds 2
      000053                        306 _angrybird_game_state_delta_y_196609_78:
      000053                        307 	.ds 4
      000057                        308 _angrybird_game_state_delta_x_196609_78:
      000057                        309 	.ds 4
      00005B                        310 _angrybird_game_state_peak_x_196609_78:
      00005B                        311 	.ds 4
      00005F                        312 _angrybird_game_state_peak_y_196609_78:
      00005F                        313 	.ds 4
      000063                        314 _angrybird_game_state_a_196609_78:
      000063                        315 	.ds 4
      000067                        316 _angrybird_game_state_i_262145_83:
      000067                        317 	.ds 2
      000069                        318 _angrybird_game_state_output_row_327681_84:
      000069                        319 	.ds 2
      00006B                        320 _angrybird_game_state_sloc1_1_0:
      00006B                        321 	.ds 4
                                    322 ;--------------------------------------------------------
                                    323 ; overlayable items in internal ram
                                    324 ;--------------------------------------------------------
                                    325 ;--------------------------------------------------------
                                    326 ; indirectly addressable internal ram data
                                    327 ;--------------------------------------------------------
                                    328 	.area ISEG    (DATA)
                                    329 ;--------------------------------------------------------
                                    330 ; absolute internal ram data
                                    331 ;--------------------------------------------------------
                                    332 	.area IABS    (ABS,DATA)
                                    333 	.area IABS    (ABS,DATA)
                                    334 ;--------------------------------------------------------
                                    335 ; bit data
                                    336 ;--------------------------------------------------------
                                    337 	.area BSEG    (BIT)
      000000                        338 _angrybird_display_game_sloc0_1_0:
      000000                        339 	.ds 1
      000001                        340 _angrybird_game_state_sloc0_1_0:
      000001                        341 	.ds 1
                                    342 ;--------------------------------------------------------
                                    343 ; paged external ram data
                                    344 ;--------------------------------------------------------
                                    345 	.area PSEG    (PAG,XDATA)
                                    346 ;--------------------------------------------------------
                                    347 ; uninitialized external ram data
                                    348 ;--------------------------------------------------------
                                    349 	.area XSEG    (XDATA)
                                    350 ;--------------------------------------------------------
                                    351 ; absolute external ram data
                                    352 ;--------------------------------------------------------
                                    353 	.area XABS    (ABS,XDATA)
                                    354 ;--------------------------------------------------------
                                    355 ; initialized external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area XISEG   (XDATA)
                                    358 	.area HOME    (CODE)
                                    359 	.area GSINIT0 (CODE)
                                    360 	.area GSINIT1 (CODE)
                                    361 	.area GSINIT2 (CODE)
                                    362 	.area GSINIT3 (CODE)
                                    363 	.area GSINIT4 (CODE)
                                    364 	.area GSINIT5 (CODE)
                                    365 	.area GSINIT  (CODE)
                                    366 	.area GSFINAL (CODE)
                                    367 	.area CSEG    (CODE)
                                    368 ;--------------------------------------------------------
                                    369 ; global & static initialisations
                                    370 ;--------------------------------------------------------
                                    371 	.area HOME    (CODE)
                                    372 	.area GSINIT  (CODE)
                                    373 	.area GSFINAL (CODE)
                                    374 	.area GSINIT  (CODE)
                                    375 ;	./src/angry_bird.c:128: int led_cur_state = 1;
      000082 75 3C 01         [24]  376 	mov	_led_cur_state,#0x01
      000085 75 3D 00         [24]  377 	mov	(_led_cur_state + 1),#0x00
                                    378 ;	./src/angry_bird.c:146: int cur_state = 0;
      000088 E4               [12]  379 	clr	a
      000089 F5 3E            [12]  380 	mov	_cur_state,a
      00008B F5 3F            [12]  381 	mov	(_cur_state + 1),a
                                    382 ;	./src/angry_bird.c:196: unsigned int prebut_up = 0;
      00008D F5 40            [12]  383 	mov	_prebut_up,a
      00008F F5 41            [12]  384 	mov	(_prebut_up + 1),a
                                    385 ;	./src/angry_bird.c:197: unsigned int prebut_down = 0;
      000091 F5 42            [12]  386 	mov	_prebut_down,a
      000093 F5 43            [12]  387 	mov	(_prebut_down + 1),a
                                    388 ;	./src/angry_bird.c:198: unsigned int prebut_left = 0;
      000095 F5 44            [12]  389 	mov	_prebut_left,a
      000097 F5 45            [12]  390 	mov	(_prebut_left + 1),a
                                    391 ;	./src/angry_bird.c:199: unsigned int prebut_right = 0;
      000099 F5 46            [12]  392 	mov	_prebut_right,a
      00009B F5 47            [12]  393 	mov	(_prebut_right + 1),a
                                    394 ;	./src/angry_bird.c:200: unsigned int prebut_enter = 0;
      00009D F5 48            [12]  395 	mov	_prebut_enter,a
      00009F F5 49            [12]  396 	mov	(_prebut_enter + 1),a
                                    397 ;--------------------------------------------------------
                                    398 ; Home
                                    399 ;--------------------------------------------------------
                                    400 	.area HOME    (CODE)
                                    401 	.area HOME    (CODE)
                                    402 ;--------------------------------------------------------
                                    403 ; code
                                    404 ;--------------------------------------------------------
                                    405 	.area CSEG    (CODE)
                                    406 ;------------------------------------------------------------
                                    407 ;Allocation info for local variables in function 'angrybird_display_game'
                                    408 ;------------------------------------------------------------
                                    409 ;control_strength_         Allocated with name '_angrybird_display_game_control_strength__65537_30'
                                    410 ;control_angle_            Allocated with name '_angrybird_display_game_control_angle__65537_30'
                                    411 ;i                         Allocated to registers r4 r5 
                                    412 ;angle_                    Allocated with name '_angrybird_display_game_angle__65539_32'
                                    413 ;k                         Allocated with name '_angrybird_display_game_k_131075_33'
                                    414 ;j                         Allocated to registers r4 r5 
                                    415 ;i                         Allocated to registers r3 
                                    416 ;j                         Allocated to registers r6 r7 
                                    417 ;i                         Allocated to registers r5 
                                    418 ;j                         Allocated to registers r6 r7 
                                    419 ;i                         Allocated to registers r5 
                                    420 ;j                         Allocated to registers r6 r7 
                                    421 ;i                         Allocated to registers r5 
                                    422 ;------------------------------------------------------------
                                    423 ;	./src/angry_bird.c:26: void angrybird_display_game(void)
                                    424 ;	-----------------------------------------
                                    425 ;	 function angrybird_display_game
                                    426 ;	-----------------------------------------
      0001D5                        427 _angrybird_display_game:
                           000007   428 	ar7 = 0x07
                           000006   429 	ar6 = 0x06
                           000005   430 	ar5 = 0x05
                           000004   431 	ar4 = 0x04
                           000003   432 	ar3 = 0x03
                           000002   433 	ar2 = 0x02
                           000001   434 	ar1 = 0x01
                           000000   435 	ar0 = 0x00
                                    436 ;	./src/angry_bird.c:28: bird_amt = bird_total_amount;
      0001D5 75 29 09         [24]  437 	mov	_bird_amt,#0x09
      0001D8 75 2A 00         [24]  438 	mov	(_bird_amt + 1),#0x00
                                    439 ;	./src/angry_bird.c:29: pig_amt = pig_total_amount;
      0001DB 75 2B 03         [24]  440 	mov	_pig_amt,#0x03
      0001DE 75 2C 00         [24]  441 	mov	(_pig_amt + 1),#0x00
                                    442 ;	./src/angry_bird.c:30: control_angle = 60;
      0001E1 75 2D 3C         [24]  443 	mov	_control_angle,#0x3c
      0001E4 75 2E 00         [24]  444 	mov	(_control_angle + 1),#0x00
                                    445 ;	./src/angry_bird.c:31: control_strength = 3;
      0001E7 75 2F 03         [24]  446 	mov	_control_strength,#0x03
      0001EA 75 30 00         [24]  447 	mov	(_control_strength + 1),#0x00
                                    448 ;	./src/angry_bird.c:33: OLED_Clear();
      0001ED 12 0E 37         [24]  449 	lcall	_OLED_Clear
                                    450 ;	./src/angry_bird.c:37: control_strength_[0] = '0' + control_strength;
      0001F0 AF 2F            [24]  451 	mov	r7,_control_strength
      0001F2 74 30            [12]  452 	mov	a,#0x30
      0001F4 2F               [12]  453 	add	a,r7
      0001F5 F5 31            [12]  454 	mov	_angrybird_display_game_control_strength__65537_30,a
                                    455 ;	./src/angry_bird.c:38: control_strength_[1] = '\0';
                                    456 ;	./src/angry_bird.c:40: int i = 0;
                                    457 ;	./src/angry_bird.c:41: if (control_angle < 0)
      0001F7 E4               [12]  458 	clr	a
      0001F8 F5 32            [12]  459 	mov	(_angrybird_display_game_control_strength__65537_30 + 0x0001),a
      0001FA FE               [12]  460 	mov	r6,a
      0001FB FF               [12]  461 	mov	r7,a
      0001FC E5 2E            [12]  462 	mov	a,(_control_angle + 1)
      0001FE 30 E7 07         [24]  463 	jnb	acc.7,00102$
                                    464 ;	./src/angry_bird.c:42: control_angle_[i++] = '-';
      000201 7E 01            [12]  465 	mov	r6,#0x01
      000203 7F 00            [12]  466 	mov	r7,#0x00
      000205 75 33 2D         [24]  467 	mov	_angrybird_display_game_control_angle__65537_30,#0x2d
      000208                        468 00102$:
                                    469 ;	./src/angry_bird.c:43: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      000208 E5 2E            [12]  470 	mov	a,(_control_angle + 1)
      00020A 33               [12]  471 	rlc	a
      00020B 92 00            [24]  472 	mov	_angrybird_display_game_sloc0_1_0,c
      00020D 40 06            [24]  473 	jc	00143$
      00020F AC 2D            [24]  474 	mov	r4,_control_angle
      000211 AD 2E            [24]  475 	mov	r5,(_control_angle + 1)
      000213 80 09            [24]  476 	sjmp	00144$
      000215                        477 00143$:
      000215 C3               [12]  478 	clr	c
      000216 E4               [12]  479 	clr	a
      000217 95 2D            [12]  480 	subb	a,_control_angle
      000219 FC               [12]  481 	mov	r4,a
      00021A E4               [12]  482 	clr	a
      00021B 95 2E            [12]  483 	subb	a,(_control_angle + 1)
      00021D FD               [12]  484 	mov	r5,a
      00021E                        485 00144$:
      00021E 8C 38            [24]  486 	mov	_angrybird_display_game_angle__65539_32,r4
      000220 8D 39            [24]  487 	mov	(_angrybird_display_game_angle__65539_32 + 1),r5
                                    488 ;	./src/angry_bird.c:44: if (angle_ % 100 / 10 != 0)
      000222 75 0C 64         [24]  489 	mov	__modsint_PARM_2,#0x64
      000225 75 0D 00         [24]  490 	mov	(__modsint_PARM_2 + 1),#0x00
      000228 85 38 82         [24]  491 	mov	dpl,_angrybird_display_game_angle__65539_32
      00022B 85 39 83         [24]  492 	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
      00022E C0 07            [24]  493 	push	ar7
      000230 C0 06            [24]  494 	push	ar6
      000232 12 12 2E         [24]  495 	lcall	__modsint
      000235 75 0C 0A         [24]  496 	mov	__divsint_PARM_2,#0x0a
      000238 75 0D 00         [24]  497 	mov	(__divsint_PARM_2 + 1),#0x00
      00023B 12 12 91         [24]  498 	lcall	__divsint
      00023E AA 82            [24]  499 	mov	r2,dpl
      000240 AB 83            [24]  500 	mov	r3,dph
      000242 D0 06            [24]  501 	pop	ar6
      000244 D0 07            [24]  502 	pop	ar7
      000246 EA               [12]  503 	mov	a,r2
      000247 4B               [12]  504 	orl	a,r3
      000248 60 11            [24]  505 	jz	00104$
                                    506 ;	./src/angry_bird.c:45: control_angle_[i++] = '0' + angle_ % 100 / 10;
      00024A 8E 04            [24]  507 	mov	ar4,r6
      00024C 8F 05            [24]  508 	mov	ar5,r7
      00024E 0E               [12]  509 	inc	r6
      00024F BE 00 01         [24]  510 	cjne	r6,#0x00,00304$
      000252 0F               [12]  511 	inc	r7
      000253                        512 00304$:
      000253 EC               [12]  513 	mov	a,r4
      000254 24 33            [12]  514 	add	a,#_angrybird_display_game_control_angle__65537_30
      000256 F9               [12]  515 	mov	r1,a
      000257 74 30            [12]  516 	mov	a,#0x30
      000259 2A               [12]  517 	add	a,r2
      00025A F7               [12]  518 	mov	@r1,a
      00025B                        519 00104$:
                                    520 ;	./src/angry_bird.c:46: control_angle_[i++] = '0' + angle_ % 10;
      00025B 74 01            [12]  521 	mov	a,#0x01
      00025D 2E               [12]  522 	add	a,r6
      00025E FC               [12]  523 	mov	r4,a
      00025F E4               [12]  524 	clr	a
      000260 3F               [12]  525 	addc	a,r7
      000261 FD               [12]  526 	mov	r5,a
      000262 EE               [12]  527 	mov	a,r6
      000263 24 33            [12]  528 	add	a,#_angrybird_display_game_control_angle__65537_30
      000265 F9               [12]  529 	mov	r1,a
      000266 75 0C 0A         [24]  530 	mov	__modsint_PARM_2,#0x0a
      000269 75 0D 00         [24]  531 	mov	(__modsint_PARM_2 + 1),#0x00
      00026C 85 38 82         [24]  532 	mov	dpl,_angrybird_display_game_angle__65539_32
      00026F 85 39 83         [24]  533 	mov	dph,(_angrybird_display_game_angle__65539_32 + 1)
      000272 C0 05            [24]  534 	push	ar5
      000274 C0 04            [24]  535 	push	ar4
      000276 C0 01            [24]  536 	push	ar1
      000278 12 12 2E         [24]  537 	lcall	__modsint
      00027B AE 82            [24]  538 	mov	r6,dpl
      00027D D0 01            [24]  539 	pop	ar1
      00027F D0 04            [24]  540 	pop	ar4
      000281 D0 05            [24]  541 	pop	ar5
      000283 74 30            [12]  542 	mov	a,#0x30
      000285 2E               [12]  543 	add	a,r6
      000286 F7               [12]  544 	mov	@r1,a
                                    545 ;	./src/angry_bird.c:47: control_angle_[i++] = '\0';
      000287 EC               [12]  546 	mov	a,r4
      000288 24 33            [12]  547 	add	a,#_angrybird_display_game_control_angle__65537_30
      00028A F8               [12]  548 	mov	r0,a
      00028B 76 00            [12]  549 	mov	@r0,#0x00
                                    550 ;	./src/angry_bird.c:49: OLED_SetCursor(strength_text_row_cursor, 0);
      00028D 75 0B 00         [24]  551 	mov	_OLED_SetCursor_PARM_2,#0x00
      000290 75 82 00         [24]  552 	mov	dpl,#0x00
      000293 12 0E 62         [24]  553 	lcall	_OLED_SetCursor
                                    554 ;	./src/angry_bird.c:50: OLED_DisplayString("S ");
      000296 90 13 AD         [24]  555 	mov	dptr,#___str_0
      000299 75 F0 80         [24]  556 	mov	b,#0x80
      00029C 12 0E 0C         [24]  557 	lcall	_OLED_DisplayString
                                    558 ;	./src/angry_bird.c:51: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      00029F 75 0B 0A         [24]  559 	mov	_OLED_SetCursor_PARM_2,#0x0a
      0002A2 75 82 00         [24]  560 	mov	dpl,#0x00
      0002A5 12 0E 62         [24]  561 	lcall	_OLED_SetCursor
                                    562 ;	./src/angry_bird.c:52: OLED_DisplayString(control_strength_);
      0002A8 90 00 31         [24]  563 	mov	dptr,#_angrybird_display_game_control_strength__65537_30
      0002AB 75 F0 40         [24]  564 	mov	b,#0x40
      0002AE 12 0E 0C         [24]  565 	lcall	_OLED_DisplayString
                                    566 ;	./src/angry_bird.c:54: OLED_SetCursor(strength_text_row_cursor, 20);
      0002B1 75 0B 14         [24]  567 	mov	_OLED_SetCursor_PARM_2,#0x14
      0002B4 75 82 00         [24]  568 	mov	dpl,#0x00
      0002B7 12 0E 62         [24]  569 	lcall	_OLED_SetCursor
                                    570 ;	./src/angry_bird.c:55: OLED_DisplayString("A ");
      0002BA 90 13 B0         [24]  571 	mov	dptr,#___str_1
      0002BD 75 F0 80         [24]  572 	mov	b,#0x80
      0002C0 12 0E 0C         [24]  573 	lcall	_OLED_DisplayString
                                    574 ;	./src/angry_bird.c:56: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      0002C3 75 0B 1E         [24]  575 	mov	_OLED_SetCursor_PARM_2,#0x1e
      0002C6 75 82 00         [24]  576 	mov	dpl,#0x00
      0002C9 12 0E 62         [24]  577 	lcall	_OLED_SetCursor
                                    578 ;	./src/angry_bird.c:57: OLED_DisplayString(control_angle_);
      0002CC 90 00 33         [24]  579 	mov	dptr,#_angrybird_display_game_control_angle__65537_30
      0002CF 75 F0 40         [24]  580 	mov	b,#0x40
      0002D2 12 0E 0C         [24]  581 	lcall	_OLED_DisplayString
                                    582 ;	./src/angry_bird.c:60: for (int k = 0; k < bird_total_amount; k++)
      0002D5 E4               [12]  583 	clr	a
      0002D6 F5 3A            [12]  584 	mov	_angrybird_display_game_k_131075_33,a
      0002D8 F5 3B            [12]  585 	mov	(_angrybird_display_game_k_131075_33 + 1),a
      0002DA                        586 00121$:
      0002DA C3               [12]  587 	clr	c
      0002DB E5 3A            [12]  588 	mov	a,_angrybird_display_game_k_131075_33
      0002DD 94 09            [12]  589 	subb	a,#0x09
      0002DF E5 3B            [12]  590 	mov	a,(_angrybird_display_game_k_131075_33 + 1)
      0002E1 64 80            [12]  591 	xrl	a,#0x80
      0002E3 94 80            [12]  592 	subb	a,#0x80
      0002E5 40 03            [24]  593 	jc	00305$
      0002E7 02 03 72         [24]  594 	ljmp	00107$
      0002EA                        595 00305$:
                                    596 ;	./src/angry_bird.c:62: row_offset = 0;
      0002EA E4               [12]  597 	clr	a
      0002EB F5 25            [12]  598 	mov	_row_offset,a
      0002ED F5 26            [12]  599 	mov	(_row_offset + 1),a
                                    600 ;	./src/angry_bird.c:63: col_offset = bird_remain_col_cursor + k * 8;
      0002EF AC 3A            [24]  601 	mov	r4,_angrybird_display_game_k_131075_33
      0002F1 E5 3B            [12]  602 	mov	a,(_angrybird_display_game_k_131075_33 + 1)
      0002F3 C4               [12]  603 	swap	a
      0002F4 03               [12]  604 	rr	a
      0002F5 54 F8            [12]  605 	anl	a,#0xf8
      0002F7 CC               [12]  606 	xch	a,r4
      0002F8 C4               [12]  607 	swap	a
      0002F9 03               [12]  608 	rr	a
      0002FA CC               [12]  609 	xch	a,r4
      0002FB 6C               [12]  610 	xrl	a,r4
      0002FC CC               [12]  611 	xch	a,r4
      0002FD 54 F8            [12]  612 	anl	a,#0xf8
      0002FF CC               [12]  613 	xch	a,r4
      000300 6C               [12]  614 	xrl	a,r4
      000301 FD               [12]  615 	mov	r5,a
      000302 74 32            [12]  616 	mov	a,#0x32
      000304 2C               [12]  617 	add	a,r4
      000305 F5 27            [12]  618 	mov	_col_offset,a
      000307 E4               [12]  619 	clr	a
      000308 3D               [12]  620 	addc	a,r5
      000309 F5 28            [12]  621 	mov	(_col_offset + 1),a
                                    622 ;	./src/angry_bird.c:64: for (int j = 0; j < bird_cul_size; j++)
      00030B 7C 00            [12]  623 	mov	r4,#0x00
      00030D 7D 00            [12]  624 	mov	r5,#0x00
      00030F                        625 00118$:
      00030F C3               [12]  626 	clr	c
      000310 EC               [12]  627 	mov	a,r4
      000311 94 08            [12]  628 	subb	a,#0x08
      000313 ED               [12]  629 	mov	a,r5
      000314 64 80            [12]  630 	xrl	a,#0x80
      000316 94 80            [12]  631 	subb	a,#0x80
      000318 50 4D            [24]  632 	jnc	00122$
                                    633 ;	./src/angry_bird.c:66: for (int i = 0; i < bird_row_size; i++)
      00031A 7B 00            [12]  634 	mov	r3,#0x00
      00031C                        635 00115$:
      00031C BB 01 00         [24]  636 	cjne	r3,#0x01,00307$
      00031F                        637 00307$:
      00031F 50 3F            [24]  638 	jnc	00119$
                                    639 ;	./src/angry_bird.c:68: OLED_SetCursor(row_offset + i, col_offset + j);
      000321 AA 25            [24]  640 	mov	r2,_row_offset
      000323 E4               [12]  641 	clr	a
      000324 2A               [12]  642 	add	a,r2
      000325 F5 82            [12]  643 	mov	dpl,a
      000327 AA 27            [24]  644 	mov	r2,_col_offset
      000329 8C 07            [24]  645 	mov	ar7,r4
      00032B EF               [12]  646 	mov	a,r7
      00032C 2A               [12]  647 	add	a,r2
      00032D F5 0B            [12]  648 	mov	_OLED_SetCursor_PARM_2,a
      00032F C0 07            [24]  649 	push	ar7
      000331 C0 05            [24]  650 	push	ar5
      000333 C0 04            [24]  651 	push	ar4
      000335 12 0E 62         [24]  652 	lcall	_OLED_SetCursor
      000338 D0 04            [24]  653 	pop	ar4
      00033A D0 05            [24]  654 	pop	ar5
      00033C D0 07            [24]  655 	pop	ar7
                                    656 ;	./src/angry_bird.c:69: oledSendData(bird_logo[bird_cul_size * i + j]);
      00033E EF               [12]  657 	mov	a,r7
      00033F 33               [12]  658 	rlc	a
      000340 95 E0            [12]  659 	subb	a,acc
      000342 FE               [12]  660 	mov	r6,a
      000343 EF               [12]  661 	mov	a,r7
      000344 24 A5            [12]  662 	add	a,#_bird_logo
      000346 F5 82            [12]  663 	mov	dpl,a
      000348 EE               [12]  664 	mov	a,r6
      000349 34 13            [12]  665 	addc	a,#(_bird_logo >> 8)
      00034B F5 83            [12]  666 	mov	dph,a
      00034D E4               [12]  667 	clr	a
      00034E 93               [24]  668 	movc	a,@a+dptr
      00034F F5 82            [12]  669 	mov	dpl,a
      000351 C0 05            [24]  670 	push	ar5
      000353 C0 04            [24]  671 	push	ar4
      000355 12 0E 9E         [24]  672 	lcall	_oledSendData
      000358 D0 04            [24]  673 	pop	ar4
      00035A D0 05            [24]  674 	pop	ar5
                                    675 ;	./src/angry_bird.c:66: for (int i = 0; i < bird_row_size; i++)
      00035C 7B 01            [12]  676 	mov	r3,#0x01
      00035E 80 BC            [24]  677 	sjmp	00115$
      000360                        678 00119$:
                                    679 ;	./src/angry_bird.c:64: for (int j = 0; j < bird_cul_size; j++)
      000360 0C               [12]  680 	inc	r4
      000361 BC 00 AB         [24]  681 	cjne	r4,#0x00,00118$
      000364 0D               [12]  682 	inc	r5
      000365 80 A8            [24]  683 	sjmp	00118$
      000367                        684 00122$:
                                    685 ;	./src/angry_bird.c:60: for (int k = 0; k < bird_total_amount; k++)
      000367 05 3A            [12]  686 	inc	_angrybird_display_game_k_131075_33
      000369 E4               [12]  687 	clr	a
      00036A B5 3A 02         [24]  688 	cjne	a,_angrybird_display_game_k_131075_33,00310$
      00036D 05 3B            [12]  689 	inc	(_angrybird_display_game_k_131075_33 + 1)
      00036F                        690 00310$:
      00036F 02 02 DA         [24]  691 	ljmp	00121$
      000372                        692 00107$:
                                    693 ;	./src/angry_bird.c:75: row_offset = shoot_row_cursor;
      000372 75 25 06         [24]  694 	mov	_row_offset,#0x06
                                    695 ;	./src/angry_bird.c:76: col_offset = shoot_col_cursor;
      000375 E4               [12]  696 	clr	a
      000376 F5 26            [12]  697 	mov	(_row_offset + 1),a
      000378 F5 27            [12]  698 	mov	_col_offset,a
      00037A F5 28            [12]  699 	mov	(_col_offset + 1),a
                                    700 ;	./src/angry_bird.c:77: for (int j = 0; j < shoot_cul_size; j++)
      00037C FE               [12]  701 	mov	r6,a
      00037D FF               [12]  702 	mov	r7,a
      00037E                        703 00127$:
      00037E C3               [12]  704 	clr	c
      00037F EE               [12]  705 	mov	a,r6
      000380 94 08            [12]  706 	subb	a,#0x08
      000382 EF               [12]  707 	mov	a,r7
      000383 64 80            [12]  708 	xrl	a,#0x80
      000385 94 80            [12]  709 	subb	a,#0x80
      000387 50 54            [24]  710 	jnc	00109$
                                    711 ;	./src/angry_bird.c:79: for (int i = 0; i < shoot_row_size; i++)
      000389 7D 00            [12]  712 	mov	r5,#0x00
      00038B                        713 00124$:
      00038B BD 02 00         [24]  714 	cjne	r5,#0x02,00312$
      00038E                        715 00312$:
      00038E 50 46            [24]  716 	jnc	00128$
                                    717 ;	./src/angry_bird.c:81: OLED_SetCursor(row_offset + i, col_offset + j);
      000390 AC 25            [24]  718 	mov	r4,_row_offset
      000392 8D 03            [24]  719 	mov	ar3,r5
      000394 EB               [12]  720 	mov	a,r3
      000395 2C               [12]  721 	add	a,r4
      000396 F5 82            [12]  722 	mov	dpl,a
      000398 AC 27            [24]  723 	mov	r4,_col_offset
      00039A 8E 02            [24]  724 	mov	ar2,r6
      00039C EA               [12]  725 	mov	a,r2
      00039D 2C               [12]  726 	add	a,r4
      00039E F5 0B            [12]  727 	mov	_OLED_SetCursor_PARM_2,a
      0003A0 C0 07            [24]  728 	push	ar7
      0003A2 C0 06            [24]  729 	push	ar6
      0003A4 C0 05            [24]  730 	push	ar5
      0003A6 C0 03            [24]  731 	push	ar3
      0003A8 C0 02            [24]  732 	push	ar2
      0003AA 12 0E 62         [24]  733 	lcall	_OLED_SetCursor
      0003AD D0 02            [24]  734 	pop	ar2
      0003AF D0 03            [24]  735 	pop	ar3
                                    736 ;	./src/angry_bird.c:82: oledSendData(shooter_logo[shoot_cul_size * i + j]);
      0003B1 EB               [12]  737 	mov	a,r3
      0003B2 C4               [12]  738 	swap	a
      0003B3 03               [12]  739 	rr	a
      0003B4 54 F8            [12]  740 	anl	a,#0xf8
      0003B6 2A               [12]  741 	add	a,r2
      0003B7 FA               [12]  742 	mov	r2,a
      0003B8 33               [12]  743 	rlc	a
      0003B9 95 E0            [12]  744 	subb	a,acc
      0003BB FC               [12]  745 	mov	r4,a
      0003BC EA               [12]  746 	mov	a,r2
      0003BD 24 7D            [12]  747 	add	a,#_shooter_logo
      0003BF F5 82            [12]  748 	mov	dpl,a
      0003C1 EC               [12]  749 	mov	a,r4
      0003C2 34 13            [12]  750 	addc	a,#(_shooter_logo >> 8)
      0003C4 F5 83            [12]  751 	mov	dph,a
      0003C6 E4               [12]  752 	clr	a
      0003C7 93               [24]  753 	movc	a,@a+dptr
      0003C8 F5 82            [12]  754 	mov	dpl,a
      0003CA 12 0E 9E         [24]  755 	lcall	_oledSendData
      0003CD D0 05            [24]  756 	pop	ar5
      0003CF D0 06            [24]  757 	pop	ar6
      0003D1 D0 07            [24]  758 	pop	ar7
                                    759 ;	./src/angry_bird.c:79: for (int i = 0; i < shoot_row_size; i++)
      0003D3 0D               [12]  760 	inc	r5
      0003D4 80 B5            [24]  761 	sjmp	00124$
      0003D6                        762 00128$:
                                    763 ;	./src/angry_bird.c:77: for (int j = 0; j < shoot_cul_size; j++)
      0003D6 0E               [12]  764 	inc	r6
      0003D7 BE 00 A4         [24]  765 	cjne	r6,#0x00,00127$
      0003DA 0F               [12]  766 	inc	r7
      0003DB 80 A1            [24]  767 	sjmp	00127$
      0003DD                        768 00109$:
                                    769 ;	./src/angry_bird.c:87: row_offset = bird_init_row_cursor;
      0003DD 75 25 07         [24]  770 	mov	_row_offset,#0x07
      0003E0 75 26 00         [24]  771 	mov	(_row_offset + 1),#0x00
                                    772 ;	./src/angry_bird.c:88: col_offset = bird_init_col_cursor;
      0003E3 75 27 08         [24]  773 	mov	_col_offset,#0x08
      0003E6 75 28 00         [24]  774 	mov	(_col_offset + 1),#0x00
                                    775 ;	./src/angry_bird.c:89: for (int j = 0; j < bird_cul_size; j++)
      0003E9 7E 00            [12]  776 	mov	r6,#0x00
      0003EB 7F 00            [12]  777 	mov	r7,#0x00
      0003ED                        778 00133$:
      0003ED C3               [12]  779 	clr	c
      0003EE EE               [12]  780 	mov	a,r6
      0003EF 94 08            [12]  781 	subb	a,#0x08
      0003F1 EF               [12]  782 	mov	a,r7
      0003F2 64 80            [12]  783 	xrl	a,#0x80
      0003F4 94 80            [12]  784 	subb	a,#0x80
      0003F6 50 45            [24]  785 	jnc	00111$
                                    786 ;	./src/angry_bird.c:91: for (int i = 0; i < bird_row_size; i++)
      0003F8 7D 00            [12]  787 	mov	r5,#0x00
      0003FA                        788 00130$:
      0003FA BD 01 00         [24]  789 	cjne	r5,#0x01,00316$
      0003FD                        790 00316$:
      0003FD 50 37            [24]  791 	jnc	00134$
                                    792 ;	./src/angry_bird.c:93: OLED_SetCursor(row_offset + i, col_offset + j);
      0003FF AC 25            [24]  793 	mov	r4,_row_offset
      000401 E4               [12]  794 	clr	a
      000402 2C               [12]  795 	add	a,r4
      000403 F5 82            [12]  796 	mov	dpl,a
      000405 AC 27            [24]  797 	mov	r4,_col_offset
      000407 8E 03            [24]  798 	mov	ar3,r6
      000409 EB               [12]  799 	mov	a,r3
      00040A 2C               [12]  800 	add	a,r4
      00040B F5 0B            [12]  801 	mov	_OLED_SetCursor_PARM_2,a
      00040D C0 07            [24]  802 	push	ar7
      00040F C0 06            [24]  803 	push	ar6
      000411 C0 03            [24]  804 	push	ar3
      000413 12 0E 62         [24]  805 	lcall	_OLED_SetCursor
      000416 D0 03            [24]  806 	pop	ar3
                                    807 ;	./src/angry_bird.c:94: oledSendData(bird_logo[bird_cul_size * i + j]);
      000418 EB               [12]  808 	mov	a,r3
      000419 33               [12]  809 	rlc	a
      00041A 95 E0            [12]  810 	subb	a,acc
      00041C FC               [12]  811 	mov	r4,a
      00041D EB               [12]  812 	mov	a,r3
      00041E 24 A5            [12]  813 	add	a,#_bird_logo
      000420 F5 82            [12]  814 	mov	dpl,a
      000422 EC               [12]  815 	mov	a,r4
      000423 34 13            [12]  816 	addc	a,#(_bird_logo >> 8)
      000425 F5 83            [12]  817 	mov	dph,a
      000427 E4               [12]  818 	clr	a
      000428 93               [24]  819 	movc	a,@a+dptr
      000429 F5 82            [12]  820 	mov	dpl,a
      00042B 12 0E 9E         [24]  821 	lcall	_oledSendData
      00042E D0 06            [24]  822 	pop	ar6
      000430 D0 07            [24]  823 	pop	ar7
                                    824 ;	./src/angry_bird.c:91: for (int i = 0; i < bird_row_size; i++)
      000432 7D 01            [12]  825 	mov	r5,#0x01
      000434 80 C4            [24]  826 	sjmp	00130$
      000436                        827 00134$:
                                    828 ;	./src/angry_bird.c:89: for (int j = 0; j < bird_cul_size; j++)
      000436 0E               [12]  829 	inc	r6
      000437 BE 00 B3         [24]  830 	cjne	r6,#0x00,00133$
      00043A 0F               [12]  831 	inc	r7
      00043B 80 B0            [24]  832 	sjmp	00133$
      00043D                        833 00111$:
                                    834 ;	./src/angry_bird.c:116: row_offset = pig1_row_cursor;
      00043D 75 25 03         [24]  835 	mov	_row_offset,#0x03
      000440 75 26 00         [24]  836 	mov	(_row_offset + 1),#0x00
                                    837 ;	./src/angry_bird.c:117: col_offset = pig1_col_cursor;
      000443 75 27 50         [24]  838 	mov	_col_offset,#0x50
      000446 75 28 00         [24]  839 	mov	(_col_offset + 1),#0x00
                                    840 ;	./src/angry_bird.c:118: for (int j = 0; j < pig_cul_size; j++)
      000449 7E 00            [12]  841 	mov	r6,#0x00
      00044B 7F 00            [12]  842 	mov	r7,#0x00
      00044D                        843 00139$:
      00044D C3               [12]  844 	clr	c
      00044E EE               [12]  845 	mov	a,r6
      00044F 94 0C            [12]  846 	subb	a,#0x0c
      000451 EF               [12]  847 	mov	a,r7
      000452 64 80            [12]  848 	xrl	a,#0x80
      000454 94 80            [12]  849 	subb	a,#0x80
      000456 50 54            [24]  850 	jnc	00141$
                                    851 ;	./src/angry_bird.c:120: for (int i = 0; i < pig_row_size; i++)
      000458 7D 00            [12]  852 	mov	r5,#0x00
      00045A                        853 00136$:
      00045A BD 02 00         [24]  854 	cjne	r5,#0x02,00320$
      00045D                        855 00320$:
      00045D 50 46            [24]  856 	jnc	00140$
                                    857 ;	./src/angry_bird.c:122: OLED_SetCursor(row_offset + i, col_offset + j);
      00045F AC 25            [24]  858 	mov	r4,_row_offset
      000461 8D 03            [24]  859 	mov	ar3,r5
      000463 EB               [12]  860 	mov	a,r3
      000464 2C               [12]  861 	add	a,r4
      000465 F5 82            [12]  862 	mov	dpl,a
      000467 AC 27            [24]  863 	mov	r4,_col_offset
      000469 8E 02            [24]  864 	mov	ar2,r6
      00046B EA               [12]  865 	mov	a,r2
      00046C 2C               [12]  866 	add	a,r4
      00046D F5 0B            [12]  867 	mov	_OLED_SetCursor_PARM_2,a
      00046F C0 07            [24]  868 	push	ar7
      000471 C0 06            [24]  869 	push	ar6
      000473 C0 05            [24]  870 	push	ar5
      000475 C0 03            [24]  871 	push	ar3
      000477 C0 02            [24]  872 	push	ar2
      000479 12 0E 62         [24]  873 	lcall	_OLED_SetCursor
      00047C D0 02            [24]  874 	pop	ar2
      00047E D0 03            [24]  875 	pop	ar3
                                    876 ;	./src/angry_bird.c:123: oledSendData(pig_logo[pig_cul_size * i + j]);
      000480 EB               [12]  877 	mov	a,r3
      000481 75 F0 0C         [24]  878 	mov	b,#0x0c
      000484 A4               [48]  879 	mul	ab
      000485 2A               [12]  880 	add	a,r2
      000486 FA               [12]  881 	mov	r2,a
      000487 33               [12]  882 	rlc	a
      000488 95 E0            [12]  883 	subb	a,acc
      00048A FC               [12]  884 	mov	r4,a
      00048B EA               [12]  885 	mov	a,r2
      00048C 24 8D            [12]  886 	add	a,#_pig_logo
      00048E F5 82            [12]  887 	mov	dpl,a
      000490 EC               [12]  888 	mov	a,r4
      000491 34 13            [12]  889 	addc	a,#(_pig_logo >> 8)
      000493 F5 83            [12]  890 	mov	dph,a
      000495 E4               [12]  891 	clr	a
      000496 93               [24]  892 	movc	a,@a+dptr
      000497 F5 82            [12]  893 	mov	dpl,a
      000499 12 0E 9E         [24]  894 	lcall	_oledSendData
      00049C D0 05            [24]  895 	pop	ar5
      00049E D0 06            [24]  896 	pop	ar6
      0004A0 D0 07            [24]  897 	pop	ar7
                                    898 ;	./src/angry_bird.c:120: for (int i = 0; i < pig_row_size; i++)
      0004A2 0D               [12]  899 	inc	r5
      0004A3 80 B5            [24]  900 	sjmp	00136$
      0004A5                        901 00140$:
                                    902 ;	./src/angry_bird.c:118: for (int j = 0; j < pig_cul_size; j++)
      0004A5 0E               [12]  903 	inc	r6
      0004A6 BE 00 A4         [24]  904 	cjne	r6,#0x00,00139$
      0004A9 0F               [12]  905 	inc	r7
      0004AA 80 A1            [24]  906 	sjmp	00139$
      0004AC                        907 00141$:
                                    908 ;	./src/angry_bird.c:126: }
      0004AC 22               [24]  909 	ret
                                    910 ;------------------------------------------------------------
                                    911 ;Allocation info for local variables in function 'display_for_OLED_debug'
                                    912 ;------------------------------------------------------------
                                    913 ;	./src/angry_bird.c:129: void display_for_OLED_debug()
                                    914 ;	-----------------------------------------
                                    915 ;	 function display_for_OLED_debug
                                    916 ;	-----------------------------------------
      0004AD                        917 _display_for_OLED_debug:
                                    918 ;	./src/angry_bird.c:131: if (led_cur_state)
      0004AD E5 3C            [12]  919 	mov	a,_led_cur_state
      0004AF 45 3D            [12]  920 	orl	a,(_led_cur_state + 1)
      0004B1 60 12            [24]  921 	jz	00102$
                                    922 ;	./src/angry_bird.c:133: OLED_SetCursor(3, 40);
      0004B3 75 0B 28         [24]  923 	mov	_OLED_SetCursor_PARM_2,#0x28
      0004B6 75 82 03         [24]  924 	mov	dpl,#0x03
      0004B9 12 0E 62         [24]  925 	lcall	_OLED_SetCursor
                                    926 ;	./src/angry_bird.c:134: OLED_DisplayString("             ");
      0004BC 90 13 B3         [24]  927 	mov	dptr,#___str_2
      0004BF 75 F0 80         [24]  928 	mov	b,#0x80
      0004C2 02 0E 0C         [24]  929 	ljmp	_OLED_DisplayString
      0004C5                        930 00102$:
                                    931 ;	./src/angry_bird.c:138: OLED_SetCursor(3, 40);
      0004C5 75 0B 28         [24]  932 	mov	_OLED_SetCursor_PARM_2,#0x28
      0004C8 75 82 03         [24]  933 	mov	dpl,#0x03
      0004CB 12 0E 62         [24]  934 	lcall	_OLED_SetCursor
                                    935 ;	./src/angry_bird.c:139: OLED_DisplayString("Waiting .... ");
      0004CE 90 13 C1         [24]  936 	mov	dptr,#___str_3
      0004D1 75 F0 80         [24]  937 	mov	b,#0x80
                                    938 ;	./src/angry_bird.c:141: }
      0004D4 02 0E 0C         [24]  939 	ljmp	_OLED_DisplayString
                                    940 ;------------------------------------------------------------
                                    941 ;Allocation info for local variables in function 'angrybird_state_machine'
                                    942 ;------------------------------------------------------------
                                    943 ;	./src/angry_bird.c:147: void angrybird_state_machine(void)
                                    944 ;	-----------------------------------------
                                    945 ;	 function angrybird_state_machine
                                    946 ;	-----------------------------------------
      0004D7                        947 _angrybird_state_machine:
                                    948 ;	./src/angry_bird.c:149: switch (cur_state)
      0004D7 74 03            [12]  949 	mov	a,#0x03
      0004D9 B5 3E 06         [24]  950 	cjne	a,_cur_state,00155$
      0004DC E4               [12]  951 	clr	a
      0004DD B5 3F 02         [24]  952 	cjne	a,(_cur_state + 1),00155$
      0004E0 80 0D            [24]  953 	sjmp	00102$
      0004E2                        954 00155$:
      0004E2 74 04            [12]  955 	mov	a,#0x04
      0004E4 B5 3E 06         [24]  956 	cjne	a,_cur_state,00156$
      0004E7 E4               [12]  957 	clr	a
      0004E8 B5 3F 02         [24]  958 	cjne	a,(_cur_state + 1),00156$
      0004EB 80 02            [24]  959 	sjmp	00157$
      0004ED                        960 00156$:
      0004ED 80 07            [24]  961 	sjmp	00103$
      0004EF                        962 00157$:
                                    963 ;	./src/angry_bird.c:152: case STATE_PLAY_HARD:
      0004EF                        964 00102$:
                                    965 ;	./src/angry_bird.c:153: P1_0 = 0;
                                    966 ;	assignBit
      0004EF C2 90            [12]  967 	clr	_P1_0
                                    968 ;	./src/angry_bird.c:154: angrybird_game_state();
      0004F1 12 05 63         [24]  969 	lcall	_angrybird_game_state
                                    970 ;	./src/angry_bird.c:155: break;
                                    971 ;	./src/angry_bird.c:157: default:
      0004F4 80 2D            [24]  972 	sjmp	00109$
      0004F6                        973 00103$:
                                    974 ;	./src/angry_bird.c:158: if (led_cur_state == 0)
      0004F6 E5 3C            [12]  975 	mov	a,_led_cur_state
      0004F8 45 3D            [12]  976 	orl	a,(_led_cur_state + 1)
                                    977 ;	./src/angry_bird.c:159: led_cur_state = 1;
      0004FA 70 07            [24]  978 	jnz	00107$
      0004FC 75 3C 01         [24]  979 	mov	_led_cur_state,#0x01
      0004FF F5 3D            [12]  980 	mov	(_led_cur_state + 1),a
      000501 80 12            [24]  981 	sjmp	00108$
      000503                        982 00107$:
                                    983 ;	./src/angry_bird.c:160: else if (led_cur_state == 1)
      000503 74 01            [12]  984 	mov	a,#0x01
      000505 B5 3C 06         [24]  985 	cjne	a,_led_cur_state,00159$
      000508 14               [12]  986 	dec	a
      000509 B5 3D 02         [24]  987 	cjne	a,(_led_cur_state + 1),00159$
      00050C 80 02            [24]  988 	sjmp	00160$
      00050E                        989 00159$:
      00050E 80 05            [24]  990 	sjmp	00108$
      000510                        991 00160$:
                                    992 ;	./src/angry_bird.c:161: led_cur_state = 0;
      000510 E4               [12]  993 	clr	a
      000511 F5 3C            [12]  994 	mov	_led_cur_state,a
      000513 F5 3D            [12]  995 	mov	(_led_cur_state + 1),a
      000515                        996 00108$:
                                    997 ;	./src/angry_bird.c:162: P1_0 = led_cur_state;
                                    998 ;	assignBit
      000515 E5 3C            [12]  999 	mov	a,_led_cur_state
      000517 45 3D            [12] 1000 	orl	a,(_led_cur_state + 1)
      000519 24 FF            [12] 1001 	add	a,#0xff
      00051B 92 90            [24] 1002 	mov	_P1_0,c
                                   1003 ;	./src/angry_bird.c:164: delay_ms(500);
      00051D 90 01 F4         [24] 1004 	mov	dptr,#0x01f4
      000520 12 01 BE         [24] 1005 	lcall	_delay_ms
                                   1006 ;	./src/angry_bird.c:166: }
      000523                       1007 00109$:
                                   1008 ;	./src/angry_bird.c:169: if (received_flag == 1)
      000523 74 01            [12] 1009 	mov	a,#0x01
      000525 B5 24 2C         [24] 1010 	cjne	a,_received_flag,00114$
                                   1011 ;	./src/angry_bird.c:171: cur_state = received_data;
      000528 85 23 3E         [24] 1012 	mov	_cur_state,_received_data
      00052B 75 3F 00         [24] 1013 	mov	(_cur_state + 1),#0x00
                                   1014 ;	./src/angry_bird.c:172: received_flag = 0;
      00052E 75 24 00         [24] 1015 	mov	_received_flag,#0x00
                                   1016 ;	./src/angry_bird.c:173: P1_0 = 0;
                                   1017 ;	assignBit
      000531 C2 90            [12] 1018 	clr	_P1_0
                                   1019 ;	./src/angry_bird.c:175: I2C_Start();
      000533 12 00 CA         [24] 1020 	lcall	_I2C_Start
                                   1021 ;	./src/angry_bird.c:176: OLED_Init();
      000536 12 0D 4C         [24] 1022 	lcall	_OLED_Init
                                   1023 ;	./src/angry_bird.c:179: if (cur_state == STATE_PLAY_EASY || cur_state == STATE_PLAY_HARD)
      000539 74 03            [12] 1024 	mov	a,#0x03
      00053B B5 3E 06         [24] 1025 	cjne	a,_cur_state,00163$
      00053E E4               [12] 1026 	clr	a
      00053F B5 3F 02         [24] 1027 	cjne	a,(_cur_state + 1),00163$
      000542 80 0D            [24] 1028 	sjmp	00110$
      000544                       1029 00163$:
      000544 74 04            [12] 1030 	mov	a,#0x04
      000546 B5 3E 06         [24] 1031 	cjne	a,_cur_state,00164$
      000549 E4               [12] 1032 	clr	a
      00054A B5 3F 02         [24] 1033 	cjne	a,(_cur_state + 1),00164$
      00054D 80 02            [24] 1034 	sjmp	00165$
      00054F                       1035 00164$:
      00054F 80 03            [24] 1036 	sjmp	00114$
      000551                       1037 00165$:
      000551                       1038 00110$:
                                   1039 ;	./src/angry_bird.c:180: angrybird_display_game();
      000551 12 01 D5         [24] 1040 	lcall	_angrybird_display_game
      000554                       1041 00114$:
                                   1042 ;	./src/angry_bird.c:184: if (send_flag == 1)
      000554 74 01            [12] 1043 	mov	a,#0x01
      000556 B5 22 09         [24] 1044 	cjne	a,_send_flag,00117$
                                   1045 ;	./src/angry_bird.c:186: I2C_Stop();
      000559 12 00 D9         [24] 1046 	lcall	_I2C_Stop
                                   1047 ;	./src/angry_bird.c:187: SBUF = send_data; // send data to SBUF
      00055C 85 21 99         [24] 1048 	mov	_SBUF,_send_data
                                   1049 ;	./src/angry_bird.c:188: send_flag = 0;
      00055F 75 22 00         [24] 1050 	mov	_send_flag,#0x00
      000562                       1051 00117$:
                                   1052 ;	./src/angry_bird.c:194: }
      000562 22               [24] 1053 	ret
                                   1054 ;------------------------------------------------------------
                                   1055 ;Allocation info for local variables in function 'angrybird_game_state'
                                   1056 ;------------------------------------------------------------
                                   1057 ;which                     Allocated to registers r7 
                                   1058 ;control_angle_            Allocated with name '_angrybird_game_state_control_angle__196609_65'
                                   1059 ;i                         Allocated to registers r4 r5 
                                   1060 ;angle_                    Allocated with name '_angrybird_game_state_angle__196610_66'
                                   1061 ;which                     Allocated to registers r7 
                                   1062 ;control_strength_         Allocated with name '_angrybird_game_state_control_strength__196609_71'
                                   1063 ;j                         Allocated to registers r6 r7 
                                   1064 ;i                         Allocated to registers r5 
                                   1065 ;delta_y                   Allocated with name '_angrybird_game_state_delta_y_196609_78'
                                   1066 ;delta_x                   Allocated with name '_angrybird_game_state_delta_x_196609_78'
                                   1067 ;peak_x                    Allocated with name '_angrybird_game_state_peak_x_196609_78'
                                   1068 ;peak_y                    Allocated with name '_angrybird_game_state_peak_y_196609_78'
                                   1069 ;a                         Allocated with name '_angrybird_game_state_a_196609_78'
                                   1070 ;j                         Allocated to registers r2 r3 
                                   1071 ;i                         Allocated to registers r7 
                                   1072 ;i                         Allocated with name '_angrybird_game_state_i_262145_83'
                                   1073 ;output_row                Allocated with name '_angrybird_game_state_output_row_327681_84'
                                   1074 ;j                         Allocated to registers r2 r3 
                                   1075 ;i                         Allocated to registers r5 
                                   1076 ;j                         Allocated to registers r6 r7 
                                   1077 ;i                         Allocated to registers r5 
                                   1078 ;j                         Allocated to registers r6 r7 
                                   1079 ;i                         Allocated to registers r5 
                                   1080 ;j                         Allocated to registers r6 r7 
                                   1081 ;i                         Allocated to registers r5 
                                   1082 ;sloc1                     Allocated with name '_angrybird_game_state_sloc1_1_0'
                                   1083 ;------------------------------------------------------------
                                   1084 ;	./src/angry_bird.c:204: void angrybird_game_state(void)
                                   1085 ;	-----------------------------------------
                                   1086 ;	 function angrybird_game_state
                                   1087 ;	-----------------------------------------
      000563                       1088 _angrybird_game_state:
                                   1089 ;	./src/angry_bird.c:207: if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
      000563 20 A0 0B         [24] 1090 	jb	_P2_0,00119$
      000566 74 01            [12] 1091 	mov	a,#0x01
      000568 B5 40 06         [24] 1092 	cjne	a,_prebut_up,00600$
      00056B 14               [12] 1093 	dec	a
      00056C B5 41 02         [24] 1094 	cjne	a,(_prebut_up + 1),00600$
      00056F 80 14            [24] 1095 	sjmp	00115$
      000571                       1096 00600$:
      000571                       1097 00119$:
      000571 30 A1 03         [24] 1098 	jnb	_P2_1,00601$
      000574 02 06 8A         [24] 1099 	ljmp	00116$
      000577                       1100 00601$:
      000577 74 01            [12] 1101 	mov	a,#0x01
      000579 B5 42 06         [24] 1102 	cjne	a,_prebut_down,00602$
      00057C 14               [12] 1103 	dec	a
      00057D B5 43 02         [24] 1104 	cjne	a,(_prebut_down + 1),00602$
      000580 80 03            [24] 1105 	sjmp	00603$
      000582                       1106 00602$:
      000582 02 06 8A         [24] 1107 	ljmp	00116$
      000585                       1108 00603$:
      000585                       1109 00115$:
                                   1110 ;	./src/angry_bird.c:210: int which = (but_up == 0) ? 1 : 0;
      000585 20 A0 04         [24] 1111 	jb	_P2_0,00208$
      000588 7F 01            [12] 1112 	mov	r7,#0x01
      00058A 80 02            [24] 1113 	sjmp	00209$
      00058C                       1114 00208$:
      00058C 7F 00            [12] 1115 	mov	r7,#0x00
      00058E                       1116 00209$:
                                   1117 ;	./src/angry_bird.c:211: if (but_up == 0 || but_down == 0)
      00058E 30 A0 06         [24] 1118 	jnb	_P2_0,00112$
      000591 30 A1 03         [24] 1119 	jnb	_P2_1,00606$
      000594 02 06 8A         [24] 1120 	ljmp	00116$
      000597                       1121 00606$:
      000597                       1122 00112$:
                                   1123 ;	./src/angry_bird.c:213: if (which == 1)
      000597 BF 01 24         [24] 1124 	cjne	r7,#0x01,00106$
                                   1125 ;	./src/angry_bird.c:215: control_angle += 10;
      00059A 74 0A            [12] 1126 	mov	a,#0x0a
      00059C 25 2D            [12] 1127 	add	a,_control_angle
      00059E F5 2D            [12] 1128 	mov	_control_angle,a
      0005A0 E4               [12] 1129 	clr	a
      0005A1 35 2E            [12] 1130 	addc	a,(_control_angle + 1)
      0005A3 F5 2E            [12] 1131 	mov	(_control_angle + 1),a
                                   1132 ;	./src/angry_bird.c:216: if (control_angle > 90)
      0005A5 C3               [12] 1133 	clr	c
      0005A6 74 5A            [12] 1134 	mov	a,#0x5a
      0005A8 95 2D            [12] 1135 	subb	a,_control_angle
      0005AA 74 80            [12] 1136 	mov	a,#(0x00 ^ 0x80)
      0005AC 85 2E F0         [24] 1137 	mov	b,(_control_angle + 1)
      0005AF 63 F0 80         [24] 1138 	xrl	b,#0x80
      0005B2 95 F0            [12] 1139 	subb	a,b
      0005B4 50 1C            [24] 1140 	jnc	00107$
                                   1141 ;	./src/angry_bird.c:217: control_angle = 90;
      0005B6 75 2D 5A         [24] 1142 	mov	_control_angle,#0x5a
      0005B9 75 2E 00         [24] 1143 	mov	(_control_angle + 1),#0x00
      0005BC 80 14            [24] 1144 	sjmp	00107$
      0005BE                       1145 00106$:
                                   1146 ;	./src/angry_bird.c:221: control_angle -= 10;
      0005BE E5 2D            [12] 1147 	mov	a,_control_angle
      0005C0 24 F6            [12] 1148 	add	a,#0xf6
      0005C2 F5 2D            [12] 1149 	mov	_control_angle,a
      0005C4 E5 2E            [12] 1150 	mov	a,(_control_angle + 1)
      0005C6 34 FF            [12] 1151 	addc	a,#0xff
                                   1152 ;	./src/angry_bird.c:222: if (control_angle < 0)
      0005C8 F5 2E            [12] 1153 	mov	(_control_angle + 1),a
      0005CA 30 E7 05         [24] 1154 	jnb	acc.7,00107$
                                   1155 ;	./src/angry_bird.c:223: control_angle = 0;
      0005CD E4               [12] 1156 	clr	a
      0005CE F5 2D            [12] 1157 	mov	_control_angle,a
      0005D0 F5 2E            [12] 1158 	mov	(_control_angle + 1),a
      0005D2                       1159 00107$:
                                   1160 ;	./src/angry_bird.c:228: int i = 0;
                                   1161 ;	./src/angry_bird.c:229: if (control_angle < 0)
      0005D2 E4               [12] 1162 	clr	a
      0005D3 FE               [12] 1163 	mov	r6,a
      0005D4 FF               [12] 1164 	mov	r7,a
      0005D5 E5 2E            [12] 1165 	mov	a,(_control_angle + 1)
      0005D7 30 E7 07         [24] 1166 	jnb	acc.7,00109$
                                   1167 ;	./src/angry_bird.c:230: control_angle_[i++] = '-';
      0005DA 7E 01            [12] 1168 	mov	r6,#0x01
      0005DC 7F 00            [12] 1169 	mov	r7,#0x00
      0005DE 75 4A 2D         [24] 1170 	mov	_angrybird_game_state_control_angle__196609_65,#0x2d
      0005E1                       1171 00109$:
                                   1172 ;	./src/angry_bird.c:231: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      0005E1 E5 2E            [12] 1173 	mov	a,(_control_angle + 1)
      0005E3 33               [12] 1174 	rlc	a
      0005E4 92 01            [24] 1175 	mov	_angrybird_game_state_sloc0_1_0,c
      0005E6 40 06            [24] 1176 	jc	00210$
      0005E8 AC 2D            [24] 1177 	mov	r4,_control_angle
      0005EA AD 2E            [24] 1178 	mov	r5,(_control_angle + 1)
      0005EC 80 09            [24] 1179 	sjmp	00211$
      0005EE                       1180 00210$:
      0005EE C3               [12] 1181 	clr	c
      0005EF E4               [12] 1182 	clr	a
      0005F0 95 2D            [12] 1183 	subb	a,_control_angle
      0005F2 FC               [12] 1184 	mov	r4,a
      0005F3 E4               [12] 1185 	clr	a
      0005F4 95 2E            [12] 1186 	subb	a,(_control_angle + 1)
      0005F6 FD               [12] 1187 	mov	r5,a
      0005F7                       1188 00211$:
      0005F7 8C 4F            [24] 1189 	mov	_angrybird_game_state_angle__196610_66,r4
      0005F9 8D 50            [24] 1190 	mov	(_angrybird_game_state_angle__196610_66 + 1),r5
                                   1191 ;	./src/angry_bird.c:232: if (angle_ % 100 / 10 != 0)
      0005FB 75 0C 64         [24] 1192 	mov	__modsint_PARM_2,#0x64
      0005FE 75 0D 00         [24] 1193 	mov	(__modsint_PARM_2 + 1),#0x00
      000601 85 4F 82         [24] 1194 	mov	dpl,_angrybird_game_state_angle__196610_66
      000604 85 50 83         [24] 1195 	mov	dph,(_angrybird_game_state_angle__196610_66 + 1)
      000607 C0 07            [24] 1196 	push	ar7
      000609 C0 06            [24] 1197 	push	ar6
      00060B 12 12 2E         [24] 1198 	lcall	__modsint
      00060E 75 0C 0A         [24] 1199 	mov	__divsint_PARM_2,#0x0a
      000611 75 0D 00         [24] 1200 	mov	(__divsint_PARM_2 + 1),#0x00
      000614 12 12 91         [24] 1201 	lcall	__divsint
      000617 AA 82            [24] 1202 	mov	r2,dpl
      000619 AB 83            [24] 1203 	mov	r3,dph
      00061B D0 06            [24] 1204 	pop	ar6
      00061D D0 07            [24] 1205 	pop	ar7
      00061F EA               [12] 1206 	mov	a,r2
      000620 4B               [12] 1207 	orl	a,r3
      000621 60 11            [24] 1208 	jz	00111$
                                   1209 ;	./src/angry_bird.c:233: control_angle_[i++] = '0' + angle_ % 100 / 10;
      000623 8E 04            [24] 1210 	mov	ar4,r6
      000625 8F 05            [24] 1211 	mov	ar5,r7
      000627 0E               [12] 1212 	inc	r6
      000628 BE 00 01         [24] 1213 	cjne	r6,#0x00,00614$
      00062B 0F               [12] 1214 	inc	r7
      00062C                       1215 00614$:
      00062C EC               [12] 1216 	mov	a,r4
      00062D 24 4A            [12] 1217 	add	a,#_angrybird_game_state_control_angle__196609_65
      00062F F9               [12] 1218 	mov	r1,a
      000630 74 30            [12] 1219 	mov	a,#0x30
      000632 2A               [12] 1220 	add	a,r2
      000633 F7               [12] 1221 	mov	@r1,a
      000634                       1222 00111$:
                                   1223 ;	./src/angry_bird.c:234: control_angle_[i++] = '0' + angle_ % 10;
      000634 74 01            [12] 1224 	mov	a,#0x01
      000636 2E               [12] 1225 	add	a,r6
      000637 FC               [12] 1226 	mov	r4,a
      000638 E4               [12] 1227 	clr	a
      000639 3F               [12] 1228 	addc	a,r7
      00063A FD               [12] 1229 	mov	r5,a
      00063B EE               [12] 1230 	mov	a,r6
      00063C 24 4A            [12] 1231 	add	a,#_angrybird_game_state_control_angle__196609_65
      00063E F9               [12] 1232 	mov	r1,a
      00063F 75 0C 0A         [24] 1233 	mov	__modsint_PARM_2,#0x0a
      000642 75 0D 00         [24] 1234 	mov	(__modsint_PARM_2 + 1),#0x00
      000645 85 4F 82         [24] 1235 	mov	dpl,_angrybird_game_state_angle__196610_66
      000648 85 50 83         [24] 1236 	mov	dph,(_angrybird_game_state_angle__196610_66 + 1)
      00064B C0 05            [24] 1237 	push	ar5
      00064D C0 04            [24] 1238 	push	ar4
      00064F C0 01            [24] 1239 	push	ar1
      000651 12 12 2E         [24] 1240 	lcall	__modsint
      000654 AE 82            [24] 1241 	mov	r6,dpl
      000656 D0 01            [24] 1242 	pop	ar1
      000658 D0 04            [24] 1243 	pop	ar4
      00065A D0 05            [24] 1244 	pop	ar5
      00065C 74 30            [12] 1245 	mov	a,#0x30
      00065E 2E               [12] 1246 	add	a,r6
      00065F F7               [12] 1247 	mov	@r1,a
                                   1248 ;	./src/angry_bird.c:235: control_angle_[i++] = '\0';
      000660 EC               [12] 1249 	mov	a,r4
      000661 24 4A            [12] 1250 	add	a,#_angrybird_game_state_control_angle__196609_65
      000663 F8               [12] 1251 	mov	r0,a
      000664 76 00            [12] 1252 	mov	@r0,#0x00
                                   1253 ;	./src/angry_bird.c:237: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      000666 75 0B 1E         [24] 1254 	mov	_OLED_SetCursor_PARM_2,#0x1e
      000669 75 82 00         [24] 1255 	mov	dpl,#0x00
      00066C 12 0E 62         [24] 1256 	lcall	_OLED_SetCursor
                                   1257 ;	./src/angry_bird.c:238: OLED_DisplayString("   ");
      00066F 90 13 CF         [24] 1258 	mov	dptr,#___str_4
      000672 75 F0 80         [24] 1259 	mov	b,#0x80
      000675 12 0E 0C         [24] 1260 	lcall	_OLED_DisplayString
                                   1261 ;	./src/angry_bird.c:239: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      000678 75 0B 1E         [24] 1262 	mov	_OLED_SetCursor_PARM_2,#0x1e
      00067B 75 82 00         [24] 1263 	mov	dpl,#0x00
      00067E 12 0E 62         [24] 1264 	lcall	_OLED_SetCursor
                                   1265 ;	./src/angry_bird.c:240: OLED_DisplayString(control_angle_);
      000681 90 00 4A         [24] 1266 	mov	dptr,#_angrybird_game_state_control_angle__196609_65
      000684 75 F0 40         [24] 1267 	mov	b,#0x40
      000687 12 0E 0C         [24] 1268 	lcall	_OLED_DisplayString
      00068A                       1269 00116$:
                                   1270 ;	./src/angry_bird.c:245: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
      00068A 20 B2 0B         [24] 1271 	jb	_INT0,00134$
      00068D 74 01            [12] 1272 	mov	a,#0x01
      00068F B5 44 06         [24] 1273 	cjne	a,_prebut_left,00616$
      000692 14               [12] 1274 	dec	a
      000693 B5 45 02         [24] 1275 	cjne	a,(_prebut_left + 1),00616$
      000696 80 14            [24] 1276 	sjmp	00130$
      000698                       1277 00616$:
      000698                       1278 00134$:
      000698 30 B3 03         [24] 1279 	jnb	_INT1,00617$
      00069B 02 07 2A         [24] 1280 	ljmp	00131$
      00069E                       1281 00617$:
      00069E 74 01            [12] 1282 	mov	a,#0x01
      0006A0 B5 46 06         [24] 1283 	cjne	a,_prebut_right,00618$
      0006A3 14               [12] 1284 	dec	a
      0006A4 B5 47 02         [24] 1285 	cjne	a,(_prebut_right + 1),00618$
      0006A7 80 03            [24] 1286 	sjmp	00619$
      0006A9                       1287 00618$:
      0006A9 02 07 2A         [24] 1288 	ljmp	00131$
      0006AC                       1289 00619$:
      0006AC                       1290 00130$:
                                   1291 ;	./src/angry_bird.c:248: int which = (but_left == 0) ? 1 : 0;
      0006AC 20 B2 04         [24] 1292 	jb	_INT0,00212$
      0006AF 7F 01            [12] 1293 	mov	r7,#0x01
      0006B1 80 02            [24] 1294 	sjmp	00213$
      0006B3                       1295 00212$:
      0006B3 7F 00            [12] 1296 	mov	r7,#0x00
      0006B5                       1297 00213$:
                                   1298 ;	./src/angry_bird.c:249: if (but_left == 0 || but_right == 0)
      0006B5 30 B2 03         [24] 1299 	jnb	_INT0,00127$
      0006B8 20 B3 6F         [24] 1300 	jb	_INT1,00131$
      0006BB                       1301 00127$:
                                   1302 ;	./src/angry_bird.c:251: if (which == 1)
      0006BB BF 01 1E         [24] 1303 	cjne	r7,#0x01,00125$
                                   1304 ;	./src/angry_bird.c:253: control_strength--;
      0006BE 15 2F            [12] 1305 	dec	_control_strength
      0006C0 74 FF            [12] 1306 	mov	a,#0xff
      0006C2 B5 2F 02         [24] 1307 	cjne	a,_control_strength,00625$
      0006C5 15 30            [12] 1308 	dec	(_control_strength + 1)
      0006C7                       1309 00625$:
                                   1310 ;	./src/angry_bird.c:254: if (control_strength < 1)
      0006C7 C3               [12] 1311 	clr	c
      0006C8 E5 2F            [12] 1312 	mov	a,_control_strength
      0006CA 94 01            [12] 1313 	subb	a,#0x01
      0006CC E5 30            [12] 1314 	mov	a,(_control_strength + 1)
      0006CE 64 80            [12] 1315 	xrl	a,#0x80
      0006D0 94 80            [12] 1316 	subb	a,#0x80
      0006D2 50 28            [24] 1317 	jnc	00126$
                                   1318 ;	./src/angry_bird.c:255: control_strength = 1;
      0006D4 75 2F 01         [24] 1319 	mov	_control_strength,#0x01
      0006D7 75 30 00         [24] 1320 	mov	(_control_strength + 1),#0x00
      0006DA 80 20            [24] 1321 	sjmp	00126$
      0006DC                       1322 00125$:
                                   1323 ;	./src/angry_bird.c:259: control_strength--;
      0006DC 15 2F            [12] 1324 	dec	_control_strength
      0006DE 74 FF            [12] 1325 	mov	a,#0xff
      0006E0 B5 2F 02         [24] 1326 	cjne	a,_control_strength,00627$
      0006E3 15 30            [12] 1327 	dec	(_control_strength + 1)
      0006E5                       1328 00627$:
                                   1329 ;	./src/angry_bird.c:260: if (control_strength > 3)
      0006E5 C3               [12] 1330 	clr	c
      0006E6 74 03            [12] 1331 	mov	a,#0x03
      0006E8 95 2F            [12] 1332 	subb	a,_control_strength
      0006EA 74 80            [12] 1333 	mov	a,#(0x00 ^ 0x80)
      0006EC 85 30 F0         [24] 1334 	mov	b,(_control_strength + 1)
      0006EF 63 F0 80         [24] 1335 	xrl	b,#0x80
      0006F2 95 F0            [12] 1336 	subb	a,b
      0006F4 50 06            [24] 1337 	jnc	00126$
                                   1338 ;	./src/angry_bird.c:261: control_strength = 3;
      0006F6 75 2F 03         [24] 1339 	mov	_control_strength,#0x03
      0006F9 75 30 00         [24] 1340 	mov	(_control_strength + 1),#0x00
      0006FC                       1341 00126$:
                                   1342 ;	./src/angry_bird.c:266: control_strength_[0] = '0' + control_strength;
      0006FC AF 2F            [24] 1343 	mov	r7,_control_strength
      0006FE 74 30            [12] 1344 	mov	a,#0x30
      000700 2F               [12] 1345 	add	a,r7
      000701 F5 51            [12] 1346 	mov	_angrybird_game_state_control_strength__196609_71,a
                                   1347 ;	./src/angry_bird.c:267: control_strength_[1] = '\0';
      000703 75 52 00         [24] 1348 	mov	(_angrybird_game_state_control_strength__196609_71 + 0x0001),#0x00
                                   1349 ;	./src/angry_bird.c:269: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      000706 75 0B 0A         [24] 1350 	mov	_OLED_SetCursor_PARM_2,#0x0a
      000709 75 82 00         [24] 1351 	mov	dpl,#0x00
      00070C 12 0E 62         [24] 1352 	lcall	_OLED_SetCursor
                                   1353 ;	./src/angry_bird.c:270: OLED_DisplayString(" ");
      00070F 90 13 D3         [24] 1354 	mov	dptr,#___str_5
      000712 75 F0 80         [24] 1355 	mov	b,#0x80
      000715 12 0E 0C         [24] 1356 	lcall	_OLED_DisplayString
                                   1357 ;	./src/angry_bird.c:271: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      000718 75 0B 0A         [24] 1358 	mov	_OLED_SetCursor_PARM_2,#0x0a
      00071B 75 82 00         [24] 1359 	mov	dpl,#0x00
      00071E 12 0E 62         [24] 1360 	lcall	_OLED_SetCursor
                                   1361 ;	./src/angry_bird.c:272: OLED_DisplayString(control_strength_);
      000721 90 00 51         [24] 1362 	mov	dptr,#_angrybird_game_state_control_strength__196609_71
      000724 75 F0 40         [24] 1363 	mov	b,#0x40
      000727 12 0E 0C         [24] 1364 	lcall	_OLED_DisplayString
      00072A                       1365 00131$:
                                   1366 ;	./src/angry_bird.c:277: if ((but_enter == 0) && (prebut_enter == 1))
      00072A 30 A2 03         [24] 1367 	jnb	_P2_2,00629$
      00072D 02 0B CA         [24] 1368 	ljmp	00159$
      000730                       1369 00629$:
      000730 74 01            [12] 1370 	mov	a,#0x01
      000732 B5 48 06         [24] 1371 	cjne	a,_prebut_enter,00630$
      000735 14               [12] 1372 	dec	a
      000736 B5 49 02         [24] 1373 	cjne	a,(_prebut_enter + 1),00630$
      000739 80 03            [24] 1374 	sjmp	00631$
      00073B                       1375 00630$:
      00073B 02 0B CA         [24] 1376 	ljmp	00159$
      00073E                       1377 00631$:
                                   1378 ;	./src/angry_bird.c:279: delay_ms(10);
      00073E 90 00 0A         [24] 1379 	mov	dptr,#0x000a
      000741 12 01 BE         [24] 1380 	lcall	_delay_ms
                                   1381 ;	./src/angry_bird.c:280: if (but_enter == 0)
      000744 30 A2 03         [24] 1382 	jnb	_P2_2,00632$
      000747 02 0B CA         [24] 1383 	ljmp	00159$
      00074A                       1384 00632$:
                                   1385 ;	./src/angry_bird.c:282: bird_amt--;
      00074A 15 29            [12] 1386 	dec	_bird_amt
      00074C 74 FF            [12] 1387 	mov	a,#0xff
      00074E B5 29 02         [24] 1388 	cjne	a,_bird_amt,00633$
      000751 15 2A            [12] 1389 	dec	(_bird_amt + 1)
      000753                       1390 00633$:
                                   1391 ;	./src/angry_bird.c:284: row_offset = 0;
      000753 E4               [12] 1392 	clr	a
      000754 F5 25            [12] 1393 	mov	_row_offset,a
      000756 F5 26            [12] 1394 	mov	(_row_offset + 1),a
                                   1395 ;	./src/angry_bird.c:285: col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
      000758 74 08            [12] 1396 	mov	a,#0x08
      00075A C3               [12] 1397 	clr	c
      00075B 95 29            [12] 1398 	subb	a,_bird_amt
      00075D FE               [12] 1399 	mov	r6,a
      00075E E4               [12] 1400 	clr	a
      00075F 95 2A            [12] 1401 	subb	a,(_bird_amt + 1)
      000761 C4               [12] 1402 	swap	a
      000762 03               [12] 1403 	rr	a
      000763 54 F8            [12] 1404 	anl	a,#0xf8
      000765 CE               [12] 1405 	xch	a,r6
      000766 C4               [12] 1406 	swap	a
      000767 03               [12] 1407 	rr	a
      000768 CE               [12] 1408 	xch	a,r6
      000769 6E               [12] 1409 	xrl	a,r6
      00076A CE               [12] 1410 	xch	a,r6
      00076B 54 F8            [12] 1411 	anl	a,#0xf8
      00076D CE               [12] 1412 	xch	a,r6
      00076E 6E               [12] 1413 	xrl	a,r6
      00076F FF               [12] 1414 	mov	r7,a
      000770 74 32            [12] 1415 	mov	a,#0x32
      000772 2E               [12] 1416 	add	a,r6
      000773 F5 27            [12] 1417 	mov	_col_offset,a
      000775 E4               [12] 1418 	clr	a
      000776 3F               [12] 1419 	addc	a,r7
      000777 F5 28            [12] 1420 	mov	(_col_offset + 1),a
                                   1421 ;	./src/angry_bird.c:286: for (int j = 0; j < bird_cul_size; j++)
      000779 7E 00            [12] 1422 	mov	r6,#0x00
      00077B 7F 00            [12] 1423 	mov	r7,#0x00
      00077D                       1424 00171$:
      00077D C3               [12] 1425 	clr	c
      00077E EE               [12] 1426 	mov	a,r6
      00077F 94 08            [12] 1427 	subb	a,#0x08
      000781 EF               [12] 1428 	mov	a,r7
      000782 64 80            [12] 1429 	xrl	a,#0x80
      000784 94 80            [12] 1430 	subb	a,#0x80
      000786 50 31            [24] 1431 	jnc	00136$
                                   1432 ;	./src/angry_bird.c:288: for (int i = 0; i < bird_row_size; i++)
      000788 7D 00            [12] 1433 	mov	r5,#0x00
      00078A                       1434 00168$:
      00078A BD 01 00         [24] 1435 	cjne	r5,#0x01,00635$
      00078D                       1436 00635$:
      00078D 50 23            [24] 1437 	jnc	00172$
                                   1438 ;	./src/angry_bird.c:290: OLED_SetCursor(row_offset + i, col_offset + j);
      00078F AC 25            [24] 1439 	mov	r4,_row_offset
      000791 E4               [12] 1440 	clr	a
      000792 2C               [12] 1441 	add	a,r4
      000793 F5 82            [12] 1442 	mov	dpl,a
      000795 AC 27            [24] 1443 	mov	r4,_col_offset
      000797 8E 03            [24] 1444 	mov	ar3,r6
      000799 EB               [12] 1445 	mov	a,r3
      00079A 2C               [12] 1446 	add	a,r4
      00079B F5 0B            [12] 1447 	mov	_OLED_SetCursor_PARM_2,a
      00079D C0 07            [24] 1448 	push	ar7
      00079F C0 06            [24] 1449 	push	ar6
      0007A1 12 0E 62         [24] 1450 	lcall	_OLED_SetCursor
                                   1451 ;	./src/angry_bird.c:291: oledSendData(0x00);
      0007A4 75 82 00         [24] 1452 	mov	dpl,#0x00
      0007A7 12 0E 9E         [24] 1453 	lcall	_oledSendData
      0007AA D0 06            [24] 1454 	pop	ar6
      0007AC D0 07            [24] 1455 	pop	ar7
                                   1456 ;	./src/angry_bird.c:288: for (int i = 0; i < bird_row_size; i++)
      0007AE 7D 01            [12] 1457 	mov	r5,#0x01
      0007B0 80 D8            [24] 1458 	sjmp	00168$
      0007B2                       1459 00172$:
                                   1460 ;	./src/angry_bird.c:286: for (int j = 0; j < bird_cul_size; j++)
      0007B2 0E               [12] 1461 	inc	r6
      0007B3 BE 00 C7         [24] 1462 	cjne	r6,#0x00,00171$
      0007B6 0F               [12] 1463 	inc	r7
      0007B7 80 C4            [24] 1464 	sjmp	00171$
      0007B9                       1465 00136$:
                                   1466 ;	./src/angry_bird.c:298: float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
      0007B9 85 2D 82         [24] 1467 	mov	dpl,_control_angle
      0007BC 85 2E 83         [24] 1468 	mov	dph,(_control_angle + 1)
      0007BF 12 0C 1B         [24] 1469 	lcall	_getsine
      0007C2 AC 82            [24] 1470 	mov	r4,dpl
      0007C4 AD 83            [24] 1471 	mov	r5,dph
      0007C6 AE F0            [24] 1472 	mov	r6,b
      0007C8 FF               [12] 1473 	mov	r7,a
      0007C9 C0 04            [24] 1474 	push	ar4
      0007CB C0 05            [24] 1475 	push	ar5
      0007CD C0 06            [24] 1476 	push	ar6
      0007CF C0 07            [24] 1477 	push	ar7
                                   1478 ;	./src/angry_bird.c:299: float delta_x = control_strength_value * control_strength - delta_y * 4;
      0007D1 90 C3 B7         [24] 1479 	mov	dptr,#0xc3b7
      0007D4 75 F0 07         [24] 1480 	mov	b,#0x07
      0007D7 74 41            [12] 1481 	mov	a,#0x41
      0007D9 12 0E B5         [24] 1482 	lcall	___fsmul
      0007DC 85 82 53         [24] 1483 	mov	_angrybird_game_state_delta_y_196609_78,dpl
      0007DF 85 83 54         [24] 1484 	mov	(_angrybird_game_state_delta_y_196609_78 + 1),dph
      0007E2 85 F0 55         [24] 1485 	mov	(_angrybird_game_state_delta_y_196609_78 + 2),b
      0007E5 F5 56            [12] 1486 	mov	(_angrybird_game_state_delta_y_196609_78 + 3),a
      0007E7 E5 81            [12] 1487 	mov	a,sp
      0007E9 24 FC            [12] 1488 	add	a,#0xfc
      0007EB F5 81            [12] 1489 	mov	sp,a
      0007ED 85 2F 0C         [24] 1490 	mov	__mulint_PARM_2,_control_strength
      0007F0 85 30 0D         [24] 1491 	mov	(__mulint_PARM_2 + 1),(_control_strength + 1)
      0007F3 90 00 19         [24] 1492 	mov	dptr,#0x0019
      0007F6 12 0F B9         [24] 1493 	lcall	__mulint
      0007F9 AA 82            [24] 1494 	mov	r2,dpl
      0007FB AB 83            [24] 1495 	mov	r3,dph
      0007FD C0 03            [24] 1496 	push	ar3
      0007FF C0 02            [24] 1497 	push	ar2
      000801 C0 53            [24] 1498 	push	_angrybird_game_state_delta_y_196609_78
      000803 C0 54            [24] 1499 	push	(_angrybird_game_state_delta_y_196609_78 + 1)
      000805 C0 55            [24] 1500 	push	(_angrybird_game_state_delta_y_196609_78 + 2)
      000807 C0 56            [24] 1501 	push	(_angrybird_game_state_delta_y_196609_78 + 3)
      000809 90 00 00         [24] 1502 	mov	dptr,#0x0000
      00080C 75 F0 80         [24] 1503 	mov	b,#0x80
      00080F 74 40            [12] 1504 	mov	a,#0x40
      000811 12 0E B5         [24] 1505 	lcall	___fsmul
      000814 85 82 6B         [24] 1506 	mov	_angrybird_game_state_sloc1_1_0,dpl
      000817 85 83 6C         [24] 1507 	mov	(_angrybird_game_state_sloc1_1_0 + 1),dph
      00081A 85 F0 6D         [24] 1508 	mov	(_angrybird_game_state_sloc1_1_0 + 2),b
      00081D F5 6E            [12] 1509 	mov	(_angrybird_game_state_sloc1_1_0 + 3),a
      00081F E5 81            [12] 1510 	mov	a,sp
      000821 24 FC            [12] 1511 	add	a,#0xfc
      000823 F5 81            [12] 1512 	mov	sp,a
      000825 D0 02            [24] 1513 	pop	ar2
      000827 D0 03            [24] 1514 	pop	ar3
      000829 8A 82            [24] 1515 	mov	dpl,r2
      00082B 8B 83            [24] 1516 	mov	dph,r3
      00082D 12 10 A5         [24] 1517 	lcall	___sint2fs
      000830 AA 82            [24] 1518 	mov	r2,dpl
      000832 AB 83            [24] 1519 	mov	r3,dph
      000834 AE F0            [24] 1520 	mov	r6,b
      000836 FF               [12] 1521 	mov	r7,a
      000837 C0 6B            [24] 1522 	push	_angrybird_game_state_sloc1_1_0
      000839 C0 6C            [24] 1523 	push	(_angrybird_game_state_sloc1_1_0 + 1)
      00083B C0 6D            [24] 1524 	push	(_angrybird_game_state_sloc1_1_0 + 2)
      00083D C0 6E            [24] 1525 	push	(_angrybird_game_state_sloc1_1_0 + 3)
                                   1526 ;	./src/angry_bird.c:300: float peak_x = bird_init_col_cursor + delta_x;
      00083F 8A 82            [24] 1527 	mov	dpl,r2
      000841 8B 83            [24] 1528 	mov	dph,r3
      000843 8E F0            [24] 1529 	mov	b,r6
      000845 EF               [12] 1530 	mov	a,r7
      000846 12 0E AA         [24] 1531 	lcall	___fssub
      000849 85 82 57         [24] 1532 	mov	_angrybird_game_state_delta_x_196609_78,dpl
      00084C 85 83 58         [24] 1533 	mov	(_angrybird_game_state_delta_x_196609_78 + 1),dph
      00084F 85 F0 59         [24] 1534 	mov	(_angrybird_game_state_delta_x_196609_78 + 2),b
      000852 F5 5A            [12] 1535 	mov	(_angrybird_game_state_delta_x_196609_78 + 3),a
      000854 E5 81            [12] 1536 	mov	a,sp
      000856 24 FC            [12] 1537 	add	a,#0xfc
      000858 F5 81            [12] 1538 	mov	sp,a
      00085A E4               [12] 1539 	clr	a
      00085B C0 E0            [24] 1540 	push	acc
      00085D C0 E0            [24] 1541 	push	acc
      00085F C0 E0            [24] 1542 	push	acc
      000861 74 41            [12] 1543 	mov	a,#0x41
      000863 C0 E0            [24] 1544 	push	acc
                                   1545 ;	./src/angry_bird.c:301: float peak_y = bird_init_row_cursor - delta_y;
      000865 85 57 82         [24] 1546 	mov	dpl,_angrybird_game_state_delta_x_196609_78
      000868 85 58 83         [24] 1547 	mov	dph,(_angrybird_game_state_delta_x_196609_78 + 1)
      00086B 85 59 F0         [24] 1548 	mov	b,(_angrybird_game_state_delta_x_196609_78 + 2)
      00086E E5 5A            [12] 1549 	mov	a,(_angrybird_game_state_delta_x_196609_78 + 3)
      000870 12 10 4C         [24] 1550 	lcall	___fsadd
      000873 85 82 5B         [24] 1551 	mov	_angrybird_game_state_peak_x_196609_78,dpl
      000876 85 83 5C         [24] 1552 	mov	(_angrybird_game_state_peak_x_196609_78 + 1),dph
      000879 85 F0 5D         [24] 1553 	mov	(_angrybird_game_state_peak_x_196609_78 + 2),b
      00087C F5 5E            [12] 1554 	mov	(_angrybird_game_state_peak_x_196609_78 + 3),a
      00087E E5 81            [12] 1555 	mov	a,sp
      000880 24 FC            [12] 1556 	add	a,#0xfc
      000882 F5 81            [12] 1557 	mov	sp,a
      000884 C0 53            [24] 1558 	push	_angrybird_game_state_delta_y_196609_78
      000886 C0 54            [24] 1559 	push	(_angrybird_game_state_delta_y_196609_78 + 1)
      000888 C0 55            [24] 1560 	push	(_angrybird_game_state_delta_y_196609_78 + 2)
      00088A C0 56            [24] 1561 	push	(_angrybird_game_state_delta_y_196609_78 + 3)
                                   1562 ;	./src/angry_bird.c:302: float a = delta_y / pow_2(delta_x);
      00088C 90 00 00         [24] 1563 	mov	dptr,#0x0000
      00088F 75 F0 E0         [24] 1564 	mov	b,#0xe0
      000892 74 40            [12] 1565 	mov	a,#0x40
      000894 12 0E AA         [24] 1566 	lcall	___fssub
      000897 85 82 5F         [24] 1567 	mov	_angrybird_game_state_peak_y_196609_78,dpl
      00089A 85 83 60         [24] 1568 	mov	(_angrybird_game_state_peak_y_196609_78 + 1),dph
      00089D 85 F0 61         [24] 1569 	mov	(_angrybird_game_state_peak_y_196609_78 + 2),b
      0008A0 F5 62            [12] 1570 	mov	(_angrybird_game_state_peak_y_196609_78 + 3),a
      0008A2 E5 81            [12] 1571 	mov	a,sp
      0008A4 24 FC            [12] 1572 	add	a,#0xfc
      0008A6 F5 81            [12] 1573 	mov	sp,a
      0008A8 85 57 82         [24] 1574 	mov	dpl,_angrybird_game_state_delta_x_196609_78
      0008AB 85 58 83         [24] 1575 	mov	dph,(_angrybird_game_state_delta_x_196609_78 + 1)
      0008AE 85 59 F0         [24] 1576 	mov	b,(_angrybird_game_state_delta_x_196609_78 + 2)
      0008B1 E5 5A            [12] 1577 	mov	a,(_angrybird_game_state_delta_x_196609_78 + 3)
      0008B3 12 0C F6         [24] 1578 	lcall	_pow_2
      0008B6 AA 82            [24] 1579 	mov	r2,dpl
      0008B8 AB 83            [24] 1580 	mov	r3,dph
      0008BA AE F0            [24] 1581 	mov	r6,b
      0008BC FF               [12] 1582 	mov	r7,a
      0008BD C0 02            [24] 1583 	push	ar2
      0008BF C0 03            [24] 1584 	push	ar3
      0008C1 C0 06            [24] 1585 	push	ar6
      0008C3 C0 07            [24] 1586 	push	ar7
                                   1587 ;	./src/angry_bird.c:304: row_offset = bird_init_row_cursor;
      0008C5 85 53 82         [24] 1588 	mov	dpl,_angrybird_game_state_delta_y_196609_78
      0008C8 85 54 83         [24] 1589 	mov	dph,(_angrybird_game_state_delta_y_196609_78 + 1)
      0008CB 85 55 F0         [24] 1590 	mov	b,(_angrybird_game_state_delta_y_196609_78 + 2)
      0008CE E5 56            [12] 1591 	mov	a,(_angrybird_game_state_delta_y_196609_78 + 3)
      0008D0 12 11 4F         [24] 1592 	lcall	___fsdiv
      0008D3 85 82 63         [24] 1593 	mov	_angrybird_game_state_a_196609_78,dpl
      0008D6 85 83 64         [24] 1594 	mov	(_angrybird_game_state_a_196609_78 + 1),dph
      0008D9 85 F0 65         [24] 1595 	mov	(_angrybird_game_state_a_196609_78 + 2),b
      0008DC F5 66            [12] 1596 	mov	(_angrybird_game_state_a_196609_78 + 3),a
      0008DE E5 81            [12] 1597 	mov	a,sp
      0008E0 24 FC            [12] 1598 	add	a,#0xfc
      0008E2 F5 81            [12] 1599 	mov	sp,a
      0008E4 75 25 07         [24] 1600 	mov	_row_offset,#0x07
      0008E7 75 26 00         [24] 1601 	mov	(_row_offset + 1),#0x00
                                   1602 ;	./src/angry_bird.c:305: col_offset = bird_init_col_cursor;
      0008EA 75 27 08         [24] 1603 	mov	_col_offset,#0x08
      0008ED 75 28 00         [24] 1604 	mov	(_col_offset + 1),#0x00
                                   1605 ;	./src/angry_bird.c:306: for (int j = 0; j < bird_cul_size; j++)
      0008F0 7A 00            [12] 1606 	mov	r2,#0x00
      0008F2 7B 00            [12] 1607 	mov	r3,#0x00
      0008F4                       1608 00177$:
      0008F4 C3               [12] 1609 	clr	c
      0008F5 EA               [12] 1610 	mov	a,r2
      0008F6 94 08            [12] 1611 	subb	a,#0x08
      0008F8 EB               [12] 1612 	mov	a,r3
      0008F9 64 80            [12] 1613 	xrl	a,#0x80
      0008FB 94 80            [12] 1614 	subb	a,#0x80
      0008FD 50 31            [24] 1615 	jnc	00138$
                                   1616 ;	./src/angry_bird.c:308: for (int i = 0; i < bird_row_size; i++)
      0008FF 7F 00            [12] 1617 	mov	r7,#0x00
      000901                       1618 00174$:
      000901 BF 01 00         [24] 1619 	cjne	r7,#0x01,00639$
      000904                       1620 00639$:
      000904 50 23            [24] 1621 	jnc	00178$
                                   1622 ;	./src/angry_bird.c:310: OLED_SetCursor(row_offset + i, col_offset + j);
      000906 AE 25            [24] 1623 	mov	r6,_row_offset
      000908 E4               [12] 1624 	clr	a
      000909 2E               [12] 1625 	add	a,r6
      00090A F5 82            [12] 1626 	mov	dpl,a
      00090C AE 27            [24] 1627 	mov	r6,_col_offset
      00090E 8A 05            [24] 1628 	mov	ar5,r2
      000910 ED               [12] 1629 	mov	a,r5
      000911 2E               [12] 1630 	add	a,r6
      000912 F5 0B            [12] 1631 	mov	_OLED_SetCursor_PARM_2,a
      000914 C0 03            [24] 1632 	push	ar3
      000916 C0 02            [24] 1633 	push	ar2
      000918 12 0E 62         [24] 1634 	lcall	_OLED_SetCursor
                                   1635 ;	./src/angry_bird.c:311: oledSendData(0x00);
      00091B 75 82 00         [24] 1636 	mov	dpl,#0x00
      00091E 12 0E 9E         [24] 1637 	lcall	_oledSendData
      000921 D0 02            [24] 1638 	pop	ar2
      000923 D0 03            [24] 1639 	pop	ar3
                                   1640 ;	./src/angry_bird.c:308: for (int i = 0; i < bird_row_size; i++)
      000925 7F 01            [12] 1641 	mov	r7,#0x01
      000927 80 D8            [24] 1642 	sjmp	00174$
      000929                       1643 00178$:
                                   1644 ;	./src/angry_bird.c:306: for (int j = 0; j < bird_cul_size; j++)
      000929 0A               [12] 1645 	inc	r2
      00092A BA 00 C7         [24] 1646 	cjne	r2,#0x00,00177$
      00092D 0B               [12] 1647 	inc	r3
      00092E 80 C4            [24] 1648 	sjmp	00177$
      000930                       1649 00138$:
                                   1650 ;	./src/angry_bird.c:315: for (int i = 16; i <= 119; i += 8)
      000930 75 67 10         [24] 1651 	mov	_angrybird_game_state_i_262145_83,#0x10
      000933 75 68 00         [24] 1652 	mov	(_angrybird_game_state_i_262145_83 + 1),#0x00
      000936                       1653 00198$:
      000936 C3               [12] 1654 	clr	c
      000937 74 77            [12] 1655 	mov	a,#0x77
      000939 95 67            [12] 1656 	subb	a,_angrybird_game_state_i_262145_83
      00093B 74 80            [12] 1657 	mov	a,#(0x00 ^ 0x80)
      00093D 85 68 F0         [24] 1658 	mov	b,(_angrybird_game_state_i_262145_83 + 1)
      000940 63 F0 80         [24] 1659 	xrl	b,#0x80
      000943 95 F0            [12] 1660 	subb	a,b
      000945 50 03            [24] 1661 	jnc	00642$
      000947 02 0B 6A         [24] 1662 	ljmp	00153$
      00094A                       1663 00642$:
                                   1664 ;	./src/angry_bird.c:317: int output_row = a * pow_2(i - peak_x) + peak_y;
      00094A 85 67 82         [24] 1665 	mov	dpl,_angrybird_game_state_i_262145_83
      00094D 85 68 83         [24] 1666 	mov	dph,(_angrybird_game_state_i_262145_83 + 1)
      000950 12 10 A5         [24] 1667 	lcall	___sint2fs
      000953 AA 82            [24] 1668 	mov	r2,dpl
      000955 AB 83            [24] 1669 	mov	r3,dph
      000957 AC F0            [24] 1670 	mov	r4,b
      000959 FD               [12] 1671 	mov	r5,a
      00095A C0 5B            [24] 1672 	push	_angrybird_game_state_peak_x_196609_78
      00095C C0 5C            [24] 1673 	push	(_angrybird_game_state_peak_x_196609_78 + 1)
      00095E C0 5D            [24] 1674 	push	(_angrybird_game_state_peak_x_196609_78 + 2)
      000960 C0 5E            [24] 1675 	push	(_angrybird_game_state_peak_x_196609_78 + 3)
      000962 8A 82            [24] 1676 	mov	dpl,r2
      000964 8B 83            [24] 1677 	mov	dph,r3
      000966 8C F0            [24] 1678 	mov	b,r4
      000968 ED               [12] 1679 	mov	a,r5
      000969 12 0E AA         [24] 1680 	lcall	___fssub
      00096C AA 82            [24] 1681 	mov	r2,dpl
      00096E AB 83            [24] 1682 	mov	r3,dph
      000970 AC F0            [24] 1683 	mov	r4,b
      000972 FD               [12] 1684 	mov	r5,a
      000973 E5 81            [12] 1685 	mov	a,sp
      000975 24 FC            [12] 1686 	add	a,#0xfc
      000977 F5 81            [12] 1687 	mov	sp,a
      000979 8A 82            [24] 1688 	mov	dpl,r2
      00097B 8B 83            [24] 1689 	mov	dph,r3
      00097D 8C F0            [24] 1690 	mov	b,r4
      00097F ED               [12] 1691 	mov	a,r5
      000980 12 0C F6         [24] 1692 	lcall	_pow_2
      000983 AA 82            [24] 1693 	mov	r2,dpl
      000985 AB 83            [24] 1694 	mov	r3,dph
      000987 AC F0            [24] 1695 	mov	r4,b
      000989 FD               [12] 1696 	mov	r5,a
      00098A C0 02            [24] 1697 	push	ar2
      00098C C0 03            [24] 1698 	push	ar3
      00098E C0 04            [24] 1699 	push	ar4
      000990 C0 05            [24] 1700 	push	ar5
      000992 85 63 82         [24] 1701 	mov	dpl,_angrybird_game_state_a_196609_78
      000995 85 64 83         [24] 1702 	mov	dph,(_angrybird_game_state_a_196609_78 + 1)
      000998 85 65 F0         [24] 1703 	mov	b,(_angrybird_game_state_a_196609_78 + 2)
      00099B E5 66            [12] 1704 	mov	a,(_angrybird_game_state_a_196609_78 + 3)
      00099D 12 0E B5         [24] 1705 	lcall	___fsmul
      0009A0 AA 82            [24] 1706 	mov	r2,dpl
      0009A2 AB 83            [24] 1707 	mov	r3,dph
      0009A4 AC F0            [24] 1708 	mov	r4,b
      0009A6 FD               [12] 1709 	mov	r5,a
      0009A7 E5 81            [12] 1710 	mov	a,sp
      0009A9 24 FC            [12] 1711 	add	a,#0xfc
      0009AB F5 81            [12] 1712 	mov	sp,a
      0009AD C0 5F            [24] 1713 	push	_angrybird_game_state_peak_y_196609_78
      0009AF C0 60            [24] 1714 	push	(_angrybird_game_state_peak_y_196609_78 + 1)
      0009B1 C0 61            [24] 1715 	push	(_angrybird_game_state_peak_y_196609_78 + 2)
      0009B3 C0 62            [24] 1716 	push	(_angrybird_game_state_peak_y_196609_78 + 3)
      0009B5 8A 82            [24] 1717 	mov	dpl,r2
      0009B7 8B 83            [24] 1718 	mov	dph,r3
      0009B9 8C F0            [24] 1719 	mov	b,r4
      0009BB ED               [12] 1720 	mov	a,r5
      0009BC 12 10 4C         [24] 1721 	lcall	___fsadd
      0009BF AA 82            [24] 1722 	mov	r2,dpl
      0009C1 AB 83            [24] 1723 	mov	r3,dph
      0009C3 AC F0            [24] 1724 	mov	r4,b
      0009C5 FD               [12] 1725 	mov	r5,a
      0009C6 E5 81            [12] 1726 	mov	a,sp
      0009C8 24 FC            [12] 1727 	add	a,#0xfc
      0009CA F5 81            [12] 1728 	mov	sp,a
      0009CC 8A 82            [24] 1729 	mov	dpl,r2
      0009CE 8B 83            [24] 1730 	mov	dph,r3
      0009D0 8C F0            [24] 1731 	mov	b,r4
      0009D2 ED               [12] 1732 	mov	a,r5
      0009D3 12 10 B2         [24] 1733 	lcall	___fs2sint
      0009D6 85 82 69         [24] 1734 	mov	_angrybird_game_state_output_row_327681_84,dpl
      0009D9 85 83 6A         [24] 1735 	mov	(_angrybird_game_state_output_row_327681_84 + 1),dph
                                   1736 ;	./src/angry_bird.c:319: if (1 <= output_row && output_row <= 7)
      0009DC C3               [12] 1737 	clr	c
      0009DD E5 69            [12] 1738 	mov	a,_angrybird_game_state_output_row_327681_84
      0009DF 94 01            [12] 1739 	subb	a,#0x01
      0009E1 E5 6A            [12] 1740 	mov	a,(_angrybird_game_state_output_row_327681_84 + 1)
      0009E3 64 80            [12] 1741 	xrl	a,#0x80
      0009E5 94 80            [12] 1742 	subb	a,#0x80
      0009E7 50 03            [24] 1743 	jnc	00643$
      0009E9 02 0B 5C         [24] 1744 	ljmp	00199$
      0009EC                       1745 00643$:
      0009EC C3               [12] 1746 	clr	c
      0009ED 74 07            [12] 1747 	mov	a,#0x07
      0009EF 95 69            [12] 1748 	subb	a,_angrybird_game_state_output_row_327681_84
      0009F1 74 80            [12] 1749 	mov	a,#(0x00 ^ 0x80)
      0009F3 85 6A F0         [24] 1750 	mov	b,(_angrybird_game_state_output_row_327681_84 + 1)
      0009F6 63 F0 80         [24] 1751 	xrl	b,#0x80
      0009F9 95 F0            [12] 1752 	subb	a,b
      0009FB 50 03            [24] 1753 	jnc	00644$
      0009FD 02 0B 5C         [24] 1754 	ljmp	00199$
      000A00                       1755 00644$:
                                   1756 ;	./src/angry_bird.c:322: row_offset = output_row;
      000A00 85 69 25         [24] 1757 	mov	_row_offset,_angrybird_game_state_output_row_327681_84
      000A03 85 6A 26         [24] 1758 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_84 + 1)
                                   1759 ;	./src/angry_bird.c:323: col_offset = bird_init_col_cursor + i;
      000A06 74 08            [12] 1760 	mov	a,#0x08
      000A08 25 67            [12] 1761 	add	a,_angrybird_game_state_i_262145_83
      000A0A F5 27            [12] 1762 	mov	_col_offset,a
      000A0C E4               [12] 1763 	clr	a
      000A0D 35 68            [12] 1764 	addc	a,(_angrybird_game_state_i_262145_83 + 1)
      000A0F F5 28            [12] 1765 	mov	(_col_offset + 1),a
                                   1766 ;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
      000A11 7A 00            [12] 1767 	mov	r2,#0x00
      000A13 7B 00            [12] 1768 	mov	r3,#0x00
      000A15                       1769 00183$:
      000A15 C3               [12] 1770 	clr	c
      000A16 EA               [12] 1771 	mov	a,r2
      000A17 94 08            [12] 1772 	subb	a,#0x08
      000A19 EB               [12] 1773 	mov	a,r3
      000A1A 64 80            [12] 1774 	xrl	a,#0x80
      000A1C 94 80            [12] 1775 	subb	a,#0x80
      000A1E 50 4D            [24] 1776 	jnc	00140$
                                   1777 ;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
      000A20 7D 00            [12] 1778 	mov	r5,#0x00
      000A22                       1779 00180$:
      000A22 BD 01 00         [24] 1780 	cjne	r5,#0x01,00646$
      000A25                       1781 00646$:
      000A25 50 3F            [24] 1782 	jnc	00184$
                                   1783 ;	./src/angry_bird.c:328: OLED_SetCursor(row_offset + i, col_offset + j);
      000A27 AC 25            [24] 1784 	mov	r4,_row_offset
      000A29 E4               [12] 1785 	clr	a
      000A2A 2C               [12] 1786 	add	a,r4
      000A2B F5 82            [12] 1787 	mov	dpl,a
      000A2D AC 27            [24] 1788 	mov	r4,_col_offset
      000A2F 8A 07            [24] 1789 	mov	ar7,r2
      000A31 EF               [12] 1790 	mov	a,r7
      000A32 2C               [12] 1791 	add	a,r4
      000A33 F5 0B            [12] 1792 	mov	_OLED_SetCursor_PARM_2,a
      000A35 C0 07            [24] 1793 	push	ar7
      000A37 C0 03            [24] 1794 	push	ar3
      000A39 C0 02            [24] 1795 	push	ar2
      000A3B 12 0E 62         [24] 1796 	lcall	_OLED_SetCursor
      000A3E D0 02            [24] 1797 	pop	ar2
      000A40 D0 03            [24] 1798 	pop	ar3
      000A42 D0 07            [24] 1799 	pop	ar7
                                   1800 ;	./src/angry_bird.c:329: oledSendData(bird_logo[bird_cul_size * i + j]);
      000A44 EF               [12] 1801 	mov	a,r7
      000A45 33               [12] 1802 	rlc	a
      000A46 95 E0            [12] 1803 	subb	a,acc
      000A48 FE               [12] 1804 	mov	r6,a
      000A49 EF               [12] 1805 	mov	a,r7
      000A4A 24 A5            [12] 1806 	add	a,#_bird_logo
      000A4C F5 82            [12] 1807 	mov	dpl,a
      000A4E EE               [12] 1808 	mov	a,r6
      000A4F 34 13            [12] 1809 	addc	a,#(_bird_logo >> 8)
      000A51 F5 83            [12] 1810 	mov	dph,a
      000A53 E4               [12] 1811 	clr	a
      000A54 93               [24] 1812 	movc	a,@a+dptr
      000A55 F5 82            [12] 1813 	mov	dpl,a
      000A57 C0 03            [24] 1814 	push	ar3
      000A59 C0 02            [24] 1815 	push	ar2
      000A5B 12 0E 9E         [24] 1816 	lcall	_oledSendData
      000A5E D0 02            [24] 1817 	pop	ar2
      000A60 D0 03            [24] 1818 	pop	ar3
                                   1819 ;	./src/angry_bird.c:326: for (int i = 0; i < bird_row_size; i++)
      000A62 7D 01            [12] 1820 	mov	r5,#0x01
      000A64 80 BC            [24] 1821 	sjmp	00180$
      000A66                       1822 00184$:
                                   1823 ;	./src/angry_bird.c:324: for (int j = 0; j < bird_cul_size; j++)
      000A66 0A               [12] 1824 	inc	r2
      000A67 BA 00 AB         [24] 1825 	cjne	r2,#0x00,00183$
      000A6A 0B               [12] 1826 	inc	r3
      000A6B 80 A8            [24] 1827 	sjmp	00183$
      000A6D                       1828 00140$:
                                   1829 ;	./src/angry_bird.c:332: delay_ms(400);
      000A6D 90 01 90         [24] 1830 	mov	dptr,#0x0190
      000A70 12 01 BE         [24] 1831 	lcall	_delay_ms
                                   1832 ;	./src/angry_bird.c:356: if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
      000A73 C3               [12] 1833 	clr	c
      000A74 E5 25            [12] 1834 	mov	a,_row_offset
      000A76 94 03            [12] 1835 	subb	a,#0x03
      000A78 E5 26            [12] 1836 	mov	a,(_row_offset + 1)
      000A7A 64 80            [12] 1837 	xrl	a,#0x80
      000A7C 94 80            [12] 1838 	subb	a,#0x80
      000A7E 50 03            [24] 1839 	jnc	00649$
      000A80 02 0B 0B         [24] 1840 	ljmp	00144$
      000A83                       1841 00649$:
      000A83 C3               [12] 1842 	clr	c
      000A84 74 04            [12] 1843 	mov	a,#0x04
      000A86 95 25            [12] 1844 	subb	a,_row_offset
      000A88 74 80            [12] 1845 	mov	a,#(0x00 ^ 0x80)
      000A8A 85 26 F0         [24] 1846 	mov	b,(_row_offset + 1)
      000A8D 63 F0 80         [24] 1847 	xrl	b,#0x80
      000A90 95 F0            [12] 1848 	subb	a,b
      000A92 40 77            [24] 1849 	jc	00144$
      000A94 74 48            [12] 1850 	mov	a,#0x48
      000A96 95 27            [12] 1851 	subb	a,_col_offset
      000A98 74 80            [12] 1852 	mov	a,#(0x00 ^ 0x80)
      000A9A 85 28 F0         [24] 1853 	mov	b,(_col_offset + 1)
      000A9D 63 F0 80         [24] 1854 	xrl	b,#0x80
      000AA0 95 F0            [12] 1855 	subb	a,b
      000AA2 50 67            [24] 1856 	jnc	00144$
      000AA4 C3               [12] 1857 	clr	c
      000AA5 E5 27            [12] 1858 	mov	a,_col_offset
      000AA7 94 5C            [12] 1859 	subb	a,#0x5c
      000AA9 E5 28            [12] 1860 	mov	a,(_col_offset + 1)
      000AAB 64 80            [12] 1861 	xrl	a,#0x80
      000AAD 94 80            [12] 1862 	subb	a,#0x80
      000AAF 50 5A            [24] 1863 	jnc	00144$
                                   1864 ;	./src/angry_bird.c:358: pig_amt--;
      000AB1 15 2B            [12] 1865 	dec	_pig_amt
      000AB3 74 FF            [12] 1866 	mov	a,#0xff
      000AB5 B5 2B 02         [24] 1867 	cjne	a,_pig_amt,00653$
      000AB8 15 2C            [12] 1868 	dec	(_pig_amt + 1)
      000ABA                       1869 00653$:
                                   1870 ;	./src/angry_bird.c:359: row_offset = pig1_row_cursor;
      000ABA 75 25 03         [24] 1871 	mov	_row_offset,#0x03
      000ABD 75 26 00         [24] 1872 	mov	(_row_offset + 1),#0x00
                                   1873 ;	./src/angry_bird.c:360: col_offset = pig1_col_cursor;
      000AC0 75 27 50         [24] 1874 	mov	_col_offset,#0x50
      000AC3 75 28 00         [24] 1875 	mov	(_col_offset + 1),#0x00
                                   1876 ;	./src/angry_bird.c:361: for (int j = 0; j < pig_cul_size; j++)
      000AC6 7E 00            [12] 1877 	mov	r6,#0x00
      000AC8 7F 00            [12] 1878 	mov	r7,#0x00
      000ACA                       1879 00189$:
      000ACA C3               [12] 1880 	clr	c
      000ACB EE               [12] 1881 	mov	a,r6
      000ACC 94 0C            [12] 1882 	subb	a,#0x0c
      000ACE EF               [12] 1883 	mov	a,r7
      000ACF 64 80            [12] 1884 	xrl	a,#0x80
      000AD1 94 80            [12] 1885 	subb	a,#0x80
      000AD3 50 36            [24] 1886 	jnc	00144$
                                   1887 ;	./src/angry_bird.c:363: for (int i = 0; i < pig_row_size; i++)
      000AD5 7D 00            [12] 1888 	mov	r5,#0x00
      000AD7                       1889 00186$:
      000AD7 BD 02 00         [24] 1890 	cjne	r5,#0x02,00655$
      000ADA                       1891 00655$:
      000ADA 50 28            [24] 1892 	jnc	00190$
                                   1893 ;	./src/angry_bird.c:365: OLED_SetCursor(row_offset + i, col_offset + j);
      000ADC AC 25            [24] 1894 	mov	r4,_row_offset
      000ADE 8D 03            [24] 1895 	mov	ar3,r5
      000AE0 EB               [12] 1896 	mov	a,r3
      000AE1 2C               [12] 1897 	add	a,r4
      000AE2 F5 82            [12] 1898 	mov	dpl,a
      000AE4 AC 27            [24] 1899 	mov	r4,_col_offset
      000AE6 8E 03            [24] 1900 	mov	ar3,r6
      000AE8 EB               [12] 1901 	mov	a,r3
      000AE9 2C               [12] 1902 	add	a,r4
      000AEA F5 0B            [12] 1903 	mov	_OLED_SetCursor_PARM_2,a
      000AEC C0 07            [24] 1904 	push	ar7
      000AEE C0 06            [24] 1905 	push	ar6
      000AF0 C0 05            [24] 1906 	push	ar5
      000AF2 12 0E 62         [24] 1907 	lcall	_OLED_SetCursor
                                   1908 ;	./src/angry_bird.c:366: oledSendData(0x00);
      000AF5 75 82 00         [24] 1909 	mov	dpl,#0x00
      000AF8 12 0E 9E         [24] 1910 	lcall	_oledSendData
      000AFB D0 05            [24] 1911 	pop	ar5
      000AFD D0 06            [24] 1912 	pop	ar6
      000AFF D0 07            [24] 1913 	pop	ar7
                                   1914 ;	./src/angry_bird.c:363: for (int i = 0; i < pig_row_size; i++)
      000B01 0D               [12] 1915 	inc	r5
      000B02 80 D3            [24] 1916 	sjmp	00186$
      000B04                       1917 00190$:
                                   1918 ;	./src/angry_bird.c:361: for (int j = 0; j < pig_cul_size; j++)
      000B04 0E               [12] 1919 	inc	r6
      000B05 BE 00 C2         [24] 1920 	cjne	r6,#0x00,00189$
      000B08 0F               [12] 1921 	inc	r7
      000B09 80 BF            [24] 1922 	sjmp	00189$
      000B0B                       1923 00144$:
                                   1924 ;	./src/angry_bird.c:371: row_offset = output_row;
      000B0B 85 69 25         [24] 1925 	mov	_row_offset,_angrybird_game_state_output_row_327681_84
      000B0E 85 6A 26         [24] 1926 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_84 + 1)
                                   1927 ;	./src/angry_bird.c:372: col_offset = bird_init_col_cursor + i;
      000B11 74 08            [12] 1928 	mov	a,#0x08
      000B13 25 67            [12] 1929 	add	a,_angrybird_game_state_i_262145_83
      000B15 F5 27            [12] 1930 	mov	_col_offset,a
      000B17 E4               [12] 1931 	clr	a
      000B18 35 68            [12] 1932 	addc	a,(_angrybird_game_state_i_262145_83 + 1)
      000B1A F5 28            [12] 1933 	mov	(_col_offset + 1),a
                                   1934 ;	./src/angry_bird.c:373: for (int j = 0; j < bird_cul_size; j++)
      000B1C 7E 00            [12] 1935 	mov	r6,#0x00
      000B1E 7F 00            [12] 1936 	mov	r7,#0x00
      000B20                       1937 00195$:
      000B20 C3               [12] 1938 	clr	c
      000B21 EE               [12] 1939 	mov	a,r6
      000B22 94 08            [12] 1940 	subb	a,#0x08
      000B24 EF               [12] 1941 	mov	a,r7
      000B25 64 80            [12] 1942 	xrl	a,#0x80
      000B27 94 80            [12] 1943 	subb	a,#0x80
      000B29 50 31            [24] 1944 	jnc	00199$
                                   1945 ;	./src/angry_bird.c:375: for (int i = 0; i < bird_row_size; i++)
      000B2B 7D 00            [12] 1946 	mov	r5,#0x00
      000B2D                       1947 00192$:
      000B2D BD 01 00         [24] 1948 	cjne	r5,#0x01,00659$
      000B30                       1949 00659$:
      000B30 50 23            [24] 1950 	jnc	00196$
                                   1951 ;	./src/angry_bird.c:377: OLED_SetCursor(row_offset + i, col_offset + j);
      000B32 AC 25            [24] 1952 	mov	r4,_row_offset
      000B34 E4               [12] 1953 	clr	a
      000B35 2C               [12] 1954 	add	a,r4
      000B36 F5 82            [12] 1955 	mov	dpl,a
      000B38 AC 27            [24] 1956 	mov	r4,_col_offset
      000B3A 8E 03            [24] 1957 	mov	ar3,r6
      000B3C EB               [12] 1958 	mov	a,r3
      000B3D 2C               [12] 1959 	add	a,r4
      000B3E F5 0B            [12] 1960 	mov	_OLED_SetCursor_PARM_2,a
      000B40 C0 07            [24] 1961 	push	ar7
      000B42 C0 06            [24] 1962 	push	ar6
      000B44 12 0E 62         [24] 1963 	lcall	_OLED_SetCursor
                                   1964 ;	./src/angry_bird.c:378: oledSendData(0x00);
      000B47 75 82 00         [24] 1965 	mov	dpl,#0x00
      000B4A 12 0E 9E         [24] 1966 	lcall	_oledSendData
      000B4D D0 06            [24] 1967 	pop	ar6
      000B4F D0 07            [24] 1968 	pop	ar7
                                   1969 ;	./src/angry_bird.c:375: for (int i = 0; i < bird_row_size; i++)
      000B51 7D 01            [12] 1970 	mov	r5,#0x01
      000B53 80 D8            [24] 1971 	sjmp	00192$
      000B55                       1972 00196$:
                                   1973 ;	./src/angry_bird.c:373: for (int j = 0; j < bird_cul_size; j++)
      000B55 0E               [12] 1974 	inc	r6
      000B56 BE 00 C7         [24] 1975 	cjne	r6,#0x00,00195$
      000B59 0F               [12] 1976 	inc	r7
      000B5A 80 C4            [24] 1977 	sjmp	00195$
      000B5C                       1978 00199$:
                                   1979 ;	./src/angry_bird.c:315: for (int i = 16; i <= 119; i += 8)
      000B5C 74 08            [12] 1980 	mov	a,#0x08
      000B5E 25 67            [12] 1981 	add	a,_angrybird_game_state_i_262145_83
      000B60 F5 67            [12] 1982 	mov	_angrybird_game_state_i_262145_83,a
      000B62 E4               [12] 1983 	clr	a
      000B63 35 68            [12] 1984 	addc	a,(_angrybird_game_state_i_262145_83 + 1)
      000B65 F5 68            [12] 1985 	mov	(_angrybird_game_state_i_262145_83 + 1),a
      000B67 02 09 36         [24] 1986 	ljmp	00198$
      000B6A                       1987 00153$:
                                   1988 ;	./src/angry_bird.c:385: row_offset = bird_init_row_cursor;
      000B6A 75 25 07         [24] 1989 	mov	_row_offset,#0x07
      000B6D 75 26 00         [24] 1990 	mov	(_row_offset + 1),#0x00
                                   1991 ;	./src/angry_bird.c:386: col_offset = bird_init_col_cursor;
      000B70 75 27 08         [24] 1992 	mov	_col_offset,#0x08
      000B73 75 28 00         [24] 1993 	mov	(_col_offset + 1),#0x00
                                   1994 ;	./src/angry_bird.c:387: for (int j = 0; j < bird_cul_size; j++)
      000B76 7E 00            [12] 1995 	mov	r6,#0x00
      000B78 7F 00            [12] 1996 	mov	r7,#0x00
      000B7A                       1997 00204$:
      000B7A C3               [12] 1998 	clr	c
      000B7B EE               [12] 1999 	mov	a,r6
      000B7C 94 08            [12] 2000 	subb	a,#0x08
      000B7E EF               [12] 2001 	mov	a,r7
      000B7F 64 80            [12] 2002 	xrl	a,#0x80
      000B81 94 80            [12] 2003 	subb	a,#0x80
      000B83 50 45            [24] 2004 	jnc	00159$
                                   2005 ;	./src/angry_bird.c:389: for (int i = 0; i < bird_row_size; i++)
      000B85 7D 00            [12] 2006 	mov	r5,#0x00
      000B87                       2007 00201$:
      000B87 BD 01 00         [24] 2008 	cjne	r5,#0x01,00663$
      000B8A                       2009 00663$:
      000B8A 50 37            [24] 2010 	jnc	00205$
                                   2011 ;	./src/angry_bird.c:391: OLED_SetCursor(row_offset + i, col_offset + j);
      000B8C AC 25            [24] 2012 	mov	r4,_row_offset
      000B8E E4               [12] 2013 	clr	a
      000B8F 2C               [12] 2014 	add	a,r4
      000B90 F5 82            [12] 2015 	mov	dpl,a
      000B92 AC 27            [24] 2016 	mov	r4,_col_offset
      000B94 8E 03            [24] 2017 	mov	ar3,r6
      000B96 EB               [12] 2018 	mov	a,r3
      000B97 2C               [12] 2019 	add	a,r4
      000B98 F5 0B            [12] 2020 	mov	_OLED_SetCursor_PARM_2,a
      000B9A C0 07            [24] 2021 	push	ar7
      000B9C C0 06            [24] 2022 	push	ar6
      000B9E C0 03            [24] 2023 	push	ar3
      000BA0 12 0E 62         [24] 2024 	lcall	_OLED_SetCursor
      000BA3 D0 03            [24] 2025 	pop	ar3
                                   2026 ;	./src/angry_bird.c:392: oledSendData(bird_logo[bird_cul_size * i + j]);
      000BA5 EB               [12] 2027 	mov	a,r3
      000BA6 33               [12] 2028 	rlc	a
      000BA7 95 E0            [12] 2029 	subb	a,acc
      000BA9 FC               [12] 2030 	mov	r4,a
      000BAA EB               [12] 2031 	mov	a,r3
      000BAB 24 A5            [12] 2032 	add	a,#_bird_logo
      000BAD F5 82            [12] 2033 	mov	dpl,a
      000BAF EC               [12] 2034 	mov	a,r4
      000BB0 34 13            [12] 2035 	addc	a,#(_bird_logo >> 8)
      000BB2 F5 83            [12] 2036 	mov	dph,a
      000BB4 E4               [12] 2037 	clr	a
      000BB5 93               [24] 2038 	movc	a,@a+dptr
      000BB6 F5 82            [12] 2039 	mov	dpl,a
      000BB8 12 0E 9E         [24] 2040 	lcall	_oledSendData
      000BBB D0 06            [24] 2041 	pop	ar6
      000BBD D0 07            [24] 2042 	pop	ar7
                                   2043 ;	./src/angry_bird.c:389: for (int i = 0; i < bird_row_size; i++)
      000BBF 7D 01            [12] 2044 	mov	r5,#0x01
      000BC1 80 C4            [24] 2045 	sjmp	00201$
      000BC3                       2046 00205$:
                                   2047 ;	./src/angry_bird.c:387: for (int j = 0; j < bird_cul_size; j++)
      000BC3 0E               [12] 2048 	inc	r6
      000BC4 BE 00 B3         [24] 2049 	cjne	r6,#0x00,00204$
      000BC7 0F               [12] 2050 	inc	r7
      000BC8 80 B0            [24] 2051 	sjmp	00204$
      000BCA                       2052 00159$:
                                   2053 ;	./src/angry_bird.c:410: if (pig_amt == 0 || bird_amt == 0)
      000BCA E5 2B            [12] 2054 	mov	a,_pig_amt
      000BCC 45 2C            [12] 2055 	orl	a,(_pig_amt + 1)
      000BCE 60 06            [24] 2056 	jz	00163$
      000BD0 E5 29            [12] 2057 	mov	a,_bird_amt
      000BD2 45 2A            [12] 2058 	orl	a,(_bird_amt + 1)
      000BD4 70 12            [24] 2059 	jnz	00165$
                                   2060 ;	./src/angry_bird.c:416: else if (bird_amt == 0)
      000BD6                       2061 00163$:
                                   2062 ;	./src/angry_bird.c:420: delay_ms(3000);
      000BD6 90 0B B8         [24] 2063 	mov	dptr,#0x0bb8
      000BD9 12 01 BE         [24] 2064 	lcall	_delay_ms
                                   2065 ;	./src/angry_bird.c:421: cur_state = STATE_HOME;
      000BDC 75 3E 01         [24] 2066 	mov	_cur_state,#0x01
      000BDF 75 3F 00         [24] 2067 	mov	(_cur_state + 1),#0x00
                                   2068 ;	./src/angry_bird.c:423: send_data = cur_state;
      000BE2 75 21 01         [24] 2069 	mov	_send_data,#0x01
                                   2070 ;	./src/angry_bird.c:424: send_flag = 1;
      000BE5 75 22 01         [24] 2071 	mov	_send_flag,#0x01
      000BE8                       2072 00165$:
                                   2073 ;	./src/angry_bird.c:428: prebut_enter = but_enter;
      000BE8 A2 A2            [12] 2074 	mov	c,_P2_2
      000BEA E4               [12] 2075 	clr	a
      000BEB 33               [12] 2076 	rlc	a
      000BEC F5 48            [12] 2077 	mov	_prebut_enter,a
      000BEE 75 49 00         [24] 2078 	mov	(_prebut_enter + 1),#0x00
                                   2079 ;	./src/angry_bird.c:429: prebut_up = but_up;
      000BF1 A2 A0            [12] 2080 	mov	c,_P2_0
      000BF3 E4               [12] 2081 	clr	a
      000BF4 33               [12] 2082 	rlc	a
      000BF5 F5 40            [12] 2083 	mov	_prebut_up,a
      000BF7 75 41 00         [24] 2084 	mov	(_prebut_up + 1),#0x00
                                   2085 ;	./src/angry_bird.c:430: prebut_down = but_down;
      000BFA A2 A1            [12] 2086 	mov	c,_P2_1
      000BFC E4               [12] 2087 	clr	a
      000BFD 33               [12] 2088 	rlc	a
      000BFE F5 42            [12] 2089 	mov	_prebut_down,a
      000C00 75 43 00         [24] 2090 	mov	(_prebut_down + 1),#0x00
                                   2091 ;	./src/angry_bird.c:431: prebut_left = but_left;
      000C03 A2 B2            [12] 2092 	mov	c,_INT0
      000C05 E4               [12] 2093 	clr	a
      000C06 33               [12] 2094 	rlc	a
      000C07 F5 44            [12] 2095 	mov	_prebut_left,a
      000C09 75 45 00         [24] 2096 	mov	(_prebut_left + 1),#0x00
                                   2097 ;	./src/angry_bird.c:432: prebut_right = but_right;
      000C0C A2 B3            [12] 2098 	mov	c,_INT1
      000C0E E4               [12] 2099 	clr	a
      000C0F 33               [12] 2100 	rlc	a
      000C10 F5 46            [12] 2101 	mov	_prebut_right,a
      000C12 75 47 00         [24] 2102 	mov	(_prebut_right + 1),#0x00
                                   2103 ;	./src/angry_bird.c:433: delay_ms(10);
      000C15 90 00 0A         [24] 2104 	mov	dptr,#0x000a
                                   2105 ;	./src/angry_bird.c:434: }
      000C18 02 01 BE         [24] 2106 	ljmp	_delay_ms
                                   2107 ;------------------------------------------------------------
                                   2108 ;Allocation info for local variables in function 'getsine'
                                   2109 ;------------------------------------------------------------
                                   2110 ;angle                     Allocated to registers r6 r7 
                                   2111 ;index                     Allocated to registers r6 r7 
                                   2112 ;------------------------------------------------------------
                                   2113 ;	./src/angry_bird.c:440: float getsine(int angle)
                                   2114 ;	-----------------------------------------
                                   2115 ;	 function getsine
                                   2116 ;	-----------------------------------------
      000C1B                       2117 _getsine:
      000C1B AE 82            [24] 2118 	mov	r6,dpl
      000C1D AF 83            [24] 2119 	mov	r7,dph
                                   2120 ;	./src/angry_bird.c:442: int index = (angle > 0) ? (angle / 10) : (-angle / 10);
      000C1F C3               [12] 2121 	clr	c
      000C20 E4               [12] 2122 	clr	a
      000C21 9E               [12] 2123 	subb	a,r6
      000C22 74 80            [12] 2124 	mov	a,#(0x00 ^ 0x80)
      000C24 8F F0            [24] 2125 	mov	b,r7
      000C26 63 F0 80         [24] 2126 	xrl	b,#0x80
      000C29 95 F0            [12] 2127 	subb	a,b
      000C2B E4               [12] 2128 	clr	a
      000C2C 33               [12] 2129 	rlc	a
      000C2D FD               [12] 2130 	mov	r5,a
      000C2E 60 17            [24] 2131 	jz	00103$
      000C30 75 0C 0A         [24] 2132 	mov	__divsint_PARM_2,#0x0a
      000C33 75 0D 00         [24] 2133 	mov	(__divsint_PARM_2 + 1),#0x00
      000C36 8E 82            [24] 2134 	mov	dpl,r6
      000C38 8F 83            [24] 2135 	mov	dph,r7
      000C3A C0 05            [24] 2136 	push	ar5
      000C3C 12 12 91         [24] 2137 	lcall	__divsint
      000C3F AB 82            [24] 2138 	mov	r3,dpl
      000C41 AC 83            [24] 2139 	mov	r4,dph
      000C43 D0 05            [24] 2140 	pop	ar5
      000C45 80 1A            [24] 2141 	sjmp	00104$
      000C47                       2142 00103$:
      000C47 C3               [12] 2143 	clr	c
      000C48 E4               [12] 2144 	clr	a
      000C49 9E               [12] 2145 	subb	a,r6
      000C4A F5 82            [12] 2146 	mov	dpl,a
      000C4C E4               [12] 2147 	clr	a
      000C4D 9F               [12] 2148 	subb	a,r7
      000C4E F5 83            [12] 2149 	mov	dph,a
      000C50 75 0C 0A         [24] 2150 	mov	__divsint_PARM_2,#0x0a
      000C53 75 0D 00         [24] 2151 	mov	(__divsint_PARM_2 + 1),#0x00
      000C56 C0 05            [24] 2152 	push	ar5
      000C58 12 12 91         [24] 2153 	lcall	__divsint
      000C5B AB 82            [24] 2154 	mov	r3,dpl
      000C5D AC 83            [24] 2155 	mov	r4,dph
      000C5F D0 05            [24] 2156 	pop	ar5
      000C61                       2157 00104$:
      000C61 8B 06            [24] 2158 	mov	ar6,r3
      000C63 8C 07            [24] 2159 	mov	ar7,r4
                                   2160 ;	./src/angry_bird.c:443: return (angle > 0) ? sine_table[index] : -sine_table[index];
      000C65 ED               [12] 2161 	mov	a,r5
      000C66 60 27            [24] 2162 	jz	00105$
      000C68 EE               [12] 2163 	mov	a,r6
      000C69 2E               [12] 2164 	add	a,r6
      000C6A FC               [12] 2165 	mov	r4,a
      000C6B EF               [12] 2166 	mov	a,r7
      000C6C 33               [12] 2167 	rlc	a
      000C6D FD               [12] 2168 	mov	r5,a
      000C6E EC               [12] 2169 	mov	a,r4
      000C6F 2C               [12] 2170 	add	a,r4
      000C70 FC               [12] 2171 	mov	r4,a
      000C71 ED               [12] 2172 	mov	a,r5
      000C72 33               [12] 2173 	rlc	a
      000C73 FD               [12] 2174 	mov	r5,a
      000C74 EC               [12] 2175 	mov	a,r4
      000C75 24 24            [12] 2176 	add	a,#_sine_table
      000C77 F5 82            [12] 2177 	mov	dpl,a
      000C79 ED               [12] 2178 	mov	a,r5
      000C7A 34 0D            [12] 2179 	addc	a,#(_sine_table >> 8)
      000C7C F5 83            [12] 2180 	mov	dph,a
      000C7E E4               [12] 2181 	clr	a
      000C7F 93               [24] 2182 	movc	a,@a+dptr
      000C80 FA               [12] 2183 	mov	r2,a
      000C81 A3               [24] 2184 	inc	dptr
      000C82 E4               [12] 2185 	clr	a
      000C83 93               [24] 2186 	movc	a,@a+dptr
      000C84 FB               [12] 2187 	mov	r3,a
      000C85 A3               [24] 2188 	inc	dptr
      000C86 E4               [12] 2189 	clr	a
      000C87 93               [24] 2190 	movc	a,@a+dptr
      000C88 FC               [12] 2191 	mov	r4,a
      000C89 A3               [24] 2192 	inc	dptr
      000C8A E4               [12] 2193 	clr	a
      000C8B 93               [24] 2194 	movc	a,@a+dptr
      000C8C FD               [12] 2195 	mov	r5,a
      000C8D 80 2F            [24] 2196 	sjmp	00106$
      000C8F                       2197 00105$:
      000C8F EE               [12] 2198 	mov	a,r6
      000C90 2E               [12] 2199 	add	a,r6
      000C91 FE               [12] 2200 	mov	r6,a
      000C92 EF               [12] 2201 	mov	a,r7
      000C93 33               [12] 2202 	rlc	a
      000C94 FF               [12] 2203 	mov	r7,a
      000C95 EE               [12] 2204 	mov	a,r6
      000C96 2E               [12] 2205 	add	a,r6
      000C97 FE               [12] 2206 	mov	r6,a
      000C98 EF               [12] 2207 	mov	a,r7
      000C99 33               [12] 2208 	rlc	a
      000C9A FF               [12] 2209 	mov	r7,a
      000C9B EE               [12] 2210 	mov	a,r6
      000C9C 24 24            [12] 2211 	add	a,#_sine_table
      000C9E F5 82            [12] 2212 	mov	dpl,a
      000CA0 EF               [12] 2213 	mov	a,r7
      000CA1 34 0D            [12] 2214 	addc	a,#(_sine_table >> 8)
      000CA3 F5 83            [12] 2215 	mov	dph,a
      000CA5 E4               [12] 2216 	clr	a
      000CA6 93               [24] 2217 	movc	a,@a+dptr
      000CA7 F8               [12] 2218 	mov	r0,a
      000CA8 A3               [24] 2219 	inc	dptr
      000CA9 E4               [12] 2220 	clr	a
      000CAA 93               [24] 2221 	movc	a,@a+dptr
      000CAB F9               [12] 2222 	mov	r1,a
      000CAC A3               [24] 2223 	inc	dptr
      000CAD E4               [12] 2224 	clr	a
      000CAE 93               [24] 2225 	movc	a,@a+dptr
      000CAF FE               [12] 2226 	mov	r6,a
      000CB0 A3               [24] 2227 	inc	dptr
      000CB1 E4               [12] 2228 	clr	a
      000CB2 93               [24] 2229 	movc	a,@a+dptr
      000CB3 FF               [12] 2230 	mov	r7,a
      000CB4 88 02            [24] 2231 	mov	ar2,r0
      000CB6 89 03            [24] 2232 	mov	ar3,r1
      000CB8 8E 04            [24] 2233 	mov	ar4,r6
      000CBA EF               [12] 2234 	mov	a,r7
      000CBB B2 E7            [12] 2235 	cpl	acc.7
      000CBD FD               [12] 2236 	mov	r5,a
      000CBE                       2237 00106$:
      000CBE 8A 82            [24] 2238 	mov	dpl,r2
      000CC0 8B 83            [24] 2239 	mov	dph,r3
      000CC2 8C F0            [24] 2240 	mov	b,r4
      000CC4 ED               [12] 2241 	mov	a,r5
                                   2242 ;	./src/angry_bird.c:444: }
      000CC5 22               [24] 2243 	ret
                                   2244 ;------------------------------------------------------------
                                   2245 ;Allocation info for local variables in function 'getcosine'
                                   2246 ;------------------------------------------------------------
                                   2247 ;angle                     Allocated to registers r6 r7 
                                   2248 ;------------------------------------------------------------
                                   2249 ;	./src/angry_bird.c:445: float getcosine(int angle)
                                   2250 ;	-----------------------------------------
                                   2251 ;	 function getcosine
                                   2252 ;	-----------------------------------------
      000CC6                       2253 _getcosine:
      000CC6 AE 82            [24] 2254 	mov	r6,dpl
      000CC8 AF 83            [24] 2255 	mov	r7,dph
                                   2256 ;	./src/angry_bird.c:447: return getsine((angle > 0) ? -angle + 90 : angle + 90);
      000CCA C3               [12] 2257 	clr	c
      000CCB E4               [12] 2258 	clr	a
      000CCC 9E               [12] 2259 	subb	a,r6
      000CCD 74 80            [12] 2260 	mov	a,#(0x00 ^ 0x80)
      000CCF 8F F0            [24] 2261 	mov	b,r7
      000CD1 63 F0 80         [24] 2262 	xrl	b,#0x80
      000CD4 95 F0            [12] 2263 	subb	a,b
      000CD6 50 10            [24] 2264 	jnc	00103$
      000CD8 C3               [12] 2265 	clr	c
      000CD9 E4               [12] 2266 	clr	a
      000CDA 9E               [12] 2267 	subb	a,r6
      000CDB FC               [12] 2268 	mov	r4,a
      000CDC E4               [12] 2269 	clr	a
      000CDD 9F               [12] 2270 	subb	a,r7
      000CDE FD               [12] 2271 	mov	r5,a
      000CDF 74 5A            [12] 2272 	mov	a,#0x5a
      000CE1 2C               [12] 2273 	add	a,r4
      000CE2 FC               [12] 2274 	mov	r4,a
      000CE3 E4               [12] 2275 	clr	a
      000CE4 3D               [12] 2276 	addc	a,r5
      000CE5 FD               [12] 2277 	mov	r5,a
      000CE6 80 07            [24] 2278 	sjmp	00104$
      000CE8                       2279 00103$:
      000CE8 74 5A            [12] 2280 	mov	a,#0x5a
      000CEA 2E               [12] 2281 	add	a,r6
      000CEB FC               [12] 2282 	mov	r4,a
      000CEC E4               [12] 2283 	clr	a
      000CED 3F               [12] 2284 	addc	a,r7
      000CEE FD               [12] 2285 	mov	r5,a
      000CEF                       2286 00104$:
      000CEF 8C 82            [24] 2287 	mov	dpl,r4
      000CF1 8D 83            [24] 2288 	mov	dph,r5
                                   2289 ;	./src/angry_bird.c:448: }
      000CF3 02 0C 1B         [24] 2290 	ljmp	_getsine
                                   2291 ;------------------------------------------------------------
                                   2292 ;Allocation info for local variables in function 'pow_2'
                                   2293 ;------------------------------------------------------------
                                   2294 ;n                         Allocated to registers r4 r5 r6 r7 
                                   2295 ;------------------------------------------------------------
                                   2296 ;	./src/angry_bird.c:449: float pow_2(float n)
                                   2297 ;	-----------------------------------------
                                   2298 ;	 function pow_2
                                   2299 ;	-----------------------------------------
      000CF6                       2300 _pow_2:
      000CF6 AC 82            [24] 2301 	mov	r4,dpl
      000CF8 AD 83            [24] 2302 	mov	r5,dph
      000CFA AE F0            [24] 2303 	mov	r6,b
      000CFC FF               [12] 2304 	mov	r7,a
                                   2305 ;	./src/angry_bird.c:451: return n * n;
      000CFD C0 04            [24] 2306 	push	ar4
      000CFF C0 05            [24] 2307 	push	ar5
      000D01 C0 06            [24] 2308 	push	ar6
      000D03 C0 07            [24] 2309 	push	ar7
      000D05 8C 82            [24] 2310 	mov	dpl,r4
      000D07 8D 83            [24] 2311 	mov	dph,r5
      000D09 8E F0            [24] 2312 	mov	b,r6
      000D0B EF               [12] 2313 	mov	a,r7
      000D0C 12 0E B5         [24] 2314 	lcall	___fsmul
      000D0F AC 82            [24] 2315 	mov	r4,dpl
      000D11 AD 83            [24] 2316 	mov	r5,dph
      000D13 AE F0            [24] 2317 	mov	r6,b
      000D15 FF               [12] 2318 	mov	r7,a
      000D16 E5 81            [12] 2319 	mov	a,sp
      000D18 24 FC            [12] 2320 	add	a,#0xfc
      000D1A F5 81            [12] 2321 	mov	sp,a
      000D1C 8C 82            [24] 2322 	mov	dpl,r4
      000D1E 8D 83            [24] 2323 	mov	dph,r5
      000D20 8E F0            [24] 2324 	mov	b,r6
      000D22 EF               [12] 2325 	mov	a,r7
                                   2326 ;	./src/angry_bird.c:452: }
      000D23 22               [24] 2327 	ret
                                   2328 	.area CSEG    (CODE)
                                   2329 	.area CONST   (CODE)
      00137D                       2330 _shooter_logo:
      00137D 00                    2331 	.db #0x00	; 0
      00137E FF                    2332 	.db #0xff	; 255
      00137F FF                    2333 	.db #0xff	; 255
      001380 F6                    2334 	.db #0xf6	; 246
      001381 00                    2335 	.db #0x00	; 0
      001382 FE                    2336 	.db #0xfe	; 254
      001383 FF                    2337 	.db #0xff	; 255
      001384 FE                    2338 	.db #0xfe	; 254
      001385 00                    2339 	.db #0x00	; 0
      001386 01                    2340 	.db #0x01	; 1
      001387 07                    2341 	.db #0x07	; 7
      001388 FF                    2342 	.db #0xff	; 255
      001389 FE                    2343 	.db #0xfe	; 254
      00138A FF                    2344 	.db #0xff	; 255
      00138B 07                    2345 	.db #0x07	; 7
      00138C 00                    2346 	.db #0x00	; 0
      00138D                       2347 _pig_logo:
      00138D C0                    2348 	.db #0xc0	; 192
      00138E 30                    2349 	.db #0x30	; 48	'0'
      00138F 38                    2350 	.db #0x38	; 56	'8'
      001390 FC                    2351 	.db #0xfc	; 252
      001391 FF                    2352 	.db #0xff	; 255
      001392 FF                    2353 	.db #0xff	; 255
      001393 FC                    2354 	.db #0xfc	; 252
      001394 FC                    2355 	.db #0xfc	; 252
      001395 3E                    2356 	.db #0x3e	; 62
      001396 3E                    2357 	.db #0x3e	; 62
      001397 F0                    2358 	.db #0xf0	; 240
      001398 C0                    2359 	.db #0xc0	; 192
      001399 01                    2360 	.db #0x01	; 1
      00139A 03                    2361 	.db #0x03	; 3
      00139B 07                    2362 	.db #0x07	; 7
      00139C 0F                    2363 	.db #0x0f	; 15
      00139D 0F                    2364 	.db #0x0f	; 15
      00139E 0F                    2365 	.db #0x0f	; 15
      00139F 0F                    2366 	.db #0x0f	; 15
      0013A0 0F                    2367 	.db #0x0f	; 15
      0013A1 0F                    2368 	.db #0x0f	; 15
      0013A2 07                    2369 	.db #0x07	; 7
      0013A3 03                    2370 	.db #0x03	; 3
      0013A4 01                    2371 	.db #0x01	; 1
      0013A5                       2372 _bird_logo:
      0013A5 7E                    2373 	.db #0x7e	; 126
      0013A6 C3                    2374 	.db #0xc3	; 195
      0013A7 81                    2375 	.db #0x81	; 129
      0013A8 81                    2376 	.db #0x81	; 129
      0013A9 81                    2377 	.db #0x81	; 129
      0013AA 81                    2378 	.db #0x81	; 129
      0013AB C3                    2379 	.db #0xc3	; 195
      0013AC 7E                    2380 	.db #0x7e	; 126
                                   2381 	.area CONST   (CODE)
      0013AD                       2382 ___str_0:
      0013AD 53 20                 2383 	.ascii "S "
      0013AF 00                    2384 	.db 0x00
                                   2385 	.area CSEG    (CODE)
                                   2386 	.area CONST   (CODE)
      0013B0                       2387 ___str_1:
      0013B0 41 20                 2388 	.ascii "A "
      0013B2 00                    2389 	.db 0x00
                                   2390 	.area CSEG    (CODE)
                                   2391 	.area CONST   (CODE)
      0013B3                       2392 ___str_2:
      0013B3 20 20 20 20 20 20 20  2393 	.ascii "             "
             20 20 20 20 20 20
      0013C0 00                    2394 	.db 0x00
                                   2395 	.area CSEG    (CODE)
                                   2396 	.area CONST   (CODE)
      0013C1                       2397 ___str_3:
      0013C1 57 61 69 74 69 6E 67  2398 	.ascii "Waiting .... "
             20 2E 2E 2E 2E 20
      0013CE 00                    2399 	.db 0x00
                                   2400 	.area CSEG    (CODE)
      000D24                       2401 _sine_table:
      000D24 00 00 00 00           2402 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      000D28 33 C4 31 3E           2403 	.byte #0x33, #0xc4, #0x31, #0x3e	;  1.736000e-01
      000D2C A0 1A AF 3E           2404 	.byte #0xa0, #0x1a, #0xaf, #0x3e	;  3.420000e-01
      000D30 00 00 00 3F           2405 	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
      000D34 8A 8E 24 3F           2406 	.byte #0x8a, #0x8e, #0x24, #0x3f	;  6.428000e-01
      000D38 93 18 44 3F           2407 	.byte #0x93, #0x18, #0x44, #0x3f	;  7.660000e-01
      000D3C 2D B2 5D 3F           2408 	.byte #0x2d, #0xb2, #0x5d, #0x3f	;  8.660000e-01
      000D40 2E 90 70 3F           2409 	.byte #0x2e, #0x90, #0x70, #0x3f	;  9.397000e-01
      000D44 DA 1B 7C 3F           2410 	.byte #0xda, #0x1b, #0x7c, #0x3f	;  9.848000e-01
      000D48 00 00 80 3F           2411 	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
                                   2412 	.area CONST   (CODE)
      0013CF                       2413 ___str_4:
      0013CF 20 20 20              2414 	.ascii "   "
      0013D2 00                    2415 	.db 0x00
                                   2416 	.area CSEG    (CODE)
                                   2417 	.area CONST   (CODE)
      0013D3                       2418 ___str_5:
      0013D3 20                    2419 	.ascii " "
      0013D4 00                    2420 	.db 0x00
                                   2421 	.area CSEG    (CODE)
                                   2422 	.area XINIT   (CODE)
                                   2423 	.area CABS    (ABS,CODE)
