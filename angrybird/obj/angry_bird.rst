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
                                     15 	.globl _button_right_logo
                                     16 	.globl _button_left_logo
                                     17 	.globl _volume_logo
                                     18 	.globl _music_logo
                                     19 	.globl _button_down_logo
                                     20 	.globl _button_up_logo
                                     21 	.globl _angry_bird_logo
                                     22 	.globl _oledSendData
                                     23 	.globl _OLED_SetCursor
                                     24 	.globl _OLED_Clear
                                     25 	.globl _OLED_DisplayString
                                     26 	.globl _delay_ms
                                     27 	.globl _strlen
                                     28 	.globl _CY
                                     29 	.globl _AC
                                     30 	.globl _F0
                                     31 	.globl _RS1
                                     32 	.globl _RS0
                                     33 	.globl _OV
                                     34 	.globl _F1
                                     35 	.globl _P
                                     36 	.globl _PS
                                     37 	.globl _PT1
                                     38 	.globl _PX1
                                     39 	.globl _PT0
                                     40 	.globl _PX0
                                     41 	.globl _RD
                                     42 	.globl _WR
                                     43 	.globl _T1
                                     44 	.globl _T0
                                     45 	.globl _INT1
                                     46 	.globl _INT0
                                     47 	.globl _TXD
                                     48 	.globl _RXD
                                     49 	.globl _P3_7
                                     50 	.globl _P3_6
                                     51 	.globl _P3_5
                                     52 	.globl _P3_4
                                     53 	.globl _P3_3
                                     54 	.globl _P3_2
                                     55 	.globl _P3_1
                                     56 	.globl _P3_0
                                     57 	.globl _EA
                                     58 	.globl _ES
                                     59 	.globl _ET1
                                     60 	.globl _EX1
                                     61 	.globl _ET0
                                     62 	.globl _EX0
                                     63 	.globl _P2_7
                                     64 	.globl _P2_6
                                     65 	.globl _P2_5
                                     66 	.globl _P2_4
                                     67 	.globl _P2_3
                                     68 	.globl _P2_2
                                     69 	.globl _P2_1
                                     70 	.globl _P2_0
                                     71 	.globl _SM0
                                     72 	.globl _SM1
                                     73 	.globl _SM2
                                     74 	.globl _REN
                                     75 	.globl _TB8
                                     76 	.globl _RB8
                                     77 	.globl _TI
                                     78 	.globl _RI
                                     79 	.globl _P1_7
                                     80 	.globl _P1_6
                                     81 	.globl _P1_5
                                     82 	.globl _P1_4
                                     83 	.globl _P1_3
                                     84 	.globl _P1_2
                                     85 	.globl _P1_1
                                     86 	.globl _P1_0
                                     87 	.globl _TF1
                                     88 	.globl _TR1
                                     89 	.globl _TF0
                                     90 	.globl _TR0
                                     91 	.globl _IE1
                                     92 	.globl _IT1
                                     93 	.globl _IE0
                                     94 	.globl _IT0
                                     95 	.globl _P0_7
                                     96 	.globl _P0_6
                                     97 	.globl _P0_5
                                     98 	.globl _P0_4
                                     99 	.globl _P0_3
                                    100 	.globl _P0_2
                                    101 	.globl _P0_1
                                    102 	.globl _P0_0
                                    103 	.globl _B
                                    104 	.globl _ACC
                                    105 	.globl _PSW
                                    106 	.globl _IP
                                    107 	.globl _P3
                                    108 	.globl _IE
                                    109 	.globl _P2
                                    110 	.globl _SBUF
                                    111 	.globl _SCON
                                    112 	.globl _P1
                                    113 	.globl _TH1
                                    114 	.globl _TH0
                                    115 	.globl _TL1
                                    116 	.globl _TL0
                                    117 	.globl _TMOD
                                    118 	.globl _TCON
                                    119 	.globl _PCON
                                    120 	.globl _DPH
                                    121 	.globl _DPL
                                    122 	.globl _SP
                                    123 	.globl _P0
                                    124 	.globl _prebut_enter
                                    125 	.globl _prebut_right
                                    126 	.globl _prebut_left
                                    127 	.globl _prebut_down
                                    128 	.globl _prebut_up
                                    129 	.globl _pig_amt
                                    130 	.globl _bird_amt
                                    131 	.globl _cur_state
                                    132 	.globl _control_strength
                                    133 	.globl _control_angle
                                    134 	.globl _volume_value
                                    135 	.globl _music_value
                                    136 	.globl _setting_state_past
                                    137 	.globl _setting_state
                                    138 	.globl _selection_list
                                    139 	.globl _selection_list_past
                                    140 	.globl _selection_list_cur
                                    141 	.globl _col_offset
                                    142 	.globl _row_offset
                                    143 	.globl _angrybird_display_home
                                    144 	.globl _angrybird_display_setting
                                    145 	.globl _angrybird_display_game
                                    146 	.globl _angrybird_state_machine
                                    147 	.globl _angrybird_home_state
                                    148 	.globl _angrybird_setting_state
                                    149 	.globl _angrybird_game_state
                                    150 	.globl _getsine
                                    151 	.globl _getcosine
                                    152 	.globl _pow_2
                                    153 ;--------------------------------------------------------
                                    154 ; special function registers
                                    155 ;--------------------------------------------------------
                                    156 	.area RSEG    (ABS,DATA)
      000000                        157 	.org 0x0000
                           000080   158 _P0	=	0x0080
                           000081   159 _SP	=	0x0081
                           000082   160 _DPL	=	0x0082
                           000083   161 _DPH	=	0x0083
                           000087   162 _PCON	=	0x0087
                           000088   163 _TCON	=	0x0088
                           000089   164 _TMOD	=	0x0089
                           00008A   165 _TL0	=	0x008a
                           00008B   166 _TL1	=	0x008b
                           00008C   167 _TH0	=	0x008c
                           00008D   168 _TH1	=	0x008d
                           000090   169 _P1	=	0x0090
                           000098   170 _SCON	=	0x0098
                           000099   171 _SBUF	=	0x0099
                           0000A0   172 _P2	=	0x00a0
                           0000A8   173 _IE	=	0x00a8
                           0000B0   174 _P3	=	0x00b0
                           0000B8   175 _IP	=	0x00b8
                           0000D0   176 _PSW	=	0x00d0
                           0000E0   177 _ACC	=	0x00e0
                           0000F0   178 _B	=	0x00f0
                                    179 ;--------------------------------------------------------
                                    180 ; special function bits
                                    181 ;--------------------------------------------------------
                                    182 	.area RSEG    (ABS,DATA)
      000000                        183 	.org 0x0000
                           000080   184 _P0_0	=	0x0080
                           000081   185 _P0_1	=	0x0081
                           000082   186 _P0_2	=	0x0082
                           000083   187 _P0_3	=	0x0083
                           000084   188 _P0_4	=	0x0084
                           000085   189 _P0_5	=	0x0085
                           000086   190 _P0_6	=	0x0086
                           000087   191 _P0_7	=	0x0087
                           000088   192 _IT0	=	0x0088
                           000089   193 _IE0	=	0x0089
                           00008A   194 _IT1	=	0x008a
                           00008B   195 _IE1	=	0x008b
                           00008C   196 _TR0	=	0x008c
                           00008D   197 _TF0	=	0x008d
                           00008E   198 _TR1	=	0x008e
                           00008F   199 _TF1	=	0x008f
                           000090   200 _P1_0	=	0x0090
                           000091   201 _P1_1	=	0x0091
                           000092   202 _P1_2	=	0x0092
                           000093   203 _P1_3	=	0x0093
                           000094   204 _P1_4	=	0x0094
                           000095   205 _P1_5	=	0x0095
                           000096   206 _P1_6	=	0x0096
                           000097   207 _P1_7	=	0x0097
                           000098   208 _RI	=	0x0098
                           000099   209 _TI	=	0x0099
                           00009A   210 _RB8	=	0x009a
                           00009B   211 _TB8	=	0x009b
                           00009C   212 _REN	=	0x009c
                           00009D   213 _SM2	=	0x009d
                           00009E   214 _SM1	=	0x009e
                           00009F   215 _SM0	=	0x009f
                           0000A0   216 _P2_0	=	0x00a0
                           0000A1   217 _P2_1	=	0x00a1
                           0000A2   218 _P2_2	=	0x00a2
                           0000A3   219 _P2_3	=	0x00a3
                           0000A4   220 _P2_4	=	0x00a4
                           0000A5   221 _P2_5	=	0x00a5
                           0000A6   222 _P2_6	=	0x00a6
                           0000A7   223 _P2_7	=	0x00a7
                           0000A8   224 _EX0	=	0x00a8
                           0000A9   225 _ET0	=	0x00a9
                           0000AA   226 _EX1	=	0x00aa
                           0000AB   227 _ET1	=	0x00ab
                           0000AC   228 _ES	=	0x00ac
                           0000AF   229 _EA	=	0x00af
                           0000B0   230 _P3_0	=	0x00b0
                           0000B1   231 _P3_1	=	0x00b1
                           0000B2   232 _P3_2	=	0x00b2
                           0000B3   233 _P3_3	=	0x00b3
                           0000B4   234 _P3_4	=	0x00b4
                           0000B5   235 _P3_5	=	0x00b5
                           0000B6   236 _P3_6	=	0x00b6
                           0000B7   237 _P3_7	=	0x00b7
                           0000B0   238 _RXD	=	0x00b0
                           0000B1   239 _TXD	=	0x00b1
                           0000B2   240 _INT0	=	0x00b2
                           0000B3   241 _INT1	=	0x00b3
                           0000B4   242 _T0	=	0x00b4
                           0000B5   243 _T1	=	0x00b5
                           0000B6   244 _WR	=	0x00b6
                           0000B7   245 _RD	=	0x00b7
                           0000B8   246 _PX0	=	0x00b8
                           0000B9   247 _PT0	=	0x00b9
                           0000BA   248 _PX1	=	0x00ba
                           0000BB   249 _PT1	=	0x00bb
                           0000BC   250 _PS	=	0x00bc
                           0000D0   251 _P	=	0x00d0
                           0000D1   252 _F1	=	0x00d1
                           0000D2   253 _OV	=	0x00d2
                           0000D3   254 _RS0	=	0x00d3
                           0000D4   255 _RS1	=	0x00d4
                           0000D5   256 _F0	=	0x00d5
                           0000D6   257 _AC	=	0x00d6
                           0000D7   258 _CY	=	0x00d7
                                    259 ;--------------------------------------------------------
                                    260 ; overlayable register banks
                                    261 ;--------------------------------------------------------
                                    262 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        263 	.ds 8
                                    264 ;--------------------------------------------------------
                                    265 ; internal ram data
                                    266 ;--------------------------------------------------------
                                    267 	.area DSEG    (DATA)
      000021                        268 _row_offset::
      000021                        269 	.ds 2
      000023                        270 _col_offset::
      000023                        271 	.ds 2
      000025                        272 _selection_list_cur::
      000025                        273 	.ds 2
      000027                        274 _selection_list_past::
      000027                        275 	.ds 2
      000029                        276 _selection_list::
      000029                        277 	.ds 9
      000032                        278 _setting_state::
      000032                        279 	.ds 2
      000034                        280 _setting_state_past::
      000034                        281 	.ds 2
      000036                        282 _music_value::
      000036                        283 	.ds 2
      000038                        284 _volume_value::
      000038                        285 	.ds 2
      00003A                        286 _control_angle::
      00003A                        287 	.ds 2
      00003C                        288 _control_strength::
      00003C                        289 	.ds 2
      00003E                        290 _angrybird_display_game_control_strength__65537_144:
      00003E                        291 	.ds 2
      000040                        292 _angrybird_display_game_control_angle__65537_144:
      000040                        293 	.ds 5
      000045                        294 _angrybird_display_game_angle__65539_146:
      000045                        295 	.ds 2
      000047                        296 _cur_state::
      000047                        297 	.ds 2
      000049                        298 _bird_amt::
      000049                        299 	.ds 2
      00004B                        300 _pig_amt::
      00004B                        301 	.ds 2
      00004D                        302 _prebut_up::
      00004D                        303 	.ds 2
      00004F                        304 _prebut_down::
      00004F                        305 	.ds 2
      000051                        306 _prebut_left::
      000051                        307 	.ds 2
      000053                        308 _prebut_right::
      000053                        309 	.ds 2
      000055                        310 _prebut_enter::
      000055                        311 	.ds 2
      000057                        312 _angrybird_game_state_control_angle__196609_181:
      000057                        313 	.ds 5
      00005C                        314 _angrybird_game_state_angle__196610_182:
      00005C                        315 	.ds 2
      00005E                        316 _angrybird_game_state_control_strength__196609_187:
      00005E                        317 	.ds 2
      000060                        318 _angrybird_game_state_delta_y_196609_194:
      000060                        319 	.ds 4
      000064                        320 _angrybird_game_state_delta_x_196609_194:
      000064                        321 	.ds 4
      000068                        322 _angrybird_game_state_peak_x_196609_194:
      000068                        323 	.ds 4
      00006C                        324 _angrybird_game_state_peak_y_196609_194:
      00006C                        325 	.ds 4
      000070                        326 _angrybird_game_state_a_196609_194:
      000070                        327 	.ds 4
      000074                        328 _angrybird_game_state_i_262145_199:
      000074                        329 	.ds 2
      000076                        330 _angrybird_game_state_output_row_327681_200:
      000076                        331 	.ds 2
      000078                        332 _angrybird_game_state_sloc1_1_0:
      000078                        333 	.ds 4
                                    334 ;--------------------------------------------------------
                                    335 ; overlayable items in internal ram
                                    336 ;--------------------------------------------------------
                                    337 ;--------------------------------------------------------
                                    338 ; indirectly addressable internal ram data
                                    339 ;--------------------------------------------------------
                                    340 	.area ISEG    (DATA)
                                    341 ;--------------------------------------------------------
                                    342 ; absolute internal ram data
                                    343 ;--------------------------------------------------------
                                    344 	.area IABS    (ABS,DATA)
                                    345 	.area IABS    (ABS,DATA)
                                    346 ;--------------------------------------------------------
                                    347 ; bit data
                                    348 ;--------------------------------------------------------
                                    349 	.area BSEG    (BIT)
      000000                        350 _angrybird_display_game_sloc0_1_0:
      000000                        351 	.ds 1
      000001                        352 _angrybird_game_state_sloc0_1_0:
      000001                        353 	.ds 1
                                    354 ;--------------------------------------------------------
                                    355 ; paged external ram data
                                    356 ;--------------------------------------------------------
                                    357 	.area PSEG    (PAG,XDATA)
                                    358 ;--------------------------------------------------------
                                    359 ; uninitialized external ram data
                                    360 ;--------------------------------------------------------
                                    361 	.area XSEG    (XDATA)
                                    362 ;--------------------------------------------------------
                                    363 ; absolute external ram data
                                    364 ;--------------------------------------------------------
                                    365 	.area XABS    (ABS,XDATA)
                                    366 ;--------------------------------------------------------
                                    367 ; initialized external ram data
                                    368 ;--------------------------------------------------------
                                    369 	.area XISEG   (XDATA)
                                    370 	.area HOME    (CODE)
                                    371 	.area GSINIT0 (CODE)
                                    372 	.area GSINIT1 (CODE)
                                    373 	.area GSINIT2 (CODE)
                                    374 	.area GSINIT3 (CODE)
                                    375 	.area GSINIT4 (CODE)
                                    376 	.area GSINIT5 (CODE)
                                    377 	.area GSINIT  (CODE)
                                    378 	.area GSFINAL (CODE)
                                    379 	.area CSEG    (CODE)
                                    380 ;--------------------------------------------------------
                                    381 ; global & static initialisations
                                    382 ;--------------------------------------------------------
                                    383 	.area HOME    (CODE)
                                    384 	.area GSINIT  (CODE)
                                    385 	.area GSFINAL (CODE)
                                    386 	.area GSINIT  (CODE)
                                    387 ;	./src/angry_bird.c:61: int selection_list_cur = 1, selection_list_past = 1;
      00005F 75 25 01         [24]  388 	mov	_selection_list_cur,#0x01
      000062 75 26 00         [24]  389 	mov	(_selection_list_cur + 1),#0x00
                                    390 ;	./src/angry_bird.c:61: char **selection_list[] = {"Setting", "Easy", "Hard"};
      000065 75 27 01         [24]  391 	mov	_selection_list_past,#0x01
      000068 75 28 00         [24]  392 	mov	(_selection_list_past + 1),#0x00
                                    393 ;	./src/angry_bird.c:62: 
      00006B 75 29 87         [24]  394 	mov	(_selection_list + 0),#___str_6
      00006E 75 2A 18         [24]  395 	mov	(_selection_list + 1),#(___str_6 >> 8)
      000071 75 2B 80         [24]  396 	mov	(_selection_list + 2),#0x80
      000074 75 2C 8F         [24]  397 	mov	((_selection_list + 0x0003) + 0),#___str_7
      000077 75 2D 18         [24]  398 	mov	((_selection_list + 0x0003) + 1),#(___str_7 >> 8)
      00007A 75 2E 80         [24]  399 	mov	((_selection_list + 0x0003) + 2),#0x80
      00007D 75 2F 94         [24]  400 	mov	((_selection_list + 0x0006) + 0),#___str_8
      000080 75 30 18         [24]  401 	mov	((_selection_list + 0x0006) + 1),#(___str_8 >> 8)
      000083 75 31 80         [24]  402 	mov	((_selection_list + 0x0006) + 2),#0x80
                                    403 ;	./src/angry_bird.c:107: int setting_state = 1, setting_state_past = 1;
      000086 75 32 01         [24]  404 	mov	_setting_state,#0x01
      000089 75 33 00         [24]  405 	mov	(_setting_state + 1),#0x00
                                    406 ;	./src/angry_bird.c:107: int music_value = 0, volume_value = 0;
      00008C 75 34 01         [24]  407 	mov	_setting_state_past,#0x01
      00008F 75 35 00         [24]  408 	mov	(_setting_state_past + 1),#0x00
                                    409 ;	./src/angry_bird.c:108: void angrybird_display_setting(void)
      000092 E4               [12]  410 	clr	a
      000093 F5 36            [12]  411 	mov	_music_value,a
      000095 F5 37            [12]  412 	mov	(_music_value + 1),a
                                    413 ;	./src/angry_bird.c:108: int music_value = 0, volume_value = 0;
      000097 F5 38            [12]  414 	mov	_volume_value,a
      000099 F5 39            [12]  415 	mov	(_volume_value + 1),a
                                    416 ;	./src/angry_bird.c:271: int cur_state = 1;
      00009B 75 47 01         [24]  417 	mov	_cur_state,#0x01
      00009E F5 48            [12]  418 	mov	(_cur_state + 1),a
                                    419 ;	./src/angry_bird.c:296: unsigned int prebut_up = 0;
      0000A0 F5 4D            [12]  420 	mov	_prebut_up,a
      0000A2 F5 4E            [12]  421 	mov	(_prebut_up + 1),a
                                    422 ;	./src/angry_bird.c:297: unsigned int prebut_down = 0;
      0000A4 F5 4F            [12]  423 	mov	_prebut_down,a
      0000A6 F5 50            [12]  424 	mov	(_prebut_down + 1),a
                                    425 ;	./src/angry_bird.c:298: unsigned int prebut_left = 0;
      0000A8 F5 51            [12]  426 	mov	_prebut_left,a
      0000AA F5 52            [12]  427 	mov	(_prebut_left + 1),a
                                    428 ;	./src/angry_bird.c:299: unsigned int prebut_right = 0;
      0000AC F5 53            [12]  429 	mov	_prebut_right,a
      0000AE F5 54            [12]  430 	mov	(_prebut_right + 1),a
                                    431 ;	./src/angry_bird.c:300: unsigned int prebut_enter = 0;
      0000B0 F5 55            [12]  432 	mov	_prebut_enter,a
      0000B2 F5 56            [12]  433 	mov	(_prebut_enter + 1),a
                                    434 ;--------------------------------------------------------
                                    435 ; Home
                                    436 ;--------------------------------------------------------
                                    437 	.area HOME    (CODE)
                                    438 	.area HOME    (CODE)
                                    439 ;--------------------------------------------------------
                                    440 ; code
                                    441 ;--------------------------------------------------------
                                    442 	.area CSEG    (CODE)
                                    443 ;------------------------------------------------------------
                                    444 ;Allocation info for local variables in function 'angrybird_display_home'
                                    445 ;------------------------------------------------------------
                                    446 ;j                         Allocated to registers r6 r7 
                                    447 ;i                         Allocated to registers r4 r5 
                                    448 ;j                         Allocated to registers r6 r7 
                                    449 ;i                         Allocated to registers r5 
                                    450 ;j                         Allocated to registers r6 r7 
                                    451 ;i                         Allocated to registers r5 
                                    452 ;------------------------------------------------------------
                                    453 ;	./src/angry_bird.c:64: void angrybird_display_home(void)
                                    454 ;	-----------------------------------------
                                    455 ;	 function angrybird_display_home
                                    456 ;	-----------------------------------------
      0001D1                        457 _angrybird_display_home:
                           000007   458 	ar7 = 0x07
                           000006   459 	ar6 = 0x06
                           000005   460 	ar5 = 0x05
                           000004   461 	ar4 = 0x04
                           000003   462 	ar3 = 0x03
                           000002   463 	ar2 = 0x02
                           000001   464 	ar1 = 0x01
                           000000   465 	ar0 = 0x00
                                    466 ;	./src/angry_bird.c:66: OLED_Clear();
      0001D1 12 10 71         [24]  467 	lcall	_OLED_Clear
                                    468 ;	./src/angry_bird.c:67: row_offset = image_row_cursor;
      0001D4 E4               [12]  469 	clr	a
      0001D5 F5 21            [12]  470 	mov	_row_offset,a
      0001D7 F5 22            [12]  471 	mov	(_row_offset + 1),a
                                    472 ;	./src/angry_bird.c:68: col_offset = image_col_cursor;
      0001D9 F5 23            [12]  473 	mov	_col_offset,a
      0001DB F5 24            [12]  474 	mov	(_col_offset + 1),a
                                    475 ;	./src/angry_bird.c:69: for (int j = 0; j < image_cul_size; j++)
      0001DD FE               [12]  476 	mov	r6,a
      0001DE FF               [12]  477 	mov	r7,a
      0001DF                        478 00111$:
      0001DF C3               [12]  479 	clr	c
      0001E0 EE               [12]  480 	mov	a,r6
      0001E1 94 40            [12]  481 	subb	a,#0x40
      0001E3 EF               [12]  482 	mov	a,r7
      0001E4 64 80            [12]  483 	xrl	a,#0x80
      0001E6 94 80            [12]  484 	subb	a,#0x80
      0001E8 50 7B            [24]  485 	jnc	00102$
                                    486 ;	./src/angry_bird.c:71: for (int i = 0; i < image_row_size; i++)
      0001EA 7C 00            [12]  487 	mov	r4,#0x00
      0001EC 7D 00            [12]  488 	mov	r5,#0x00
      0001EE                        489 00108$:
      0001EE C3               [12]  490 	clr	c
      0001EF EC               [12]  491 	mov	a,r4
      0001F0 94 08            [12]  492 	subb	a,#0x08
      0001F2 ED               [12]  493 	mov	a,r5
      0001F3 64 80            [12]  494 	xrl	a,#0x80
      0001F5 94 80            [12]  495 	subb	a,#0x80
      0001F7 50 64            [24]  496 	jnc	00112$
                                    497 ;	./src/angry_bird.c:73: OLED_SetCursor(row_offset + i, col_offset + j);
      0001F9 AB 21            [24]  498 	mov	r3,_row_offset
      0001FB 8C 02            [24]  499 	mov	ar2,r4
      0001FD EA               [12]  500 	mov	a,r2
      0001FE 2B               [12]  501 	add	a,r3
      0001FF F5 82            [12]  502 	mov	dpl,a
      000201 AB 23            [24]  503 	mov	r3,_col_offset
      000203 8E 02            [24]  504 	mov	ar2,r6
      000205 EA               [12]  505 	mov	a,r2
      000206 2B               [12]  506 	add	a,r3
      000207 F5 0B            [12]  507 	mov	_OLED_SetCursor_PARM_2,a
      000209 C0 07            [24]  508 	push	ar7
      00020B C0 06            [24]  509 	push	ar6
      00020D C0 05            [24]  510 	push	ar5
      00020F C0 04            [24]  511 	push	ar4
      000211 12 10 9C         [24]  512 	lcall	_OLED_SetCursor
      000214 D0 04            [24]  513 	pop	ar4
      000216 D0 05            [24]  514 	pop	ar5
      000218 D0 06            [24]  515 	pop	ar6
      00021A D0 07            [24]  516 	pop	ar7
                                    517 ;	./src/angry_bird.c:74: oledSendData(angry_bird_logo[image_cul_size * i + j]);
      00021C 8C 02            [24]  518 	mov	ar2,r4
      00021E ED               [12]  519 	mov	a,r5
      00021F 54 03            [12]  520 	anl	a,#0x03
      000221 A2 E0            [12]  521 	mov	c,acc.0
      000223 CA               [12]  522 	xch	a,r2
      000224 13               [12]  523 	rrc	a
      000225 CA               [12]  524 	xch	a,r2
      000226 13               [12]  525 	rrc	a
      000227 A2 E0            [12]  526 	mov	c,acc.0
      000229 CA               [12]  527 	xch	a,r2
      00022A 13               [12]  528 	rrc	a
      00022B CA               [12]  529 	xch	a,r2
      00022C 13               [12]  530 	rrc	a
      00022D CA               [12]  531 	xch	a,r2
      00022E FB               [12]  532 	mov	r3,a
      00022F EE               [12]  533 	mov	a,r6
      000230 2A               [12]  534 	add	a,r2
      000231 FA               [12]  535 	mov	r2,a
      000232 EF               [12]  536 	mov	a,r7
      000233 3B               [12]  537 	addc	a,r3
      000234 FB               [12]  538 	mov	r3,a
      000235 EA               [12]  539 	mov	a,r2
      000236 24 CF            [12]  540 	add	a,#_angry_bird_logo
      000238 F5 82            [12]  541 	mov	dpl,a
      00023A EB               [12]  542 	mov	a,r3
      00023B 34 15            [12]  543 	addc	a,#(_angry_bird_logo >> 8)
      00023D F5 83            [12]  544 	mov	dph,a
      00023F E4               [12]  545 	clr	a
      000240 93               [24]  546 	movc	a,@a+dptr
      000241 F5 82            [12]  547 	mov	dpl,a
      000243 C0 07            [24]  548 	push	ar7
      000245 C0 06            [24]  549 	push	ar6
      000247 C0 05            [24]  550 	push	ar5
      000249 C0 04            [24]  551 	push	ar4
      00024B 12 10 D8         [24]  552 	lcall	_oledSendData
      00024E D0 04            [24]  553 	pop	ar4
      000250 D0 05            [24]  554 	pop	ar5
      000252 D0 06            [24]  555 	pop	ar6
      000254 D0 07            [24]  556 	pop	ar7
                                    557 ;	./src/angry_bird.c:71: for (int i = 0; i < image_row_size; i++)
      000256 0C               [12]  558 	inc	r4
      000257 BC 00 94         [24]  559 	cjne	r4,#0x00,00108$
      00025A 0D               [12]  560 	inc	r5
      00025B 80 91            [24]  561 	sjmp	00108$
      00025D                        562 00112$:
                                    563 ;	./src/angry_bird.c:69: for (int j = 0; j < image_cul_size; j++)
      00025D 0E               [12]  564 	inc	r6
      00025E BE 00 01         [24]  565 	cjne	r6,#0x00,00208$
      000261 0F               [12]  566 	inc	r7
      000262                        567 00208$:
      000262 02 01 DF         [24]  568 	ljmp	00111$
      000265                        569 00102$:
                                    570 ;	./src/angry_bird.c:78: OLED_SetCursor(game_name_row_cursor, game_name_col_cursor);
      000265 75 0B 3C         [24]  571 	mov	_OLED_SetCursor_PARM_2,#0x3c
      000268 75 82 01         [24]  572 	mov	dpl,#0x01
      00026B 12 10 9C         [24]  573 	lcall	_OLED_SetCursor
                                    574 ;	./src/angry_bird.c:79: OLED_DisplayString("Angry Bird!");
      00026E 90 18 67         [24]  575 	mov	dptr,#___str_0
      000271 75 F0 80         [24]  576 	mov	b,#0x80
      000274 12 10 46         [24]  577 	lcall	_OLED_DisplayString
                                    578 ;	./src/angry_bird.c:81: row_offset = button_up_row_cursor;
      000277 75 21 03         [24]  579 	mov	_row_offset,#0x03
      00027A 75 22 00         [24]  580 	mov	(_row_offset + 1),#0x00
                                    581 ;	./src/angry_bird.c:82: col_offset = button_up_col_cursor;
      00027D 75 23 55         [24]  582 	mov	_col_offset,#0x55
      000280 75 24 00         [24]  583 	mov	(_col_offset + 1),#0x00
                                    584 ;	./src/angry_bird.c:83: for (int j = 0; j < button_cul_size; j++)
      000283 7E 00            [12]  585 	mov	r6,#0x00
      000285 7F 00            [12]  586 	mov	r7,#0x00
      000287                        587 00117$:
      000287 C3               [12]  588 	clr	c
      000288 EE               [12]  589 	mov	a,r6
      000289 94 10            [12]  590 	subb	a,#0x10
      00028B EF               [12]  591 	mov	a,r7
      00028C 64 80            [12]  592 	xrl	a,#0x80
      00028E 94 80            [12]  593 	subb	a,#0x80
      000290 50 45            [24]  594 	jnc	00104$
                                    595 ;	./src/angry_bird.c:85: for (int i = 0; i < button_row_size; i++)
      000292 7D 00            [12]  596 	mov	r5,#0x00
      000294                        597 00114$:
      000294 BD 01 00         [24]  598 	cjne	r5,#0x01,00210$
      000297                        599 00210$:
      000297 50 37            [24]  600 	jnc	00118$
                                    601 ;	./src/angry_bird.c:87: OLED_SetCursor(row_offset + i, col_offset + j);
      000299 AC 21            [24]  602 	mov	r4,_row_offset
      00029B E4               [12]  603 	clr	a
      00029C 2C               [12]  604 	add	a,r4
      00029D F5 82            [12]  605 	mov	dpl,a
      00029F AC 23            [24]  606 	mov	r4,_col_offset
      0002A1 8E 03            [24]  607 	mov	ar3,r6
      0002A3 EB               [12]  608 	mov	a,r3
      0002A4 2C               [12]  609 	add	a,r4
      0002A5 F5 0B            [12]  610 	mov	_OLED_SetCursor_PARM_2,a
      0002A7 C0 07            [24]  611 	push	ar7
      0002A9 C0 06            [24]  612 	push	ar6
      0002AB C0 03            [24]  613 	push	ar3
      0002AD 12 10 9C         [24]  614 	lcall	_OLED_SetCursor
      0002B0 D0 03            [24]  615 	pop	ar3
                                    616 ;	./src/angry_bird.c:88: oledSendData(button_up_logo[button_cul_size * i + j]);
      0002B2 EB               [12]  617 	mov	a,r3
      0002B3 33               [12]  618 	rlc	a
      0002B4 95 E0            [12]  619 	subb	a,acc
      0002B6 FC               [12]  620 	mov	r4,a
      0002B7 EB               [12]  621 	mov	a,r3
      0002B8 24 CF            [12]  622 	add	a,#_button_up_logo
      0002BA F5 82            [12]  623 	mov	dpl,a
      0002BC EC               [12]  624 	mov	a,r4
      0002BD 34 17            [12]  625 	addc	a,#(_button_up_logo >> 8)
      0002BF F5 83            [12]  626 	mov	dph,a
      0002C1 E4               [12]  627 	clr	a
      0002C2 93               [24]  628 	movc	a,@a+dptr
      0002C3 F5 82            [12]  629 	mov	dpl,a
      0002C5 12 10 D8         [24]  630 	lcall	_oledSendData
      0002C8 D0 06            [24]  631 	pop	ar6
      0002CA D0 07            [24]  632 	pop	ar7
                                    633 ;	./src/angry_bird.c:85: for (int i = 0; i < button_row_size; i++)
      0002CC 7D 01            [12]  634 	mov	r5,#0x01
      0002CE 80 C4            [24]  635 	sjmp	00114$
      0002D0                        636 00118$:
                                    637 ;	./src/angry_bird.c:83: for (int j = 0; j < button_cul_size; j++)
      0002D0 0E               [12]  638 	inc	r6
      0002D1 BE 00 B3         [24]  639 	cjne	r6,#0x00,00117$
      0002D4 0F               [12]  640 	inc	r7
      0002D5 80 B0            [24]  641 	sjmp	00117$
      0002D7                        642 00104$:
                                    643 ;	./src/angry_bird.c:92: row_offset = button_down_row_cursor;
      0002D7 75 21 07         [24]  644 	mov	_row_offset,#0x07
      0002DA 75 22 00         [24]  645 	mov	(_row_offset + 1),#0x00
                                    646 ;	./src/angry_bird.c:93: col_offset = button_down_col_cursor;
      0002DD 75 23 55         [24]  647 	mov	_col_offset,#0x55
      0002E0 75 24 00         [24]  648 	mov	(_col_offset + 1),#0x00
                                    649 ;	./src/angry_bird.c:94: for (int j = 0; j < button_cul_size; j++)
      0002E3 7E 00            [12]  650 	mov	r6,#0x00
      0002E5 7F 00            [12]  651 	mov	r7,#0x00
      0002E7                        652 00123$:
      0002E7 C3               [12]  653 	clr	c
      0002E8 EE               [12]  654 	mov	a,r6
      0002E9 94 10            [12]  655 	subb	a,#0x10
      0002EB EF               [12]  656 	mov	a,r7
      0002EC 64 80            [12]  657 	xrl	a,#0x80
      0002EE 94 80            [12]  658 	subb	a,#0x80
      0002F0 50 45            [24]  659 	jnc	00106$
                                    660 ;	./src/angry_bird.c:96: for (int i = 0; i < button_row_size; i++)
      0002F2 7D 00            [12]  661 	mov	r5,#0x00
      0002F4                        662 00120$:
      0002F4 BD 01 00         [24]  663 	cjne	r5,#0x01,00214$
      0002F7                        664 00214$:
      0002F7 50 37            [24]  665 	jnc	00124$
                                    666 ;	./src/angry_bird.c:98: OLED_SetCursor(row_offset + i, col_offset + j);
      0002F9 AC 21            [24]  667 	mov	r4,_row_offset
      0002FB E4               [12]  668 	clr	a
      0002FC 2C               [12]  669 	add	a,r4
      0002FD F5 82            [12]  670 	mov	dpl,a
      0002FF AC 23            [24]  671 	mov	r4,_col_offset
      000301 8E 03            [24]  672 	mov	ar3,r6
      000303 EB               [12]  673 	mov	a,r3
      000304 2C               [12]  674 	add	a,r4
      000305 F5 0B            [12]  675 	mov	_OLED_SetCursor_PARM_2,a
      000307 C0 07            [24]  676 	push	ar7
      000309 C0 06            [24]  677 	push	ar6
      00030B C0 03            [24]  678 	push	ar3
      00030D 12 10 9C         [24]  679 	lcall	_OLED_SetCursor
      000310 D0 03            [24]  680 	pop	ar3
                                    681 ;	./src/angry_bird.c:99: oledSendData(button_down_logo[button_cul_size * i + j]);
      000312 EB               [12]  682 	mov	a,r3
      000313 33               [12]  683 	rlc	a
      000314 95 E0            [12]  684 	subb	a,acc
      000316 FC               [12]  685 	mov	r4,a
      000317 EB               [12]  686 	mov	a,r3
      000318 24 DF            [12]  687 	add	a,#_button_down_logo
      00031A F5 82            [12]  688 	mov	dpl,a
      00031C EC               [12]  689 	mov	a,r4
      00031D 34 17            [12]  690 	addc	a,#(_button_down_logo >> 8)
      00031F F5 83            [12]  691 	mov	dph,a
      000321 E4               [12]  692 	clr	a
      000322 93               [24]  693 	movc	a,@a+dptr
      000323 F5 82            [12]  694 	mov	dpl,a
      000325 12 10 D8         [24]  695 	lcall	_oledSendData
      000328 D0 06            [24]  696 	pop	ar6
      00032A D0 07            [24]  697 	pop	ar7
                                    698 ;	./src/angry_bird.c:96: for (int i = 0; i < button_row_size; i++)
      00032C 7D 01            [12]  699 	mov	r5,#0x01
      00032E 80 C4            [24]  700 	sjmp	00120$
      000330                        701 00124$:
                                    702 ;	./src/angry_bird.c:94: for (int j = 0; j < button_cul_size; j++)
      000330 0E               [12]  703 	inc	r6
      000331 BE 00 B3         [24]  704 	cjne	r6,#0x00,00123$
      000334 0F               [12]  705 	inc	r7
      000335 80 B0            [24]  706 	sjmp	00123$
      000337                        707 00106$:
                                    708 ;	./src/angry_bird.c:103: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
      000337 85 25 0C         [24]  709 	mov	__mulint_PARM_2,_selection_list_cur
      00033A 85 26 0D         [24]  710 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      00033D 90 00 03         [24]  711 	mov	dptr,#0x0003
      000340 12 11 F3         [24]  712 	lcall	__mulint
      000343 E5 82            [12]  713 	mov	a,dpl
      000345 24 29            [12]  714 	add	a,#_selection_list
      000347 F9               [12]  715 	mov	r1,a
      000348 87 05            [24]  716 	mov	ar5,@r1
      00034A 09               [12]  717 	inc	r1
      00034B 87 06            [24]  718 	mov	ar6,@r1
      00034D 09               [12]  719 	inc	r1
      00034E 87 07            [24]  720 	mov	ar7,@r1
      000350 8D 82            [24]  721 	mov	dpl,r5
      000352 8E 83            [24]  722 	mov	dph,r6
      000354 8F F0            [24]  723 	mov	b,r7
      000356 12 13 89         [24]  724 	lcall	_strlen
      000359 AE 82            [24]  725 	mov	r6,dpl
      00035B 74 54            [12]  726 	mov	a,#0x54
      00035D C3               [12]  727 	clr	c
      00035E 9E               [12]  728 	subb	a,r6
      00035F F5 0B            [12]  729 	mov	_OLED_SetCursor_PARM_2,a
      000361 75 82 05         [24]  730 	mov	dpl,#0x05
      000364 12 10 9C         [24]  731 	lcall	_OLED_SetCursor
                                    732 ;	./src/angry_bird.c:104: OLED_DisplayString(selection_list[selection_list_cur]);
      000367 85 25 0C         [24]  733 	mov	__mulint_PARM_2,_selection_list_cur
      00036A 85 26 0D         [24]  734 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      00036D 90 00 03         [24]  735 	mov	dptr,#0x0003
      000370 12 11 F3         [24]  736 	lcall	__mulint
      000373 E5 82            [12]  737 	mov	a,dpl
      000375 24 29            [12]  738 	add	a,#_selection_list
      000377 F9               [12]  739 	mov	r1,a
      000378 87 05            [24]  740 	mov	ar5,@r1
      00037A 09               [12]  741 	inc	r1
      00037B 87 06            [24]  742 	mov	ar6,@r1
      00037D 09               [12]  743 	inc	r1
      00037E 87 07            [24]  744 	mov	ar7,@r1
      000380 8D 82            [24]  745 	mov	dpl,r5
      000382 8E 83            [24]  746 	mov	dph,r6
      000384 8F F0            [24]  747 	mov	b,r7
                                    748 ;	./src/angry_bird.c:105: }
      000386 02 10 46         [24]  749 	ljmp	_OLED_DisplayString
                                    750 ;------------------------------------------------------------
                                    751 ;Allocation info for local variables in function 'angrybird_display_setting'
                                    752 ;------------------------------------------------------------
                                    753 ;	./src/angry_bird.c:109: void angrybird_display_setting(void)
                                    754 ;	-----------------------------------------
                                    755 ;	 function angrybird_display_setting
                                    756 ;	-----------------------------------------
      000389                        757 _angrybird_display_setting:
                                    758 ;	./src/angry_bird.c:167: }
      000389 22               [24]  759 	ret
                                    760 ;------------------------------------------------------------
                                    761 ;Allocation info for local variables in function 'angrybird_display_game'
                                    762 ;------------------------------------------------------------
                                    763 ;control_strength_         Allocated with name '_angrybird_display_game_control_strength__65537_144'
                                    764 ;control_angle_            Allocated with name '_angrybird_display_game_control_angle__65537_144'
                                    765 ;i                         Allocated to registers r4 r5 
                                    766 ;angle_                    Allocated with name '_angrybird_display_game_angle__65539_146'
                                    767 ;j                         Allocated to registers r6 r7 
                                    768 ;i                         Allocated to registers r5 
                                    769 ;j                         Allocated to registers r6 r7 
                                    770 ;i                         Allocated to registers r5 
                                    771 ;j                         Allocated to registers r6 r7 
                                    772 ;i                         Allocated to registers r5 
                                    773 ;------------------------------------------------------------
                                    774 ;	./src/angry_bird.c:170: void angrybird_display_game(void)
                                    775 ;	-----------------------------------------
                                    776 ;	 function angrybird_display_game
                                    777 ;	-----------------------------------------
      00038A                        778 _angrybird_display_game:
                                    779 ;	./src/angry_bird.c:172: OLED_Clear();
      00038A 12 10 71         [24]  780 	lcall	_OLED_Clear
                                    781 ;	./src/angry_bird.c:176: control_strength_[0] = '0' + control_strength;
      00038D AF 3C            [24]  782 	mov	r7,_control_strength
      00038F 74 30            [12]  783 	mov	a,#0x30
      000391 2F               [12]  784 	add	a,r7
      000392 F5 3E            [12]  785 	mov	_angrybird_display_game_control_strength__65537_144,a
                                    786 ;	./src/angry_bird.c:177: control_strength_[1] = '\0';
                                    787 ;	./src/angry_bird.c:179: int i = 0;
                                    788 ;	./src/angry_bird.c:180: if (control_angle < 0)
      000394 E4               [12]  789 	clr	a
      000395 F5 3F            [12]  790 	mov	(_angrybird_display_game_control_strength__65537_144 + 0x0001),a
      000397 FE               [12]  791 	mov	r6,a
      000398 FF               [12]  792 	mov	r7,a
      000399 E5 3B            [12]  793 	mov	a,(_control_angle + 1)
      00039B 30 E7 07         [24]  794 	jnb	acc.7,00102$
                                    795 ;	./src/angry_bird.c:181: control_angle_[i++] = '-';
      00039E 7E 01            [12]  796 	mov	r6,#0x01
      0003A0 7F 00            [12]  797 	mov	r7,#0x00
      0003A2 75 40 2D         [24]  798 	mov	_angrybird_display_game_control_angle__65537_144,#0x2d
      0003A5                        799 00102$:
                                    800 ;	./src/angry_bird.c:182: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      0003A5 E5 3B            [12]  801 	mov	a,(_control_angle + 1)
      0003A7 33               [12]  802 	rlc	a
      0003A8 92 00            [24]  803 	mov	_angrybird_display_game_sloc0_1_0,c
      0003AA 40 06            [24]  804 	jc	00131$
      0003AC AC 3A            [24]  805 	mov	r4,_control_angle
      0003AE AD 3B            [24]  806 	mov	r5,(_control_angle + 1)
      0003B0 80 09            [24]  807 	sjmp	00132$
      0003B2                        808 00131$:
      0003B2 C3               [12]  809 	clr	c
      0003B3 E4               [12]  810 	clr	a
      0003B4 95 3A            [12]  811 	subb	a,_control_angle
      0003B6 FC               [12]  812 	mov	r4,a
      0003B7 E4               [12]  813 	clr	a
      0003B8 95 3B            [12]  814 	subb	a,(_control_angle + 1)
      0003BA FD               [12]  815 	mov	r5,a
      0003BB                        816 00132$:
      0003BB 8C 45            [24]  817 	mov	_angrybird_display_game_angle__65539_146,r4
      0003BD 8D 46            [24]  818 	mov	(_angrybird_display_game_angle__65539_146 + 1),r5
                                    819 ;	./src/angry_bird.c:183: if (angle_ % 100 / 10 != 0)
      0003BF 75 0C 64         [24]  820 	mov	__modsint_PARM_2,#0x64
      0003C2 75 0D 00         [24]  821 	mov	(__modsint_PARM_2 + 1),#0x00
      0003C5 85 45 82         [24]  822 	mov	dpl,_angrybird_display_game_angle__65539_146
      0003C8 85 46 83         [24]  823 	mov	dph,(_angrybird_display_game_angle__65539_146 + 1)
      0003CB C0 07            [24]  824 	push	ar7
      0003CD C0 06            [24]  825 	push	ar6
      0003CF 12 14 80         [24]  826 	lcall	__modsint
      0003D2 75 0C 0A         [24]  827 	mov	__divsint_PARM_2,#0x0a
      0003D5 75 0D 00         [24]  828 	mov	(__divsint_PARM_2 + 1),#0x00
      0003D8 12 14 E3         [24]  829 	lcall	__divsint
      0003DB AA 82            [24]  830 	mov	r2,dpl
      0003DD AB 83            [24]  831 	mov	r3,dph
      0003DF D0 06            [24]  832 	pop	ar6
      0003E1 D0 07            [24]  833 	pop	ar7
      0003E3 EA               [12]  834 	mov	a,r2
      0003E4 4B               [12]  835 	orl	a,r3
      0003E5 60 11            [24]  836 	jz	00104$
                                    837 ;	./src/angry_bird.c:184: control_angle_[i++] = '0' + angle_ % 100 / 10;
      0003E7 8E 04            [24]  838 	mov	ar4,r6
      0003E9 8F 05            [24]  839 	mov	ar5,r7
      0003EB 0E               [12]  840 	inc	r6
      0003EC BE 00 01         [24]  841 	cjne	r6,#0x00,00247$
      0003EF 0F               [12]  842 	inc	r7
      0003F0                        843 00247$:
      0003F0 EC               [12]  844 	mov	a,r4
      0003F1 24 40            [12]  845 	add	a,#_angrybird_display_game_control_angle__65537_144
      0003F3 F9               [12]  846 	mov	r1,a
      0003F4 74 30            [12]  847 	mov	a,#0x30
      0003F6 2A               [12]  848 	add	a,r2
      0003F7 F7               [12]  849 	mov	@r1,a
      0003F8                        850 00104$:
                                    851 ;	./src/angry_bird.c:185: control_angle_[i++] = '0' + angle_ % 10;
      0003F8 74 01            [12]  852 	mov	a,#0x01
      0003FA 2E               [12]  853 	add	a,r6
      0003FB FC               [12]  854 	mov	r4,a
      0003FC E4               [12]  855 	clr	a
      0003FD 3F               [12]  856 	addc	a,r7
      0003FE FD               [12]  857 	mov	r5,a
      0003FF EE               [12]  858 	mov	a,r6
      000400 24 40            [12]  859 	add	a,#_angrybird_display_game_control_angle__65537_144
      000402 F9               [12]  860 	mov	r1,a
      000403 75 0C 0A         [24]  861 	mov	__modsint_PARM_2,#0x0a
      000406 75 0D 00         [24]  862 	mov	(__modsint_PARM_2 + 1),#0x00
      000409 85 45 82         [24]  863 	mov	dpl,_angrybird_display_game_angle__65539_146
      00040C 85 46 83         [24]  864 	mov	dph,(_angrybird_display_game_angle__65539_146 + 1)
      00040F C0 05            [24]  865 	push	ar5
      000411 C0 04            [24]  866 	push	ar4
      000413 C0 01            [24]  867 	push	ar1
      000415 12 14 80         [24]  868 	lcall	__modsint
      000418 AE 82            [24]  869 	mov	r6,dpl
      00041A D0 01            [24]  870 	pop	ar1
      00041C D0 04            [24]  871 	pop	ar4
      00041E D0 05            [24]  872 	pop	ar5
      000420 74 30            [12]  873 	mov	a,#0x30
      000422 2E               [12]  874 	add	a,r6
      000423 F7               [12]  875 	mov	@r1,a
                                    876 ;	./src/angry_bird.c:186: control_angle_[i++] = '\0';
      000424 EC               [12]  877 	mov	a,r4
      000425 24 40            [12]  878 	add	a,#_angrybird_display_game_control_angle__65537_144
      000427 F8               [12]  879 	mov	r0,a
      000428 76 00            [12]  880 	mov	@r0,#0x00
                                    881 ;	./src/angry_bird.c:188: OLED_SetCursor(strength_text_row_cursor, 0);
      00042A 75 0B 00         [24]  882 	mov	_OLED_SetCursor_PARM_2,#0x00
      00042D 75 82 00         [24]  883 	mov	dpl,#0x00
      000430 12 10 9C         [24]  884 	lcall	_OLED_SetCursor
                                    885 ;	./src/angry_bird.c:189: OLED_DisplayString("S ");
      000433 90 18 73         [24]  886 	mov	dptr,#___str_1
      000436 75 F0 80         [24]  887 	mov	b,#0x80
      000439 12 10 46         [24]  888 	lcall	_OLED_DisplayString
                                    889 ;	./src/angry_bird.c:190: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      00043C 75 0B 0A         [24]  890 	mov	_OLED_SetCursor_PARM_2,#0x0a
      00043F 75 82 00         [24]  891 	mov	dpl,#0x00
      000442 12 10 9C         [24]  892 	lcall	_OLED_SetCursor
                                    893 ;	./src/angry_bird.c:191: OLED_DisplayString(control_strength_);
      000445 90 00 3E         [24]  894 	mov	dptr,#_angrybird_display_game_control_strength__65537_144
      000448 75 F0 40         [24]  895 	mov	b,#0x40
      00044B 12 10 46         [24]  896 	lcall	_OLED_DisplayString
                                    897 ;	./src/angry_bird.c:193: OLED_SetCursor(strength_text_row_cursor, 20);
      00044E 75 0B 14         [24]  898 	mov	_OLED_SetCursor_PARM_2,#0x14
      000451 75 82 00         [24]  899 	mov	dpl,#0x00
      000454 12 10 9C         [24]  900 	lcall	_OLED_SetCursor
                                    901 ;	./src/angry_bird.c:194: OLED_DisplayString("A ");
      000457 90 18 76         [24]  902 	mov	dptr,#___str_2
      00045A 75 F0 80         [24]  903 	mov	b,#0x80
      00045D 12 10 46         [24]  904 	lcall	_OLED_DisplayString
                                    905 ;	./src/angry_bird.c:195: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      000460 75 0B 1E         [24]  906 	mov	_OLED_SetCursor_PARM_2,#0x1e
      000463 75 82 00         [24]  907 	mov	dpl,#0x00
      000466 12 10 9C         [24]  908 	lcall	_OLED_SetCursor
                                    909 ;	./src/angry_bird.c:196: OLED_DisplayString(control_angle_);
      000469 90 00 40         [24]  910 	mov	dptr,#_angrybird_display_game_control_angle__65537_144
      00046C 75 F0 40         [24]  911 	mov	b,#0x40
      00046F 12 10 46         [24]  912 	lcall	_OLED_DisplayString
                                    913 ;	./src/angry_bird.c:214: row_offset = shoot_row_cursor;
      000472 75 21 06         [24]  914 	mov	_row_offset,#0x06
                                    915 ;	./src/angry_bird.c:215: col_offset = shoot_col_cursor;
      000475 E4               [12]  916 	clr	a
      000476 F5 22            [12]  917 	mov	(_row_offset + 1),a
      000478 F5 23            [12]  918 	mov	_col_offset,a
      00047A F5 24            [12]  919 	mov	(_col_offset + 1),a
                                    920 ;	./src/angry_bird.c:216: for (int j = 0; j < shoot_cul_size; j++)
      00047C FE               [12]  921 	mov	r6,a
      00047D FF               [12]  922 	mov	r7,a
      00047E                        923 00115$:
      00047E C3               [12]  924 	clr	c
      00047F EE               [12]  925 	mov	a,r6
      000480 94 08            [12]  926 	subb	a,#0x08
      000482 EF               [12]  927 	mov	a,r7
      000483 64 80            [12]  928 	xrl	a,#0x80
      000485 94 80            [12]  929 	subb	a,#0x80
      000487 50 54            [24]  930 	jnc	00106$
                                    931 ;	./src/angry_bird.c:218: for (int i = 0; i < shoot_row_size; i++)
      000489 7D 00            [12]  932 	mov	r5,#0x00
      00048B                        933 00112$:
      00048B BD 02 00         [24]  934 	cjne	r5,#0x02,00249$
      00048E                        935 00249$:
      00048E 50 46            [24]  936 	jnc	00116$
                                    937 ;	./src/angry_bird.c:220: OLED_SetCursor(row_offset + i, col_offset + j);
      000490 AC 21            [24]  938 	mov	r4,_row_offset
      000492 8D 03            [24]  939 	mov	ar3,r5
      000494 EB               [12]  940 	mov	a,r3
      000495 2C               [12]  941 	add	a,r4
      000496 F5 82            [12]  942 	mov	dpl,a
      000498 AC 23            [24]  943 	mov	r4,_col_offset
      00049A 8E 02            [24]  944 	mov	ar2,r6
      00049C EA               [12]  945 	mov	a,r2
      00049D 2C               [12]  946 	add	a,r4
      00049E F5 0B            [12]  947 	mov	_OLED_SetCursor_PARM_2,a
      0004A0 C0 07            [24]  948 	push	ar7
      0004A2 C0 06            [24]  949 	push	ar6
      0004A4 C0 05            [24]  950 	push	ar5
      0004A6 C0 03            [24]  951 	push	ar3
      0004A8 C0 02            [24]  952 	push	ar2
      0004AA 12 10 9C         [24]  953 	lcall	_OLED_SetCursor
      0004AD D0 02            [24]  954 	pop	ar2
      0004AF D0 03            [24]  955 	pop	ar3
                                    956 ;	./src/angry_bird.c:221: oledSendData(shooter_logo[shoot_cul_size * i + j]);
      0004B1 EB               [12]  957 	mov	a,r3
      0004B2 C4               [12]  958 	swap	a
      0004B3 03               [12]  959 	rr	a
      0004B4 54 F8            [12]  960 	anl	a,#0xf8
      0004B6 2A               [12]  961 	add	a,r2
      0004B7 FA               [12]  962 	mov	r2,a
      0004B8 33               [12]  963 	rlc	a
      0004B9 95 E0            [12]  964 	subb	a,acc
      0004BB FC               [12]  965 	mov	r4,a
      0004BC EA               [12]  966 	mov	a,r2
      0004BD 24 37            [12]  967 	add	a,#_shooter_logo
      0004BF F5 82            [12]  968 	mov	dpl,a
      0004C1 EC               [12]  969 	mov	a,r4
      0004C2 34 18            [12]  970 	addc	a,#(_shooter_logo >> 8)
      0004C4 F5 83            [12]  971 	mov	dph,a
      0004C6 E4               [12]  972 	clr	a
      0004C7 93               [24]  973 	movc	a,@a+dptr
      0004C8 F5 82            [12]  974 	mov	dpl,a
      0004CA 12 10 D8         [24]  975 	lcall	_oledSendData
      0004CD D0 05            [24]  976 	pop	ar5
      0004CF D0 06            [24]  977 	pop	ar6
      0004D1 D0 07            [24]  978 	pop	ar7
                                    979 ;	./src/angry_bird.c:218: for (int i = 0; i < shoot_row_size; i++)
      0004D3 0D               [12]  980 	inc	r5
      0004D4 80 B5            [24]  981 	sjmp	00112$
      0004D6                        982 00116$:
                                    983 ;	./src/angry_bird.c:216: for (int j = 0; j < shoot_cul_size; j++)
      0004D6 0E               [12]  984 	inc	r6
      0004D7 BE 00 A4         [24]  985 	cjne	r6,#0x00,00115$
      0004DA 0F               [12]  986 	inc	r7
      0004DB 80 A1            [24]  987 	sjmp	00115$
      0004DD                        988 00106$:
                                    989 ;	./src/angry_bird.c:226: row_offset = bird_init_row_cursor;
      0004DD 75 21 07         [24]  990 	mov	_row_offset,#0x07
      0004E0 75 22 00         [24]  991 	mov	(_row_offset + 1),#0x00
                                    992 ;	./src/angry_bird.c:227: col_offset = bird_init_col_cursor;
      0004E3 75 23 08         [24]  993 	mov	_col_offset,#0x08
      0004E6 75 24 00         [24]  994 	mov	(_col_offset + 1),#0x00
                                    995 ;	./src/angry_bird.c:228: for (int j = 0; j < bird_cul_size; j++)
      0004E9 7E 00            [12]  996 	mov	r6,#0x00
      0004EB 7F 00            [12]  997 	mov	r7,#0x00
      0004ED                        998 00121$:
      0004ED C3               [12]  999 	clr	c
      0004EE EE               [12] 1000 	mov	a,r6
      0004EF 94 08            [12] 1001 	subb	a,#0x08
      0004F1 EF               [12] 1002 	mov	a,r7
      0004F2 64 80            [12] 1003 	xrl	a,#0x80
      0004F4 94 80            [12] 1004 	subb	a,#0x80
      0004F6 50 45            [24] 1005 	jnc	00108$
                                   1006 ;	./src/angry_bird.c:230: for (int i = 0; i < bird_row_size; i++)
      0004F8 7D 00            [12] 1007 	mov	r5,#0x00
      0004FA                       1008 00118$:
      0004FA BD 01 00         [24] 1009 	cjne	r5,#0x01,00253$
      0004FD                       1010 00253$:
      0004FD 50 37            [24] 1011 	jnc	00122$
                                   1012 ;	./src/angry_bird.c:232: OLED_SetCursor(row_offset + i, col_offset + j);
      0004FF AC 21            [24] 1013 	mov	r4,_row_offset
      000501 E4               [12] 1014 	clr	a
      000502 2C               [12] 1015 	add	a,r4
      000503 F5 82            [12] 1016 	mov	dpl,a
      000505 AC 23            [24] 1017 	mov	r4,_col_offset
      000507 8E 03            [24] 1018 	mov	ar3,r6
      000509 EB               [12] 1019 	mov	a,r3
      00050A 2C               [12] 1020 	add	a,r4
      00050B F5 0B            [12] 1021 	mov	_OLED_SetCursor_PARM_2,a
      00050D C0 07            [24] 1022 	push	ar7
      00050F C0 06            [24] 1023 	push	ar6
      000511 C0 03            [24] 1024 	push	ar3
      000513 12 10 9C         [24] 1025 	lcall	_OLED_SetCursor
      000516 D0 03            [24] 1026 	pop	ar3
                                   1027 ;	./src/angry_bird.c:233: oledSendData(bird_logo[bird_cul_size * i + j]);
      000518 EB               [12] 1028 	mov	a,r3
      000519 33               [12] 1029 	rlc	a
      00051A 95 E0            [12] 1030 	subb	a,acc
      00051C FC               [12] 1031 	mov	r4,a
      00051D EB               [12] 1032 	mov	a,r3
      00051E 24 5F            [12] 1033 	add	a,#_bird_logo
      000520 F5 82            [12] 1034 	mov	dpl,a
      000522 EC               [12] 1035 	mov	a,r4
      000523 34 18            [12] 1036 	addc	a,#(_bird_logo >> 8)
      000525 F5 83            [12] 1037 	mov	dph,a
      000527 E4               [12] 1038 	clr	a
      000528 93               [24] 1039 	movc	a,@a+dptr
      000529 F5 82            [12] 1040 	mov	dpl,a
      00052B 12 10 D8         [24] 1041 	lcall	_oledSendData
      00052E D0 06            [24] 1042 	pop	ar6
      000530 D0 07            [24] 1043 	pop	ar7
                                   1044 ;	./src/angry_bird.c:230: for (int i = 0; i < bird_row_size; i++)
      000532 7D 01            [12] 1045 	mov	r5,#0x01
      000534 80 C4            [24] 1046 	sjmp	00118$
      000536                       1047 00122$:
                                   1048 ;	./src/angry_bird.c:228: for (int j = 0; j < bird_cul_size; j++)
      000536 0E               [12] 1049 	inc	r6
      000537 BE 00 B3         [24] 1050 	cjne	r6,#0x00,00121$
      00053A 0F               [12] 1051 	inc	r7
      00053B 80 B0            [24] 1052 	sjmp	00121$
      00053D                       1053 00108$:
                                   1054 ;	./src/angry_bird.c:255: row_offset = pig1_row_cursor;
      00053D 75 21 03         [24] 1055 	mov	_row_offset,#0x03
      000540 75 22 00         [24] 1056 	mov	(_row_offset + 1),#0x00
                                   1057 ;	./src/angry_bird.c:256: col_offset = pig1_col_cursor;
      000543 75 23 50         [24] 1058 	mov	_col_offset,#0x50
      000546 75 24 00         [24] 1059 	mov	(_col_offset + 1),#0x00
                                   1060 ;	./src/angry_bird.c:257: for (int j = 0; j < pig_cul_size; j++)
      000549 7E 00            [12] 1061 	mov	r6,#0x00
      00054B 7F 00            [12] 1062 	mov	r7,#0x00
      00054D                       1063 00127$:
      00054D C3               [12] 1064 	clr	c
      00054E EE               [12] 1065 	mov	a,r6
      00054F 94 0C            [12] 1066 	subb	a,#0x0c
      000551 EF               [12] 1067 	mov	a,r7
      000552 64 80            [12] 1068 	xrl	a,#0x80
      000554 94 80            [12] 1069 	subb	a,#0x80
      000556 50 54            [24] 1070 	jnc	00129$
                                   1071 ;	./src/angry_bird.c:259: for (int i = 0; i < pig_row_size; i++)
      000558 7D 00            [12] 1072 	mov	r5,#0x00
      00055A                       1073 00124$:
      00055A BD 02 00         [24] 1074 	cjne	r5,#0x02,00257$
      00055D                       1075 00257$:
      00055D 50 46            [24] 1076 	jnc	00128$
                                   1077 ;	./src/angry_bird.c:261: OLED_SetCursor(row_offset + i, col_offset + j);
      00055F AC 21            [24] 1078 	mov	r4,_row_offset
      000561 8D 03            [24] 1079 	mov	ar3,r5
      000563 EB               [12] 1080 	mov	a,r3
      000564 2C               [12] 1081 	add	a,r4
      000565 F5 82            [12] 1082 	mov	dpl,a
      000567 AC 23            [24] 1083 	mov	r4,_col_offset
      000569 8E 02            [24] 1084 	mov	ar2,r6
      00056B EA               [12] 1085 	mov	a,r2
      00056C 2C               [12] 1086 	add	a,r4
      00056D F5 0B            [12] 1087 	mov	_OLED_SetCursor_PARM_2,a
      00056F C0 07            [24] 1088 	push	ar7
      000571 C0 06            [24] 1089 	push	ar6
      000573 C0 05            [24] 1090 	push	ar5
      000575 C0 03            [24] 1091 	push	ar3
      000577 C0 02            [24] 1092 	push	ar2
      000579 12 10 9C         [24] 1093 	lcall	_OLED_SetCursor
      00057C D0 02            [24] 1094 	pop	ar2
      00057E D0 03            [24] 1095 	pop	ar3
                                   1096 ;	./src/angry_bird.c:262: oledSendData(pig_logo[pig_cul_size * i + j]);
      000580 EB               [12] 1097 	mov	a,r3
      000581 75 F0 0C         [24] 1098 	mov	b,#0x0c
      000584 A4               [48] 1099 	mul	ab
      000585 2A               [12] 1100 	add	a,r2
      000586 FA               [12] 1101 	mov	r2,a
      000587 33               [12] 1102 	rlc	a
      000588 95 E0            [12] 1103 	subb	a,acc
      00058A FC               [12] 1104 	mov	r4,a
      00058B EA               [12] 1105 	mov	a,r2
      00058C 24 47            [12] 1106 	add	a,#_pig_logo
      00058E F5 82            [12] 1107 	mov	dpl,a
      000590 EC               [12] 1108 	mov	a,r4
      000591 34 18            [12] 1109 	addc	a,#(_pig_logo >> 8)
      000593 F5 83            [12] 1110 	mov	dph,a
      000595 E4               [12] 1111 	clr	a
      000596 93               [24] 1112 	movc	a,@a+dptr
      000597 F5 82            [12] 1113 	mov	dpl,a
      000599 12 10 D8         [24] 1114 	lcall	_oledSendData
      00059C D0 05            [24] 1115 	pop	ar5
      00059E D0 06            [24] 1116 	pop	ar6
      0005A0 D0 07            [24] 1117 	pop	ar7
                                   1118 ;	./src/angry_bird.c:259: for (int i = 0; i < pig_row_size; i++)
      0005A2 0D               [12] 1119 	inc	r5
      0005A3 80 B5            [24] 1120 	sjmp	00124$
      0005A5                       1121 00128$:
                                   1122 ;	./src/angry_bird.c:257: for (int j = 0; j < pig_cul_size; j++)
      0005A5 0E               [12] 1123 	inc	r6
      0005A6 BE 00 A4         [24] 1124 	cjne	r6,#0x00,00127$
      0005A9 0F               [12] 1125 	inc	r7
      0005AA 80 A1            [24] 1126 	sjmp	00127$
      0005AC                       1127 00129$:
                                   1128 ;	./src/angry_bird.c:265: }
      0005AC 22               [24] 1129 	ret
                                   1130 ;------------------------------------------------------------
                                   1131 ;Allocation info for local variables in function 'angrybird_state_machine'
                                   1132 ;------------------------------------------------------------
                                   1133 ;	./src/angry_bird.c:273: void angrybird_state_machine(void)
                                   1134 ;	-----------------------------------------
                                   1135 ;	 function angrybird_state_machine
                                   1136 ;	-----------------------------------------
      0005AD                       1137 _angrybird_state_machine:
                                   1138 ;	./src/angry_bird.c:275: switch (cur_state)
      0005AD 74 01            [12] 1139 	mov	a,#0x01
      0005AF B5 47 06         [24] 1140 	cjne	a,_cur_state,00132$
      0005B2 14               [12] 1141 	dec	a
      0005B3 B5 48 02         [24] 1142 	cjne	a,(_cur_state + 1),00132$
      0005B6 80 22            [24] 1143 	sjmp	00101$
      0005B8                       1144 00132$:
      0005B8 74 02            [12] 1145 	mov	a,#0x02
      0005BA B5 47 06         [24] 1146 	cjne	a,_cur_state,00133$
      0005BD E4               [12] 1147 	clr	a
      0005BE B5 48 02         [24] 1148 	cjne	a,(_cur_state + 1),00133$
      0005C1 80 1A            [24] 1149 	sjmp	00102$
      0005C3                       1150 00133$:
      0005C3 74 03            [12] 1151 	mov	a,#0x03
      0005C5 B5 47 06         [24] 1152 	cjne	a,_cur_state,00134$
      0005C8 E4               [12] 1153 	clr	a
      0005C9 B5 48 02         [24] 1154 	cjne	a,(_cur_state + 1),00134$
      0005CC 80 12            [24] 1155 	sjmp	00104$
      0005CE                       1156 00134$:
      0005CE 74 04            [12] 1157 	mov	a,#0x04
      0005D0 B5 47 06         [24] 1158 	cjne	a,_cur_state,00135$
      0005D3 E4               [12] 1159 	clr	a
      0005D4 B5 48 02         [24] 1160 	cjne	a,(_cur_state + 1),00135$
      0005D7 80 07            [24] 1161 	sjmp	00104$
      0005D9                       1162 00135$:
                                   1163 ;	./src/angry_bird.c:277: case STATE_HOME:
      0005D9 22               [24] 1164 	ret
      0005DA                       1165 00101$:
                                   1166 ;	./src/angry_bird.c:278: angrybird_home_state();
                                   1167 ;	./src/angry_bird.c:279: break;
                                   1168 ;	./src/angry_bird.c:281: case STATE_SETTING:
      0005DA 02 05 E3         [24] 1169 	ljmp	_angrybird_home_state
      0005DD                       1170 00102$:
                                   1171 ;	./src/angry_bird.c:282: angrybird_setting_state();
                                   1172 ;	./src/angry_bird.c:283: break;
                                   1173 ;	./src/angry_bird.c:286: case STATE_PLAY_HARD:
      0005DD 02 07 9C         [24] 1174 	ljmp	_angrybird_setting_state
      0005E0                       1175 00104$:
                                   1176 ;	./src/angry_bird.c:287: angrybird_game_state();
                                   1177 ;	./src/angry_bird.c:289: }
                                   1178 ;	./src/angry_bird.c:294: }
      0005E0 02 07 9D         [24] 1179 	ljmp	_angrybird_game_state
                                   1180 ;------------------------------------------------------------
                                   1181 ;Allocation info for local variables in function 'angrybird_home_state'
                                   1182 ;------------------------------------------------------------
                                   1183 ;	./src/angry_bird.c:302: void angrybird_home_state(void)
                                   1184 ;	-----------------------------------------
                                   1185 ;	 function angrybird_home_state
                                   1186 ;	-----------------------------------------
      0005E3                       1187 _angrybird_home_state:
                                   1188 ;	./src/angry_bird.c:304: if ((but_up == 0) && (prebut_up == 1))
      0005E3 20 A0 2A         [24] 1189 	jb	_P2_0,00106$
      0005E6 74 01            [12] 1190 	mov	a,#0x01
      0005E8 B5 4D 06         [24] 1191 	cjne	a,_prebut_up,00236$
      0005EB 14               [12] 1192 	dec	a
      0005EC B5 4E 02         [24] 1193 	cjne	a,(_prebut_up + 1),00236$
      0005EF 80 02            [24] 1194 	sjmp	00237$
      0005F1                       1195 00236$:
      0005F1 80 1D            [24] 1196 	sjmp	00106$
      0005F3                       1197 00237$:
                                   1198 ;	./src/angry_bird.c:306: delay_ms(10);
      0005F3 90 00 0A         [24] 1199 	mov	dptr,#0x000a
      0005F6 12 01 BA         [24] 1200 	lcall	_delay_ms
                                   1201 ;	./src/angry_bird.c:307: if (but_up == 0)
      0005F9 20 A0 14         [24] 1202 	jb	_P2_0,00106$
                                   1203 ;	./src/angry_bird.c:309: selection_list_cur--;
      0005FC 15 25            [12] 1204 	dec	_selection_list_cur
      0005FE 74 FF            [12] 1205 	mov	a,#0xff
      000600 B5 25 02         [24] 1206 	cjne	a,_selection_list_cur,00239$
      000603 15 26            [12] 1207 	dec	(_selection_list_cur + 1)
      000605                       1208 00239$:
                                   1209 ;	./src/angry_bird.c:310: if (selection_list_cur < 0)
      000605 E5 26            [12] 1210 	mov	a,(_selection_list_cur + 1)
      000607 30 E7 06         [24] 1211 	jnb	acc.7,00106$
                                   1212 ;	./src/angry_bird.c:311: selection_list_cur = 2;
      00060A 75 25 02         [24] 1213 	mov	_selection_list_cur,#0x02
      00060D 75 26 00         [24] 1214 	mov	(_selection_list_cur + 1),#0x00
      000610                       1215 00106$:
                                   1216 ;	./src/angry_bird.c:314: if ((but_down == 0) && (prebut_down == 1))
      000610 20 A1 34         [24] 1217 	jb	_P2_1,00113$
      000613 74 01            [12] 1218 	mov	a,#0x01
      000615 B5 4F 06         [24] 1219 	cjne	a,_prebut_down,00242$
      000618 14               [12] 1220 	dec	a
      000619 B5 50 02         [24] 1221 	cjne	a,(_prebut_down + 1),00242$
      00061C 80 02            [24] 1222 	sjmp	00243$
      00061E                       1223 00242$:
      00061E 80 27            [24] 1224 	sjmp	00113$
      000620                       1225 00243$:
                                   1226 ;	./src/angry_bird.c:316: delay_ms(10);
      000620 90 00 0A         [24] 1227 	mov	dptr,#0x000a
      000623 12 01 BA         [24] 1228 	lcall	_delay_ms
                                   1229 ;	./src/angry_bird.c:317: if (but_down == 0)
      000626 20 A1 1E         [24] 1230 	jb	_P2_1,00113$
                                   1231 ;	./src/angry_bird.c:319: selection_list_cur++;
      000629 05 25            [12] 1232 	inc	_selection_list_cur
      00062B E4               [12] 1233 	clr	a
      00062C B5 25 02         [24] 1234 	cjne	a,_selection_list_cur,00245$
      00062F 05 26            [12] 1235 	inc	(_selection_list_cur + 1)
      000631                       1236 00245$:
                                   1237 ;	./src/angry_bird.c:320: if (selection_list_cur > 2)
      000631 C3               [12] 1238 	clr	c
      000632 74 02            [12] 1239 	mov	a,#0x02
      000634 95 25            [12] 1240 	subb	a,_selection_list_cur
      000636 74 80            [12] 1241 	mov	a,#(0x00 ^ 0x80)
      000638 85 26 F0         [24] 1242 	mov	b,(_selection_list_cur + 1)
      00063B 63 F0 80         [24] 1243 	xrl	b,#0x80
      00063E 95 F0            [12] 1244 	subb	a,b
      000640 50 05            [24] 1245 	jnc	00113$
                                   1246 ;	./src/angry_bird.c:321: selection_list_cur = 0;
      000642 E4               [12] 1247 	clr	a
      000643 F5 25            [12] 1248 	mov	_selection_list_cur,a
      000645 F5 26            [12] 1249 	mov	(_selection_list_cur + 1),a
      000647                       1250 00113$:
                                   1251 ;	./src/angry_bird.c:324: if ((but_enter == 0) && (prebut_enter == 1))
      000647 30 B3 03         [24] 1252 	jnb	_INT1,00247$
      00064A 02 06 DA         [24] 1253 	ljmp	00127$
      00064D                       1254 00247$:
      00064D 74 01            [12] 1255 	mov	a,#0x01
      00064F B5 55 06         [24] 1256 	cjne	a,_prebut_enter,00248$
      000652 14               [12] 1257 	dec	a
      000653 B5 56 02         [24] 1258 	cjne	a,(_prebut_enter + 1),00248$
      000656 80 03            [24] 1259 	sjmp	00249$
      000658                       1260 00248$:
      000658 02 06 DA         [24] 1261 	ljmp	00127$
      00065B                       1262 00249$:
                                   1263 ;	./src/angry_bird.c:326: delay_ms(10);
      00065B 90 00 0A         [24] 1264 	mov	dptr,#0x000a
      00065E 12 01 BA         [24] 1265 	lcall	_delay_ms
                                   1266 ;	./src/angry_bird.c:327: if (but_enter == 0)
      000661 30 B3 03         [24] 1267 	jnb	_INT1,00250$
      000664 02 06 DA         [24] 1268 	ljmp	00127$
      000667                       1269 00250$:
                                   1270 ;	./src/angry_bird.c:330: switch (selection_list_cur + 2)
      000667 74 02            [12] 1271 	mov	a,#0x02
      000669 25 25            [12] 1272 	add	a,_selection_list_cur
      00066B FE               [12] 1273 	mov	r6,a
      00066C E4               [12] 1274 	clr	a
      00066D 35 26            [12] 1275 	addc	a,(_selection_list_cur + 1)
      00066F FF               [12] 1276 	mov	r7,a
      000670 BE 02 05         [24] 1277 	cjne	r6,#0x02,00251$
      000673 BF 00 02         [24] 1278 	cjne	r7,#0x00,00251$
      000676 80 10            [24] 1279 	sjmp	00115$
      000678                       1280 00251$:
      000678 BE 03 05         [24] 1281 	cjne	r6,#0x03,00252$
      00067B BF 00 02         [24] 1282 	cjne	r7,#0x00,00252$
      00067E 80 13            [24] 1283 	sjmp	00117$
      000680                       1284 00252$:
                                   1285 ;	./src/angry_bird.c:332: case STATE_SETTING:
      000680 BE 04 2B         [24] 1286 	cjne	r6,#0x04,00118$
      000683 BF 00 28         [24] 1287 	cjne	r7,#0x00,00118$
      000686 80 0B            [24] 1288 	sjmp	00117$
      000688                       1289 00115$:
                                   1290 ;	./src/angry_bird.c:333: angrybird_display_setting();
      000688 12 03 89         [24] 1291 	lcall	_angrybird_display_setting
                                   1292 ;	./src/angry_bird.c:334: cur_state = STATE_SETTING;
      00068B 75 47 02         [24] 1293 	mov	_cur_state,#0x02
      00068E 75 48 00         [24] 1294 	mov	(_cur_state + 1),#0x00
                                   1295 ;	./src/angry_bird.c:335: break;
                                   1296 ;	./src/angry_bird.c:338: case STATE_PLAY_HARD:
      000691 80 1B            [24] 1297 	sjmp	00118$
      000693                       1298 00117$:
                                   1299 ;	./src/angry_bird.c:339: bird_amt = bird_total_amount;
      000693 75 49 09         [24] 1300 	mov	_bird_amt,#0x09
      000696 75 4A 00         [24] 1301 	mov	(_bird_amt + 1),#0x00
                                   1302 ;	./src/angry_bird.c:340: pig_amt = pig_total_amount;
      000699 75 4B 03         [24] 1303 	mov	_pig_amt,#0x03
      00069C 75 4C 00         [24] 1304 	mov	(_pig_amt + 1),#0x00
                                   1305 ;	./src/angry_bird.c:341: control_angle = 60;
      00069F 75 3A 3C         [24] 1306 	mov	_control_angle,#0x3c
      0006A2 75 3B 00         [24] 1307 	mov	(_control_angle + 1),#0x00
                                   1308 ;	./src/angry_bird.c:342: control_strength = 3;
      0006A5 75 3C 03         [24] 1309 	mov	_control_strength,#0x03
      0006A8 75 3D 00         [24] 1310 	mov	(_control_strength + 1),#0x00
                                   1311 ;	./src/angry_bird.c:343: angrybird_display_game();
      0006AB 12 03 8A         [24] 1312 	lcall	_angrybird_display_game
                                   1313 ;	./src/angry_bird.c:346: }
      0006AE                       1314 00118$:
                                   1315 ;	./src/angry_bird.c:348: if (selection_list_cur + 2 == STATE_PLAY_EASY)
      0006AE 74 02            [12] 1316 	mov	a,#0x02
      0006B0 25 25            [12] 1317 	add	a,_selection_list_cur
      0006B2 FE               [12] 1318 	mov	r6,a
      0006B3 E4               [12] 1319 	clr	a
      0006B4 35 26            [12] 1320 	addc	a,(_selection_list_cur + 1)
      0006B6 FF               [12] 1321 	mov	r7,a
      0006B7 BE 03 0B         [24] 1322 	cjne	r6,#0x03,00122$
      0006BA BF 00 08         [24] 1323 	cjne	r7,#0x00,00122$
                                   1324 ;	./src/angry_bird.c:349: cur_state = STATE_PLAY_EASY;
      0006BD 75 47 03         [24] 1325 	mov	_cur_state,#0x03
      0006C0 75 48 00         [24] 1326 	mov	(_cur_state + 1),#0x00
      0006C3 80 15            [24] 1327 	sjmp	00127$
      0006C5                       1328 00122$:
                                   1329 ;	./src/angry_bird.c:350: else if (selection_list_cur + 2 == STATE_PLAY_HARD)
      0006C5 74 02            [12] 1330 	mov	a,#0x02
      0006C7 25 25            [12] 1331 	add	a,_selection_list_cur
      0006C9 FE               [12] 1332 	mov	r6,a
      0006CA E4               [12] 1333 	clr	a
      0006CB 35 26            [12] 1334 	addc	a,(_selection_list_cur + 1)
      0006CD FF               [12] 1335 	mov	r7,a
      0006CE BE 04 09         [24] 1336 	cjne	r6,#0x04,00127$
      0006D1 BF 00 06         [24] 1337 	cjne	r7,#0x00,00127$
                                   1338 ;	./src/angry_bird.c:351: cur_state = STATE_PLAY_HARD;
      0006D4 75 47 04         [24] 1339 	mov	_cur_state,#0x04
      0006D7 75 48 00         [24] 1340 	mov	(_cur_state + 1),#0x00
      0006DA                       1341 00127$:
                                   1342 ;	./src/angry_bird.c:355: if (selection_list_past != selection_list_cur)
      0006DA E5 25            [12] 1343 	mov	a,_selection_list_cur
      0006DC B5 27 08         [24] 1344 	cjne	a,_selection_list_past,00258$
      0006DF E5 26            [12] 1345 	mov	a,(_selection_list_cur + 1)
      0006E1 B5 28 03         [24] 1346 	cjne	a,(_selection_list_past + 1),00258$
      0006E4 02 07 75         [24] 1347 	ljmp	00130$
      0006E7                       1348 00258$:
                                   1349 ;	./src/angry_bird.c:357: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_past]));
      0006E7 85 27 0C         [24] 1350 	mov	__mulint_PARM_2,_selection_list_past
      0006EA 85 28 0D         [24] 1351 	mov	(__mulint_PARM_2 + 1),(_selection_list_past + 1)
      0006ED 90 00 03         [24] 1352 	mov	dptr,#0x0003
      0006F0 12 11 F3         [24] 1353 	lcall	__mulint
      0006F3 AE 82            [24] 1354 	mov	r6,dpl
      0006F5 EE               [12] 1355 	mov	a,r6
      0006F6 24 29            [12] 1356 	add	a,#_selection_list
      0006F8 F9               [12] 1357 	mov	r1,a
      0006F9 87 05            [24] 1358 	mov	ar5,@r1
      0006FB 09               [12] 1359 	inc	r1
      0006FC 87 06            [24] 1360 	mov	ar6,@r1
      0006FE 09               [12] 1361 	inc	r1
      0006FF 87 07            [24] 1362 	mov	ar7,@r1
      000701 8D 82            [24] 1363 	mov	dpl,r5
      000703 8E 83            [24] 1364 	mov	dph,r6
      000705 8F F0            [24] 1365 	mov	b,r7
      000707 12 13 89         [24] 1366 	lcall	_strlen
      00070A AE 82            [24] 1367 	mov	r6,dpl
      00070C 74 54            [12] 1368 	mov	a,#0x54
      00070E C3               [12] 1369 	clr	c
      00070F 9E               [12] 1370 	subb	a,r6
      000710 F5 0B            [12] 1371 	mov	_OLED_SetCursor_PARM_2,a
      000712 75 82 05         [24] 1372 	mov	dpl,#0x05
      000715 12 10 9C         [24] 1373 	lcall	_OLED_SetCursor
                                   1374 ;	./src/angry_bird.c:358: OLED_DisplayString("       ");
      000718 90 18 79         [24] 1375 	mov	dptr,#___str_3
      00071B 75 F0 80         [24] 1376 	mov	b,#0x80
      00071E 12 10 46         [24] 1377 	lcall	_OLED_DisplayString
                                   1378 ;	./src/angry_bird.c:359: OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
      000721 85 25 0C         [24] 1379 	mov	__mulint_PARM_2,_selection_list_cur
      000724 85 26 0D         [24] 1380 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      000727 90 00 03         [24] 1381 	mov	dptr,#0x0003
      00072A 12 11 F3         [24] 1382 	lcall	__mulint
      00072D AE 82            [24] 1383 	mov	r6,dpl
      00072F EE               [12] 1384 	mov	a,r6
      000730 24 29            [12] 1385 	add	a,#_selection_list
      000732 F9               [12] 1386 	mov	r1,a
      000733 87 05            [24] 1387 	mov	ar5,@r1
      000735 09               [12] 1388 	inc	r1
      000736 87 06            [24] 1389 	mov	ar6,@r1
      000738 09               [12] 1390 	inc	r1
      000739 87 07            [24] 1391 	mov	ar7,@r1
      00073B 8D 82            [24] 1392 	mov	dpl,r5
      00073D 8E 83            [24] 1393 	mov	dph,r6
      00073F 8F F0            [24] 1394 	mov	b,r7
      000741 12 13 89         [24] 1395 	lcall	_strlen
      000744 AE 82            [24] 1396 	mov	r6,dpl
      000746 74 54            [12] 1397 	mov	a,#0x54
      000748 C3               [12] 1398 	clr	c
      000749 9E               [12] 1399 	subb	a,r6
      00074A F5 0B            [12] 1400 	mov	_OLED_SetCursor_PARM_2,a
      00074C 75 82 05         [24] 1401 	mov	dpl,#0x05
      00074F 12 10 9C         [24] 1402 	lcall	_OLED_SetCursor
                                   1403 ;	./src/angry_bird.c:360: OLED_DisplayString(selection_list[selection_list_cur]);
      000752 85 25 0C         [24] 1404 	mov	__mulint_PARM_2,_selection_list_cur
      000755 85 26 0D         [24] 1405 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      000758 90 00 03         [24] 1406 	mov	dptr,#0x0003
      00075B 12 11 F3         [24] 1407 	lcall	__mulint
      00075E AE 82            [24] 1408 	mov	r6,dpl
      000760 EE               [12] 1409 	mov	a,r6
      000761 24 29            [12] 1410 	add	a,#_selection_list
      000763 F9               [12] 1411 	mov	r1,a
      000764 87 05            [24] 1412 	mov	ar5,@r1
      000766 09               [12] 1413 	inc	r1
      000767 87 06            [24] 1414 	mov	ar6,@r1
      000769 09               [12] 1415 	inc	r1
      00076A 87 07            [24] 1416 	mov	ar7,@r1
      00076C 8D 82            [24] 1417 	mov	dpl,r5
      00076E 8E 83            [24] 1418 	mov	dph,r6
      000770 8F F0            [24] 1419 	mov	b,r7
      000772 12 10 46         [24] 1420 	lcall	_OLED_DisplayString
      000775                       1421 00130$:
                                   1422 ;	./src/angry_bird.c:363: selection_list_past = selection_list_cur;
      000775 85 25 27         [24] 1423 	mov	_selection_list_past,_selection_list_cur
      000778 85 26 28         [24] 1424 	mov	(_selection_list_past + 1),(_selection_list_cur + 1)
                                   1425 ;	./src/angry_bird.c:364: prebut_enter = but_enter;
      00077B A2 B3            [12] 1426 	mov	c,_INT1
      00077D E4               [12] 1427 	clr	a
      00077E 33               [12] 1428 	rlc	a
      00077F F5 55            [12] 1429 	mov	_prebut_enter,a
      000781 75 56 00         [24] 1430 	mov	(_prebut_enter + 1),#0x00
                                   1431 ;	./src/angry_bird.c:365: prebut_up = but_up;
      000784 A2 A0            [12] 1432 	mov	c,_P2_0
      000786 E4               [12] 1433 	clr	a
      000787 33               [12] 1434 	rlc	a
      000788 F5 4D            [12] 1435 	mov	_prebut_up,a
      00078A 75 4E 00         [24] 1436 	mov	(_prebut_up + 1),#0x00
                                   1437 ;	./src/angry_bird.c:366: prebut_down = but_down;
      00078D A2 A1            [12] 1438 	mov	c,_P2_1
      00078F E4               [12] 1439 	clr	a
      000790 33               [12] 1440 	rlc	a
      000791 F5 4F            [12] 1441 	mov	_prebut_down,a
      000793 75 50 00         [24] 1442 	mov	(_prebut_down + 1),#0x00
                                   1443 ;	./src/angry_bird.c:367: delay_ms(10);
      000796 90 00 0A         [24] 1444 	mov	dptr,#0x000a
                                   1445 ;	./src/angry_bird.c:368: }
      000799 02 01 BA         [24] 1446 	ljmp	_delay_ms
                                   1447 ;------------------------------------------------------------
                                   1448 ;Allocation info for local variables in function 'angrybird_setting_state'
                                   1449 ;------------------------------------------------------------
                                   1450 ;	./src/angry_bird.c:370: void angrybird_setting_state(void)
                                   1451 ;	-----------------------------------------
                                   1452 ;	 function angrybird_setting_state
                                   1453 ;	-----------------------------------------
      00079C                       1454 _angrybird_setting_state:
                                   1455 ;	./src/angry_bird.c:515: }
      00079C 22               [24] 1456 	ret
                                   1457 ;------------------------------------------------------------
                                   1458 ;Allocation info for local variables in function 'angrybird_game_state'
                                   1459 ;------------------------------------------------------------
                                   1460 ;which                     Allocated to registers r7 
                                   1461 ;control_angle_            Allocated with name '_angrybird_game_state_control_angle__196609_181'
                                   1462 ;i                         Allocated to registers r4 r5 
                                   1463 ;angle_                    Allocated with name '_angrybird_game_state_angle__196610_182'
                                   1464 ;which                     Allocated to registers r7 
                                   1465 ;control_strength_         Allocated with name '_angrybird_game_state_control_strength__196609_187'
                                   1466 ;j                         Allocated to registers r6 r7 
                                   1467 ;i                         Allocated to registers r5 
                                   1468 ;delta_y                   Allocated with name '_angrybird_game_state_delta_y_196609_194'
                                   1469 ;delta_x                   Allocated with name '_angrybird_game_state_delta_x_196609_194'
                                   1470 ;peak_x                    Allocated with name '_angrybird_game_state_peak_x_196609_194'
                                   1471 ;peak_y                    Allocated with name '_angrybird_game_state_peak_y_196609_194'
                                   1472 ;a                         Allocated with name '_angrybird_game_state_a_196609_194'
                                   1473 ;j                         Allocated to registers r2 r3 
                                   1474 ;i                         Allocated to registers r7 
                                   1475 ;i                         Allocated with name '_angrybird_game_state_i_262145_199'
                                   1476 ;output_row                Allocated with name '_angrybird_game_state_output_row_327681_200'
                                   1477 ;j                         Allocated to registers r2 r3 
                                   1478 ;i                         Allocated to registers r5 
                                   1479 ;j                         Allocated to registers r6 r7 
                                   1480 ;i                         Allocated to registers r5 
                                   1481 ;j                         Allocated to registers r6 r7 
                                   1482 ;i                         Allocated to registers r5 
                                   1483 ;j                         Allocated to registers r6 r7 
                                   1484 ;i                         Allocated to registers r5 
                                   1485 ;sloc1                     Allocated with name '_angrybird_game_state_sloc1_1_0'
                                   1486 ;------------------------------------------------------------
                                   1487 ;	./src/angry_bird.c:519: void angrybird_game_state(void)
                                   1488 ;	-----------------------------------------
                                   1489 ;	 function angrybird_game_state
                                   1490 ;	-----------------------------------------
      00079D                       1491 _angrybird_game_state:
                                   1492 ;	./src/angry_bird.c:522: if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
      00079D 20 A0 0B         [24] 1493 	jb	_P2_0,00119$
      0007A0 74 01            [12] 1494 	mov	a,#0x01
      0007A2 B5 4D 06         [24] 1495 	cjne	a,_prebut_up,00605$
      0007A5 14               [12] 1496 	dec	a
      0007A6 B5 4E 02         [24] 1497 	cjne	a,(_prebut_up + 1),00605$
      0007A9 80 14            [24] 1498 	sjmp	00115$
      0007AB                       1499 00605$:
      0007AB                       1500 00119$:
      0007AB 30 A1 03         [24] 1501 	jnb	_P2_1,00606$
      0007AE 02 08 C4         [24] 1502 	ljmp	00116$
      0007B1                       1503 00606$:
      0007B1 74 01            [12] 1504 	mov	a,#0x01
      0007B3 B5 4F 06         [24] 1505 	cjne	a,_prebut_down,00607$
      0007B6 14               [12] 1506 	dec	a
      0007B7 B5 50 02         [24] 1507 	cjne	a,(_prebut_down + 1),00607$
      0007BA 80 03            [24] 1508 	sjmp	00608$
      0007BC                       1509 00607$:
      0007BC 02 08 C4         [24] 1510 	ljmp	00116$
      0007BF                       1511 00608$:
      0007BF                       1512 00115$:
                                   1513 ;	./src/angry_bird.c:525: int which = (but_up == 0) ? 1 : 0;
      0007BF 20 A0 04         [24] 1514 	jb	_P2_0,00207$
      0007C2 7F 01            [12] 1515 	mov	r7,#0x01
      0007C4 80 02            [24] 1516 	sjmp	00208$
      0007C6                       1517 00207$:
      0007C6 7F 00            [12] 1518 	mov	r7,#0x00
      0007C8                       1519 00208$:
                                   1520 ;	./src/angry_bird.c:526: if (but_up == 0 || but_down == 0)
      0007C8 30 A0 06         [24] 1521 	jnb	_P2_0,00112$
      0007CB 30 A1 03         [24] 1522 	jnb	_P2_1,00611$
      0007CE 02 08 C4         [24] 1523 	ljmp	00116$
      0007D1                       1524 00611$:
      0007D1                       1525 00112$:
                                   1526 ;	./src/angry_bird.c:528: if (which == 1)
      0007D1 BF 01 24         [24] 1527 	cjne	r7,#0x01,00106$
                                   1528 ;	./src/angry_bird.c:530: control_angle += 10;
      0007D4 74 0A            [12] 1529 	mov	a,#0x0a
      0007D6 25 3A            [12] 1530 	add	a,_control_angle
      0007D8 F5 3A            [12] 1531 	mov	_control_angle,a
      0007DA E4               [12] 1532 	clr	a
      0007DB 35 3B            [12] 1533 	addc	a,(_control_angle + 1)
      0007DD F5 3B            [12] 1534 	mov	(_control_angle + 1),a
                                   1535 ;	./src/angry_bird.c:531: if (control_angle > 90)
      0007DF C3               [12] 1536 	clr	c
      0007E0 74 5A            [12] 1537 	mov	a,#0x5a
      0007E2 95 3A            [12] 1538 	subb	a,_control_angle
      0007E4 74 80            [12] 1539 	mov	a,#(0x00 ^ 0x80)
      0007E6 85 3B F0         [24] 1540 	mov	b,(_control_angle + 1)
      0007E9 63 F0 80         [24] 1541 	xrl	b,#0x80
      0007EC 95 F0            [12] 1542 	subb	a,b
      0007EE 50 1C            [24] 1543 	jnc	00107$
                                   1544 ;	./src/angry_bird.c:532: control_angle = 90;
      0007F0 75 3A 5A         [24] 1545 	mov	_control_angle,#0x5a
      0007F3 75 3B 00         [24] 1546 	mov	(_control_angle + 1),#0x00
      0007F6 80 14            [24] 1547 	sjmp	00107$
      0007F8                       1548 00106$:
                                   1549 ;	./src/angry_bird.c:536: control_angle -= 10;
      0007F8 E5 3A            [12] 1550 	mov	a,_control_angle
      0007FA 24 F6            [12] 1551 	add	a,#0xf6
      0007FC F5 3A            [12] 1552 	mov	_control_angle,a
      0007FE E5 3B            [12] 1553 	mov	a,(_control_angle + 1)
      000800 34 FF            [12] 1554 	addc	a,#0xff
                                   1555 ;	./src/angry_bird.c:537: if (control_angle < 0)
      000802 F5 3B            [12] 1556 	mov	(_control_angle + 1),a
      000804 30 E7 05         [24] 1557 	jnb	acc.7,00107$
                                   1558 ;	./src/angry_bird.c:538: control_angle = 0;
      000807 E4               [12] 1559 	clr	a
      000808 F5 3A            [12] 1560 	mov	_control_angle,a
      00080A F5 3B            [12] 1561 	mov	(_control_angle + 1),a
      00080C                       1562 00107$:
                                   1563 ;	./src/angry_bird.c:543: int i = 0;
                                   1564 ;	./src/angry_bird.c:544: if (control_angle < 0)
      00080C E4               [12] 1565 	clr	a
      00080D FE               [12] 1566 	mov	r6,a
      00080E FF               [12] 1567 	mov	r7,a
      00080F E5 3B            [12] 1568 	mov	a,(_control_angle + 1)
      000811 30 E7 07         [24] 1569 	jnb	acc.7,00109$
                                   1570 ;	./src/angry_bird.c:545: control_angle_[i++] = '-';
      000814 7E 01            [12] 1571 	mov	r6,#0x01
      000816 7F 00            [12] 1572 	mov	r7,#0x00
      000818 75 57 2D         [24] 1573 	mov	_angrybird_game_state_control_angle__196609_181,#0x2d
      00081B                       1574 00109$:
                                   1575 ;	./src/angry_bird.c:546: int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
      00081B E5 3B            [12] 1576 	mov	a,(_control_angle + 1)
      00081D 33               [12] 1577 	rlc	a
      00081E 92 01            [24] 1578 	mov	_angrybird_game_state_sloc0_1_0,c
      000820 40 06            [24] 1579 	jc	00209$
      000822 AC 3A            [24] 1580 	mov	r4,_control_angle
      000824 AD 3B            [24] 1581 	mov	r5,(_control_angle + 1)
      000826 80 09            [24] 1582 	sjmp	00210$
      000828                       1583 00209$:
      000828 C3               [12] 1584 	clr	c
      000829 E4               [12] 1585 	clr	a
      00082A 95 3A            [12] 1586 	subb	a,_control_angle
      00082C FC               [12] 1587 	mov	r4,a
      00082D E4               [12] 1588 	clr	a
      00082E 95 3B            [12] 1589 	subb	a,(_control_angle + 1)
      000830 FD               [12] 1590 	mov	r5,a
      000831                       1591 00210$:
      000831 8C 5C            [24] 1592 	mov	_angrybird_game_state_angle__196610_182,r4
      000833 8D 5D            [24] 1593 	mov	(_angrybird_game_state_angle__196610_182 + 1),r5
                                   1594 ;	./src/angry_bird.c:547: if (angle_ % 100 / 10 != 0)
      000835 75 0C 64         [24] 1595 	mov	__modsint_PARM_2,#0x64
      000838 75 0D 00         [24] 1596 	mov	(__modsint_PARM_2 + 1),#0x00
      00083B 85 5C 82         [24] 1597 	mov	dpl,_angrybird_game_state_angle__196610_182
      00083E 85 5D 83         [24] 1598 	mov	dph,(_angrybird_game_state_angle__196610_182 + 1)
      000841 C0 07            [24] 1599 	push	ar7
      000843 C0 06            [24] 1600 	push	ar6
      000845 12 14 80         [24] 1601 	lcall	__modsint
      000848 75 0C 0A         [24] 1602 	mov	__divsint_PARM_2,#0x0a
      00084B 75 0D 00         [24] 1603 	mov	(__divsint_PARM_2 + 1),#0x00
      00084E 12 14 E3         [24] 1604 	lcall	__divsint
      000851 AA 82            [24] 1605 	mov	r2,dpl
      000853 AB 83            [24] 1606 	mov	r3,dph
      000855 D0 06            [24] 1607 	pop	ar6
      000857 D0 07            [24] 1608 	pop	ar7
      000859 EA               [12] 1609 	mov	a,r2
      00085A 4B               [12] 1610 	orl	a,r3
      00085B 60 11            [24] 1611 	jz	00111$
                                   1612 ;	./src/angry_bird.c:548: control_angle_[i++] = '0' + angle_ % 100 / 10;
      00085D 8E 04            [24] 1613 	mov	ar4,r6
      00085F 8F 05            [24] 1614 	mov	ar5,r7
      000861 0E               [12] 1615 	inc	r6
      000862 BE 00 01         [24] 1616 	cjne	r6,#0x00,00619$
      000865 0F               [12] 1617 	inc	r7
      000866                       1618 00619$:
      000866 EC               [12] 1619 	mov	a,r4
      000867 24 57            [12] 1620 	add	a,#_angrybird_game_state_control_angle__196609_181
      000869 F9               [12] 1621 	mov	r1,a
      00086A 74 30            [12] 1622 	mov	a,#0x30
      00086C 2A               [12] 1623 	add	a,r2
      00086D F7               [12] 1624 	mov	@r1,a
      00086E                       1625 00111$:
                                   1626 ;	./src/angry_bird.c:549: control_angle_[i++] = '0' + angle_ % 10;
      00086E 74 01            [12] 1627 	mov	a,#0x01
      000870 2E               [12] 1628 	add	a,r6
      000871 FC               [12] 1629 	mov	r4,a
      000872 E4               [12] 1630 	clr	a
      000873 3F               [12] 1631 	addc	a,r7
      000874 FD               [12] 1632 	mov	r5,a
      000875 EE               [12] 1633 	mov	a,r6
      000876 24 57            [12] 1634 	add	a,#_angrybird_game_state_control_angle__196609_181
      000878 F9               [12] 1635 	mov	r1,a
      000879 75 0C 0A         [24] 1636 	mov	__modsint_PARM_2,#0x0a
      00087C 75 0D 00         [24] 1637 	mov	(__modsint_PARM_2 + 1),#0x00
      00087F 85 5C 82         [24] 1638 	mov	dpl,_angrybird_game_state_angle__196610_182
      000882 85 5D 83         [24] 1639 	mov	dph,(_angrybird_game_state_angle__196610_182 + 1)
      000885 C0 05            [24] 1640 	push	ar5
      000887 C0 04            [24] 1641 	push	ar4
      000889 C0 01            [24] 1642 	push	ar1
      00088B 12 14 80         [24] 1643 	lcall	__modsint
      00088E AE 82            [24] 1644 	mov	r6,dpl
      000890 D0 01            [24] 1645 	pop	ar1
      000892 D0 04            [24] 1646 	pop	ar4
      000894 D0 05            [24] 1647 	pop	ar5
      000896 74 30            [12] 1648 	mov	a,#0x30
      000898 2E               [12] 1649 	add	a,r6
      000899 F7               [12] 1650 	mov	@r1,a
                                   1651 ;	./src/angry_bird.c:550: control_angle_[i++] = '\0';
      00089A EC               [12] 1652 	mov	a,r4
      00089B 24 57            [12] 1653 	add	a,#_angrybird_game_state_control_angle__196609_181
      00089D F8               [12] 1654 	mov	r0,a
      00089E 76 00            [12] 1655 	mov	@r0,#0x00
                                   1656 ;	./src/angry_bird.c:552: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      0008A0 75 0B 1E         [24] 1657 	mov	_OLED_SetCursor_PARM_2,#0x1e
      0008A3 75 82 00         [24] 1658 	mov	dpl,#0x00
      0008A6 12 10 9C         [24] 1659 	lcall	_OLED_SetCursor
                                   1660 ;	./src/angry_bird.c:553: OLED_DisplayString("   ");
      0008A9 90 18 81         [24] 1661 	mov	dptr,#___str_4
      0008AC 75 F0 80         [24] 1662 	mov	b,#0x80
      0008AF 12 10 46         [24] 1663 	lcall	_OLED_DisplayString
                                   1664 ;	./src/angry_bird.c:554: OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
      0008B2 75 0B 1E         [24] 1665 	mov	_OLED_SetCursor_PARM_2,#0x1e
      0008B5 75 82 00         [24] 1666 	mov	dpl,#0x00
      0008B8 12 10 9C         [24] 1667 	lcall	_OLED_SetCursor
                                   1668 ;	./src/angry_bird.c:555: OLED_DisplayString(control_angle_);
      0008BB 90 00 57         [24] 1669 	mov	dptr,#_angrybird_game_state_control_angle__196609_181
      0008BE 75 F0 40         [24] 1670 	mov	b,#0x40
      0008C1 12 10 46         [24] 1671 	lcall	_OLED_DisplayString
      0008C4                       1672 00116$:
                                   1673 ;	./src/angry_bird.c:560: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
      0008C4 20 B2 0B         [24] 1674 	jb	_INT0,00134$
      0008C7 74 01            [12] 1675 	mov	a,#0x01
      0008C9 B5 51 06         [24] 1676 	cjne	a,_prebut_left,00621$
      0008CC 14               [12] 1677 	dec	a
      0008CD B5 52 02         [24] 1678 	cjne	a,(_prebut_left + 1),00621$
      0008D0 80 14            [24] 1679 	sjmp	00130$
      0008D2                       1680 00621$:
      0008D2                       1681 00134$:
      0008D2 30 A2 03         [24] 1682 	jnb	_P2_2,00622$
      0008D5 02 09 64         [24] 1683 	ljmp	00131$
      0008D8                       1684 00622$:
      0008D8 74 01            [12] 1685 	mov	a,#0x01
      0008DA B5 53 06         [24] 1686 	cjne	a,_prebut_right,00623$
      0008DD 14               [12] 1687 	dec	a
      0008DE B5 54 02         [24] 1688 	cjne	a,(_prebut_right + 1),00623$
      0008E1 80 03            [24] 1689 	sjmp	00624$
      0008E3                       1690 00623$:
      0008E3 02 09 64         [24] 1691 	ljmp	00131$
      0008E6                       1692 00624$:
      0008E6                       1693 00130$:
                                   1694 ;	./src/angry_bird.c:563: int which = (but_left == 0) ? 1 : 0;
      0008E6 20 B2 04         [24] 1695 	jb	_INT0,00211$
      0008E9 7F 01            [12] 1696 	mov	r7,#0x01
      0008EB 80 02            [24] 1697 	sjmp	00212$
      0008ED                       1698 00211$:
      0008ED 7F 00            [12] 1699 	mov	r7,#0x00
      0008EF                       1700 00212$:
                                   1701 ;	./src/angry_bird.c:564: if (but_left == 0 || but_right == 0)
      0008EF 30 B2 03         [24] 1702 	jnb	_INT0,00127$
      0008F2 20 A2 6F         [24] 1703 	jb	_P2_2,00131$
      0008F5                       1704 00127$:
                                   1705 ;	./src/angry_bird.c:566: if (which == 1)
      0008F5 BF 01 1E         [24] 1706 	cjne	r7,#0x01,00125$
                                   1707 ;	./src/angry_bird.c:568: control_strength--;
      0008F8 15 3C            [12] 1708 	dec	_control_strength
      0008FA 74 FF            [12] 1709 	mov	a,#0xff
      0008FC B5 3C 02         [24] 1710 	cjne	a,_control_strength,00630$
      0008FF 15 3D            [12] 1711 	dec	(_control_strength + 1)
      000901                       1712 00630$:
                                   1713 ;	./src/angry_bird.c:569: if (control_strength < 1)
      000901 C3               [12] 1714 	clr	c
      000902 E5 3C            [12] 1715 	mov	a,_control_strength
      000904 94 01            [12] 1716 	subb	a,#0x01
      000906 E5 3D            [12] 1717 	mov	a,(_control_strength + 1)
      000908 64 80            [12] 1718 	xrl	a,#0x80
      00090A 94 80            [12] 1719 	subb	a,#0x80
      00090C 50 28            [24] 1720 	jnc	00126$
                                   1721 ;	./src/angry_bird.c:570: control_strength = 1;
      00090E 75 3C 01         [24] 1722 	mov	_control_strength,#0x01
      000911 75 3D 00         [24] 1723 	mov	(_control_strength + 1),#0x00
      000914 80 20            [24] 1724 	sjmp	00126$
      000916                       1725 00125$:
                                   1726 ;	./src/angry_bird.c:574: control_strength--;
      000916 15 3C            [12] 1727 	dec	_control_strength
      000918 74 FF            [12] 1728 	mov	a,#0xff
      00091A B5 3C 02         [24] 1729 	cjne	a,_control_strength,00632$
      00091D 15 3D            [12] 1730 	dec	(_control_strength + 1)
      00091F                       1731 00632$:
                                   1732 ;	./src/angry_bird.c:575: if (control_strength > 3)
      00091F C3               [12] 1733 	clr	c
      000920 74 03            [12] 1734 	mov	a,#0x03
      000922 95 3C            [12] 1735 	subb	a,_control_strength
      000924 74 80            [12] 1736 	mov	a,#(0x00 ^ 0x80)
      000926 85 3D F0         [24] 1737 	mov	b,(_control_strength + 1)
      000929 63 F0 80         [24] 1738 	xrl	b,#0x80
      00092C 95 F0            [12] 1739 	subb	a,b
      00092E 50 06            [24] 1740 	jnc	00126$
                                   1741 ;	./src/angry_bird.c:576: control_strength = 3;
      000930 75 3C 03         [24] 1742 	mov	_control_strength,#0x03
      000933 75 3D 00         [24] 1743 	mov	(_control_strength + 1),#0x00
      000936                       1744 00126$:
                                   1745 ;	./src/angry_bird.c:581: control_strength_[0] = '0' + control_strength;
      000936 AF 3C            [24] 1746 	mov	r7,_control_strength
      000938 74 30            [12] 1747 	mov	a,#0x30
      00093A 2F               [12] 1748 	add	a,r7
      00093B F5 5E            [12] 1749 	mov	_angrybird_game_state_control_strength__196609_187,a
                                   1750 ;	./src/angry_bird.c:582: control_strength_[1] = '\0';
      00093D 75 5F 00         [24] 1751 	mov	(_angrybird_game_state_control_strength__196609_187 + 0x0001),#0x00
                                   1752 ;	./src/angry_bird.c:584: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      000940 75 0B 0A         [24] 1753 	mov	_OLED_SetCursor_PARM_2,#0x0a
      000943 75 82 00         [24] 1754 	mov	dpl,#0x00
      000946 12 10 9C         [24] 1755 	lcall	_OLED_SetCursor
                                   1756 ;	./src/angry_bird.c:585: OLED_DisplayString(" ");
      000949 90 18 85         [24] 1757 	mov	dptr,#___str_5
      00094C 75 F0 80         [24] 1758 	mov	b,#0x80
      00094F 12 10 46         [24] 1759 	lcall	_OLED_DisplayString
                                   1760 ;	./src/angry_bird.c:586: OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
      000952 75 0B 0A         [24] 1761 	mov	_OLED_SetCursor_PARM_2,#0x0a
      000955 75 82 00         [24] 1762 	mov	dpl,#0x00
      000958 12 10 9C         [24] 1763 	lcall	_OLED_SetCursor
                                   1764 ;	./src/angry_bird.c:587: OLED_DisplayString(control_strength_);
      00095B 90 00 5E         [24] 1765 	mov	dptr,#_angrybird_game_state_control_strength__196609_187
      00095E 75 F0 40         [24] 1766 	mov	b,#0x40
      000961 12 10 46         [24] 1767 	lcall	_OLED_DisplayString
      000964                       1768 00131$:
                                   1769 ;	./src/angry_bird.c:592: if ((but_enter == 0) && (prebut_enter == 1))
      000964 30 B3 03         [24] 1770 	jnb	_INT1,00634$
      000967 02 0E 04         [24] 1771 	ljmp	00159$
      00096A                       1772 00634$:
      00096A 74 01            [12] 1773 	mov	a,#0x01
      00096C B5 55 06         [24] 1774 	cjne	a,_prebut_enter,00635$
      00096F 14               [12] 1775 	dec	a
      000970 B5 56 02         [24] 1776 	cjne	a,(_prebut_enter + 1),00635$
      000973 80 03            [24] 1777 	sjmp	00636$
      000975                       1778 00635$:
      000975 02 0E 04         [24] 1779 	ljmp	00159$
      000978                       1780 00636$:
                                   1781 ;	./src/angry_bird.c:594: delay_ms(10);
      000978 90 00 0A         [24] 1782 	mov	dptr,#0x000a
      00097B 12 01 BA         [24] 1783 	lcall	_delay_ms
                                   1784 ;	./src/angry_bird.c:595: if (but_enter == 0)
      00097E 30 B3 03         [24] 1785 	jnb	_INT1,00637$
      000981 02 0E 04         [24] 1786 	ljmp	00159$
      000984                       1787 00637$:
                                   1788 ;	./src/angry_bird.c:597: bird_amt--;
      000984 15 49            [12] 1789 	dec	_bird_amt
      000986 74 FF            [12] 1790 	mov	a,#0xff
      000988 B5 49 02         [24] 1791 	cjne	a,_bird_amt,00638$
      00098B 15 4A            [12] 1792 	dec	(_bird_amt + 1)
      00098D                       1793 00638$:
                                   1794 ;	./src/angry_bird.c:599: row_offset = 0;
      00098D E4               [12] 1795 	clr	a
      00098E F5 21            [12] 1796 	mov	_row_offset,a
      000990 F5 22            [12] 1797 	mov	(_row_offset + 1),a
                                   1798 ;	./src/angry_bird.c:600: col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
      000992 74 08            [12] 1799 	mov	a,#0x08
      000994 C3               [12] 1800 	clr	c
      000995 95 49            [12] 1801 	subb	a,_bird_amt
      000997 FE               [12] 1802 	mov	r6,a
      000998 E4               [12] 1803 	clr	a
      000999 95 4A            [12] 1804 	subb	a,(_bird_amt + 1)
      00099B C4               [12] 1805 	swap	a
      00099C 03               [12] 1806 	rr	a
      00099D 54 F8            [12] 1807 	anl	a,#0xf8
      00099F CE               [12] 1808 	xch	a,r6
      0009A0 C4               [12] 1809 	swap	a
      0009A1 03               [12] 1810 	rr	a
      0009A2 CE               [12] 1811 	xch	a,r6
      0009A3 6E               [12] 1812 	xrl	a,r6
      0009A4 CE               [12] 1813 	xch	a,r6
      0009A5 54 F8            [12] 1814 	anl	a,#0xf8
      0009A7 CE               [12] 1815 	xch	a,r6
      0009A8 6E               [12] 1816 	xrl	a,r6
      0009A9 FF               [12] 1817 	mov	r7,a
      0009AA 74 32            [12] 1818 	mov	a,#0x32
      0009AC 2E               [12] 1819 	add	a,r6
      0009AD F5 23            [12] 1820 	mov	_col_offset,a
      0009AF E4               [12] 1821 	clr	a
      0009B0 3F               [12] 1822 	addc	a,r7
      0009B1 F5 24            [12] 1823 	mov	(_col_offset + 1),a
                                   1824 ;	./src/angry_bird.c:601: for (int j = 0; j < bird_cul_size; j++)
      0009B3 7E 00            [12] 1825 	mov	r6,#0x00
      0009B5 7F 00            [12] 1826 	mov	r7,#0x00
      0009B7                       1827 00170$:
      0009B7 C3               [12] 1828 	clr	c
      0009B8 EE               [12] 1829 	mov	a,r6
      0009B9 94 08            [12] 1830 	subb	a,#0x08
      0009BB EF               [12] 1831 	mov	a,r7
      0009BC 64 80            [12] 1832 	xrl	a,#0x80
      0009BE 94 80            [12] 1833 	subb	a,#0x80
      0009C0 50 31            [24] 1834 	jnc	00136$
                                   1835 ;	./src/angry_bird.c:603: for (int i = 0; i < bird_row_size; i++)
      0009C2 7D 00            [12] 1836 	mov	r5,#0x00
      0009C4                       1837 00167$:
      0009C4 BD 01 00         [24] 1838 	cjne	r5,#0x01,00640$
      0009C7                       1839 00640$:
      0009C7 50 23            [24] 1840 	jnc	00171$
                                   1841 ;	./src/angry_bird.c:605: OLED_SetCursor(row_offset + i, col_offset + j);
      0009C9 AC 21            [24] 1842 	mov	r4,_row_offset
      0009CB E4               [12] 1843 	clr	a
      0009CC 2C               [12] 1844 	add	a,r4
      0009CD F5 82            [12] 1845 	mov	dpl,a
      0009CF AC 23            [24] 1846 	mov	r4,_col_offset
      0009D1 8E 03            [24] 1847 	mov	ar3,r6
      0009D3 EB               [12] 1848 	mov	a,r3
      0009D4 2C               [12] 1849 	add	a,r4
      0009D5 F5 0B            [12] 1850 	mov	_OLED_SetCursor_PARM_2,a
      0009D7 C0 07            [24] 1851 	push	ar7
      0009D9 C0 06            [24] 1852 	push	ar6
      0009DB 12 10 9C         [24] 1853 	lcall	_OLED_SetCursor
                                   1854 ;	./src/angry_bird.c:606: oledSendData(0x00);
      0009DE 75 82 00         [24] 1855 	mov	dpl,#0x00
      0009E1 12 10 D8         [24] 1856 	lcall	_oledSendData
      0009E4 D0 06            [24] 1857 	pop	ar6
      0009E6 D0 07            [24] 1858 	pop	ar7
                                   1859 ;	./src/angry_bird.c:603: for (int i = 0; i < bird_row_size; i++)
      0009E8 7D 01            [12] 1860 	mov	r5,#0x01
      0009EA 80 D8            [24] 1861 	sjmp	00167$
      0009EC                       1862 00171$:
                                   1863 ;	./src/angry_bird.c:601: for (int j = 0; j < bird_cul_size; j++)
      0009EC 0E               [12] 1864 	inc	r6
      0009ED BE 00 C7         [24] 1865 	cjne	r6,#0x00,00170$
      0009F0 0F               [12] 1866 	inc	r7
      0009F1 80 C4            [24] 1867 	sjmp	00170$
      0009F3                       1868 00136$:
                                   1869 ;	./src/angry_bird.c:613: float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
      0009F3 85 3A 82         [24] 1870 	mov	dpl,_control_angle
      0009F6 85 3B 83         [24] 1871 	mov	dph,(_control_angle + 1)
      0009F9 12 0E 55         [24] 1872 	lcall	_getsine
      0009FC AC 82            [24] 1873 	mov	r4,dpl
      0009FE AD 83            [24] 1874 	mov	r5,dph
      000A00 AE F0            [24] 1875 	mov	r6,b
      000A02 FF               [12] 1876 	mov	r7,a
      000A03 C0 04            [24] 1877 	push	ar4
      000A05 C0 05            [24] 1878 	push	ar5
      000A07 C0 06            [24] 1879 	push	ar6
      000A09 C0 07            [24] 1880 	push	ar7
                                   1881 ;	./src/angry_bird.c:614: float delta_x = control_strength_value * control_strength - delta_y * 4;
      000A0B 90 C3 B7         [24] 1882 	mov	dptr,#0xc3b7
      000A0E 75 F0 07         [24] 1883 	mov	b,#0x07
      000A11 74 41            [12] 1884 	mov	a,#0x41
      000A13 12 10 EF         [24] 1885 	lcall	___fsmul
      000A16 85 82 60         [24] 1886 	mov	_angrybird_game_state_delta_y_196609_194,dpl
      000A19 85 83 61         [24] 1887 	mov	(_angrybird_game_state_delta_y_196609_194 + 1),dph
      000A1C 85 F0 62         [24] 1888 	mov	(_angrybird_game_state_delta_y_196609_194 + 2),b
      000A1F F5 63            [12] 1889 	mov	(_angrybird_game_state_delta_y_196609_194 + 3),a
      000A21 E5 81            [12] 1890 	mov	a,sp
      000A23 24 FC            [12] 1891 	add	a,#0xfc
      000A25 F5 81            [12] 1892 	mov	sp,a
      000A27 85 3C 0C         [24] 1893 	mov	__mulint_PARM_2,_control_strength
      000A2A 85 3D 0D         [24] 1894 	mov	(__mulint_PARM_2 + 1),(_control_strength + 1)
      000A2D 90 00 19         [24] 1895 	mov	dptr,#0x0019
      000A30 12 11 F3         [24] 1896 	lcall	__mulint
      000A33 AA 82            [24] 1897 	mov	r2,dpl
      000A35 AB 83            [24] 1898 	mov	r3,dph
      000A37 C0 03            [24] 1899 	push	ar3
      000A39 C0 02            [24] 1900 	push	ar2
      000A3B C0 60            [24] 1901 	push	_angrybird_game_state_delta_y_196609_194
      000A3D C0 61            [24] 1902 	push	(_angrybird_game_state_delta_y_196609_194 + 1)
      000A3F C0 62            [24] 1903 	push	(_angrybird_game_state_delta_y_196609_194 + 2)
      000A41 C0 63            [24] 1904 	push	(_angrybird_game_state_delta_y_196609_194 + 3)
      000A43 90 00 00         [24] 1905 	mov	dptr,#0x0000
      000A46 75 F0 80         [24] 1906 	mov	b,#0x80
      000A49 74 40            [12] 1907 	mov	a,#0x40
      000A4B 12 10 EF         [24] 1908 	lcall	___fsmul
      000A4E 85 82 78         [24] 1909 	mov	_angrybird_game_state_sloc1_1_0,dpl
      000A51 85 83 79         [24] 1910 	mov	(_angrybird_game_state_sloc1_1_0 + 1),dph
      000A54 85 F0 7A         [24] 1911 	mov	(_angrybird_game_state_sloc1_1_0 + 2),b
      000A57 F5 7B            [12] 1912 	mov	(_angrybird_game_state_sloc1_1_0 + 3),a
      000A59 E5 81            [12] 1913 	mov	a,sp
      000A5B 24 FC            [12] 1914 	add	a,#0xfc
      000A5D F5 81            [12] 1915 	mov	sp,a
      000A5F D0 02            [24] 1916 	pop	ar2
      000A61 D0 03            [24] 1917 	pop	ar3
      000A63 8A 82            [24] 1918 	mov	dpl,r2
      000A65 8B 83            [24] 1919 	mov	dph,r3
      000A67 12 12 DF         [24] 1920 	lcall	___sint2fs
      000A6A AA 82            [24] 1921 	mov	r2,dpl
      000A6C AB 83            [24] 1922 	mov	r3,dph
      000A6E AE F0            [24] 1923 	mov	r6,b
      000A70 FF               [12] 1924 	mov	r7,a
      000A71 C0 78            [24] 1925 	push	_angrybird_game_state_sloc1_1_0
      000A73 C0 79            [24] 1926 	push	(_angrybird_game_state_sloc1_1_0 + 1)
      000A75 C0 7A            [24] 1927 	push	(_angrybird_game_state_sloc1_1_0 + 2)
      000A77 C0 7B            [24] 1928 	push	(_angrybird_game_state_sloc1_1_0 + 3)
                                   1929 ;	./src/angry_bird.c:615: float peak_x = bird_init_col_cursor + delta_x;
      000A79 8A 82            [24] 1930 	mov	dpl,r2
      000A7B 8B 83            [24] 1931 	mov	dph,r3
      000A7D 8E F0            [24] 1932 	mov	b,r6
      000A7F EF               [12] 1933 	mov	a,r7
      000A80 12 10 E4         [24] 1934 	lcall	___fssub
      000A83 85 82 64         [24] 1935 	mov	_angrybird_game_state_delta_x_196609_194,dpl
      000A86 85 83 65         [24] 1936 	mov	(_angrybird_game_state_delta_x_196609_194 + 1),dph
      000A89 85 F0 66         [24] 1937 	mov	(_angrybird_game_state_delta_x_196609_194 + 2),b
      000A8C F5 67            [12] 1938 	mov	(_angrybird_game_state_delta_x_196609_194 + 3),a
      000A8E E5 81            [12] 1939 	mov	a,sp
      000A90 24 FC            [12] 1940 	add	a,#0xfc
      000A92 F5 81            [12] 1941 	mov	sp,a
      000A94 E4               [12] 1942 	clr	a
      000A95 C0 E0            [24] 1943 	push	acc
      000A97 C0 E0            [24] 1944 	push	acc
      000A99 C0 E0            [24] 1945 	push	acc
      000A9B 74 41            [12] 1946 	mov	a,#0x41
      000A9D C0 E0            [24] 1947 	push	acc
                                   1948 ;	./src/angry_bird.c:616: float peak_y = bird_init_row_cursor - delta_y;
      000A9F 85 64 82         [24] 1949 	mov	dpl,_angrybird_game_state_delta_x_196609_194
      000AA2 85 65 83         [24] 1950 	mov	dph,(_angrybird_game_state_delta_x_196609_194 + 1)
      000AA5 85 66 F0         [24] 1951 	mov	b,(_angrybird_game_state_delta_x_196609_194 + 2)
      000AA8 E5 67            [12] 1952 	mov	a,(_angrybird_game_state_delta_x_196609_194 + 3)
      000AAA 12 12 86         [24] 1953 	lcall	___fsadd
      000AAD 85 82 68         [24] 1954 	mov	_angrybird_game_state_peak_x_196609_194,dpl
      000AB0 85 83 69         [24] 1955 	mov	(_angrybird_game_state_peak_x_196609_194 + 1),dph
      000AB3 85 F0 6A         [24] 1956 	mov	(_angrybird_game_state_peak_x_196609_194 + 2),b
      000AB6 F5 6B            [12] 1957 	mov	(_angrybird_game_state_peak_x_196609_194 + 3),a
      000AB8 E5 81            [12] 1958 	mov	a,sp
      000ABA 24 FC            [12] 1959 	add	a,#0xfc
      000ABC F5 81            [12] 1960 	mov	sp,a
      000ABE C0 60            [24] 1961 	push	_angrybird_game_state_delta_y_196609_194
      000AC0 C0 61            [24] 1962 	push	(_angrybird_game_state_delta_y_196609_194 + 1)
      000AC2 C0 62            [24] 1963 	push	(_angrybird_game_state_delta_y_196609_194 + 2)
      000AC4 C0 63            [24] 1964 	push	(_angrybird_game_state_delta_y_196609_194 + 3)
                                   1965 ;	./src/angry_bird.c:617: float a = delta_y / pow_2(delta_x);
      000AC6 90 00 00         [24] 1966 	mov	dptr,#0x0000
      000AC9 75 F0 E0         [24] 1967 	mov	b,#0xe0
      000ACC 74 40            [12] 1968 	mov	a,#0x40
      000ACE 12 10 E4         [24] 1969 	lcall	___fssub
      000AD1 85 82 6C         [24] 1970 	mov	_angrybird_game_state_peak_y_196609_194,dpl
      000AD4 85 83 6D         [24] 1971 	mov	(_angrybird_game_state_peak_y_196609_194 + 1),dph
      000AD7 85 F0 6E         [24] 1972 	mov	(_angrybird_game_state_peak_y_196609_194 + 2),b
      000ADA F5 6F            [12] 1973 	mov	(_angrybird_game_state_peak_y_196609_194 + 3),a
      000ADC E5 81            [12] 1974 	mov	a,sp
      000ADE 24 FC            [12] 1975 	add	a,#0xfc
      000AE0 F5 81            [12] 1976 	mov	sp,a
      000AE2 85 64 82         [24] 1977 	mov	dpl,_angrybird_game_state_delta_x_196609_194
      000AE5 85 65 83         [24] 1978 	mov	dph,(_angrybird_game_state_delta_x_196609_194 + 1)
      000AE8 85 66 F0         [24] 1979 	mov	b,(_angrybird_game_state_delta_x_196609_194 + 2)
      000AEB E5 67            [12] 1980 	mov	a,(_angrybird_game_state_delta_x_196609_194 + 3)
      000AED 12 0F 30         [24] 1981 	lcall	_pow_2
      000AF0 AA 82            [24] 1982 	mov	r2,dpl
      000AF2 AB 83            [24] 1983 	mov	r3,dph
      000AF4 AE F0            [24] 1984 	mov	r6,b
      000AF6 FF               [12] 1985 	mov	r7,a
      000AF7 C0 02            [24] 1986 	push	ar2
      000AF9 C0 03            [24] 1987 	push	ar3
      000AFB C0 06            [24] 1988 	push	ar6
      000AFD C0 07            [24] 1989 	push	ar7
                                   1990 ;	./src/angry_bird.c:619: row_offset = bird_init_row_cursor;
      000AFF 85 60 82         [24] 1991 	mov	dpl,_angrybird_game_state_delta_y_196609_194
      000B02 85 61 83         [24] 1992 	mov	dph,(_angrybird_game_state_delta_y_196609_194 + 1)
      000B05 85 62 F0         [24] 1993 	mov	b,(_angrybird_game_state_delta_y_196609_194 + 2)
      000B08 E5 63            [12] 1994 	mov	a,(_angrybird_game_state_delta_y_196609_194 + 3)
      000B0A 12 13 A1         [24] 1995 	lcall	___fsdiv
      000B0D 85 82 70         [24] 1996 	mov	_angrybird_game_state_a_196609_194,dpl
      000B10 85 83 71         [24] 1997 	mov	(_angrybird_game_state_a_196609_194 + 1),dph
      000B13 85 F0 72         [24] 1998 	mov	(_angrybird_game_state_a_196609_194 + 2),b
      000B16 F5 73            [12] 1999 	mov	(_angrybird_game_state_a_196609_194 + 3),a
      000B18 E5 81            [12] 2000 	mov	a,sp
      000B1A 24 FC            [12] 2001 	add	a,#0xfc
      000B1C F5 81            [12] 2002 	mov	sp,a
      000B1E 75 21 07         [24] 2003 	mov	_row_offset,#0x07
      000B21 75 22 00         [24] 2004 	mov	(_row_offset + 1),#0x00
                                   2005 ;	./src/angry_bird.c:620: col_offset = bird_init_col_cursor;
      000B24 75 23 08         [24] 2006 	mov	_col_offset,#0x08
      000B27 75 24 00         [24] 2007 	mov	(_col_offset + 1),#0x00
                                   2008 ;	./src/angry_bird.c:621: for (int j = 0; j < bird_cul_size; j++)
      000B2A 7A 00            [12] 2009 	mov	r2,#0x00
      000B2C 7B 00            [12] 2010 	mov	r3,#0x00
      000B2E                       2011 00176$:
      000B2E C3               [12] 2012 	clr	c
      000B2F EA               [12] 2013 	mov	a,r2
      000B30 94 08            [12] 2014 	subb	a,#0x08
      000B32 EB               [12] 2015 	mov	a,r3
      000B33 64 80            [12] 2016 	xrl	a,#0x80
      000B35 94 80            [12] 2017 	subb	a,#0x80
      000B37 50 31            [24] 2018 	jnc	00138$
                                   2019 ;	./src/angry_bird.c:623: for (int i = 0; i < bird_row_size; i++)
      000B39 7F 00            [12] 2020 	mov	r7,#0x00
      000B3B                       2021 00173$:
      000B3B BF 01 00         [24] 2022 	cjne	r7,#0x01,00644$
      000B3E                       2023 00644$:
      000B3E 50 23            [24] 2024 	jnc	00177$
                                   2025 ;	./src/angry_bird.c:625: OLED_SetCursor(row_offset + i, col_offset + j);
      000B40 AE 21            [24] 2026 	mov	r6,_row_offset
      000B42 E4               [12] 2027 	clr	a
      000B43 2E               [12] 2028 	add	a,r6
      000B44 F5 82            [12] 2029 	mov	dpl,a
      000B46 AE 23            [24] 2030 	mov	r6,_col_offset
      000B48 8A 05            [24] 2031 	mov	ar5,r2
      000B4A ED               [12] 2032 	mov	a,r5
      000B4B 2E               [12] 2033 	add	a,r6
      000B4C F5 0B            [12] 2034 	mov	_OLED_SetCursor_PARM_2,a
      000B4E C0 03            [24] 2035 	push	ar3
      000B50 C0 02            [24] 2036 	push	ar2
      000B52 12 10 9C         [24] 2037 	lcall	_OLED_SetCursor
                                   2038 ;	./src/angry_bird.c:626: oledSendData(0x00);
      000B55 75 82 00         [24] 2039 	mov	dpl,#0x00
      000B58 12 10 D8         [24] 2040 	lcall	_oledSendData
      000B5B D0 02            [24] 2041 	pop	ar2
      000B5D D0 03            [24] 2042 	pop	ar3
                                   2043 ;	./src/angry_bird.c:623: for (int i = 0; i < bird_row_size; i++)
      000B5F 7F 01            [12] 2044 	mov	r7,#0x01
      000B61 80 D8            [24] 2045 	sjmp	00173$
      000B63                       2046 00177$:
                                   2047 ;	./src/angry_bird.c:621: for (int j = 0; j < bird_cul_size; j++)
      000B63 0A               [12] 2048 	inc	r2
      000B64 BA 00 C7         [24] 2049 	cjne	r2,#0x00,00176$
      000B67 0B               [12] 2050 	inc	r3
      000B68 80 C4            [24] 2051 	sjmp	00176$
      000B6A                       2052 00138$:
                                   2053 ;	./src/angry_bird.c:630: for (int i = 16; i <= 119; i += 8)
      000B6A 75 74 10         [24] 2054 	mov	_angrybird_game_state_i_262145_199,#0x10
      000B6D 75 75 00         [24] 2055 	mov	(_angrybird_game_state_i_262145_199 + 1),#0x00
      000B70                       2056 00197$:
      000B70 C3               [12] 2057 	clr	c
      000B71 74 77            [12] 2058 	mov	a,#0x77
      000B73 95 74            [12] 2059 	subb	a,_angrybird_game_state_i_262145_199
      000B75 74 80            [12] 2060 	mov	a,#(0x00 ^ 0x80)
      000B77 85 75 F0         [24] 2061 	mov	b,(_angrybird_game_state_i_262145_199 + 1)
      000B7A 63 F0 80         [24] 2062 	xrl	b,#0x80
      000B7D 95 F0            [12] 2063 	subb	a,b
      000B7F 50 03            [24] 2064 	jnc	00647$
      000B81 02 0D A4         [24] 2065 	ljmp	00153$
      000B84                       2066 00647$:
                                   2067 ;	./src/angry_bird.c:632: int output_row = a * pow_2(i - peak_x) + peak_y;
      000B84 85 74 82         [24] 2068 	mov	dpl,_angrybird_game_state_i_262145_199
      000B87 85 75 83         [24] 2069 	mov	dph,(_angrybird_game_state_i_262145_199 + 1)
      000B8A 12 12 DF         [24] 2070 	lcall	___sint2fs
      000B8D AA 82            [24] 2071 	mov	r2,dpl
      000B8F AB 83            [24] 2072 	mov	r3,dph
      000B91 AC F0            [24] 2073 	mov	r4,b
      000B93 FD               [12] 2074 	mov	r5,a
      000B94 C0 68            [24] 2075 	push	_angrybird_game_state_peak_x_196609_194
      000B96 C0 69            [24] 2076 	push	(_angrybird_game_state_peak_x_196609_194 + 1)
      000B98 C0 6A            [24] 2077 	push	(_angrybird_game_state_peak_x_196609_194 + 2)
      000B9A C0 6B            [24] 2078 	push	(_angrybird_game_state_peak_x_196609_194 + 3)
      000B9C 8A 82            [24] 2079 	mov	dpl,r2
      000B9E 8B 83            [24] 2080 	mov	dph,r3
      000BA0 8C F0            [24] 2081 	mov	b,r4
      000BA2 ED               [12] 2082 	mov	a,r5
      000BA3 12 10 E4         [24] 2083 	lcall	___fssub
      000BA6 AA 82            [24] 2084 	mov	r2,dpl
      000BA8 AB 83            [24] 2085 	mov	r3,dph
      000BAA AC F0            [24] 2086 	mov	r4,b
      000BAC FD               [12] 2087 	mov	r5,a
      000BAD E5 81            [12] 2088 	mov	a,sp
      000BAF 24 FC            [12] 2089 	add	a,#0xfc
      000BB1 F5 81            [12] 2090 	mov	sp,a
      000BB3 8A 82            [24] 2091 	mov	dpl,r2
      000BB5 8B 83            [24] 2092 	mov	dph,r3
      000BB7 8C F0            [24] 2093 	mov	b,r4
      000BB9 ED               [12] 2094 	mov	a,r5
      000BBA 12 0F 30         [24] 2095 	lcall	_pow_2
      000BBD AA 82            [24] 2096 	mov	r2,dpl
      000BBF AB 83            [24] 2097 	mov	r3,dph
      000BC1 AC F0            [24] 2098 	mov	r4,b
      000BC3 FD               [12] 2099 	mov	r5,a
      000BC4 C0 02            [24] 2100 	push	ar2
      000BC6 C0 03            [24] 2101 	push	ar3
      000BC8 C0 04            [24] 2102 	push	ar4
      000BCA C0 05            [24] 2103 	push	ar5
      000BCC 85 70 82         [24] 2104 	mov	dpl,_angrybird_game_state_a_196609_194
      000BCF 85 71 83         [24] 2105 	mov	dph,(_angrybird_game_state_a_196609_194 + 1)
      000BD2 85 72 F0         [24] 2106 	mov	b,(_angrybird_game_state_a_196609_194 + 2)
      000BD5 E5 73            [12] 2107 	mov	a,(_angrybird_game_state_a_196609_194 + 3)
      000BD7 12 10 EF         [24] 2108 	lcall	___fsmul
      000BDA AA 82            [24] 2109 	mov	r2,dpl
      000BDC AB 83            [24] 2110 	mov	r3,dph
      000BDE AC F0            [24] 2111 	mov	r4,b
      000BE0 FD               [12] 2112 	mov	r5,a
      000BE1 E5 81            [12] 2113 	mov	a,sp
      000BE3 24 FC            [12] 2114 	add	a,#0xfc
      000BE5 F5 81            [12] 2115 	mov	sp,a
      000BE7 C0 6C            [24] 2116 	push	_angrybird_game_state_peak_y_196609_194
      000BE9 C0 6D            [24] 2117 	push	(_angrybird_game_state_peak_y_196609_194 + 1)
      000BEB C0 6E            [24] 2118 	push	(_angrybird_game_state_peak_y_196609_194 + 2)
      000BED C0 6F            [24] 2119 	push	(_angrybird_game_state_peak_y_196609_194 + 3)
      000BEF 8A 82            [24] 2120 	mov	dpl,r2
      000BF1 8B 83            [24] 2121 	mov	dph,r3
      000BF3 8C F0            [24] 2122 	mov	b,r4
      000BF5 ED               [12] 2123 	mov	a,r5
      000BF6 12 12 86         [24] 2124 	lcall	___fsadd
      000BF9 AA 82            [24] 2125 	mov	r2,dpl
      000BFB AB 83            [24] 2126 	mov	r3,dph
      000BFD AC F0            [24] 2127 	mov	r4,b
      000BFF FD               [12] 2128 	mov	r5,a
      000C00 E5 81            [12] 2129 	mov	a,sp
      000C02 24 FC            [12] 2130 	add	a,#0xfc
      000C04 F5 81            [12] 2131 	mov	sp,a
      000C06 8A 82            [24] 2132 	mov	dpl,r2
      000C08 8B 83            [24] 2133 	mov	dph,r3
      000C0A 8C F0            [24] 2134 	mov	b,r4
      000C0C ED               [12] 2135 	mov	a,r5
      000C0D 12 12 EC         [24] 2136 	lcall	___fs2sint
      000C10 85 82 76         [24] 2137 	mov	_angrybird_game_state_output_row_327681_200,dpl
      000C13 85 83 77         [24] 2138 	mov	(_angrybird_game_state_output_row_327681_200 + 1),dph
                                   2139 ;	./src/angry_bird.c:634: if (1 <= output_row && output_row <= 7)
      000C16 C3               [12] 2140 	clr	c
      000C17 E5 76            [12] 2141 	mov	a,_angrybird_game_state_output_row_327681_200
      000C19 94 01            [12] 2142 	subb	a,#0x01
      000C1B E5 77            [12] 2143 	mov	a,(_angrybird_game_state_output_row_327681_200 + 1)
      000C1D 64 80            [12] 2144 	xrl	a,#0x80
      000C1F 94 80            [12] 2145 	subb	a,#0x80
      000C21 50 03            [24] 2146 	jnc	00648$
      000C23 02 0D 96         [24] 2147 	ljmp	00198$
      000C26                       2148 00648$:
      000C26 C3               [12] 2149 	clr	c
      000C27 74 07            [12] 2150 	mov	a,#0x07
      000C29 95 76            [12] 2151 	subb	a,_angrybird_game_state_output_row_327681_200
      000C2B 74 80            [12] 2152 	mov	a,#(0x00 ^ 0x80)
      000C2D 85 77 F0         [24] 2153 	mov	b,(_angrybird_game_state_output_row_327681_200 + 1)
      000C30 63 F0 80         [24] 2154 	xrl	b,#0x80
      000C33 95 F0            [12] 2155 	subb	a,b
      000C35 50 03            [24] 2156 	jnc	00649$
      000C37 02 0D 96         [24] 2157 	ljmp	00198$
      000C3A                       2158 00649$:
                                   2159 ;	./src/angry_bird.c:637: row_offset = output_row;
      000C3A 85 76 21         [24] 2160 	mov	_row_offset,_angrybird_game_state_output_row_327681_200
      000C3D 85 77 22         [24] 2161 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_200 + 1)
                                   2162 ;	./src/angry_bird.c:638: col_offset = bird_init_col_cursor + i;
      000C40 74 08            [12] 2163 	mov	a,#0x08
      000C42 25 74            [12] 2164 	add	a,_angrybird_game_state_i_262145_199
      000C44 F5 23            [12] 2165 	mov	_col_offset,a
      000C46 E4               [12] 2166 	clr	a
      000C47 35 75            [12] 2167 	addc	a,(_angrybird_game_state_i_262145_199 + 1)
      000C49 F5 24            [12] 2168 	mov	(_col_offset + 1),a
                                   2169 ;	./src/angry_bird.c:639: for (int j = 0; j < bird_cul_size; j++)
      000C4B 7A 00            [12] 2170 	mov	r2,#0x00
      000C4D 7B 00            [12] 2171 	mov	r3,#0x00
      000C4F                       2172 00182$:
      000C4F C3               [12] 2173 	clr	c
      000C50 EA               [12] 2174 	mov	a,r2
      000C51 94 08            [12] 2175 	subb	a,#0x08
      000C53 EB               [12] 2176 	mov	a,r3
      000C54 64 80            [12] 2177 	xrl	a,#0x80
      000C56 94 80            [12] 2178 	subb	a,#0x80
      000C58 50 4D            [24] 2179 	jnc	00140$
                                   2180 ;	./src/angry_bird.c:641: for (int i = 0; i < bird_row_size; i++)
      000C5A 7D 00            [12] 2181 	mov	r5,#0x00
      000C5C                       2182 00179$:
      000C5C BD 01 00         [24] 2183 	cjne	r5,#0x01,00651$
      000C5F                       2184 00651$:
      000C5F 50 3F            [24] 2185 	jnc	00183$
                                   2186 ;	./src/angry_bird.c:643: OLED_SetCursor(row_offset + i, col_offset + j);
      000C61 AC 21            [24] 2187 	mov	r4,_row_offset
      000C63 E4               [12] 2188 	clr	a
      000C64 2C               [12] 2189 	add	a,r4
      000C65 F5 82            [12] 2190 	mov	dpl,a
      000C67 AC 23            [24] 2191 	mov	r4,_col_offset
      000C69 8A 07            [24] 2192 	mov	ar7,r2
      000C6B EF               [12] 2193 	mov	a,r7
      000C6C 2C               [12] 2194 	add	a,r4
      000C6D F5 0B            [12] 2195 	mov	_OLED_SetCursor_PARM_2,a
      000C6F C0 07            [24] 2196 	push	ar7
      000C71 C0 03            [24] 2197 	push	ar3
      000C73 C0 02            [24] 2198 	push	ar2
      000C75 12 10 9C         [24] 2199 	lcall	_OLED_SetCursor
      000C78 D0 02            [24] 2200 	pop	ar2
      000C7A D0 03            [24] 2201 	pop	ar3
      000C7C D0 07            [24] 2202 	pop	ar7
                                   2203 ;	./src/angry_bird.c:644: oledSendData(bird_logo[bird_cul_size * i + j]);
      000C7E EF               [12] 2204 	mov	a,r7
      000C7F 33               [12] 2205 	rlc	a
      000C80 95 E0            [12] 2206 	subb	a,acc
      000C82 FE               [12] 2207 	mov	r6,a
      000C83 EF               [12] 2208 	mov	a,r7
      000C84 24 5F            [12] 2209 	add	a,#_bird_logo
      000C86 F5 82            [12] 2210 	mov	dpl,a
      000C88 EE               [12] 2211 	mov	a,r6
      000C89 34 18            [12] 2212 	addc	a,#(_bird_logo >> 8)
      000C8B F5 83            [12] 2213 	mov	dph,a
      000C8D E4               [12] 2214 	clr	a
      000C8E 93               [24] 2215 	movc	a,@a+dptr
      000C8F F5 82            [12] 2216 	mov	dpl,a
      000C91 C0 03            [24] 2217 	push	ar3
      000C93 C0 02            [24] 2218 	push	ar2
      000C95 12 10 D8         [24] 2219 	lcall	_oledSendData
      000C98 D0 02            [24] 2220 	pop	ar2
      000C9A D0 03            [24] 2221 	pop	ar3
                                   2222 ;	./src/angry_bird.c:641: for (int i = 0; i < bird_row_size; i++)
      000C9C 7D 01            [12] 2223 	mov	r5,#0x01
      000C9E 80 BC            [24] 2224 	sjmp	00179$
      000CA0                       2225 00183$:
                                   2226 ;	./src/angry_bird.c:639: for (int j = 0; j < bird_cul_size; j++)
      000CA0 0A               [12] 2227 	inc	r2
      000CA1 BA 00 AB         [24] 2228 	cjne	r2,#0x00,00182$
      000CA4 0B               [12] 2229 	inc	r3
      000CA5 80 A8            [24] 2230 	sjmp	00182$
      000CA7                       2231 00140$:
                                   2232 ;	./src/angry_bird.c:647: delay_ms(400);
      000CA7 90 01 90         [24] 2233 	mov	dptr,#0x0190
      000CAA 12 01 BA         [24] 2234 	lcall	_delay_ms
                                   2235 ;	./src/angry_bird.c:653: if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
      000CAD C3               [12] 2236 	clr	c
      000CAE E5 21            [12] 2237 	mov	a,_row_offset
      000CB0 94 03            [12] 2238 	subb	a,#0x03
      000CB2 E5 22            [12] 2239 	mov	a,(_row_offset + 1)
      000CB4 64 80            [12] 2240 	xrl	a,#0x80
      000CB6 94 80            [12] 2241 	subb	a,#0x80
      000CB8 50 03            [24] 2242 	jnc	00654$
      000CBA 02 0D 45         [24] 2243 	ljmp	00144$
      000CBD                       2244 00654$:
      000CBD C3               [12] 2245 	clr	c
      000CBE 74 04            [12] 2246 	mov	a,#0x04
      000CC0 95 21            [12] 2247 	subb	a,_row_offset
      000CC2 74 80            [12] 2248 	mov	a,#(0x00 ^ 0x80)
      000CC4 85 22 F0         [24] 2249 	mov	b,(_row_offset + 1)
      000CC7 63 F0 80         [24] 2250 	xrl	b,#0x80
      000CCA 95 F0            [12] 2251 	subb	a,b
      000CCC 40 77            [24] 2252 	jc	00144$
      000CCE 74 48            [12] 2253 	mov	a,#0x48
      000CD0 95 23            [12] 2254 	subb	a,_col_offset
      000CD2 74 80            [12] 2255 	mov	a,#(0x00 ^ 0x80)
      000CD4 85 24 F0         [24] 2256 	mov	b,(_col_offset + 1)
      000CD7 63 F0 80         [24] 2257 	xrl	b,#0x80
      000CDA 95 F0            [12] 2258 	subb	a,b
      000CDC 50 67            [24] 2259 	jnc	00144$
      000CDE C3               [12] 2260 	clr	c
      000CDF E5 23            [12] 2261 	mov	a,_col_offset
      000CE1 94 5C            [12] 2262 	subb	a,#0x5c
      000CE3 E5 24            [12] 2263 	mov	a,(_col_offset + 1)
      000CE5 64 80            [12] 2264 	xrl	a,#0x80
      000CE7 94 80            [12] 2265 	subb	a,#0x80
      000CE9 50 5A            [24] 2266 	jnc	00144$
                                   2267 ;	./src/angry_bird.c:655: pig_amt--;
      000CEB 15 4B            [12] 2268 	dec	_pig_amt
      000CED 74 FF            [12] 2269 	mov	a,#0xff
      000CEF B5 4B 02         [24] 2270 	cjne	a,_pig_amt,00658$
      000CF2 15 4C            [12] 2271 	dec	(_pig_amt + 1)
      000CF4                       2272 00658$:
                                   2273 ;	./src/angry_bird.c:656: row_offset = pig1_row_cursor;
      000CF4 75 21 03         [24] 2274 	mov	_row_offset,#0x03
      000CF7 75 22 00         [24] 2275 	mov	(_row_offset + 1),#0x00
                                   2276 ;	./src/angry_bird.c:657: col_offset = pig1_col_cursor;
      000CFA 75 23 50         [24] 2277 	mov	_col_offset,#0x50
      000CFD 75 24 00         [24] 2278 	mov	(_col_offset + 1),#0x00
                                   2279 ;	./src/angry_bird.c:658: for (int j = 0; j < pig_cul_size; j++)
      000D00 7E 00            [12] 2280 	mov	r6,#0x00
      000D02 7F 00            [12] 2281 	mov	r7,#0x00
      000D04                       2282 00188$:
      000D04 C3               [12] 2283 	clr	c
      000D05 EE               [12] 2284 	mov	a,r6
      000D06 94 0C            [12] 2285 	subb	a,#0x0c
      000D08 EF               [12] 2286 	mov	a,r7
      000D09 64 80            [12] 2287 	xrl	a,#0x80
      000D0B 94 80            [12] 2288 	subb	a,#0x80
      000D0D 50 36            [24] 2289 	jnc	00144$
                                   2290 ;	./src/angry_bird.c:660: for (int i = 0; i < pig_row_size; i++)
      000D0F 7D 00            [12] 2291 	mov	r5,#0x00
      000D11                       2292 00185$:
      000D11 BD 02 00         [24] 2293 	cjne	r5,#0x02,00660$
      000D14                       2294 00660$:
      000D14 50 28            [24] 2295 	jnc	00189$
                                   2296 ;	./src/angry_bird.c:662: OLED_SetCursor(row_offset + i, col_offset + j);
      000D16 AC 21            [24] 2297 	mov	r4,_row_offset
      000D18 8D 03            [24] 2298 	mov	ar3,r5
      000D1A EB               [12] 2299 	mov	a,r3
      000D1B 2C               [12] 2300 	add	a,r4
      000D1C F5 82            [12] 2301 	mov	dpl,a
      000D1E AC 23            [24] 2302 	mov	r4,_col_offset
      000D20 8E 03            [24] 2303 	mov	ar3,r6
      000D22 EB               [12] 2304 	mov	a,r3
      000D23 2C               [12] 2305 	add	a,r4
      000D24 F5 0B            [12] 2306 	mov	_OLED_SetCursor_PARM_2,a
      000D26 C0 07            [24] 2307 	push	ar7
      000D28 C0 06            [24] 2308 	push	ar6
      000D2A C0 05            [24] 2309 	push	ar5
      000D2C 12 10 9C         [24] 2310 	lcall	_OLED_SetCursor
                                   2311 ;	./src/angry_bird.c:663: oledSendData(0x00);
      000D2F 75 82 00         [24] 2312 	mov	dpl,#0x00
      000D32 12 10 D8         [24] 2313 	lcall	_oledSendData
      000D35 D0 05            [24] 2314 	pop	ar5
      000D37 D0 06            [24] 2315 	pop	ar6
      000D39 D0 07            [24] 2316 	pop	ar7
                                   2317 ;	./src/angry_bird.c:660: for (int i = 0; i < pig_row_size; i++)
      000D3B 0D               [12] 2318 	inc	r5
      000D3C 80 D3            [24] 2319 	sjmp	00185$
      000D3E                       2320 00189$:
                                   2321 ;	./src/angry_bird.c:658: for (int j = 0; j < pig_cul_size; j++)
      000D3E 0E               [12] 2322 	inc	r6
      000D3F BE 00 C2         [24] 2323 	cjne	r6,#0x00,00188$
      000D42 0F               [12] 2324 	inc	r7
      000D43 80 BF            [24] 2325 	sjmp	00188$
      000D45                       2326 00144$:
                                   2327 ;	./src/angry_bird.c:668: row_offset = output_row;
      000D45 85 76 21         [24] 2328 	mov	_row_offset,_angrybird_game_state_output_row_327681_200
      000D48 85 77 22         [24] 2329 	mov	(_row_offset + 1),(_angrybird_game_state_output_row_327681_200 + 1)
                                   2330 ;	./src/angry_bird.c:669: col_offset = bird_init_col_cursor + i;
      000D4B 74 08            [12] 2331 	mov	a,#0x08
      000D4D 25 74            [12] 2332 	add	a,_angrybird_game_state_i_262145_199
      000D4F F5 23            [12] 2333 	mov	_col_offset,a
      000D51 E4               [12] 2334 	clr	a
      000D52 35 75            [12] 2335 	addc	a,(_angrybird_game_state_i_262145_199 + 1)
      000D54 F5 24            [12] 2336 	mov	(_col_offset + 1),a
                                   2337 ;	./src/angry_bird.c:670: for (int j = 0; j < bird_cul_size; j++)
      000D56 7E 00            [12] 2338 	mov	r6,#0x00
      000D58 7F 00            [12] 2339 	mov	r7,#0x00
      000D5A                       2340 00194$:
      000D5A C3               [12] 2341 	clr	c
      000D5B EE               [12] 2342 	mov	a,r6
      000D5C 94 08            [12] 2343 	subb	a,#0x08
      000D5E EF               [12] 2344 	mov	a,r7
      000D5F 64 80            [12] 2345 	xrl	a,#0x80
      000D61 94 80            [12] 2346 	subb	a,#0x80
      000D63 50 31            [24] 2347 	jnc	00198$
                                   2348 ;	./src/angry_bird.c:672: for (int i = 0; i < bird_row_size; i++)
      000D65 7D 00            [12] 2349 	mov	r5,#0x00
      000D67                       2350 00191$:
      000D67 BD 01 00         [24] 2351 	cjne	r5,#0x01,00664$
      000D6A                       2352 00664$:
      000D6A 50 23            [24] 2353 	jnc	00195$
                                   2354 ;	./src/angry_bird.c:674: OLED_SetCursor(row_offset + i, col_offset + j);
      000D6C AC 21            [24] 2355 	mov	r4,_row_offset
      000D6E E4               [12] 2356 	clr	a
      000D6F 2C               [12] 2357 	add	a,r4
      000D70 F5 82            [12] 2358 	mov	dpl,a
      000D72 AC 23            [24] 2359 	mov	r4,_col_offset
      000D74 8E 03            [24] 2360 	mov	ar3,r6
      000D76 EB               [12] 2361 	mov	a,r3
      000D77 2C               [12] 2362 	add	a,r4
      000D78 F5 0B            [12] 2363 	mov	_OLED_SetCursor_PARM_2,a
      000D7A C0 07            [24] 2364 	push	ar7
      000D7C C0 06            [24] 2365 	push	ar6
      000D7E 12 10 9C         [24] 2366 	lcall	_OLED_SetCursor
                                   2367 ;	./src/angry_bird.c:675: oledSendData(0x00);
      000D81 75 82 00         [24] 2368 	mov	dpl,#0x00
      000D84 12 10 D8         [24] 2369 	lcall	_oledSendData
      000D87 D0 06            [24] 2370 	pop	ar6
      000D89 D0 07            [24] 2371 	pop	ar7
                                   2372 ;	./src/angry_bird.c:672: for (int i = 0; i < bird_row_size; i++)
      000D8B 7D 01            [12] 2373 	mov	r5,#0x01
      000D8D 80 D8            [24] 2374 	sjmp	00191$
      000D8F                       2375 00195$:
                                   2376 ;	./src/angry_bird.c:670: for (int j = 0; j < bird_cul_size; j++)
      000D8F 0E               [12] 2377 	inc	r6
      000D90 BE 00 C7         [24] 2378 	cjne	r6,#0x00,00194$
      000D93 0F               [12] 2379 	inc	r7
      000D94 80 C4            [24] 2380 	sjmp	00194$
      000D96                       2381 00198$:
                                   2382 ;	./src/angry_bird.c:630: for (int i = 16; i <= 119; i += 8)
      000D96 74 08            [12] 2383 	mov	a,#0x08
      000D98 25 74            [12] 2384 	add	a,_angrybird_game_state_i_262145_199
      000D9A F5 74            [12] 2385 	mov	_angrybird_game_state_i_262145_199,a
      000D9C E4               [12] 2386 	clr	a
      000D9D 35 75            [12] 2387 	addc	a,(_angrybird_game_state_i_262145_199 + 1)
      000D9F F5 75            [12] 2388 	mov	(_angrybird_game_state_i_262145_199 + 1),a
      000DA1 02 0B 70         [24] 2389 	ljmp	00197$
      000DA4                       2390 00153$:
                                   2391 ;	./src/angry_bird.c:682: row_offset = bird_init_row_cursor;
      000DA4 75 21 07         [24] 2392 	mov	_row_offset,#0x07
      000DA7 75 22 00         [24] 2393 	mov	(_row_offset + 1),#0x00
                                   2394 ;	./src/angry_bird.c:683: col_offset = bird_init_col_cursor;
      000DAA 75 23 08         [24] 2395 	mov	_col_offset,#0x08
      000DAD 75 24 00         [24] 2396 	mov	(_col_offset + 1),#0x00
                                   2397 ;	./src/angry_bird.c:684: for (int j = 0; j < bird_cul_size; j++)
      000DB0 7E 00            [12] 2398 	mov	r6,#0x00
      000DB2 7F 00            [12] 2399 	mov	r7,#0x00
      000DB4                       2400 00203$:
      000DB4 C3               [12] 2401 	clr	c
      000DB5 EE               [12] 2402 	mov	a,r6
      000DB6 94 08            [12] 2403 	subb	a,#0x08
      000DB8 EF               [12] 2404 	mov	a,r7
      000DB9 64 80            [12] 2405 	xrl	a,#0x80
      000DBB 94 80            [12] 2406 	subb	a,#0x80
      000DBD 50 45            [24] 2407 	jnc	00159$
                                   2408 ;	./src/angry_bird.c:686: for (int i = 0; i < bird_row_size; i++)
      000DBF 7D 00            [12] 2409 	mov	r5,#0x00
      000DC1                       2410 00200$:
      000DC1 BD 01 00         [24] 2411 	cjne	r5,#0x01,00668$
      000DC4                       2412 00668$:
      000DC4 50 37            [24] 2413 	jnc	00204$
                                   2414 ;	./src/angry_bird.c:688: OLED_SetCursor(row_offset + i, col_offset + j);
      000DC6 AC 21            [24] 2415 	mov	r4,_row_offset
      000DC8 E4               [12] 2416 	clr	a
      000DC9 2C               [12] 2417 	add	a,r4
      000DCA F5 82            [12] 2418 	mov	dpl,a
      000DCC AC 23            [24] 2419 	mov	r4,_col_offset
      000DCE 8E 03            [24] 2420 	mov	ar3,r6
      000DD0 EB               [12] 2421 	mov	a,r3
      000DD1 2C               [12] 2422 	add	a,r4
      000DD2 F5 0B            [12] 2423 	mov	_OLED_SetCursor_PARM_2,a
      000DD4 C0 07            [24] 2424 	push	ar7
      000DD6 C0 06            [24] 2425 	push	ar6
      000DD8 C0 03            [24] 2426 	push	ar3
      000DDA 12 10 9C         [24] 2427 	lcall	_OLED_SetCursor
      000DDD D0 03            [24] 2428 	pop	ar3
                                   2429 ;	./src/angry_bird.c:689: oledSendData(bird_logo[bird_cul_size * i + j]);
      000DDF EB               [12] 2430 	mov	a,r3
      000DE0 33               [12] 2431 	rlc	a
      000DE1 95 E0            [12] 2432 	subb	a,acc
      000DE3 FC               [12] 2433 	mov	r4,a
      000DE4 EB               [12] 2434 	mov	a,r3
      000DE5 24 5F            [12] 2435 	add	a,#_bird_logo
      000DE7 F5 82            [12] 2436 	mov	dpl,a
      000DE9 EC               [12] 2437 	mov	a,r4
      000DEA 34 18            [12] 2438 	addc	a,#(_bird_logo >> 8)
      000DEC F5 83            [12] 2439 	mov	dph,a
      000DEE E4               [12] 2440 	clr	a
      000DEF 93               [24] 2441 	movc	a,@a+dptr
      000DF0 F5 82            [12] 2442 	mov	dpl,a
      000DF2 12 10 D8         [24] 2443 	lcall	_oledSendData
      000DF5 D0 06            [24] 2444 	pop	ar6
      000DF7 D0 07            [24] 2445 	pop	ar7
                                   2446 ;	./src/angry_bird.c:686: for (int i = 0; i < bird_row_size; i++)
      000DF9 7D 01            [12] 2447 	mov	r5,#0x01
      000DFB 80 C4            [24] 2448 	sjmp	00200$
      000DFD                       2449 00204$:
                                   2450 ;	./src/angry_bird.c:684: for (int j = 0; j < bird_cul_size; j++)
      000DFD 0E               [12] 2451 	inc	r6
      000DFE BE 00 B3         [24] 2452 	cjne	r6,#0x00,00203$
      000E01 0F               [12] 2453 	inc	r7
      000E02 80 B0            [24] 2454 	sjmp	00203$
      000E04                       2455 00159$:
                                   2456 ;	./src/angry_bird.c:707: if (pig_amt == 0)
      000E04 E5 4B            [12] 2457 	mov	a,_pig_amt
      000E06 45 4C            [12] 2458 	orl	a,(_pig_amt + 1)
                                   2459 ;	./src/angry_bird.c:711: cur_state = STATE_HOME;
      000E08 70 0A            [24] 2460 	jnz	00164$
      000E0A 75 47 01         [24] 2461 	mov	_cur_state,#0x01
      000E0D F5 48            [12] 2462 	mov	(_cur_state + 1),a
                                   2463 ;	./src/angry_bird.c:712: angrybird_display_home();
      000E0F 12 01 D1         [24] 2464 	lcall	_angrybird_display_home
      000E12 80 0E            [24] 2465 	sjmp	00165$
      000E14                       2466 00164$:
                                   2467 ;	./src/angry_bird.c:714: else if (bird_amt == 0)
      000E14 E5 49            [12] 2468 	mov	a,_bird_amt
      000E16 45 4A            [12] 2469 	orl	a,(_bird_amt + 1)
                                   2470 ;	./src/angry_bird.c:718: cur_state = STATE_HOME;
      000E18 70 08            [24] 2471 	jnz	00165$
      000E1A 75 47 01         [24] 2472 	mov	_cur_state,#0x01
      000E1D F5 48            [12] 2473 	mov	(_cur_state + 1),a
                                   2474 ;	./src/angry_bird.c:719: angrybird_display_home();
      000E1F 12 01 D1         [24] 2475 	lcall	_angrybird_display_home
      000E22                       2476 00165$:
                                   2477 ;	./src/angry_bird.c:722: prebut_enter = but_enter;
      000E22 A2 B3            [12] 2478 	mov	c,_INT1
      000E24 E4               [12] 2479 	clr	a
      000E25 33               [12] 2480 	rlc	a
      000E26 F5 55            [12] 2481 	mov	_prebut_enter,a
      000E28 75 56 00         [24] 2482 	mov	(_prebut_enter + 1),#0x00
                                   2483 ;	./src/angry_bird.c:723: prebut_up = but_up;
      000E2B A2 A0            [12] 2484 	mov	c,_P2_0
      000E2D E4               [12] 2485 	clr	a
      000E2E 33               [12] 2486 	rlc	a
      000E2F F5 4D            [12] 2487 	mov	_prebut_up,a
      000E31 75 4E 00         [24] 2488 	mov	(_prebut_up + 1),#0x00
                                   2489 ;	./src/angry_bird.c:724: prebut_down = but_down;
      000E34 A2 A1            [12] 2490 	mov	c,_P2_1
      000E36 E4               [12] 2491 	clr	a
      000E37 33               [12] 2492 	rlc	a
      000E38 F5 4F            [12] 2493 	mov	_prebut_down,a
      000E3A 75 50 00         [24] 2494 	mov	(_prebut_down + 1),#0x00
                                   2495 ;	./src/angry_bird.c:725: prebut_left = but_left;
      000E3D A2 B2            [12] 2496 	mov	c,_INT0
      000E3F E4               [12] 2497 	clr	a
      000E40 33               [12] 2498 	rlc	a
      000E41 F5 51            [12] 2499 	mov	_prebut_left,a
      000E43 75 52 00         [24] 2500 	mov	(_prebut_left + 1),#0x00
                                   2501 ;	./src/angry_bird.c:726: prebut_right = but_right;
      000E46 A2 A2            [12] 2502 	mov	c,_P2_2
      000E48 E4               [12] 2503 	clr	a
      000E49 33               [12] 2504 	rlc	a
      000E4A F5 53            [12] 2505 	mov	_prebut_right,a
      000E4C 75 54 00         [24] 2506 	mov	(_prebut_right + 1),#0x00
                                   2507 ;	./src/angry_bird.c:727: delay_ms(10);
      000E4F 90 00 0A         [24] 2508 	mov	dptr,#0x000a
                                   2509 ;	./src/angry_bird.c:728: }
      000E52 02 01 BA         [24] 2510 	ljmp	_delay_ms
                                   2511 ;------------------------------------------------------------
                                   2512 ;Allocation info for local variables in function 'getsine'
                                   2513 ;------------------------------------------------------------
                                   2514 ;angle                     Allocated to registers r6 r7 
                                   2515 ;index                     Allocated to registers r6 r7 
                                   2516 ;------------------------------------------------------------
                                   2517 ;	./src/angry_bird.c:734: float getsine(int angle)
                                   2518 ;	-----------------------------------------
                                   2519 ;	 function getsine
                                   2520 ;	-----------------------------------------
      000E55                       2521 _getsine:
      000E55 AE 82            [24] 2522 	mov	r6,dpl
      000E57 AF 83            [24] 2523 	mov	r7,dph
                                   2524 ;	./src/angry_bird.c:736: int index = (angle > 0) ? (angle / 10) : (-angle / 10);
      000E59 C3               [12] 2525 	clr	c
      000E5A E4               [12] 2526 	clr	a
      000E5B 9E               [12] 2527 	subb	a,r6
      000E5C 74 80            [12] 2528 	mov	a,#(0x00 ^ 0x80)
      000E5E 8F F0            [24] 2529 	mov	b,r7
      000E60 63 F0 80         [24] 2530 	xrl	b,#0x80
      000E63 95 F0            [12] 2531 	subb	a,b
      000E65 E4               [12] 2532 	clr	a
      000E66 33               [12] 2533 	rlc	a
      000E67 FD               [12] 2534 	mov	r5,a
      000E68 60 17            [24] 2535 	jz	00103$
      000E6A 75 0C 0A         [24] 2536 	mov	__divsint_PARM_2,#0x0a
      000E6D 75 0D 00         [24] 2537 	mov	(__divsint_PARM_2 + 1),#0x00
      000E70 8E 82            [24] 2538 	mov	dpl,r6
      000E72 8F 83            [24] 2539 	mov	dph,r7
      000E74 C0 05            [24] 2540 	push	ar5
      000E76 12 14 E3         [24] 2541 	lcall	__divsint
      000E79 AB 82            [24] 2542 	mov	r3,dpl
      000E7B AC 83            [24] 2543 	mov	r4,dph
      000E7D D0 05            [24] 2544 	pop	ar5
      000E7F 80 1A            [24] 2545 	sjmp	00104$
      000E81                       2546 00103$:
      000E81 C3               [12] 2547 	clr	c
      000E82 E4               [12] 2548 	clr	a
      000E83 9E               [12] 2549 	subb	a,r6
      000E84 F5 82            [12] 2550 	mov	dpl,a
      000E86 E4               [12] 2551 	clr	a
      000E87 9F               [12] 2552 	subb	a,r7
      000E88 F5 83            [12] 2553 	mov	dph,a
      000E8A 75 0C 0A         [24] 2554 	mov	__divsint_PARM_2,#0x0a
      000E8D 75 0D 00         [24] 2555 	mov	(__divsint_PARM_2 + 1),#0x00
      000E90 C0 05            [24] 2556 	push	ar5
      000E92 12 14 E3         [24] 2557 	lcall	__divsint
      000E95 AB 82            [24] 2558 	mov	r3,dpl
      000E97 AC 83            [24] 2559 	mov	r4,dph
      000E99 D0 05            [24] 2560 	pop	ar5
      000E9B                       2561 00104$:
      000E9B 8B 06            [24] 2562 	mov	ar6,r3
      000E9D 8C 07            [24] 2563 	mov	ar7,r4
                                   2564 ;	./src/angry_bird.c:737: return (angle > 0) ? sine_table[index] : -sine_table[index];
      000E9F ED               [12] 2565 	mov	a,r5
      000EA0 60 27            [24] 2566 	jz	00105$
      000EA2 EE               [12] 2567 	mov	a,r6
      000EA3 2E               [12] 2568 	add	a,r6
      000EA4 FC               [12] 2569 	mov	r4,a
      000EA5 EF               [12] 2570 	mov	a,r7
      000EA6 33               [12] 2571 	rlc	a
      000EA7 FD               [12] 2572 	mov	r5,a
      000EA8 EC               [12] 2573 	mov	a,r4
      000EA9 2C               [12] 2574 	add	a,r4
      000EAA FC               [12] 2575 	mov	r4,a
      000EAB ED               [12] 2576 	mov	a,r5
      000EAC 33               [12] 2577 	rlc	a
      000EAD FD               [12] 2578 	mov	r5,a
      000EAE EC               [12] 2579 	mov	a,r4
      000EAF 24 5E            [12] 2580 	add	a,#_sine_table
      000EB1 F5 82            [12] 2581 	mov	dpl,a
      000EB3 ED               [12] 2582 	mov	a,r5
      000EB4 34 0F            [12] 2583 	addc	a,#(_sine_table >> 8)
      000EB6 F5 83            [12] 2584 	mov	dph,a
      000EB8 E4               [12] 2585 	clr	a
      000EB9 93               [24] 2586 	movc	a,@a+dptr
      000EBA FA               [12] 2587 	mov	r2,a
      000EBB A3               [24] 2588 	inc	dptr
      000EBC E4               [12] 2589 	clr	a
      000EBD 93               [24] 2590 	movc	a,@a+dptr
      000EBE FB               [12] 2591 	mov	r3,a
      000EBF A3               [24] 2592 	inc	dptr
      000EC0 E4               [12] 2593 	clr	a
      000EC1 93               [24] 2594 	movc	a,@a+dptr
      000EC2 FC               [12] 2595 	mov	r4,a
      000EC3 A3               [24] 2596 	inc	dptr
      000EC4 E4               [12] 2597 	clr	a
      000EC5 93               [24] 2598 	movc	a,@a+dptr
      000EC6 FD               [12] 2599 	mov	r5,a
      000EC7 80 2F            [24] 2600 	sjmp	00106$
      000EC9                       2601 00105$:
      000EC9 EE               [12] 2602 	mov	a,r6
      000ECA 2E               [12] 2603 	add	a,r6
      000ECB FE               [12] 2604 	mov	r6,a
      000ECC EF               [12] 2605 	mov	a,r7
      000ECD 33               [12] 2606 	rlc	a
      000ECE FF               [12] 2607 	mov	r7,a
      000ECF EE               [12] 2608 	mov	a,r6
      000ED0 2E               [12] 2609 	add	a,r6
      000ED1 FE               [12] 2610 	mov	r6,a
      000ED2 EF               [12] 2611 	mov	a,r7
      000ED3 33               [12] 2612 	rlc	a
      000ED4 FF               [12] 2613 	mov	r7,a
      000ED5 EE               [12] 2614 	mov	a,r6
      000ED6 24 5E            [12] 2615 	add	a,#_sine_table
      000ED8 F5 82            [12] 2616 	mov	dpl,a
      000EDA EF               [12] 2617 	mov	a,r7
      000EDB 34 0F            [12] 2618 	addc	a,#(_sine_table >> 8)
      000EDD F5 83            [12] 2619 	mov	dph,a
      000EDF E4               [12] 2620 	clr	a
      000EE0 93               [24] 2621 	movc	a,@a+dptr
      000EE1 F8               [12] 2622 	mov	r0,a
      000EE2 A3               [24] 2623 	inc	dptr
      000EE3 E4               [12] 2624 	clr	a
      000EE4 93               [24] 2625 	movc	a,@a+dptr
      000EE5 F9               [12] 2626 	mov	r1,a
      000EE6 A3               [24] 2627 	inc	dptr
      000EE7 E4               [12] 2628 	clr	a
      000EE8 93               [24] 2629 	movc	a,@a+dptr
      000EE9 FE               [12] 2630 	mov	r6,a
      000EEA A3               [24] 2631 	inc	dptr
      000EEB E4               [12] 2632 	clr	a
      000EEC 93               [24] 2633 	movc	a,@a+dptr
      000EED FF               [12] 2634 	mov	r7,a
      000EEE 88 02            [24] 2635 	mov	ar2,r0
      000EF0 89 03            [24] 2636 	mov	ar3,r1
      000EF2 8E 04            [24] 2637 	mov	ar4,r6
      000EF4 EF               [12] 2638 	mov	a,r7
      000EF5 B2 E7            [12] 2639 	cpl	acc.7
      000EF7 FD               [12] 2640 	mov	r5,a
      000EF8                       2641 00106$:
      000EF8 8A 82            [24] 2642 	mov	dpl,r2
      000EFA 8B 83            [24] 2643 	mov	dph,r3
      000EFC 8C F0            [24] 2644 	mov	b,r4
      000EFE ED               [12] 2645 	mov	a,r5
                                   2646 ;	./src/angry_bird.c:738: }
      000EFF 22               [24] 2647 	ret
                                   2648 ;------------------------------------------------------------
                                   2649 ;Allocation info for local variables in function 'getcosine'
                                   2650 ;------------------------------------------------------------
                                   2651 ;angle                     Allocated to registers r6 r7 
                                   2652 ;------------------------------------------------------------
                                   2653 ;	./src/angry_bird.c:739: float getcosine(int angle)
                                   2654 ;	-----------------------------------------
                                   2655 ;	 function getcosine
                                   2656 ;	-----------------------------------------
      000F00                       2657 _getcosine:
      000F00 AE 82            [24] 2658 	mov	r6,dpl
      000F02 AF 83            [24] 2659 	mov	r7,dph
                                   2660 ;	./src/angry_bird.c:741: return getsine((angle > 0) ? -angle + 90 : angle + 90);
      000F04 C3               [12] 2661 	clr	c
      000F05 E4               [12] 2662 	clr	a
      000F06 9E               [12] 2663 	subb	a,r6
      000F07 74 80            [12] 2664 	mov	a,#(0x00 ^ 0x80)
      000F09 8F F0            [24] 2665 	mov	b,r7
      000F0B 63 F0 80         [24] 2666 	xrl	b,#0x80
      000F0E 95 F0            [12] 2667 	subb	a,b
      000F10 50 10            [24] 2668 	jnc	00103$
      000F12 C3               [12] 2669 	clr	c
      000F13 E4               [12] 2670 	clr	a
      000F14 9E               [12] 2671 	subb	a,r6
      000F15 FC               [12] 2672 	mov	r4,a
      000F16 E4               [12] 2673 	clr	a
      000F17 9F               [12] 2674 	subb	a,r7
      000F18 FD               [12] 2675 	mov	r5,a
      000F19 74 5A            [12] 2676 	mov	a,#0x5a
      000F1B 2C               [12] 2677 	add	a,r4
      000F1C FC               [12] 2678 	mov	r4,a
      000F1D E4               [12] 2679 	clr	a
      000F1E 3D               [12] 2680 	addc	a,r5
      000F1F FD               [12] 2681 	mov	r5,a
      000F20 80 07            [24] 2682 	sjmp	00104$
      000F22                       2683 00103$:
      000F22 74 5A            [12] 2684 	mov	a,#0x5a
      000F24 2E               [12] 2685 	add	a,r6
      000F25 FC               [12] 2686 	mov	r4,a
      000F26 E4               [12] 2687 	clr	a
      000F27 3F               [12] 2688 	addc	a,r7
      000F28 FD               [12] 2689 	mov	r5,a
      000F29                       2690 00104$:
      000F29 8C 82            [24] 2691 	mov	dpl,r4
      000F2B 8D 83            [24] 2692 	mov	dph,r5
                                   2693 ;	./src/angry_bird.c:742: }
      000F2D 02 0E 55         [24] 2694 	ljmp	_getsine
                                   2695 ;------------------------------------------------------------
                                   2696 ;Allocation info for local variables in function 'pow_2'
                                   2697 ;------------------------------------------------------------
                                   2698 ;n                         Allocated to registers r4 r5 r6 r7 
                                   2699 ;------------------------------------------------------------
                                   2700 ;	./src/angry_bird.c:743: float pow_2(float n)
                                   2701 ;	-----------------------------------------
                                   2702 ;	 function pow_2
                                   2703 ;	-----------------------------------------
      000F30                       2704 _pow_2:
      000F30 AC 82            [24] 2705 	mov	r4,dpl
      000F32 AD 83            [24] 2706 	mov	r5,dph
      000F34 AE F0            [24] 2707 	mov	r6,b
      000F36 FF               [12] 2708 	mov	r7,a
                                   2709 ;	./src/angry_bird.c:745: return n * n;
      000F37 C0 04            [24] 2710 	push	ar4
      000F39 C0 05            [24] 2711 	push	ar5
      000F3B C0 06            [24] 2712 	push	ar6
      000F3D C0 07            [24] 2713 	push	ar7
      000F3F 8C 82            [24] 2714 	mov	dpl,r4
      000F41 8D 83            [24] 2715 	mov	dph,r5
      000F43 8E F0            [24] 2716 	mov	b,r6
      000F45 EF               [12] 2717 	mov	a,r7
      000F46 12 10 EF         [24] 2718 	lcall	___fsmul
      000F49 AC 82            [24] 2719 	mov	r4,dpl
      000F4B AD 83            [24] 2720 	mov	r5,dph
      000F4D AE F0            [24] 2721 	mov	r6,b
      000F4F FF               [12] 2722 	mov	r7,a
      000F50 E5 81            [12] 2723 	mov	a,sp
      000F52 24 FC            [12] 2724 	add	a,#0xfc
      000F54 F5 81            [12] 2725 	mov	sp,a
      000F56 8C 82            [24] 2726 	mov	dpl,r4
      000F58 8D 83            [24] 2727 	mov	dph,r5
      000F5A 8E F0            [24] 2728 	mov	b,r6
      000F5C EF               [12] 2729 	mov	a,r7
                                   2730 ;	./src/angry_bird.c:746: }
      000F5D 22               [24] 2731 	ret
                                   2732 	.area CSEG    (CODE)
                                   2733 	.area CONST   (CODE)
      0015CF                       2734 _angry_bird_logo:
      0015CF 00                    2735 	.db #0x00	; 0
      0015D0 00                    2736 	.db #0x00	; 0
      0015D1 00                    2737 	.db #0x00	; 0
      0015D2 00                    2738 	.db #0x00	; 0
      0015D3 00                    2739 	.db #0x00	; 0
      0015D4 00                    2740 	.db #0x00	; 0
      0015D5 00                    2741 	.db #0x00	; 0
      0015D6 00                    2742 	.db #0x00	; 0
      0015D7 00                    2743 	.db #0x00	; 0
      0015D8 00                    2744 	.db #0x00	; 0
      0015D9 00                    2745 	.db #0x00	; 0
      0015DA 00                    2746 	.db #0x00	; 0
      0015DB 00                    2747 	.db #0x00	; 0
      0015DC 00                    2748 	.db #0x00	; 0
      0015DD 00                    2749 	.db #0x00	; 0
      0015DE 00                    2750 	.db #0x00	; 0
      0015DF 00                    2751 	.db #0x00	; 0
      0015E0 00                    2752 	.db #0x00	; 0
      0015E1 00                    2753 	.db #0x00	; 0
      0015E2 00                    2754 	.db #0x00	; 0
      0015E3 00                    2755 	.db #0x00	; 0
      0015E4 00                    2756 	.db #0x00	; 0
      0015E5 00                    2757 	.db #0x00	; 0
      0015E6 00                    2758 	.db #0x00	; 0
      0015E7 00                    2759 	.db #0x00	; 0
      0015E8 00                    2760 	.db #0x00	; 0
      0015E9 00                    2761 	.db #0x00	; 0
      0015EA 00                    2762 	.db #0x00	; 0
      0015EB 00                    2763 	.db #0x00	; 0
      0015EC 80                    2764 	.db #0x80	; 128
      0015ED E0                    2765 	.db #0xe0	; 224
      0015EE 20                    2766 	.db #0x20	; 32
      0015EF 20                    2767 	.db #0x20	; 32
      0015F0 60                    2768 	.db #0x60	; 96
      0015F1 40                    2769 	.db #0x40	; 64
      0015F2 40                    2770 	.db #0x40	; 64
      0015F3 80                    2771 	.db #0x80	; 128
      0015F4 80                    2772 	.db #0x80	; 128
      0015F5 00                    2773 	.db #0x00	; 0
      0015F6 00                    2774 	.db #0x00	; 0
      0015F7 00                    2775 	.db #0x00	; 0
      0015F8 00                    2776 	.db #0x00	; 0
      0015F9 00                    2777 	.db #0x00	; 0
      0015FA 00                    2778 	.db #0x00	; 0
      0015FB 00                    2779 	.db #0x00	; 0
      0015FC 00                    2780 	.db #0x00	; 0
      0015FD 00                    2781 	.db #0x00	; 0
      0015FE 00                    2782 	.db #0x00	; 0
      0015FF 00                    2783 	.db #0x00	; 0
      001600 00                    2784 	.db #0x00	; 0
      001601 00                    2785 	.db #0x00	; 0
      001602 00                    2786 	.db #0x00	; 0
      001603 00                    2787 	.db #0x00	; 0
      001604 00                    2788 	.db #0x00	; 0
      001605 00                    2789 	.db #0x00	; 0
      001606 00                    2790 	.db #0x00	; 0
      001607 00                    2791 	.db #0x00	; 0
      001608 00                    2792 	.db #0x00	; 0
      001609 00                    2793 	.db #0x00	; 0
      00160A 00                    2794 	.db #0x00	; 0
      00160B 00                    2795 	.db #0x00	; 0
      00160C 00                    2796 	.db #0x00	; 0
      00160D 00                    2797 	.db #0x00	; 0
      00160E 00                    2798 	.db #0x00	; 0
      00160F 00                    2799 	.db #0x00	; 0
      001610 00                    2800 	.db #0x00	; 0
      001611 00                    2801 	.db #0x00	; 0
      001612 00                    2802 	.db #0x00	; 0
      001613 00                    2803 	.db #0x00	; 0
      001614 00                    2804 	.db #0x00	; 0
      001615 00                    2805 	.db #0x00	; 0
      001616 00                    2806 	.db #0x00	; 0
      001617 00                    2807 	.db #0x00	; 0
      001618 00                    2808 	.db #0x00	; 0
      001619 00                    2809 	.db #0x00	; 0
      00161A 00                    2810 	.db #0x00	; 0
      00161B 00                    2811 	.db #0x00	; 0
      00161C 00                    2812 	.db #0x00	; 0
      00161D 00                    2813 	.db #0x00	; 0
      00161E 00                    2814 	.db #0x00	; 0
      00161F 00                    2815 	.db #0x00	; 0
      001620 00                    2816 	.db #0x00	; 0
      001621 00                    2817 	.db #0x00	; 0
      001622 00                    2818 	.db #0x00	; 0
      001623 00                    2819 	.db #0x00	; 0
      001624 30                    2820 	.db #0x30	; 48	'0'
      001625 78                    2821 	.db #0x78	; 120	'x'
      001626 48                    2822 	.db #0x48	; 72	'H'
      001627 CC                    2823 	.db #0xcc	; 204
      001628 84                    2824 	.db #0x84	; 132
      001629 84                    2825 	.db #0x84	; 132
      00162A 84                    2826 	.db #0x84	; 132
      00162B 84                    2827 	.db #0x84	; 132
      00162C 84                    2828 	.db #0x84	; 132
      00162D 87                    2829 	.db #0x87	; 135
      00162E CE                    2830 	.db #0xce	; 206
      00162F CC                    2831 	.db #0xcc	; 204
      001630 D8                    2832 	.db #0xd8	; 216
      001631 F0                    2833 	.db #0xf0	; 240
      001632 60                    2834 	.db #0x60	; 96
      001633 40                    2835 	.db #0x40	; 64
      001634 41                    2836 	.db #0x41	; 65	'A'
      001635 43                    2837 	.db #0x43	; 67	'C'
      001636 46                    2838 	.db #0x46	; 70	'F'
      001637 CC                    2839 	.db #0xcc	; 204
      001638 D8                    2840 	.db #0xd8	; 216
      001639 F0                    2841 	.db #0xf0	; 240
      00163A E0                    2842 	.db #0xe0	; 224
      00163B 80                    2843 	.db #0x80	; 128
      00163C 80                    2844 	.db #0x80	; 128
      00163D 00                    2845 	.db #0x00	; 0
      00163E 00                    2846 	.db #0x00	; 0
      00163F 00                    2847 	.db #0x00	; 0
      001640 00                    2848 	.db #0x00	; 0
      001641 00                    2849 	.db #0x00	; 0
      001642 00                    2850 	.db #0x00	; 0
      001643 00                    2851 	.db #0x00	; 0
      001644 00                    2852 	.db #0x00	; 0
      001645 00                    2853 	.db #0x00	; 0
      001646 00                    2854 	.db #0x00	; 0
      001647 00                    2855 	.db #0x00	; 0
      001648 00                    2856 	.db #0x00	; 0
      001649 00                    2857 	.db #0x00	; 0
      00164A 00                    2858 	.db #0x00	; 0
      00164B 00                    2859 	.db #0x00	; 0
      00164C 00                    2860 	.db #0x00	; 0
      00164D 00                    2861 	.db #0x00	; 0
      00164E 00                    2862 	.db #0x00	; 0
      00164F 00                    2863 	.db #0x00	; 0
      001650 00                    2864 	.db #0x00	; 0
      001651 00                    2865 	.db #0x00	; 0
      001652 00                    2866 	.db #0x00	; 0
      001653 00                    2867 	.db #0x00	; 0
      001654 00                    2868 	.db #0x00	; 0
      001655 00                    2869 	.db #0x00	; 0
      001656 00                    2870 	.db #0x00	; 0
      001657 00                    2871 	.db #0x00	; 0
      001658 00                    2872 	.db #0x00	; 0
      001659 00                    2873 	.db #0x00	; 0
      00165A 00                    2874 	.db #0x00	; 0
      00165B 00                    2875 	.db #0x00	; 0
      00165C 00                    2876 	.db #0x00	; 0
      00165D 00                    2877 	.db #0x00	; 0
      00165E 00                    2878 	.db #0x00	; 0
      00165F 00                    2879 	.db #0x00	; 0
      001660 00                    2880 	.db #0x00	; 0
      001661 80                    2881 	.db #0x80	; 128
      001662 E0                    2882 	.db #0xe0	; 224
      001663 60                    2883 	.db #0x60	; 96
      001664 30                    2884 	.db #0x30	; 48	'0'
      001665 18                    2885 	.db #0x18	; 24
      001666 0C                    2886 	.db #0x0c	; 12
      001667 06                    2887 	.db #0x06	; 6
      001668 06                    2888 	.db #0x06	; 6
      001669 03                    2889 	.db #0x03	; 3
      00166A 03                    2890 	.db #0x03	; 3
      00166B 01                    2891 	.db #0x01	; 1
      00166C 01                    2892 	.db #0x01	; 1
      00166D 01                    2893 	.db #0x01	; 1
      00166E 00                    2894 	.db #0x00	; 0
      00166F 00                    2895 	.db #0x00	; 0
      001670 00                    2896 	.db #0x00	; 0
      001671 00                    2897 	.db #0x00	; 0
      001672 00                    2898 	.db #0x00	; 0
      001673 00                    2899 	.db #0x00	; 0
      001674 00                    2900 	.db #0x00	; 0
      001675 00                    2901 	.db #0x00	; 0
      001676 00                    2902 	.db #0x00	; 0
      001677 00                    2903 	.db #0x00	; 0
      001678 00                    2904 	.db #0x00	; 0
      001679 00                    2905 	.db #0x00	; 0
      00167A 00                    2906 	.db #0x00	; 0
      00167B 01                    2907 	.db #0x01	; 1
      00167C 01                    2908 	.db #0x01	; 1
      00167D 03                    2909 	.db #0x03	; 3
      00167E 03                    2910 	.db #0x03	; 3
      00167F 06                    2911 	.db #0x06	; 6
      001680 06                    2912 	.db #0x06	; 6
      001681 0C                    2913 	.db #0x0c	; 12
      001682 18                    2914 	.db #0x18	; 24
      001683 30                    2915 	.db #0x30	; 48	'0'
      001684 E0                    2916 	.db #0xe0	; 224
      001685 C0                    2917 	.db #0xc0	; 192
      001686 00                    2918 	.db #0x00	; 0
      001687 00                    2919 	.db #0x00	; 0
      001688 00                    2920 	.db #0x00	; 0
      001689 00                    2921 	.db #0x00	; 0
      00168A 00                    2922 	.db #0x00	; 0
      00168B 00                    2923 	.db #0x00	; 0
      00168C 00                    2924 	.db #0x00	; 0
      00168D 00                    2925 	.db #0x00	; 0
      00168E 00                    2926 	.db #0x00	; 0
      00168F 00                    2927 	.db #0x00	; 0
      001690 00                    2928 	.db #0x00	; 0
      001691 00                    2929 	.db #0x00	; 0
      001692 00                    2930 	.db #0x00	; 0
      001693 00                    2931 	.db #0x00	; 0
      001694 00                    2932 	.db #0x00	; 0
      001695 C0                    2933 	.db #0xc0	; 192
      001696 E0                    2934 	.db #0xe0	; 224
      001697 E0                    2935 	.db #0xe0	; 224
      001698 C0                    2936 	.db #0xc0	; 192
      001699 F0                    2937 	.db #0xf0	; 240
      00169A F8                    2938 	.db #0xf8	; 248
      00169B F8                    2939 	.db #0xf8	; 248
      00169C F0                    2940 	.db #0xf0	; 240
      00169D E0                    2941 	.db #0xe0	; 224
      00169E 78                    2942 	.db #0x78	; 120	'x'
      00169F 1E                    2943 	.db #0x1e	; 30
      0016A0 07                    2944 	.db #0x07	; 7
      0016A1 03                    2945 	.db #0x03	; 3
      0016A2 00                    2946 	.db #0x00	; 0
      0016A3 00                    2947 	.db #0x00	; 0
      0016A4 00                    2948 	.db #0x00	; 0
      0016A5 00                    2949 	.db #0x00	; 0
      0016A6 00                    2950 	.db #0x00	; 0
      0016A7 00                    2951 	.db #0x00	; 0
      0016A8 00                    2952 	.db #0x00	; 0
      0016A9 00                    2953 	.db #0x00	; 0
      0016AA 00                    2954 	.db #0x00	; 0
      0016AB 00                    2955 	.db #0x00	; 0
      0016AC 00                    2956 	.db #0x00	; 0
      0016AD 00                    2957 	.db #0x00	; 0
      0016AE 00                    2958 	.db #0x00	; 0
      0016AF 80                    2959 	.db #0x80	; 128
      0016B0 F0                    2960 	.db #0xf0	; 240
      0016B1 F8                    2961 	.db #0xf8	; 248
      0016B2 F0                    2962 	.db #0xf0	; 240
      0016B3 F0                    2963 	.db #0xf0	; 240
      0016B4 F0                    2964 	.db #0xf0	; 240
      0016B5 E0                    2965 	.db #0xe0	; 224
      0016B6 E0                    2966 	.db #0xe0	; 224
      0016B7 E0                    2967 	.db #0xe0	; 224
      0016B8 C0                    2968 	.db #0xc0	; 192
      0016B9 C0                    2969 	.db #0xc0	; 192
      0016BA 80                    2970 	.db #0x80	; 128
      0016BB 80                    2971 	.db #0x80	; 128
      0016BC 80                    2972 	.db #0x80	; 128
      0016BD 80                    2973 	.db #0x80	; 128
      0016BE 80                    2974 	.db #0x80	; 128
      0016BF C0                    2975 	.db #0xc0	; 192
      0016C0 C0                    2976 	.db #0xc0	; 192
      0016C1 C0                    2977 	.db #0xc0	; 192
      0016C2 E0                    2978 	.db #0xe0	; 224
      0016C3 E0                    2979 	.db #0xe0	; 224
      0016C4 E0                    2980 	.db #0xe0	; 224
      0016C5 F1                    2981 	.db #0xf1	; 241
      0016C6 F7                    2982 	.db #0xf7	; 247
      0016C7 FE                    2983 	.db #0xfe	; 254
      0016C8 F8                    2984 	.db #0xf8	; 248
      0016C9 C0                    2985 	.db #0xc0	; 192
      0016CA 00                    2986 	.db #0x00	; 0
      0016CB 00                    2987 	.db #0x00	; 0
      0016CC 00                    2988 	.db #0x00	; 0
      0016CD 00                    2989 	.db #0x00	; 0
      0016CE 00                    2990 	.db #0x00	; 0
      0016CF 00                    2991 	.db #0x00	; 0
      0016D0 00                    2992 	.db #0x00	; 0
      0016D1 00                    2993 	.db #0x00	; 0
      0016D2 00                    2994 	.db #0x00	; 0
      0016D3 00                    2995 	.db #0x00	; 0
      0016D4 00                    2996 	.db #0x00	; 0
      0016D5 03                    2997 	.db #0x03	; 3
      0016D6 03                    2998 	.db #0x03	; 3
      0016D7 03                    2999 	.db #0x03	; 3
      0016D8 3B                    3000 	.db #0x3b	; 59
      0016D9 3F                    3001 	.db #0x3f	; 63
      0016DA 1F                    3002 	.db #0x1f	; 31
      0016DB 1F                    3003 	.db #0x1f	; 31
      0016DC FF                    3004 	.db #0xff	; 255
      0016DD FF                    3005 	.db #0xff	; 255
      0016DE 00                    3006 	.db #0x00	; 0
      0016DF 00                    3007 	.db #0x00	; 0
      0016E0 00                    3008 	.db #0x00	; 0
      0016E1 00                    3009 	.db #0x00	; 0
      0016E2 00                    3010 	.db #0x00	; 0
      0016E3 00                    3011 	.db #0x00	; 0
      0016E4 00                    3012 	.db #0x00	; 0
      0016E5 00                    3013 	.db #0x00	; 0
      0016E6 00                    3014 	.db #0x00	; 0
      0016E7 00                    3015 	.db #0x00	; 0
      0016E8 00                    3016 	.db #0x00	; 0
      0016E9 00                    3017 	.db #0x00	; 0
      0016EA 00                    3018 	.db #0x00	; 0
      0016EB 00                    3019 	.db #0x00	; 0
      0016EC 00                    3020 	.db #0x00	; 0
      0016ED 00                    3021 	.db #0x00	; 0
      0016EE 00                    3022 	.db #0x00	; 0
      0016EF 00                    3023 	.db #0x00	; 0
      0016F0 00                    3024 	.db #0x00	; 0
      0016F1 00                    3025 	.db #0x00	; 0
      0016F2 3D                    3026 	.db #0x3d	; 61
      0016F3 67                    3027 	.db #0x67	; 103	'g'
      0016F4 81                    3028 	.db #0x81	; 129
      0016F5 81                    3029 	.db #0x81	; 129
      0016F6 03                    3030 	.db #0x03	; 3
      0016F7 03                    3031 	.db #0x03	; 3
      0016F8 9F                    3032 	.db #0x9f	; 159
      0016F9 FF                    3033 	.db #0xff	; 255
      0016FA 5F                    3034 	.db #0x5f	; 95
      0016FB 23                    3035 	.db #0x23	; 35
      0016FC 3F                    3036 	.db #0x3f	; 63
      0016FD 3F                    3037 	.db #0x3f	; 63
      0016FE 7F                    3038 	.db #0x7f	; 127
      0016FF 7F                    3039 	.db #0x7f	; 127
      001700 9B                    3040 	.db #0x9b	; 155
      001701 83                    3041 	.db #0x83	; 131
      001702 83                    3042 	.db #0x83	; 131
      001703 83                    3043 	.db #0x83	; 131
      001704 63                    3044 	.db #0x63	; 99	'c'
      001705 3F                    3045 	.db #0x3f	; 63
      001706 01                    3046 	.db #0x01	; 1
      001707 01                    3047 	.db #0x01	; 1
      001708 C7                    3048 	.db #0xc7	; 199
      001709 FF                    3049 	.db #0xff	; 255
      00170A 00                    3050 	.db #0x00	; 0
      00170B 00                    3051 	.db #0x00	; 0
      00170C 00                    3052 	.db #0x00	; 0
      00170D 00                    3053 	.db #0x00	; 0
      00170E 00                    3054 	.db #0x00	; 0
      00170F 00                    3055 	.db #0x00	; 0
      001710 00                    3056 	.db #0x00	; 0
      001711 00                    3057 	.db #0x00	; 0
      001712 00                    3058 	.db #0x00	; 0
      001713 00                    3059 	.db #0x00	; 0
      001714 00                    3060 	.db #0x00	; 0
      001715 00                    3061 	.db #0x00	; 0
      001716 00                    3062 	.db #0x00	; 0
      001717 00                    3063 	.db #0x00	; 0
      001718 00                    3064 	.db #0x00	; 0
      001719 00                    3065 	.db #0x00	; 0
      00171A 00                    3066 	.db #0x00	; 0
      00171B 00                    3067 	.db #0x00	; 0
      00171C 03                    3068 	.db #0x03	; 3
      00171D 1F                    3069 	.db #0x1f	; 31
      00171E 3C                    3070 	.db #0x3c	; 60
      00171F E0                    3071 	.db #0xe0	; 224
      001720 C0                    3072 	.db #0xc0	; 192
      001721 80                    3073 	.db #0x80	; 128
      001722 00                    3074 	.db #0x00	; 0
      001723 00                    3075 	.db #0x00	; 0
      001724 00                    3076 	.db #0x00	; 0
      001725 00                    3077 	.db #0x00	; 0
      001726 00                    3078 	.db #0x00	; 0
      001727 00                    3079 	.db #0x00	; 0
      001728 00                    3080 	.db #0x00	; 0
      001729 00                    3081 	.db #0x00	; 0
      00172A 00                    3082 	.db #0x00	; 0
      00172B 00                    3083 	.db #0x00	; 0
      00172C 00                    3084 	.db #0x00	; 0
      00172D 00                    3085 	.db #0x00	; 0
      00172E 00                    3086 	.db #0x00	; 0
      00172F 00                    3087 	.db #0x00	; 0
      001730 00                    3088 	.db #0x00	; 0
      001731 00                    3089 	.db #0x00	; 0
      001732 00                    3090 	.db #0x00	; 0
      001733 00                    3091 	.db #0x00	; 0
      001734 08                    3092 	.db #0x08	; 8
      001735 1D                    3093 	.db #0x1d	; 29
      001736 37                    3094 	.db #0x37	; 55	'7'
      001737 73                    3095 	.db #0x73	; 115	's'
      001738 91                    3096 	.db #0x91	; 145
      001739 30                    3097 	.db #0x30	; 48	'0'
      00173A 30                    3098 	.db #0x30	; 48	'0'
      00173B 30                    3099 	.db #0x30	; 48	'0'
      00173C 20                    3100 	.db #0x20	; 32
      00173D 20                    3101 	.db #0x20	; 32
      00173E 20                    3102 	.db #0x20	; 32
      00173F 20                    3103 	.db #0x20	; 32
      001740 A0                    3104 	.db #0xa0	; 160
      001741 A1                    3105 	.db #0xa1	; 161
      001742 63                    3106 	.db #0x63	; 99	'c'
      001743 26                    3107 	.db #0x26	; 38
      001744 3C                    3108 	.db #0x3c	; 60
      001745 B0                    3109 	.db #0xb0	; 176
      001746 E0                    3110 	.db #0xe0	; 224
      001747 78                    3111 	.db #0x78	; 120	'x'
      001748 1F                    3112 	.db #0x1f	; 31
      001749 07                    3113 	.db #0x07	; 7
      00174A 00                    3114 	.db #0x00	; 0
      00174B 00                    3115 	.db #0x00	; 0
      00174C 00                    3116 	.db #0x00	; 0
      00174D 00                    3117 	.db #0x00	; 0
      00174E 00                    3118 	.db #0x00	; 0
      00174F 00                    3119 	.db #0x00	; 0
      001750 00                    3120 	.db #0x00	; 0
      001751 00                    3121 	.db #0x00	; 0
      001752 00                    3122 	.db #0x00	; 0
      001753 00                    3123 	.db #0x00	; 0
      001754 00                    3124 	.db #0x00	; 0
      001755 00                    3125 	.db #0x00	; 0
      001756 00                    3126 	.db #0x00	; 0
      001757 00                    3127 	.db #0x00	; 0
      001758 00                    3128 	.db #0x00	; 0
      001759 00                    3129 	.db #0x00	; 0
      00175A 00                    3130 	.db #0x00	; 0
      00175B 00                    3131 	.db #0x00	; 0
      00175C 00                    3132 	.db #0x00	; 0
      00175D 00                    3133 	.db #0x00	; 0
      00175E 00                    3134 	.db #0x00	; 0
      00175F 00                    3135 	.db #0x00	; 0
      001760 01                    3136 	.db #0x01	; 1
      001761 03                    3137 	.db #0x03	; 3
      001762 06                    3138 	.db #0x06	; 6
      001763 0C                    3139 	.db #0x0c	; 12
      001764 1C                    3140 	.db #0x1c	; 28
      001765 18                    3141 	.db #0x18	; 24
      001766 30                    3142 	.db #0x30	; 48	'0'
      001767 30                    3143 	.db #0x30	; 48	'0'
      001768 60                    3144 	.db #0x60	; 96
      001769 60                    3145 	.db #0x60	; 96
      00176A C0                    3146 	.db #0xc0	; 192
      00176B C0                    3147 	.db #0xc0	; 192
      00176C 80                    3148 	.db #0x80	; 128
      00176D 80                    3149 	.db #0x80	; 128
      00176E 80                    3150 	.db #0x80	; 128
      00176F 80                    3151 	.db #0x80	; 128
      001770 80                    3152 	.db #0x80	; 128
      001771 80                    3153 	.db #0x80	; 128
      001772 80                    3154 	.db #0x80	; 128
      001773 80                    3155 	.db #0x80	; 128
      001774 80                    3156 	.db #0x80	; 128
      001775 80                    3157 	.db #0x80	; 128
      001776 80                    3158 	.db #0x80	; 128
      001777 80                    3159 	.db #0x80	; 128
      001778 80                    3160 	.db #0x80	; 128
      001779 83                    3161 	.db #0x83	; 131
      00177A 86                    3162 	.db #0x86	; 134
      00177B CC                    3163 	.db #0xcc	; 204
      00177C CC                    3164 	.db #0xcc	; 204
      00177D 66                    3165 	.db #0x66	; 102	'f'
      00177E 62                    3166 	.db #0x62	; 98	'b'
      00177F 33                    3167 	.db #0x33	; 51	'3'
      001780 31                    3168 	.db #0x31	; 49	'1'
      001781 18                    3169 	.db #0x18	; 24
      001782 1C                    3170 	.db #0x1c	; 28
      001783 0E                    3171 	.db #0x0e	; 14
      001784 07                    3172 	.db #0x07	; 7
      001785 03                    3173 	.db #0x03	; 3
      001786 00                    3174 	.db #0x00	; 0
      001787 00                    3175 	.db #0x00	; 0
      001788 00                    3176 	.db #0x00	; 0
      001789 00                    3177 	.db #0x00	; 0
      00178A 00                    3178 	.db #0x00	; 0
      00178B 00                    3179 	.db #0x00	; 0
      00178C 00                    3180 	.db #0x00	; 0
      00178D 00                    3181 	.db #0x00	; 0
      00178E 00                    3182 	.db #0x00	; 0
      00178F 00                    3183 	.db #0x00	; 0
      001790 00                    3184 	.db #0x00	; 0
      001791 00                    3185 	.db #0x00	; 0
      001792 00                    3186 	.db #0x00	; 0
      001793 00                    3187 	.db #0x00	; 0
      001794 00                    3188 	.db #0x00	; 0
      001795 00                    3189 	.db #0x00	; 0
      001796 00                    3190 	.db #0x00	; 0
      001797 00                    3191 	.db #0x00	; 0
      001798 00                    3192 	.db #0x00	; 0
      001799 00                    3193 	.db #0x00	; 0
      00179A 00                    3194 	.db #0x00	; 0
      00179B 00                    3195 	.db #0x00	; 0
      00179C 00                    3196 	.db #0x00	; 0
      00179D 00                    3197 	.db #0x00	; 0
      00179E 00                    3198 	.db #0x00	; 0
      00179F 00                    3199 	.db #0x00	; 0
      0017A0 00                    3200 	.db #0x00	; 0
      0017A1 00                    3201 	.db #0x00	; 0
      0017A2 00                    3202 	.db #0x00	; 0
      0017A3 00                    3203 	.db #0x00	; 0
      0017A4 00                    3204 	.db #0x00	; 0
      0017A5 00                    3205 	.db #0x00	; 0
      0017A6 00                    3206 	.db #0x00	; 0
      0017A7 00                    3207 	.db #0x00	; 0
      0017A8 00                    3208 	.db #0x00	; 0
      0017A9 00                    3209 	.db #0x00	; 0
      0017AA 00                    3210 	.db #0x00	; 0
      0017AB 00                    3211 	.db #0x00	; 0
      0017AC 00                    3212 	.db #0x00	; 0
      0017AD 01                    3213 	.db #0x01	; 1
      0017AE 01                    3214 	.db #0x01	; 1
      0017AF 01                    3215 	.db #0x01	; 1
      0017B0 01                    3216 	.db #0x01	; 1
      0017B1 01                    3217 	.db #0x01	; 1
      0017B2 01                    3218 	.db #0x01	; 1
      0017B3 01                    3219 	.db #0x01	; 1
      0017B4 01                    3220 	.db #0x01	; 1
      0017B5 01                    3221 	.db #0x01	; 1
      0017B6 01                    3222 	.db #0x01	; 1
      0017B7 01                    3223 	.db #0x01	; 1
      0017B8 01                    3224 	.db #0x01	; 1
      0017B9 01                    3225 	.db #0x01	; 1
      0017BA 00                    3226 	.db #0x00	; 0
      0017BB 00                    3227 	.db #0x00	; 0
      0017BC 00                    3228 	.db #0x00	; 0
      0017BD 00                    3229 	.db #0x00	; 0
      0017BE 00                    3230 	.db #0x00	; 0
      0017BF 00                    3231 	.db #0x00	; 0
      0017C0 00                    3232 	.db #0x00	; 0
      0017C1 00                    3233 	.db #0x00	; 0
      0017C2 00                    3234 	.db #0x00	; 0
      0017C3 00                    3235 	.db #0x00	; 0
      0017C4 00                    3236 	.db #0x00	; 0
      0017C5 00                    3237 	.db #0x00	; 0
      0017C6 00                    3238 	.db #0x00	; 0
      0017C7 00                    3239 	.db #0x00	; 0
      0017C8 00                    3240 	.db #0x00	; 0
      0017C9 00                    3241 	.db #0x00	; 0
      0017CA 00                    3242 	.db #0x00	; 0
      0017CB 00                    3243 	.db #0x00	; 0
      0017CC 00                    3244 	.db #0x00	; 0
      0017CD 00                    3245 	.db #0x00	; 0
      0017CE 00                    3246 	.db #0x00	; 0
      0017CF                       3247 _button_up_logo:
      0017CF 00                    3248 	.db #0x00	; 0
      0017D0 00                    3249 	.db #0x00	; 0
      0017D1 00                    3250 	.db #0x00	; 0
      0017D2 00                    3251 	.db #0x00	; 0
      0017D3 08                    3252 	.db #0x08	; 8
      0017D4 0C                    3253 	.db #0x0c	; 12
      0017D5 0E                    3254 	.db #0x0e	; 14
      0017D6 0F                    3255 	.db #0x0f	; 15
      0017D7 0F                    3256 	.db #0x0f	; 15
      0017D8 0E                    3257 	.db #0x0e	; 14
      0017D9 0C                    3258 	.db #0x0c	; 12
      0017DA 08                    3259 	.db #0x08	; 8
      0017DB 00                    3260 	.db #0x00	; 0
      0017DC 00                    3261 	.db #0x00	; 0
      0017DD 00                    3262 	.db #0x00	; 0
      0017DE 00                    3263 	.db #0x00	; 0
      0017DF                       3264 _button_down_logo:
      0017DF 00                    3265 	.db #0x00	; 0
      0017E0 00                    3266 	.db #0x00	; 0
      0017E1 00                    3267 	.db #0x00	; 0
      0017E2 00                    3268 	.db #0x00	; 0
      0017E3 10                    3269 	.db #0x10	; 16
      0017E4 30                    3270 	.db #0x30	; 48	'0'
      0017E5 70                    3271 	.db #0x70	; 112	'p'
      0017E6 F0                    3272 	.db #0xf0	; 240
      0017E7 F0                    3273 	.db #0xf0	; 240
      0017E8 70                    3274 	.db #0x70	; 112	'p'
      0017E9 30                    3275 	.db #0x30	; 48	'0'
      0017EA 10                    3276 	.db #0x10	; 16
      0017EB 00                    3277 	.db #0x00	; 0
      0017EC 00                    3278 	.db #0x00	; 0
      0017ED 00                    3279 	.db #0x00	; 0
      0017EE 00                    3280 	.db #0x00	; 0
      0017EF                       3281 _music_logo:
      0017EF 00                    3282 	.db #0x00	; 0
      0017F0 00                    3283 	.db #0x00	; 0
      0017F1 00                    3284 	.db #0x00	; 0
      0017F2 00                    3285 	.db #0x00	; 0
      0017F3 00                    3286 	.db #0x00	; 0
      0017F4 FC                    3287 	.db #0xfc	; 252
      0017F5 1C                    3288 	.db #0x1c	; 28
      0017F6 1C                    3289 	.db #0x1c	; 28
      0017F7 1E                    3290 	.db #0x1e	; 30
      0017F8 0E                    3291 	.db #0x0e	; 14
      0017F9 0E                    3292 	.db #0x0e	; 14
      0017FA 0E                    3293 	.db #0x0e	; 14
      0017FB 0F                    3294 	.db #0x0f	; 15
      0017FC FE                    3295 	.db #0xfe	; 254
      0017FD 00                    3296 	.db #0x00	; 0
      0017FE 00                    3297 	.db #0x00	; 0
      0017FF 00                    3298 	.db #0x00	; 0
      001800 60                    3299 	.db #0x60	; 96
      001801 F0                    3300 	.db #0xf0	; 240
      001802 F0                    3301 	.db #0xf0	; 240
      001803 70                    3302 	.db #0x70	; 112	'p'
      001804 7F                    3303 	.db #0x7f	; 127
      001805 00                    3304 	.db #0x00	; 0
      001806 00                    3305 	.db #0x00	; 0
      001807 00                    3306 	.db #0x00	; 0
      001808 18                    3307 	.db #0x18	; 24
      001809 38                    3308 	.db #0x38	; 56	'8'
      00180A 38                    3309 	.db #0x38	; 56	'8'
      00180B 3C                    3310 	.db #0x3c	; 60
      00180C 1F                    3311 	.db #0x1f	; 31
      00180D 00                    3312 	.db #0x00	; 0
      00180E 00                    3313 	.db #0x00	; 0
      00180F                       3314 _volume_logo:
      00180F C0                    3315 	.db #0xc0	; 192
      001810 C0                    3316 	.db #0xc0	; 192
      001811 E0                    3317 	.db #0xe0	; 224
      001812 E0                    3318 	.db #0xe0	; 224
      001813 F0                    3319 	.db #0xf0	; 240
      001814 F8                    3320 	.db #0xf8	; 248
      001815 FC                    3321 	.db #0xfc	; 252
      001816 00                    3322 	.db #0x00	; 0
      001817 00                    3323 	.db #0x00	; 0
      001818 20                    3324 	.db #0x20	; 32
      001819 C8                    3325 	.db #0xc8	; 200
      00181A 18                    3326 	.db #0x18	; 24
      00181B E2                    3327 	.db #0xe2	; 226
      00181C 06                    3328 	.db #0x06	; 6
      00181D 18                    3329 	.db #0x18	; 24
      00181E E0                    3330 	.db #0xe0	; 224
      00181F 03                    3331 	.db #0x03	; 3
      001820 03                    3332 	.db #0x03	; 3
      001821 07                    3333 	.db #0x07	; 7
      001822 07                    3334 	.db #0x07	; 7
      001823 0F                    3335 	.db #0x0f	; 15
      001824 1F                    3336 	.db #0x1f	; 31
      001825 3F                    3337 	.db #0x3f	; 63
      001826 00                    3338 	.db #0x00	; 0
      001827 00                    3339 	.db #0x00	; 0
      001828 04                    3340 	.db #0x04	; 4
      001829 13                    3341 	.db #0x13	; 19
      00182A 18                    3342 	.db #0x18	; 24
      00182B 47                    3343 	.db #0x47	; 71	'G'
      00182C 60                    3344 	.db #0x60	; 96
      00182D 18                    3345 	.db #0x18	; 24
      00182E 07                    3346 	.db #0x07	; 7
      00182F                       3347 _button_left_logo:
      00182F 18                    3348 	.db #0x18	; 24
      001830 3C                    3349 	.db #0x3c	; 60
      001831 7E                    3350 	.db #0x7e	; 126
      001832 FF                    3351 	.db #0xff	; 255
      001833                       3352 _button_right_logo:
      001833 FF                    3353 	.db #0xff	; 255
      001834 7E                    3354 	.db #0x7e	; 126
      001835 3C                    3355 	.db #0x3c	; 60
      001836 18                    3356 	.db #0x18	; 24
      001837                       3357 _shooter_logo:
      001837 00                    3358 	.db #0x00	; 0
      001838 FF                    3359 	.db #0xff	; 255
      001839 FF                    3360 	.db #0xff	; 255
      00183A F6                    3361 	.db #0xf6	; 246
      00183B 00                    3362 	.db #0x00	; 0
      00183C FE                    3363 	.db #0xfe	; 254
      00183D FF                    3364 	.db #0xff	; 255
      00183E FE                    3365 	.db #0xfe	; 254
      00183F 00                    3366 	.db #0x00	; 0
      001840 01                    3367 	.db #0x01	; 1
      001841 07                    3368 	.db #0x07	; 7
      001842 FF                    3369 	.db #0xff	; 255
      001843 FE                    3370 	.db #0xfe	; 254
      001844 FF                    3371 	.db #0xff	; 255
      001845 07                    3372 	.db #0x07	; 7
      001846 00                    3373 	.db #0x00	; 0
      001847                       3374 _pig_logo:
      001847 C0                    3375 	.db #0xc0	; 192
      001848 30                    3376 	.db #0x30	; 48	'0'
      001849 38                    3377 	.db #0x38	; 56	'8'
      00184A FC                    3378 	.db #0xfc	; 252
      00184B FF                    3379 	.db #0xff	; 255
      00184C FF                    3380 	.db #0xff	; 255
      00184D FC                    3381 	.db #0xfc	; 252
      00184E FC                    3382 	.db #0xfc	; 252
      00184F 3E                    3383 	.db #0x3e	; 62
      001850 3E                    3384 	.db #0x3e	; 62
      001851 F0                    3385 	.db #0xf0	; 240
      001852 C0                    3386 	.db #0xc0	; 192
      001853 01                    3387 	.db #0x01	; 1
      001854 03                    3388 	.db #0x03	; 3
      001855 07                    3389 	.db #0x07	; 7
      001856 0F                    3390 	.db #0x0f	; 15
      001857 0F                    3391 	.db #0x0f	; 15
      001858 0F                    3392 	.db #0x0f	; 15
      001859 0F                    3393 	.db #0x0f	; 15
      00185A 0F                    3394 	.db #0x0f	; 15
      00185B 0F                    3395 	.db #0x0f	; 15
      00185C 07                    3396 	.db #0x07	; 7
      00185D 03                    3397 	.db #0x03	; 3
      00185E 01                    3398 	.db #0x01	; 1
      00185F                       3399 _bird_logo:
      00185F 7E                    3400 	.db #0x7e	; 126
      001860 C3                    3401 	.db #0xc3	; 195
      001861 81                    3402 	.db #0x81	; 129
      001862 81                    3403 	.db #0x81	; 129
      001863 81                    3404 	.db #0x81	; 129
      001864 81                    3405 	.db #0x81	; 129
      001865 C3                    3406 	.db #0xc3	; 195
      001866 7E                    3407 	.db #0x7e	; 126
                                   3408 	.area CONST   (CODE)
      001867                       3409 ___str_0:
      001867 41 6E 67 72 79 20 42  3410 	.ascii "Angry Bird!"
             69 72 64 21
      001872 00                    3411 	.db 0x00
                                   3412 	.area CSEG    (CODE)
                                   3413 	.area CONST   (CODE)
      001873                       3414 ___str_1:
      001873 53 20                 3415 	.ascii "S "
      001875 00                    3416 	.db 0x00
                                   3417 	.area CSEG    (CODE)
                                   3418 	.area CONST   (CODE)
      001876                       3419 ___str_2:
      001876 41 20                 3420 	.ascii "A "
      001878 00                    3421 	.db 0x00
                                   3422 	.area CSEG    (CODE)
                                   3423 	.area CONST   (CODE)
      001879                       3424 ___str_3:
      001879 20 20 20 20 20 20 20  3425 	.ascii "       "
      001880 00                    3426 	.db 0x00
                                   3427 	.area CSEG    (CODE)
      000F5E                       3428 _sine_table:
      000F5E 00 00 00 00           3429 	.byte #0x00, #0x00, #0x00, #0x00	;  0.000000e+00
      000F62 33 C4 31 3E           3430 	.byte #0x33, #0xc4, #0x31, #0x3e	;  1.736000e-01
      000F66 A0 1A AF 3E           3431 	.byte #0xa0, #0x1a, #0xaf, #0x3e	;  3.420000e-01
      000F6A 00 00 00 3F           3432 	.byte #0x00, #0x00, #0x00, #0x3f	;  5.000000e-01
      000F6E 8A 8E 24 3F           3433 	.byte #0x8a, #0x8e, #0x24, #0x3f	;  6.428000e-01
      000F72 93 18 44 3F           3434 	.byte #0x93, #0x18, #0x44, #0x3f	;  7.660000e-01
      000F76 2D B2 5D 3F           3435 	.byte #0x2d, #0xb2, #0x5d, #0x3f	;  8.660000e-01
      000F7A 2E 90 70 3F           3436 	.byte #0x2e, #0x90, #0x70, #0x3f	;  9.397000e-01
      000F7E DA 1B 7C 3F           3437 	.byte #0xda, #0x1b, #0x7c, #0x3f	;  9.848000e-01
      000F82 00 00 80 3F           3438 	.byte #0x00, #0x00, #0x80, #0x3f	;  1.000000e+00
                                   3439 	.area CONST   (CODE)
      001881                       3440 ___str_4:
      001881 20 20 20              3441 	.ascii "   "
      001884 00                    3442 	.db 0x00
                                   3443 	.area CSEG    (CODE)
                                   3444 	.area CONST   (CODE)
      001885                       3445 ___str_5:
      001885 20                    3446 	.ascii " "
      001886 00                    3447 	.db 0x00
                                   3448 	.area CSEG    (CODE)
                                   3449 	.area CONST   (CODE)
      001887                       3450 ___str_6:
      001887 53 65 74 74 69 6E 67  3451 	.ascii "Setting"
      00188E 00                    3452 	.db 0x00
                                   3453 	.area CSEG    (CODE)
                                   3454 	.area CONST   (CODE)
      00188F                       3455 ___str_7:
      00188F 45 61 73 79           3456 	.ascii "Easy"
      001893 00                    3457 	.db 0x00
                                   3458 	.area CSEG    (CODE)
                                   3459 	.area CONST   (CODE)
      001894                       3460 ___str_8:
      001894 48 61 72 64           3461 	.ascii "Hard"
      001898 00                    3462 	.db 0x00
                                   3463 	.area CSEG    (CODE)
                                   3464 	.area XINIT   (CODE)
                                   3465 	.area CABS    (ABS,CODE)
