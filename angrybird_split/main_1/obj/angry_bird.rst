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
                                     11 	.globl _button_right_logo
                                     12 	.globl _button_left_logo
                                     13 	.globl _volume_logo
                                     14 	.globl _music_logo
                                     15 	.globl _button_down_logo
                                     16 	.globl _button_up_logo
                                     17 	.globl _angry_bird_logo
                                     18 	.globl _I2C_Stop
                                     19 	.globl _I2C_Start
                                     20 	.globl _oledSendData
                                     21 	.globl _OLED_SetCursor
                                     22 	.globl _OLED_Clear
                                     23 	.globl _OLED_DisplayString
                                     24 	.globl _OLED_Init
                                     25 	.globl _delay_ms
                                     26 	.globl _CY
                                     27 	.globl _AC
                                     28 	.globl _F0
                                     29 	.globl _RS1
                                     30 	.globl _RS0
                                     31 	.globl _OV
                                     32 	.globl _F1
                                     33 	.globl _P
                                     34 	.globl _PS
                                     35 	.globl _PT1
                                     36 	.globl _PX1
                                     37 	.globl _PT0
                                     38 	.globl _PX0
                                     39 	.globl _RD
                                     40 	.globl _WR
                                     41 	.globl _T1
                                     42 	.globl _T0
                                     43 	.globl _INT1
                                     44 	.globl _INT0
                                     45 	.globl _TXD
                                     46 	.globl _RXD
                                     47 	.globl _P3_7
                                     48 	.globl _P3_6
                                     49 	.globl _P3_5
                                     50 	.globl _P3_4
                                     51 	.globl _P3_3
                                     52 	.globl _P3_2
                                     53 	.globl _P3_1
                                     54 	.globl _P3_0
                                     55 	.globl _EA
                                     56 	.globl _ES
                                     57 	.globl _ET1
                                     58 	.globl _EX1
                                     59 	.globl _ET0
                                     60 	.globl _EX0
                                     61 	.globl _P2_7
                                     62 	.globl _P2_6
                                     63 	.globl _P2_5
                                     64 	.globl _P2_4
                                     65 	.globl _P2_3
                                     66 	.globl _P2_2
                                     67 	.globl _P2_1
                                     68 	.globl _P2_0
                                     69 	.globl _SM0
                                     70 	.globl _SM1
                                     71 	.globl _SM2
                                     72 	.globl _REN
                                     73 	.globl _TB8
                                     74 	.globl _RB8
                                     75 	.globl _TI
                                     76 	.globl _RI
                                     77 	.globl _P1_7
                                     78 	.globl _P1_6
                                     79 	.globl _P1_5
                                     80 	.globl _P1_4
                                     81 	.globl _P1_3
                                     82 	.globl _P1_2
                                     83 	.globl _P1_1
                                     84 	.globl _P1_0
                                     85 	.globl _TF1
                                     86 	.globl _TR1
                                     87 	.globl _TF0
                                     88 	.globl _TR0
                                     89 	.globl _IE1
                                     90 	.globl _IT1
                                     91 	.globl _IE0
                                     92 	.globl _IT0
                                     93 	.globl _P0_7
                                     94 	.globl _P0_6
                                     95 	.globl _P0_5
                                     96 	.globl _P0_4
                                     97 	.globl _P0_3
                                     98 	.globl _P0_2
                                     99 	.globl _P0_1
                                    100 	.globl _P0_0
                                    101 	.globl _B
                                    102 	.globl _ACC
                                    103 	.globl _PSW
                                    104 	.globl _IP
                                    105 	.globl _P3
                                    106 	.globl _IE
                                    107 	.globl _P2
                                    108 	.globl _SBUF
                                    109 	.globl _SCON
                                    110 	.globl _P1
                                    111 	.globl _TH1
                                    112 	.globl _TH0
                                    113 	.globl _TL1
                                    114 	.globl _TL0
                                    115 	.globl _TMOD
                                    116 	.globl _TCON
                                    117 	.globl _PCON
                                    118 	.globl _DPH
                                    119 	.globl _DPL
                                    120 	.globl _SP
                                    121 	.globl _P0
                                    122 	.globl _prebut_enter
                                    123 	.globl _prebut_right
                                    124 	.globl _prebut_left
                                    125 	.globl _prebut_down
                                    126 	.globl _prebut_up
                                    127 	.globl _pig_amt
                                    128 	.globl _bird_amt
                                    129 	.globl _cur_state
                                    130 	.globl _volume_value
                                    131 	.globl _music_value
                                    132 	.globl _setting_state_past
                                    133 	.globl _setting_state
                                    134 	.globl _selection_list
                                    135 	.globl _selection_list_past
                                    136 	.globl _selection_list_cur
                                    137 	.globl _col_offset
                                    138 	.globl _row_offset
                                    139 	.globl _received_flag
                                    140 	.globl _received_data
                                    141 	.globl _send_flag
                                    142 	.globl _send_data
                                    143 	.globl _angrybird_display_home
                                    144 	.globl _angrybird_display_setting
                                    145 	.globl _angrybird_state_machine
                                    146 	.globl _angrybird_home_state
                                    147 	.globl _angrybird_game_state
                                    148 	.globl _angrybird_setting_state
                                    149 ;--------------------------------------------------------
                                    150 ; special function registers
                                    151 ;--------------------------------------------------------
                                    152 	.area RSEG    (ABS,DATA)
      000000                        153 	.org 0x0000
                           000080   154 _P0	=	0x0080
                           000081   155 _SP	=	0x0081
                           000082   156 _DPL	=	0x0082
                           000083   157 _DPH	=	0x0083
                           000087   158 _PCON	=	0x0087
                           000088   159 _TCON	=	0x0088
                           000089   160 _TMOD	=	0x0089
                           00008A   161 _TL0	=	0x008a
                           00008B   162 _TL1	=	0x008b
                           00008C   163 _TH0	=	0x008c
                           00008D   164 _TH1	=	0x008d
                           000090   165 _P1	=	0x0090
                           000098   166 _SCON	=	0x0098
                           000099   167 _SBUF	=	0x0099
                           0000A0   168 _P2	=	0x00a0
                           0000A8   169 _IE	=	0x00a8
                           0000B0   170 _P3	=	0x00b0
                           0000B8   171 _IP	=	0x00b8
                           0000D0   172 _PSW	=	0x00d0
                           0000E0   173 _ACC	=	0x00e0
                           0000F0   174 _B	=	0x00f0
                                    175 ;--------------------------------------------------------
                                    176 ; special function bits
                                    177 ;--------------------------------------------------------
                                    178 	.area RSEG    (ABS,DATA)
      000000                        179 	.org 0x0000
                           000080   180 _P0_0	=	0x0080
                           000081   181 _P0_1	=	0x0081
                           000082   182 _P0_2	=	0x0082
                           000083   183 _P0_3	=	0x0083
                           000084   184 _P0_4	=	0x0084
                           000085   185 _P0_5	=	0x0085
                           000086   186 _P0_6	=	0x0086
                           000087   187 _P0_7	=	0x0087
                           000088   188 _IT0	=	0x0088
                           000089   189 _IE0	=	0x0089
                           00008A   190 _IT1	=	0x008a
                           00008B   191 _IE1	=	0x008b
                           00008C   192 _TR0	=	0x008c
                           00008D   193 _TF0	=	0x008d
                           00008E   194 _TR1	=	0x008e
                           00008F   195 _TF1	=	0x008f
                           000090   196 _P1_0	=	0x0090
                           000091   197 _P1_1	=	0x0091
                           000092   198 _P1_2	=	0x0092
                           000093   199 _P1_3	=	0x0093
                           000094   200 _P1_4	=	0x0094
                           000095   201 _P1_5	=	0x0095
                           000096   202 _P1_6	=	0x0096
                           000097   203 _P1_7	=	0x0097
                           000098   204 _RI	=	0x0098
                           000099   205 _TI	=	0x0099
                           00009A   206 _RB8	=	0x009a
                           00009B   207 _TB8	=	0x009b
                           00009C   208 _REN	=	0x009c
                           00009D   209 _SM2	=	0x009d
                           00009E   210 _SM1	=	0x009e
                           00009F   211 _SM0	=	0x009f
                           0000A0   212 _P2_0	=	0x00a0
                           0000A1   213 _P2_1	=	0x00a1
                           0000A2   214 _P2_2	=	0x00a2
                           0000A3   215 _P2_3	=	0x00a3
                           0000A4   216 _P2_4	=	0x00a4
                           0000A5   217 _P2_5	=	0x00a5
                           0000A6   218 _P2_6	=	0x00a6
                           0000A7   219 _P2_7	=	0x00a7
                           0000A8   220 _EX0	=	0x00a8
                           0000A9   221 _ET0	=	0x00a9
                           0000AA   222 _EX1	=	0x00aa
                           0000AB   223 _ET1	=	0x00ab
                           0000AC   224 _ES	=	0x00ac
                           0000AF   225 _EA	=	0x00af
                           0000B0   226 _P3_0	=	0x00b0
                           0000B1   227 _P3_1	=	0x00b1
                           0000B2   228 _P3_2	=	0x00b2
                           0000B3   229 _P3_3	=	0x00b3
                           0000B4   230 _P3_4	=	0x00b4
                           0000B5   231 _P3_5	=	0x00b5
                           0000B6   232 _P3_6	=	0x00b6
                           0000B7   233 _P3_7	=	0x00b7
                           0000B0   234 _RXD	=	0x00b0
                           0000B1   235 _TXD	=	0x00b1
                           0000B2   236 _INT0	=	0x00b2
                           0000B3   237 _INT1	=	0x00b3
                           0000B4   238 _T0	=	0x00b4
                           0000B5   239 _T1	=	0x00b5
                           0000B6   240 _WR	=	0x00b6
                           0000B7   241 _RD	=	0x00b7
                           0000B8   242 _PX0	=	0x00b8
                           0000B9   243 _PT0	=	0x00b9
                           0000BA   244 _PX1	=	0x00ba
                           0000BB   245 _PT1	=	0x00bb
                           0000BC   246 _PS	=	0x00bc
                           0000D0   247 _P	=	0x00d0
                           0000D1   248 _F1	=	0x00d1
                           0000D2   249 _OV	=	0x00d2
                           0000D3   250 _RS0	=	0x00d3
                           0000D4   251 _RS1	=	0x00d4
                           0000D5   252 _F0	=	0x00d5
                           0000D6   253 _AC	=	0x00d6
                           0000D7   254 _CY	=	0x00d7
                                    255 ;--------------------------------------------------------
                                    256 ; overlayable register banks
                                    257 ;--------------------------------------------------------
                                    258 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                        259 	.ds 8
                                    260 ;--------------------------------------------------------
                                    261 ; internal ram data
                                    262 ;--------------------------------------------------------
                                    263 	.area DSEG    (DATA)
      00000B                        264 _send_data::
      00000B                        265 	.ds 1
      00000C                        266 _send_flag::
      00000C                        267 	.ds 1
      00000D                        268 _received_data::
      00000D                        269 	.ds 1
      00000E                        270 _received_flag::
      00000E                        271 	.ds 1
      00000F                        272 _row_offset::
      00000F                        273 	.ds 2
      000011                        274 _col_offset::
      000011                        275 	.ds 2
      000013                        276 _selection_list_cur::
      000013                        277 	.ds 2
      000015                        278 _selection_list_past::
      000015                        279 	.ds 2
      000017                        280 _selection_list::
      000017                        281 	.ds 9
      000020                        282 _setting_state::
      000020                        283 	.ds 2
      000022                        284 _setting_state_past::
      000022                        285 	.ds 2
      000024                        286 _music_value::
      000024                        287 	.ds 2
      000026                        288 _volume_value::
      000026                        289 	.ds 2
      000028                        290 _angrybird_display_setting_volume_value__65537_73:
      000028                        291 	.ds 2
      00002A                        292 _cur_state::
      00002A                        293 	.ds 2
      00002C                        294 _bird_amt::
      00002C                        295 	.ds 2
      00002E                        296 _pig_amt::
      00002E                        297 	.ds 2
      000030                        298 _prebut_up::
      000030                        299 	.ds 2
      000032                        300 _prebut_down::
      000032                        301 	.ds 2
      000034                        302 _prebut_left::
      000034                        303 	.ds 2
      000036                        304 _prebut_right::
      000036                        305 	.ds 2
      000038                        306 _prebut_enter::
      000038                        307 	.ds 2
      00003A                        308 _angrybird_setting_state_volume_value__262145_107:
      00003A                        309 	.ds 10
                                    310 ;--------------------------------------------------------
                                    311 ; overlayable items in internal ram
                                    312 ;--------------------------------------------------------
                                    313 ;--------------------------------------------------------
                                    314 ; indirectly addressable internal ram data
                                    315 ;--------------------------------------------------------
                                    316 	.area ISEG    (DATA)
                                    317 ;--------------------------------------------------------
                                    318 ; absolute internal ram data
                                    319 ;--------------------------------------------------------
                                    320 	.area IABS    (ABS,DATA)
                                    321 	.area IABS    (ABS,DATA)
                                    322 ;--------------------------------------------------------
                                    323 ; bit data
                                    324 ;--------------------------------------------------------
                                    325 	.area BSEG    (BIT)
                                    326 ;--------------------------------------------------------
                                    327 ; paged external ram data
                                    328 ;--------------------------------------------------------
                                    329 	.area PSEG    (PAG,XDATA)
                                    330 ;--------------------------------------------------------
                                    331 ; uninitialized external ram data
                                    332 ;--------------------------------------------------------
                                    333 	.area XSEG    (XDATA)
                                    334 ;--------------------------------------------------------
                                    335 ; absolute external ram data
                                    336 ;--------------------------------------------------------
                                    337 	.area XABS    (ABS,XDATA)
                                    338 ;--------------------------------------------------------
                                    339 ; initialized external ram data
                                    340 ;--------------------------------------------------------
                                    341 	.area XISEG   (XDATA)
                                    342 	.area HOME    (CODE)
                                    343 	.area GSINIT0 (CODE)
                                    344 	.area GSINIT1 (CODE)
                                    345 	.area GSINIT2 (CODE)
                                    346 	.area GSINIT3 (CODE)
                                    347 	.area GSINIT4 (CODE)
                                    348 	.area GSINIT5 (CODE)
                                    349 	.area GSINIT  (CODE)
                                    350 	.area GSFINAL (CODE)
                                    351 	.area CSEG    (CODE)
                                    352 ;--------------------------------------------------------
                                    353 ; global & static initialisations
                                    354 ;--------------------------------------------------------
                                    355 	.area HOME    (CODE)
                                    356 	.area GSINIT  (CODE)
                                    357 	.area GSFINAL (CODE)
                                    358 	.area GSINIT  (CODE)
                                    359 ;	./src/angry_bird.c:62: int selection_list_cur = 1, selection_list_past = 1;
      000082 75 13 01         [24]  360 	mov	_selection_list_cur,#0x01
      000085 75 14 00         [24]  361 	mov	(_selection_list_cur + 1),#0x00
                                    362 ;	./src/angry_bird.c:62: char **selection_list[] = {"Setting", "Easy", "Hard"};
      000088 75 15 01         [24]  363 	mov	_selection_list_past,#0x01
      00008B 75 16 00         [24]  364 	mov	(_selection_list_past + 1),#0x00
                                    365 ;	./src/angry_bird.c:63: 
      00008E 75 17 E8         [24]  366 	mov	(_selection_list + 0),#___str_1
      000091 75 18 0E         [24]  367 	mov	(_selection_list + 1),#(___str_1 >> 8)
      000094 75 19 80         [24]  368 	mov	(_selection_list + 2),#0x80
      000097 75 1A 05         [24]  369 	mov	((_selection_list + 0x0003) + 0),#___str_7
      00009A 75 1B 0F         [24]  370 	mov	((_selection_list + 0x0003) + 1),#(___str_7 >> 8)
      00009D 75 1C 80         [24]  371 	mov	((_selection_list + 0x0003) + 2),#0x80
      0000A0 75 1D 0A         [24]  372 	mov	((_selection_list + 0x0006) + 0),#___str_8
      0000A3 75 1E 0F         [24]  373 	mov	((_selection_list + 0x0006) + 1),#(___str_8 >> 8)
      0000A6 75 1F 80         [24]  374 	mov	((_selection_list + 0x0006) + 2),#0x80
                                    375 ;	./src/angry_bird.c:111: int setting_state = 1, setting_state_past = 1;
      0000A9 75 20 01         [24]  376 	mov	_setting_state,#0x01
      0000AC 75 21 00         [24]  377 	mov	(_setting_state + 1),#0x00
                                    378 ;	./src/angry_bird.c:111: int music_value = 0, volume_value = 0;
      0000AF 75 22 01         [24]  379 	mov	_setting_state_past,#0x01
      0000B2 75 23 00         [24]  380 	mov	(_setting_state_past + 1),#0x00
                                    381 ;	./src/angry_bird.c:112: void angrybird_display_setting(void)
      0000B5 E4               [12]  382 	clr	a
      0000B6 F5 24            [12]  383 	mov	_music_value,a
      0000B8 F5 25            [12]  384 	mov	(_music_value + 1),a
                                    385 ;	./src/angry_bird.c:112: int music_value = 0, volume_value = 0;
      0000BA F5 26            [12]  386 	mov	_volume_value,a
      0000BC F5 27            [12]  387 	mov	(_volume_value + 1),a
                                    388 ;	./src/angry_bird.c:178: int cur_state = 1;
      0000BE 75 2A 01         [24]  389 	mov	_cur_state,#0x01
      0000C1 F5 2B            [12]  390 	mov	(_cur_state + 1),a
                                    391 ;	./src/angry_bird.c:203: unsigned int prebut_up = 0;
      0000C3 F5 30            [12]  392 	mov	_prebut_up,a
      0000C5 F5 31            [12]  393 	mov	(_prebut_up + 1),a
                                    394 ;	./src/angry_bird.c:204: unsigned int prebut_down = 0;
      0000C7 F5 32            [12]  395 	mov	_prebut_down,a
      0000C9 F5 33            [12]  396 	mov	(_prebut_down + 1),a
                                    397 ;	./src/angry_bird.c:205: unsigned int prebut_left = 0;
      0000CB F5 34            [12]  398 	mov	_prebut_left,a
      0000CD F5 35            [12]  399 	mov	(_prebut_left + 1),a
                                    400 ;	./src/angry_bird.c:206: unsigned int prebut_right = 0;
      0000CF F5 36            [12]  401 	mov	_prebut_right,a
      0000D1 F5 37            [12]  402 	mov	(_prebut_right + 1),a
                                    403 ;	./src/angry_bird.c:207: unsigned int prebut_enter = 0;
      0000D3 F5 38            [12]  404 	mov	_prebut_enter,a
      0000D5 F5 39            [12]  405 	mov	(_prebut_enter + 1),a
                                    406 ;--------------------------------------------------------
                                    407 ; Home
                                    408 ;--------------------------------------------------------
                                    409 	.area HOME    (CODE)
                                    410 	.area HOME    (CODE)
                                    411 ;--------------------------------------------------------
                                    412 ; code
                                    413 ;--------------------------------------------------------
                                    414 	.area CSEG    (CODE)
                                    415 ;------------------------------------------------------------
                                    416 ;Allocation info for local variables in function 'angrybird_display_home'
                                    417 ;------------------------------------------------------------
                                    418 ;j                         Allocated to registers r6 r7 
                                    419 ;i                         Allocated to registers r4 r5 
                                    420 ;j                         Allocated to registers r6 r7 
                                    421 ;i                         Allocated to registers r5 
                                    422 ;j                         Allocated to registers r6 r7 
                                    423 ;i                         Allocated to registers r5 
                                    424 ;------------------------------------------------------------
                                    425 ;	./src/angry_bird.c:65: void angrybird_display_home(void)
                                    426 ;	-----------------------------------------
                                    427 ;	 function angrybird_display_home
                                    428 ;	-----------------------------------------
      00021C                        429 _angrybird_display_home:
                           000007   430 	ar7 = 0x07
                           000006   431 	ar6 = 0x06
                           000005   432 	ar5 = 0x05
                           000004   433 	ar4 = 0x04
                           000003   434 	ar3 = 0x03
                           000002   435 	ar2 = 0x02
                           000001   436 	ar1 = 0x01
                           000000   437 	ar0 = 0x00
                                    438 ;	./src/angry_bird.c:67: OLED_Clear();
      00021C 12 0B C4         [24]  439 	lcall	_OLED_Clear
                                    440 ;	./src/angry_bird.c:68: row_offset = image_row_cursor;
      00021F E4               [12]  441 	clr	a
      000220 F5 0F            [12]  442 	mov	_row_offset,a
      000222 F5 10            [12]  443 	mov	(_row_offset + 1),a
                                    444 ;	./src/angry_bird.c:69: col_offset = image_col_cursor;
      000224 F5 11            [12]  445 	mov	_col_offset,a
      000226 F5 12            [12]  446 	mov	(_col_offset + 1),a
                                    447 ;	./src/angry_bird.c:70: for (int j = 0; j < image_cul_size; j++)
      000228 FE               [12]  448 	mov	r6,a
      000229 FF               [12]  449 	mov	r7,a
      00022A                        450 00114$:
      00022A C3               [12]  451 	clr	c
      00022B EE               [12]  452 	mov	a,r6
      00022C 94 40            [12]  453 	subb	a,#0x40
      00022E EF               [12]  454 	mov	a,r7
      00022F 64 80            [12]  455 	xrl	a,#0x80
      000231 94 80            [12]  456 	subb	a,#0x80
      000233 50 7B            [24]  457 	jnc	00102$
                                    458 ;	./src/angry_bird.c:72: for (int i = 0; i < image_row_size; i++)
      000235 7C 00            [12]  459 	mov	r4,#0x00
      000237 7D 00            [12]  460 	mov	r5,#0x00
      000239                        461 00111$:
      000239 C3               [12]  462 	clr	c
      00023A EC               [12]  463 	mov	a,r4
      00023B 94 08            [12]  464 	subb	a,#0x08
      00023D ED               [12]  465 	mov	a,r5
      00023E 64 80            [12]  466 	xrl	a,#0x80
      000240 94 80            [12]  467 	subb	a,#0x80
      000242 50 64            [24]  468 	jnc	00115$
                                    469 ;	./src/angry_bird.c:74: OLED_SetCursor(row_offset + i, col_offset + j);
      000244 AB 0F            [24]  470 	mov	r3,_row_offset
      000246 8C 02            [24]  471 	mov	ar2,r4
      000248 EA               [12]  472 	mov	a,r2
      000249 2B               [12]  473 	add	a,r3
      00024A F5 82            [12]  474 	mov	dpl,a
      00024C AB 11            [24]  475 	mov	r3,_col_offset
      00024E 8E 02            [24]  476 	mov	ar2,r6
      000250 EA               [12]  477 	mov	a,r2
      000251 2B               [12]  478 	add	a,r3
      000252 F5 44            [12]  479 	mov	_OLED_SetCursor_PARM_2,a
      000254 C0 07            [24]  480 	push	ar7
      000256 C0 06            [24]  481 	push	ar6
      000258 C0 05            [24]  482 	push	ar5
      00025A C0 04            [24]  483 	push	ar4
      00025C 12 0B EF         [24]  484 	lcall	_OLED_SetCursor
      00025F D0 04            [24]  485 	pop	ar4
      000261 D0 05            [24]  486 	pop	ar5
      000263 D0 06            [24]  487 	pop	ar6
      000265 D0 07            [24]  488 	pop	ar7
                                    489 ;	./src/angry_bird.c:75: oledSendData(angry_bird_logo[image_cul_size * i + j]);
      000267 8C 02            [24]  490 	mov	ar2,r4
      000269 ED               [12]  491 	mov	a,r5
      00026A 54 03            [12]  492 	anl	a,#0x03
      00026C A2 E0            [12]  493 	mov	c,acc.0
      00026E CA               [12]  494 	xch	a,r2
      00026F 13               [12]  495 	rrc	a
      000270 CA               [12]  496 	xch	a,r2
      000271 13               [12]  497 	rrc	a
      000272 A2 E0            [12]  498 	mov	c,acc.0
      000274 CA               [12]  499 	xch	a,r2
      000275 13               [12]  500 	rrc	a
      000276 CA               [12]  501 	xch	a,r2
      000277 13               [12]  502 	rrc	a
      000278 CA               [12]  503 	xch	a,r2
      000279 FB               [12]  504 	mov	r3,a
      00027A EE               [12]  505 	mov	a,r6
      00027B 2A               [12]  506 	add	a,r2
      00027C FA               [12]  507 	mov	r2,a
      00027D EF               [12]  508 	mov	a,r7
      00027E 3B               [12]  509 	addc	a,r3
      00027F FB               [12]  510 	mov	r3,a
      000280 EA               [12]  511 	mov	a,r2
      000281 24 74            [12]  512 	add	a,#_angry_bird_logo
      000283 F5 82            [12]  513 	mov	dpl,a
      000285 EB               [12]  514 	mov	a,r3
      000286 34 0C            [12]  515 	addc	a,#(_angry_bird_logo >> 8)
      000288 F5 83            [12]  516 	mov	dph,a
      00028A E4               [12]  517 	clr	a
      00028B 93               [24]  518 	movc	a,@a+dptr
      00028C F5 82            [12]  519 	mov	dpl,a
      00028E C0 07            [24]  520 	push	ar7
      000290 C0 06            [24]  521 	push	ar6
      000292 C0 05            [24]  522 	push	ar5
      000294 C0 04            [24]  523 	push	ar4
      000296 12 0C 2B         [24]  524 	lcall	_oledSendData
      000299 D0 04            [24]  525 	pop	ar4
      00029B D0 05            [24]  526 	pop	ar5
      00029D D0 06            [24]  527 	pop	ar6
      00029F D0 07            [24]  528 	pop	ar7
                                    529 ;	./src/angry_bird.c:72: for (int i = 0; i < image_row_size; i++)
      0002A1 0C               [12]  530 	inc	r4
      0002A2 BC 00 94         [24]  531 	cjne	r4,#0x00,00111$
      0002A5 0D               [12]  532 	inc	r5
      0002A6 80 91            [24]  533 	sjmp	00111$
      0002A8                        534 00115$:
                                    535 ;	./src/angry_bird.c:70: for (int j = 0; j < image_cul_size; j++)
      0002A8 0E               [12]  536 	inc	r6
      0002A9 BE 00 01         [24]  537 	cjne	r6,#0x00,00217$
      0002AC 0F               [12]  538 	inc	r7
      0002AD                        539 00217$:
      0002AD 02 02 2A         [24]  540 	ljmp	00114$
      0002B0                        541 00102$:
                                    542 ;	./src/angry_bird.c:79: OLED_SetCursor(game_name_row_cursor, game_name_col_cursor);
      0002B0 75 44 3C         [24]  543 	mov	_OLED_SetCursor_PARM_2,#0x3c
      0002B3 75 82 01         [24]  544 	mov	dpl,#0x01
      0002B6 12 0B EF         [24]  545 	lcall	_OLED_SetCursor
                                    546 ;	./src/angry_bird.c:80: OLED_DisplayString("Angry Bird!");
      0002B9 90 0E DC         [24]  547 	mov	dptr,#___str_0
      0002BC 75 F0 80         [24]  548 	mov	b,#0x80
      0002BF 12 0B 99         [24]  549 	lcall	_OLED_DisplayString
                                    550 ;	./src/angry_bird.c:82: row_offset = button_up_row_cursor;
      0002C2 75 0F 03         [24]  551 	mov	_row_offset,#0x03
      0002C5 75 10 00         [24]  552 	mov	(_row_offset + 1),#0x00
                                    553 ;	./src/angry_bird.c:83: col_offset = button_up_col_cursor;
      0002C8 75 11 55         [24]  554 	mov	_col_offset,#0x55
      0002CB 75 12 00         [24]  555 	mov	(_col_offset + 1),#0x00
                                    556 ;	./src/angry_bird.c:84: for (int j = 0; j < button_cul_size; j++)
      0002CE 7E 00            [12]  557 	mov	r6,#0x00
      0002D0 7F 00            [12]  558 	mov	r7,#0x00
      0002D2                        559 00120$:
      0002D2 C3               [12]  560 	clr	c
      0002D3 EE               [12]  561 	mov	a,r6
      0002D4 94 10            [12]  562 	subb	a,#0x10
      0002D6 EF               [12]  563 	mov	a,r7
      0002D7 64 80            [12]  564 	xrl	a,#0x80
      0002D9 94 80            [12]  565 	subb	a,#0x80
      0002DB 50 45            [24]  566 	jnc	00104$
                                    567 ;	./src/angry_bird.c:86: for (int i = 0; i < button_row_size; i++)
      0002DD 7D 00            [12]  568 	mov	r5,#0x00
      0002DF                        569 00117$:
      0002DF BD 01 00         [24]  570 	cjne	r5,#0x01,00219$
      0002E2                        571 00219$:
      0002E2 50 37            [24]  572 	jnc	00121$
                                    573 ;	./src/angry_bird.c:88: OLED_SetCursor(row_offset + i, col_offset + j);
      0002E4 AC 0F            [24]  574 	mov	r4,_row_offset
      0002E6 E4               [12]  575 	clr	a
      0002E7 2C               [12]  576 	add	a,r4
      0002E8 F5 82            [12]  577 	mov	dpl,a
      0002EA AC 11            [24]  578 	mov	r4,_col_offset
      0002EC 8E 03            [24]  579 	mov	ar3,r6
      0002EE EB               [12]  580 	mov	a,r3
      0002EF 2C               [12]  581 	add	a,r4
      0002F0 F5 44            [12]  582 	mov	_OLED_SetCursor_PARM_2,a
      0002F2 C0 07            [24]  583 	push	ar7
      0002F4 C0 06            [24]  584 	push	ar6
      0002F6 C0 03            [24]  585 	push	ar3
      0002F8 12 0B EF         [24]  586 	lcall	_OLED_SetCursor
      0002FB D0 03            [24]  587 	pop	ar3
                                    588 ;	./src/angry_bird.c:89: oledSendData(button_up_logo[button_cul_size * i + j]);
      0002FD EB               [12]  589 	mov	a,r3
      0002FE 33               [12]  590 	rlc	a
      0002FF 95 E0            [12]  591 	subb	a,acc
      000301 FC               [12]  592 	mov	r4,a
      000302 EB               [12]  593 	mov	a,r3
      000303 24 74            [12]  594 	add	a,#_button_up_logo
      000305 F5 82            [12]  595 	mov	dpl,a
      000307 EC               [12]  596 	mov	a,r4
      000308 34 0E            [12]  597 	addc	a,#(_button_up_logo >> 8)
      00030A F5 83            [12]  598 	mov	dph,a
      00030C E4               [12]  599 	clr	a
      00030D 93               [24]  600 	movc	a,@a+dptr
      00030E F5 82            [12]  601 	mov	dpl,a
      000310 12 0C 2B         [24]  602 	lcall	_oledSendData
      000313 D0 06            [24]  603 	pop	ar6
      000315 D0 07            [24]  604 	pop	ar7
                                    605 ;	./src/angry_bird.c:86: for (int i = 0; i < button_row_size; i++)
      000317 7D 01            [12]  606 	mov	r5,#0x01
      000319 80 C4            [24]  607 	sjmp	00117$
      00031B                        608 00121$:
                                    609 ;	./src/angry_bird.c:84: for (int j = 0; j < button_cul_size; j++)
      00031B 0E               [12]  610 	inc	r6
      00031C BE 00 B3         [24]  611 	cjne	r6,#0x00,00120$
      00031F 0F               [12]  612 	inc	r7
      000320 80 B0            [24]  613 	sjmp	00120$
      000322                        614 00104$:
                                    615 ;	./src/angry_bird.c:93: row_offset = button_down_row_cursor;
      000322 75 0F 07         [24]  616 	mov	_row_offset,#0x07
      000325 75 10 00         [24]  617 	mov	(_row_offset + 1),#0x00
                                    618 ;	./src/angry_bird.c:94: col_offset = button_down_col_cursor;
      000328 75 11 55         [24]  619 	mov	_col_offset,#0x55
      00032B 75 12 00         [24]  620 	mov	(_col_offset + 1),#0x00
                                    621 ;	./src/angry_bird.c:95: for (int j = 0; j < button_cul_size; j++)
      00032E 7E 00            [12]  622 	mov	r6,#0x00
      000330 7F 00            [12]  623 	mov	r7,#0x00
      000332                        624 00126$:
      000332 C3               [12]  625 	clr	c
      000333 EE               [12]  626 	mov	a,r6
      000334 94 10            [12]  627 	subb	a,#0x10
      000336 EF               [12]  628 	mov	a,r7
      000337 64 80            [12]  629 	xrl	a,#0x80
      000339 94 80            [12]  630 	subb	a,#0x80
      00033B 50 45            [24]  631 	jnc	00106$
                                    632 ;	./src/angry_bird.c:97: for (int i = 0; i < button_row_size; i++)
      00033D 7D 00            [12]  633 	mov	r5,#0x00
      00033F                        634 00123$:
      00033F BD 01 00         [24]  635 	cjne	r5,#0x01,00223$
      000342                        636 00223$:
      000342 50 37            [24]  637 	jnc	00127$
                                    638 ;	./src/angry_bird.c:99: OLED_SetCursor(row_offset + i, col_offset + j);
      000344 AC 0F            [24]  639 	mov	r4,_row_offset
      000346 E4               [12]  640 	clr	a
      000347 2C               [12]  641 	add	a,r4
      000348 F5 82            [12]  642 	mov	dpl,a
      00034A AC 11            [24]  643 	mov	r4,_col_offset
      00034C 8E 03            [24]  644 	mov	ar3,r6
      00034E EB               [12]  645 	mov	a,r3
      00034F 2C               [12]  646 	add	a,r4
      000350 F5 44            [12]  647 	mov	_OLED_SetCursor_PARM_2,a
      000352 C0 07            [24]  648 	push	ar7
      000354 C0 06            [24]  649 	push	ar6
      000356 C0 03            [24]  650 	push	ar3
      000358 12 0B EF         [24]  651 	lcall	_OLED_SetCursor
      00035B D0 03            [24]  652 	pop	ar3
                                    653 ;	./src/angry_bird.c:100: oledSendData(button_down_logo[button_cul_size * i + j]);
      00035D EB               [12]  654 	mov	a,r3
      00035E 33               [12]  655 	rlc	a
      00035F 95 E0            [12]  656 	subb	a,acc
      000361 FC               [12]  657 	mov	r4,a
      000362 EB               [12]  658 	mov	a,r3
      000363 24 84            [12]  659 	add	a,#_button_down_logo
      000365 F5 82            [12]  660 	mov	dpl,a
      000367 EC               [12]  661 	mov	a,r4
      000368 34 0E            [12]  662 	addc	a,#(_button_down_logo >> 8)
      00036A F5 83            [12]  663 	mov	dph,a
      00036C E4               [12]  664 	clr	a
      00036D 93               [24]  665 	movc	a,@a+dptr
      00036E F5 82            [12]  666 	mov	dpl,a
      000370 12 0C 2B         [24]  667 	lcall	_oledSendData
      000373 D0 06            [24]  668 	pop	ar6
      000375 D0 07            [24]  669 	pop	ar7
                                    670 ;	./src/angry_bird.c:97: for (int i = 0; i < button_row_size; i++)
      000377 7D 01            [12]  671 	mov	r5,#0x01
      000379 80 C4            [24]  672 	sjmp	00123$
      00037B                        673 00127$:
                                    674 ;	./src/angry_bird.c:95: for (int j = 0; j < button_cul_size; j++)
      00037B 0E               [12]  675 	inc	r6
      00037C BE 00 B3         [24]  676 	cjne	r6,#0x00,00126$
      00037F 0F               [12]  677 	inc	r7
      000380 80 B0            [24]  678 	sjmp	00126$
      000382                        679 00106$:
                                    680 ;	./src/angry_bird.c:104: if (selection_list_cur == 0)
      000382 E5 13            [12]  681 	mov	a,_selection_list_cur
      000384 45 14            [12]  682 	orl	a,(_selection_list_cur + 1)
      000386 70 0B            [24]  683 	jnz	00108$
                                    684 ;	./src/angry_bird.c:105: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
      000388 75 44 4D         [24]  685 	mov	_OLED_SetCursor_PARM_2,#0x4d
      00038B 75 82 05         [24]  686 	mov	dpl,#0x05
      00038E 12 0B EF         [24]  687 	lcall	_OLED_SetCursor
      000391 80 09            [24]  688 	sjmp	00109$
      000393                        689 00108$:
                                    690 ;	./src/angry_bird.c:107: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
      000393 75 44 50         [24]  691 	mov	_OLED_SetCursor_PARM_2,#0x50
      000396 75 82 05         [24]  692 	mov	dpl,#0x05
      000399 12 0B EF         [24]  693 	lcall	_OLED_SetCursor
      00039C                        694 00109$:
                                    695 ;	./src/angry_bird.c:108: OLED_DisplayString(selection_list[selection_list_cur]);
      00039C 85 13 45         [24]  696 	mov	__mulint_PARM_2,_selection_list_cur
      00039F 85 14 46         [24]  697 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      0003A2 90 00 03         [24]  698 	mov	dptr,#0x0003
      0003A5 12 0C 37         [24]  699 	lcall	__mulint
      0003A8 E5 82            [12]  700 	mov	a,dpl
      0003AA 24 17            [12]  701 	add	a,#_selection_list
      0003AC F9               [12]  702 	mov	r1,a
      0003AD 87 05            [24]  703 	mov	ar5,@r1
      0003AF 09               [12]  704 	inc	r1
      0003B0 87 06            [24]  705 	mov	ar6,@r1
      0003B2 09               [12]  706 	inc	r1
      0003B3 87 07            [24]  707 	mov	ar7,@r1
      0003B5 8D 82            [24]  708 	mov	dpl,r5
      0003B7 8E 83            [24]  709 	mov	dph,r6
      0003B9 8F F0            [24]  710 	mov	b,r7
                                    711 ;	./src/angry_bird.c:109: }
      0003BB 02 0B 99         [24]  712 	ljmp	_OLED_DisplayString
                                    713 ;------------------------------------------------------------
                                    714 ;Allocation info for local variables in function 'angrybird_display_setting'
                                    715 ;------------------------------------------------------------
                                    716 ;j                         Allocated to registers r6 r7 
                                    717 ;i                         Allocated to registers r5 
                                    718 ;j                         Allocated to registers r7 
                                    719 ;i                         Allocated to registers r6 
                                    720 ;j                         Allocated to registers r7 
                                    721 ;i                         Allocated to registers r6 
                                    722 ;j                         Allocated to registers r6 r7 
                                    723 ;i                         Allocated to registers r5 
                                    724 ;volume_value_             Allocated with name '_angrybird_display_setting_volume_value__65537_73'
                                    725 ;------------------------------------------------------------
                                    726 ;	./src/angry_bird.c:113: void angrybird_display_setting(void)
                                    727 ;	-----------------------------------------
                                    728 ;	 function angrybird_display_setting
                                    729 ;	-----------------------------------------
      0003BE                        730 _angrybird_display_setting:
                                    731 ;	./src/angry_bird.c:115: OLED_Clear();
      0003BE 12 0B C4         [24]  732 	lcall	_OLED_Clear
                                    733 ;	./src/angry_bird.c:117: OLED_SetCursor(setting_text_row_cursor, setting_text_col_cursor);
      0003C1 75 44 32         [24]  734 	mov	_OLED_SetCursor_PARM_2,#0x32
      0003C4 75 82 01         [24]  735 	mov	dpl,#0x01
      0003C7 12 0B EF         [24]  736 	lcall	_OLED_SetCursor
                                    737 ;	./src/angry_bird.c:118: OLED_DisplayString("Setting");
      0003CA 90 0E E8         [24]  738 	mov	dptr,#___str_1
      0003CD 75 F0 80         [24]  739 	mov	b,#0x80
      0003D0 12 0B 99         [24]  740 	lcall	_OLED_DisplayString
                                    741 ;	./src/angry_bird.c:120: row_offset = music_row_cursor;
      0003D3 75 0F 03         [24]  742 	mov	_row_offset,#0x03
      0003D6 75 10 00         [24]  743 	mov	(_row_offset + 1),#0x00
                                    744 ;	./src/angry_bird.c:121: col_offset = music_col_cursor;
      0003D9 75 11 05         [24]  745 	mov	_col_offset,#0x05
      0003DC 75 12 00         [24]  746 	mov	(_col_offset + 1),#0x00
                                    747 ;	./src/angry_bird.c:122: for (int j = 0; j < music_cul_size; j++)
      0003DF 7E 00            [12]  748 	mov	r6,#0x00
      0003E1 7F 00            [12]  749 	mov	r7,#0x00
      0003E3                        750 00113$:
      0003E3 C3               [12]  751 	clr	c
      0003E4 EE               [12]  752 	mov	a,r6
      0003E5 94 10            [12]  753 	subb	a,#0x10
      0003E7 EF               [12]  754 	mov	a,r7
      0003E8 64 80            [12]  755 	xrl	a,#0x80
      0003EA 94 80            [12]  756 	subb	a,#0x80
      0003EC 50 53            [24]  757 	jnc	00102$
                                    758 ;	./src/angry_bird.c:124: for (int i = 0; i < music_row_size; i++)
      0003EE 7D 00            [12]  759 	mov	r5,#0x00
      0003F0                        760 00110$:
      0003F0 BD 02 00         [24]  761 	cjne	r5,#0x02,00240$
      0003F3                        762 00240$:
      0003F3 50 45            [24]  763 	jnc	00114$
                                    764 ;	./src/angry_bird.c:126: OLED_SetCursor(row_offset + i, col_offset + j);
      0003F5 AC 0F            [24]  765 	mov	r4,_row_offset
      0003F7 8D 03            [24]  766 	mov	ar3,r5
      0003F9 EB               [12]  767 	mov	a,r3
      0003FA 2C               [12]  768 	add	a,r4
      0003FB F5 82            [12]  769 	mov	dpl,a
      0003FD AC 11            [24]  770 	mov	r4,_col_offset
      0003FF 8E 02            [24]  771 	mov	ar2,r6
      000401 EA               [12]  772 	mov	a,r2
      000402 2C               [12]  773 	add	a,r4
      000403 F5 44            [12]  774 	mov	_OLED_SetCursor_PARM_2,a
      000405 C0 07            [24]  775 	push	ar7
      000407 C0 06            [24]  776 	push	ar6
      000409 C0 05            [24]  777 	push	ar5
      00040B C0 03            [24]  778 	push	ar3
      00040D C0 02            [24]  779 	push	ar2
      00040F 12 0B EF         [24]  780 	lcall	_OLED_SetCursor
      000412 D0 02            [24]  781 	pop	ar2
      000414 D0 03            [24]  782 	pop	ar3
                                    783 ;	./src/angry_bird.c:127: oledSendData(music_logo[music_cul_size * i + j]);
      000416 EB               [12]  784 	mov	a,r3
      000417 C4               [12]  785 	swap	a
      000418 54 F0            [12]  786 	anl	a,#0xf0
      00041A 2A               [12]  787 	add	a,r2
      00041B FA               [12]  788 	mov	r2,a
      00041C 33               [12]  789 	rlc	a
      00041D 95 E0            [12]  790 	subb	a,acc
      00041F FC               [12]  791 	mov	r4,a
      000420 EA               [12]  792 	mov	a,r2
      000421 24 94            [12]  793 	add	a,#_music_logo
      000423 F5 82            [12]  794 	mov	dpl,a
      000425 EC               [12]  795 	mov	a,r4
      000426 34 0E            [12]  796 	addc	a,#(_music_logo >> 8)
      000428 F5 83            [12]  797 	mov	dph,a
      00042A E4               [12]  798 	clr	a
      00042B 93               [24]  799 	movc	a,@a+dptr
      00042C F5 82            [12]  800 	mov	dpl,a
      00042E 12 0C 2B         [24]  801 	lcall	_oledSendData
      000431 D0 05            [24]  802 	pop	ar5
      000433 D0 06            [24]  803 	pop	ar6
      000435 D0 07            [24]  804 	pop	ar7
                                    805 ;	./src/angry_bird.c:124: for (int i = 0; i < music_row_size; i++)
      000437 0D               [12]  806 	inc	r5
      000438 80 B6            [24]  807 	sjmp	00110$
      00043A                        808 00114$:
                                    809 ;	./src/angry_bird.c:122: for (int j = 0; j < music_cul_size; j++)
      00043A 0E               [12]  810 	inc	r6
      00043B BE 00 A5         [24]  811 	cjne	r6,#0x00,00113$
      00043E 0F               [12]  812 	inc	r7
      00043F 80 A2            [24]  813 	sjmp	00113$
      000441                        814 00102$:
                                    815 ;	./src/angry_bird.c:131: row_offset = m_button_left_row_cursor;
      000441 75 0F 04         [24]  816 	mov	_row_offset,#0x04
      000444 75 10 00         [24]  817 	mov	(_row_offset + 1),#0x00
                                    818 ;	./src/angry_bird.c:132: col_offset = m_button_left_col_cursor;
      000447 75 11 2D         [24]  819 	mov	_col_offset,#0x2d
      00044A 75 12 00         [24]  820 	mov	(_col_offset + 1),#0x00
                                    821 ;	./src/angry_bird.c:133: for (int j = 0; j < setting_button_cul_size; j++)
      00044D 7F 00            [12]  822 	mov	r7,#0x00
      00044F                        823 00119$:
      00044F BF 04 00         [24]  824 	cjne	r7,#0x04,00243$
      000452                        825 00243$:
      000452 50 3D            [24]  826 	jnc	00104$
                                    827 ;	./src/angry_bird.c:135: for (int i = 0; i < setting_button_row_size; i++)
      000454 7E 00            [12]  828 	mov	r6,#0x00
      000456                        829 00116$:
      000456 BE 01 00         [24]  830 	cjne	r6,#0x01,00245$
      000459                        831 00245$:
      000459 50 33            [24]  832 	jnc	00120$
                                    833 ;	./src/angry_bird.c:137: OLED_SetCursor(row_offset + i, col_offset + j);
      00045B AD 0F            [24]  834 	mov	r5,_row_offset
      00045D E4               [12]  835 	clr	a
      00045E 2D               [12]  836 	add	a,r5
      00045F F5 82            [12]  837 	mov	dpl,a
      000461 AD 11            [24]  838 	mov	r5,_col_offset
      000463 8F 04            [24]  839 	mov	ar4,r7
      000465 EC               [12]  840 	mov	a,r4
      000466 2D               [12]  841 	add	a,r5
      000467 F5 44            [12]  842 	mov	_OLED_SetCursor_PARM_2,a
      000469 C0 07            [24]  843 	push	ar7
      00046B C0 04            [24]  844 	push	ar4
      00046D 12 0B EF         [24]  845 	lcall	_OLED_SetCursor
      000470 D0 04            [24]  846 	pop	ar4
                                    847 ;	./src/angry_bird.c:138: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
      000472 EC               [12]  848 	mov	a,r4
      000473 33               [12]  849 	rlc	a
      000474 95 E0            [12]  850 	subb	a,acc
      000476 FD               [12]  851 	mov	r5,a
      000477 EC               [12]  852 	mov	a,r4
      000478 24 D4            [12]  853 	add	a,#_button_left_logo
      00047A F5 82            [12]  854 	mov	dpl,a
      00047C ED               [12]  855 	mov	a,r5
      00047D 34 0E            [12]  856 	addc	a,#(_button_left_logo >> 8)
      00047F F5 83            [12]  857 	mov	dph,a
      000481 E4               [12]  858 	clr	a
      000482 93               [24]  859 	movc	a,@a+dptr
      000483 F5 82            [12]  860 	mov	dpl,a
      000485 12 0C 2B         [24]  861 	lcall	_oledSendData
      000488 D0 07            [24]  862 	pop	ar7
                                    863 ;	./src/angry_bird.c:135: for (int i = 0; i < setting_button_row_size; i++)
      00048A 7E 01            [12]  864 	mov	r6,#0x01
      00048C 80 C8            [24]  865 	sjmp	00116$
      00048E                        866 00120$:
                                    867 ;	./src/angry_bird.c:133: for (int j = 0; j < setting_button_cul_size; j++)
      00048E 0F               [12]  868 	inc	r7
      00048F 80 BE            [24]  869 	sjmp	00119$
      000491                        870 00104$:
                                    871 ;	./src/angry_bird.c:142: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
      000491 75 44 40         [24]  872 	mov	_OLED_SetCursor_PARM_2,#0x40
      000494 75 82 04         [24]  873 	mov	dpl,#0x04
      000497 12 0B EF         [24]  874 	lcall	_OLED_SetCursor
                                    875 ;	./src/angry_bird.c:143: OLED_DisplayString("OFF");
      00049A 90 0E F0         [24]  876 	mov	dptr,#___str_2
      00049D 75 F0 80         [24]  877 	mov	b,#0x80
      0004A0 12 0B 99         [24]  878 	lcall	_OLED_DisplayString
                                    879 ;	./src/angry_bird.c:145: row_offset = m_button_right_row_cursor;
      0004A3 75 0F 04         [24]  880 	mov	_row_offset,#0x04
      0004A6 75 10 00         [24]  881 	mov	(_row_offset + 1),#0x00
                                    882 ;	./src/angry_bird.c:146: col_offset = m_button_right_col_cursor;
      0004A9 75 11 5D         [24]  883 	mov	_col_offset,#0x5d
      0004AC 75 12 00         [24]  884 	mov	(_col_offset + 1),#0x00
                                    885 ;	./src/angry_bird.c:147: for (int j = 0; j < setting_button_cul_size; j++)
      0004AF 7F 00            [12]  886 	mov	r7,#0x00
      0004B1                        887 00125$:
      0004B1 BF 04 00         [24]  888 	cjne	r7,#0x04,00247$
      0004B4                        889 00247$:
      0004B4 50 3D            [24]  890 	jnc	00106$
                                    891 ;	./src/angry_bird.c:149: for (int i = 0; i < setting_button_row_size; i++)
      0004B6 7E 00            [12]  892 	mov	r6,#0x00
      0004B8                        893 00122$:
      0004B8 BE 01 00         [24]  894 	cjne	r6,#0x01,00249$
      0004BB                        895 00249$:
      0004BB 50 33            [24]  896 	jnc	00126$
                                    897 ;	./src/angry_bird.c:151: OLED_SetCursor(row_offset + i, col_offset + j);
      0004BD AD 0F            [24]  898 	mov	r5,_row_offset
      0004BF E4               [12]  899 	clr	a
      0004C0 2D               [12]  900 	add	a,r5
      0004C1 F5 82            [12]  901 	mov	dpl,a
      0004C3 AD 11            [24]  902 	mov	r5,_col_offset
      0004C5 8F 04            [24]  903 	mov	ar4,r7
      0004C7 EC               [12]  904 	mov	a,r4
      0004C8 2D               [12]  905 	add	a,r5
      0004C9 F5 44            [12]  906 	mov	_OLED_SetCursor_PARM_2,a
      0004CB C0 07            [24]  907 	push	ar7
      0004CD C0 04            [24]  908 	push	ar4
      0004CF 12 0B EF         [24]  909 	lcall	_OLED_SetCursor
      0004D2 D0 04            [24]  910 	pop	ar4
                                    911 ;	./src/angry_bird.c:152: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
      0004D4 EC               [12]  912 	mov	a,r4
      0004D5 33               [12]  913 	rlc	a
      0004D6 95 E0            [12]  914 	subb	a,acc
      0004D8 FD               [12]  915 	mov	r5,a
      0004D9 EC               [12]  916 	mov	a,r4
      0004DA 24 D8            [12]  917 	add	a,#_button_right_logo
      0004DC F5 82            [12]  918 	mov	dpl,a
      0004DE ED               [12]  919 	mov	a,r5
      0004DF 34 0E            [12]  920 	addc	a,#(_button_right_logo >> 8)
      0004E1 F5 83            [12]  921 	mov	dph,a
      0004E3 E4               [12]  922 	clr	a
      0004E4 93               [24]  923 	movc	a,@a+dptr
      0004E5 F5 82            [12]  924 	mov	dpl,a
      0004E7 12 0C 2B         [24]  925 	lcall	_oledSendData
      0004EA D0 07            [24]  926 	pop	ar7
                                    927 ;	./src/angry_bird.c:149: for (int i = 0; i < setting_button_row_size; i++)
      0004EC 7E 01            [12]  928 	mov	r6,#0x01
      0004EE 80 C8            [24]  929 	sjmp	00122$
      0004F0                        930 00126$:
                                    931 ;	./src/angry_bird.c:147: for (int j = 0; j < setting_button_cul_size; j++)
      0004F0 0F               [12]  932 	inc	r7
      0004F1 80 BE            [24]  933 	sjmp	00125$
      0004F3                        934 00106$:
                                    935 ;	./src/angry_bird.c:156: row_offset = volume_row_cursor;
      0004F3 75 0F 06         [24]  936 	mov	_row_offset,#0x06
      0004F6 75 10 00         [24]  937 	mov	(_row_offset + 1),#0x00
                                    938 ;	./src/angry_bird.c:157: col_offset = volume_col_cursor;
      0004F9 75 11 05         [24]  939 	mov	_col_offset,#0x05
      0004FC 75 12 00         [24]  940 	mov	(_col_offset + 1),#0x00
                                    941 ;	./src/angry_bird.c:158: for (int j = 0; j < volume_cul_size; j++)
      0004FF 7E 00            [12]  942 	mov	r6,#0x00
      000501 7F 00            [12]  943 	mov	r7,#0x00
      000503                        944 00131$:
      000503 C3               [12]  945 	clr	c
      000504 EE               [12]  946 	mov	a,r6
      000505 94 10            [12]  947 	subb	a,#0x10
      000507 EF               [12]  948 	mov	a,r7
      000508 64 80            [12]  949 	xrl	a,#0x80
      00050A 94 80            [12]  950 	subb	a,#0x80
      00050C 50 53            [24]  951 	jnc	00108$
                                    952 ;	./src/angry_bird.c:160: for (int i = 0; i < volume_row_size; i++)
      00050E 7D 00            [12]  953 	mov	r5,#0x00
      000510                        954 00128$:
      000510 BD 02 00         [24]  955 	cjne	r5,#0x02,00252$
      000513                        956 00252$:
      000513 50 45            [24]  957 	jnc	00132$
                                    958 ;	./src/angry_bird.c:162: OLED_SetCursor(row_offset + i, col_offset + j);
      000515 AC 0F            [24]  959 	mov	r4,_row_offset
      000517 8D 03            [24]  960 	mov	ar3,r5
      000519 EB               [12]  961 	mov	a,r3
      00051A 2C               [12]  962 	add	a,r4
      00051B F5 82            [12]  963 	mov	dpl,a
      00051D AC 11            [24]  964 	mov	r4,_col_offset
      00051F 8E 02            [24]  965 	mov	ar2,r6
      000521 EA               [12]  966 	mov	a,r2
      000522 2C               [12]  967 	add	a,r4
      000523 F5 44            [12]  968 	mov	_OLED_SetCursor_PARM_2,a
      000525 C0 07            [24]  969 	push	ar7
      000527 C0 06            [24]  970 	push	ar6
      000529 C0 05            [24]  971 	push	ar5
      00052B C0 03            [24]  972 	push	ar3
      00052D C0 02            [24]  973 	push	ar2
      00052F 12 0B EF         [24]  974 	lcall	_OLED_SetCursor
      000532 D0 02            [24]  975 	pop	ar2
      000534 D0 03            [24]  976 	pop	ar3
                                    977 ;	./src/angry_bird.c:163: oledSendData(volume_logo[volume_cul_size * i + j]);
      000536 EB               [12]  978 	mov	a,r3
      000537 C4               [12]  979 	swap	a
      000538 54 F0            [12]  980 	anl	a,#0xf0
      00053A 2A               [12]  981 	add	a,r2
      00053B FA               [12]  982 	mov	r2,a
      00053C 33               [12]  983 	rlc	a
      00053D 95 E0            [12]  984 	subb	a,acc
      00053F FC               [12]  985 	mov	r4,a
      000540 EA               [12]  986 	mov	a,r2
      000541 24 B4            [12]  987 	add	a,#_volume_logo
      000543 F5 82            [12]  988 	mov	dpl,a
      000545 EC               [12]  989 	mov	a,r4
      000546 34 0E            [12]  990 	addc	a,#(_volume_logo >> 8)
      000548 F5 83            [12]  991 	mov	dph,a
      00054A E4               [12]  992 	clr	a
      00054B 93               [24]  993 	movc	a,@a+dptr
      00054C F5 82            [12]  994 	mov	dpl,a
      00054E 12 0C 2B         [24]  995 	lcall	_oledSendData
      000551 D0 05            [24]  996 	pop	ar5
      000553 D0 06            [24]  997 	pop	ar6
      000555 D0 07            [24]  998 	pop	ar7
                                    999 ;	./src/angry_bird.c:160: for (int i = 0; i < volume_row_size; i++)
      000557 0D               [12] 1000 	inc	r5
      000558 80 B6            [24] 1001 	sjmp	00128$
      00055A                       1002 00132$:
                                   1003 ;	./src/angry_bird.c:158: for (int j = 0; j < volume_cul_size; j++)
      00055A 0E               [12] 1004 	inc	r6
      00055B BE 00 A5         [24] 1005 	cjne	r6,#0x00,00131$
      00055E 0F               [12] 1006 	inc	r7
      00055F 80 A2            [24] 1007 	sjmp	00131$
      000561                       1008 00108$:
                                   1009 ;	./src/angry_bird.c:167: OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
      000561 75 44 44         [24] 1010 	mov	_OLED_SetCursor_PARM_2,#0x44
      000564 75 82 07         [24] 1011 	mov	dpl,#0x07
      000567 12 0B EF         [24] 1012 	lcall	_OLED_SetCursor
                                   1013 ;	./src/angry_bird.c:169: volume_value_[0] = '0' + volume_value;
      00056A AF 26            [24] 1014 	mov	r7,_volume_value
      00056C 74 30            [12] 1015 	mov	a,#0x30
      00056E 2F               [12] 1016 	add	a,r7
      00056F F5 28            [12] 1017 	mov	_angrybird_display_setting_volume_value__65537_73,a
                                   1018 ;	./src/angry_bird.c:170: volume_value_[1] = '\0';
      000571 75 29 00         [24] 1019 	mov	(_angrybird_display_setting_volume_value__65537_73 + 0x0001),#0x00
                                   1020 ;	./src/angry_bird.c:171: OLED_DisplayString(volume_value_);
      000574 90 00 28         [24] 1021 	mov	dptr,#_angrybird_display_setting_volume_value__65537_73
      000577 75 F0 40         [24] 1022 	mov	b,#0x40
                                   1023 ;	./src/angry_bird.c:172: }
      00057A 02 0B 99         [24] 1024 	ljmp	_OLED_DisplayString
                                   1025 ;------------------------------------------------------------
                                   1026 ;Allocation info for local variables in function 'angrybird_state_machine'
                                   1027 ;------------------------------------------------------------
                                   1028 ;	./src/angry_bird.c:180: void angrybird_state_machine(void)
                                   1029 ;	-----------------------------------------
                                   1030 ;	 function angrybird_state_machine
                                   1031 ;	-----------------------------------------
      00057D                       1032 _angrybird_state_machine:
                                   1033 ;	./src/angry_bird.c:182: switch (cur_state)
      00057D 74 01            [12] 1034 	mov	a,#0x01
      00057F B5 2A 06         [24] 1035 	cjne	a,_cur_state,00132$
      000582 14               [12] 1036 	dec	a
      000583 B5 2B 02         [24] 1037 	cjne	a,(_cur_state + 1),00132$
      000586 80 22            [24] 1038 	sjmp	00101$
      000588                       1039 00132$:
      000588 74 02            [12] 1040 	mov	a,#0x02
      00058A B5 2A 06         [24] 1041 	cjne	a,_cur_state,00133$
      00058D E4               [12] 1042 	clr	a
      00058E B5 2B 02         [24] 1043 	cjne	a,(_cur_state + 1),00133$
      000591 80 1A            [24] 1044 	sjmp	00102$
      000593                       1045 00133$:
      000593 74 03            [12] 1046 	mov	a,#0x03
      000595 B5 2A 06         [24] 1047 	cjne	a,_cur_state,00134$
      000598 E4               [12] 1048 	clr	a
      000599 B5 2B 02         [24] 1049 	cjne	a,(_cur_state + 1),00134$
      00059C 80 12            [24] 1050 	sjmp	00104$
      00059E                       1051 00134$:
      00059E 74 04            [12] 1052 	mov	a,#0x04
      0005A0 B5 2A 06         [24] 1053 	cjne	a,_cur_state,00135$
      0005A3 E4               [12] 1054 	clr	a
      0005A4 B5 2B 02         [24] 1055 	cjne	a,(_cur_state + 1),00135$
      0005A7 80 07            [24] 1056 	sjmp	00104$
      0005A9                       1057 00135$:
                                   1058 ;	./src/angry_bird.c:184: case STATE_HOME:
      0005A9 22               [24] 1059 	ret
      0005AA                       1060 00101$:
                                   1061 ;	./src/angry_bird.c:185: angrybird_home_state();
                                   1062 ;	./src/angry_bird.c:186: break;
                                   1063 ;	./src/angry_bird.c:188: case STATE_SETTING:
      0005AA 02 05 B3         [24] 1064 	ljmp	_angrybird_home_state
      0005AD                       1065 00102$:
                                   1066 ;	./src/angry_bird.c:189: angrybird_setting_state();
                                   1067 ;	./src/angry_bird.c:190: break;
                                   1068 ;	./src/angry_bird.c:193: case STATE_PLAY_HARD:
      0005AD 02 07 55         [24] 1069 	ljmp	_angrybird_setting_state
      0005B0                       1070 00104$:
                                   1071 ;	./src/angry_bird.c:194: angrybird_game_state();
                                   1072 ;	./src/angry_bird.c:196: }
                                   1073 ;	./src/angry_bird.c:201: }
      0005B0 02 07 2B         [24] 1074 	ljmp	_angrybird_game_state
                                   1075 ;------------------------------------------------------------
                                   1076 ;Allocation info for local variables in function 'angrybird_home_state'
                                   1077 ;------------------------------------------------------------
                                   1078 ;	./src/angry_bird.c:209: void angrybird_home_state(void)
                                   1079 ;	-----------------------------------------
                                   1080 ;	 function angrybird_home_state
                                   1081 ;	-----------------------------------------
      0005B3                       1082 _angrybird_home_state:
                                   1083 ;	./src/angry_bird.c:211: if ((but_up == 0) && (prebut_up == 1))
      0005B3 20 A0 2A         [24] 1084 	jb	_P2_0,00106$
      0005B6 74 01            [12] 1085 	mov	a,#0x01
      0005B8 B5 30 06         [24] 1086 	cjne	a,_prebut_up,00254$
      0005BB 14               [12] 1087 	dec	a
      0005BC B5 31 02         [24] 1088 	cjne	a,(_prebut_up + 1),00254$
      0005BF 80 02            [24] 1089 	sjmp	00255$
      0005C1                       1090 00254$:
      0005C1 80 1D            [24] 1091 	sjmp	00106$
      0005C3                       1092 00255$:
                                   1093 ;	./src/angry_bird.c:213: delay_ms(10);
      0005C3 90 00 0A         [24] 1094 	mov	dptr,#0x000a
      0005C6 12 02 05         [24] 1095 	lcall	_delay_ms
                                   1096 ;	./src/angry_bird.c:214: if (but_up == 0)
      0005C9 20 A0 14         [24] 1097 	jb	_P2_0,00106$
                                   1098 ;	./src/angry_bird.c:216: selection_list_cur--;
      0005CC 15 13            [12] 1099 	dec	_selection_list_cur
      0005CE 74 FF            [12] 1100 	mov	a,#0xff
      0005D0 B5 13 02         [24] 1101 	cjne	a,_selection_list_cur,00257$
      0005D3 15 14            [12] 1102 	dec	(_selection_list_cur + 1)
      0005D5                       1103 00257$:
                                   1104 ;	./src/angry_bird.c:217: if (selection_list_cur < 0)
      0005D5 E5 14            [12] 1105 	mov	a,(_selection_list_cur + 1)
      0005D7 30 E7 06         [24] 1106 	jnb	acc.7,00106$
                                   1107 ;	./src/angry_bird.c:218: selection_list_cur = 2;
      0005DA 75 13 02         [24] 1108 	mov	_selection_list_cur,#0x02
      0005DD 75 14 00         [24] 1109 	mov	(_selection_list_cur + 1),#0x00
      0005E0                       1110 00106$:
                                   1111 ;	./src/angry_bird.c:221: if ((but_down == 0) && (prebut_down == 1))
      0005E0 20 A1 34         [24] 1112 	jb	_P2_1,00113$
      0005E3 74 01            [12] 1113 	mov	a,#0x01
      0005E5 B5 32 06         [24] 1114 	cjne	a,_prebut_down,00260$
      0005E8 14               [12] 1115 	dec	a
      0005E9 B5 33 02         [24] 1116 	cjne	a,(_prebut_down + 1),00260$
      0005EC 80 02            [24] 1117 	sjmp	00261$
      0005EE                       1118 00260$:
      0005EE 80 27            [24] 1119 	sjmp	00113$
      0005F0                       1120 00261$:
                                   1121 ;	./src/angry_bird.c:223: delay_ms(10);
      0005F0 90 00 0A         [24] 1122 	mov	dptr,#0x000a
      0005F3 12 02 05         [24] 1123 	lcall	_delay_ms
                                   1124 ;	./src/angry_bird.c:224: if (but_down == 0)
      0005F6 20 A1 1E         [24] 1125 	jb	_P2_1,00113$
                                   1126 ;	./src/angry_bird.c:226: selection_list_cur++;
      0005F9 05 13            [12] 1127 	inc	_selection_list_cur
      0005FB E4               [12] 1128 	clr	a
      0005FC B5 13 02         [24] 1129 	cjne	a,_selection_list_cur,00263$
      0005FF 05 14            [12] 1130 	inc	(_selection_list_cur + 1)
      000601                       1131 00263$:
                                   1132 ;	./src/angry_bird.c:227: if (selection_list_cur > 2)
      000601 C3               [12] 1133 	clr	c
      000602 74 02            [12] 1134 	mov	a,#0x02
      000604 95 13            [12] 1135 	subb	a,_selection_list_cur
      000606 74 80            [12] 1136 	mov	a,#(0x00 ^ 0x80)
      000608 85 14 F0         [24] 1137 	mov	b,(_selection_list_cur + 1)
      00060B 63 F0 80         [24] 1138 	xrl	b,#0x80
      00060E 95 F0            [12] 1139 	subb	a,b
      000610 50 05            [24] 1140 	jnc	00113$
                                   1141 ;	./src/angry_bird.c:228: selection_list_cur = 0;
      000612 E4               [12] 1142 	clr	a
      000613 F5 13            [12] 1143 	mov	_selection_list_cur,a
      000615 F5 14            [12] 1144 	mov	(_selection_list_cur + 1),a
      000617                       1145 00113$:
                                   1146 ;	./src/angry_bird.c:231: if ((but_enter == 0) && (prebut_enter == 1))
      000617 30 A2 03         [24] 1147 	jnb	_P2_2,00265$
      00061A 02 06 98         [24] 1148 	ljmp	00127$
      00061D                       1149 00265$:
      00061D 74 01            [12] 1150 	mov	a,#0x01
      00061F B5 38 06         [24] 1151 	cjne	a,_prebut_enter,00266$
      000622 14               [12] 1152 	dec	a
      000623 B5 39 02         [24] 1153 	cjne	a,(_prebut_enter + 1),00266$
      000626 80 03            [24] 1154 	sjmp	00267$
      000628                       1155 00266$:
      000628 02 06 98         [24] 1156 	ljmp	00127$
      00062B                       1157 00267$:
                                   1158 ;	./src/angry_bird.c:233: delay_ms(10);
      00062B 90 00 0A         [24] 1159 	mov	dptr,#0x000a
      00062E 12 02 05         [24] 1160 	lcall	_delay_ms
                                   1161 ;	./src/angry_bird.c:234: if (but_enter == 0)
      000631 20 A2 64         [24] 1162 	jb	_P2_2,00127$
                                   1163 ;	./src/angry_bird.c:237: switch (selection_list_cur + 2)
      000634 74 02            [12] 1164 	mov	a,#0x02
      000636 25 13            [12] 1165 	add	a,_selection_list_cur
      000638 FE               [12] 1166 	mov	r6,a
      000639 E4               [12] 1167 	clr	a
      00063A 35 14            [12] 1168 	addc	a,(_selection_list_cur + 1)
      00063C FF               [12] 1169 	mov	r7,a
      00063D BE 02 05         [24] 1170 	cjne	r6,#0x02,00269$
      000640 BF 00 02         [24] 1171 	cjne	r7,#0x00,00269$
      000643 80 10            [24] 1172 	sjmp	00115$
      000645                       1173 00269$:
      000645 BE 03 05         [24] 1174 	cjne	r6,#0x03,00270$
      000648 BF 00 02         [24] 1175 	cjne	r7,#0x00,00270$
      00064B 80 13            [24] 1176 	sjmp	00117$
      00064D                       1177 00270$:
                                   1178 ;	./src/angry_bird.c:239: case STATE_SETTING:
      00064D BE 04 1C         [24] 1179 	cjne	r6,#0x04,00118$
      000650 BF 00 19         [24] 1180 	cjne	r7,#0x00,00118$
      000653 80 0B            [24] 1181 	sjmp	00117$
      000655                       1182 00115$:
                                   1183 ;	./src/angry_bird.c:240: angrybird_display_setting();
      000655 12 03 BE         [24] 1184 	lcall	_angrybird_display_setting
                                   1185 ;	./src/angry_bird.c:241: cur_state = STATE_SETTING;
      000658 75 2A 02         [24] 1186 	mov	_cur_state,#0x02
      00065B 75 2B 00         [24] 1187 	mov	(_cur_state + 1),#0x00
                                   1188 ;	./src/angry_bird.c:242: break;
                                   1189 ;	./src/angry_bird.c:245: case STATE_PLAY_HARD:
      00065E 80 0C            [24] 1190 	sjmp	00118$
      000660                       1191 00117$:
                                   1192 ;	./src/angry_bird.c:247: send_data = selection_list_cur + 2;
      000660 AF 13            [24] 1193 	mov	r7,_selection_list_cur
      000662 74 02            [12] 1194 	mov	a,#0x02
      000664 2F               [12] 1195 	add	a,r7
      000665 F5 0B            [12] 1196 	mov	_send_data,a
                                   1197 ;	./src/angry_bird.c:248: send_flag = 1;
      000667 75 0C 01         [24] 1198 	mov	_send_flag,#0x01
                                   1199 ;	./src/angry_bird.c:249: P1_7 = 0;
                                   1200 ;	assignBit
      00066A C2 97            [12] 1201 	clr	_P1_7
                                   1202 ;	./src/angry_bird.c:260: }
      00066C                       1203 00118$:
                                   1204 ;	./src/angry_bird.c:262: if (selection_list_cur + 2 == STATE_PLAY_EASY)
      00066C 74 02            [12] 1205 	mov	a,#0x02
      00066E 25 13            [12] 1206 	add	a,_selection_list_cur
      000670 FE               [12] 1207 	mov	r6,a
      000671 E4               [12] 1208 	clr	a
      000672 35 14            [12] 1209 	addc	a,(_selection_list_cur + 1)
      000674 FF               [12] 1210 	mov	r7,a
      000675 BE 03 0B         [24] 1211 	cjne	r6,#0x03,00122$
      000678 BF 00 08         [24] 1212 	cjne	r7,#0x00,00122$
                                   1213 ;	./src/angry_bird.c:263: cur_state = STATE_PLAY_EASY;
      00067B 75 2A 03         [24] 1214 	mov	_cur_state,#0x03
      00067E 75 2B 00         [24] 1215 	mov	(_cur_state + 1),#0x00
      000681 80 15            [24] 1216 	sjmp	00127$
      000683                       1217 00122$:
                                   1218 ;	./src/angry_bird.c:264: else if (selection_list_cur + 2 == STATE_PLAY_HARD)
      000683 74 02            [12] 1219 	mov	a,#0x02
      000685 25 13            [12] 1220 	add	a,_selection_list_cur
      000687 FE               [12] 1221 	mov	r6,a
      000688 E4               [12] 1222 	clr	a
      000689 35 14            [12] 1223 	addc	a,(_selection_list_cur + 1)
      00068B FF               [12] 1224 	mov	r7,a
      00068C BE 04 09         [24] 1225 	cjne	r6,#0x04,00127$
      00068F BF 00 06         [24] 1226 	cjne	r7,#0x00,00127$
                                   1227 ;	./src/angry_bird.c:265: cur_state = STATE_PLAY_HARD;
      000692 75 2A 04         [24] 1228 	mov	_cur_state,#0x04
      000695 75 2B 00         [24] 1229 	mov	(_cur_state + 1),#0x00
      000698                       1230 00127$:
                                   1231 ;	./src/angry_bird.c:269: if (selection_list_past != selection_list_cur)
      000698 E5 13            [12] 1232 	mov	a,_selection_list_cur
      00069A B5 15 07         [24] 1233 	cjne	a,_selection_list_past,00276$
      00069D E5 14            [12] 1234 	mov	a,(_selection_list_cur + 1)
      00069F B5 16 02         [24] 1235 	cjne	a,(_selection_list_past + 1),00276$
      0006A2 80 60            [24] 1236 	sjmp	00136$
      0006A4                       1237 00276$:
                                   1238 ;	./src/angry_bird.c:271: if (selection_list_cur == 0)
      0006A4 E5 13            [12] 1239 	mov	a,_selection_list_cur
      0006A6 45 14            [12] 1240 	orl	a,(_selection_list_cur + 1)
      0006A8 70 0B            [24] 1241 	jnz	00130$
                                   1242 ;	./src/angry_bird.c:272: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
      0006AA 75 44 50         [24] 1243 	mov	_OLED_SetCursor_PARM_2,#0x50
      0006AD 75 82 05         [24] 1244 	mov	dpl,#0x05
      0006B0 12 0B EF         [24] 1245 	lcall	_OLED_SetCursor
      0006B3 80 09            [24] 1246 	sjmp	00131$
      0006B5                       1247 00130$:
                                   1248 ;	./src/angry_bird.c:274: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
      0006B5 75 44 4D         [24] 1249 	mov	_OLED_SetCursor_PARM_2,#0x4d
      0006B8 75 82 05         [24] 1250 	mov	dpl,#0x05
      0006BB 12 0B EF         [24] 1251 	lcall	_OLED_SetCursor
      0006BE                       1252 00131$:
                                   1253 ;	./src/angry_bird.c:275: OLED_DisplayString("       ");
      0006BE 90 0E F4         [24] 1254 	mov	dptr,#___str_3
      0006C1 75 F0 80         [24] 1255 	mov	b,#0x80
      0006C4 12 0B 99         [24] 1256 	lcall	_OLED_DisplayString
                                   1257 ;	./src/angry_bird.c:277: if (selection_list_cur == 0)
      0006C7 E5 13            [12] 1258 	mov	a,_selection_list_cur
      0006C9 45 14            [12] 1259 	orl	a,(_selection_list_cur + 1)
      0006CB 70 0B            [24] 1260 	jnz	00133$
                                   1261 ;	./src/angry_bird.c:278: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
      0006CD 75 44 4D         [24] 1262 	mov	_OLED_SetCursor_PARM_2,#0x4d
      0006D0 75 82 05         [24] 1263 	mov	dpl,#0x05
      0006D3 12 0B EF         [24] 1264 	lcall	_OLED_SetCursor
      0006D6 80 09            [24] 1265 	sjmp	00134$
      0006D8                       1266 00133$:
                                   1267 ;	./src/angry_bird.c:280: OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
      0006D8 75 44 50         [24] 1268 	mov	_OLED_SetCursor_PARM_2,#0x50
      0006DB 75 82 05         [24] 1269 	mov	dpl,#0x05
      0006DE 12 0B EF         [24] 1270 	lcall	_OLED_SetCursor
      0006E1                       1271 00134$:
                                   1272 ;	./src/angry_bird.c:281: OLED_DisplayString(selection_list[selection_list_cur]);
      0006E1 85 13 45         [24] 1273 	mov	__mulint_PARM_2,_selection_list_cur
      0006E4 85 14 46         [24] 1274 	mov	(__mulint_PARM_2 + 1),(_selection_list_cur + 1)
      0006E7 90 00 03         [24] 1275 	mov	dptr,#0x0003
      0006EA 12 0C 37         [24] 1276 	lcall	__mulint
      0006ED AE 82            [24] 1277 	mov	r6,dpl
      0006EF EE               [12] 1278 	mov	a,r6
      0006F0 24 17            [12] 1279 	add	a,#_selection_list
      0006F2 F9               [12] 1280 	mov	r1,a
      0006F3 87 05            [24] 1281 	mov	ar5,@r1
      0006F5 09               [12] 1282 	inc	r1
      0006F6 87 06            [24] 1283 	mov	ar6,@r1
      0006F8 09               [12] 1284 	inc	r1
      0006F9 87 07            [24] 1285 	mov	ar7,@r1
      0006FB 8D 82            [24] 1286 	mov	dpl,r5
      0006FD 8E 83            [24] 1287 	mov	dph,r6
      0006FF 8F F0            [24] 1288 	mov	b,r7
      000701 12 0B 99         [24] 1289 	lcall	_OLED_DisplayString
      000704                       1290 00136$:
                                   1291 ;	./src/angry_bird.c:284: selection_list_past = selection_list_cur;
      000704 85 13 15         [24] 1292 	mov	_selection_list_past,_selection_list_cur
      000707 85 14 16         [24] 1293 	mov	(_selection_list_past + 1),(_selection_list_cur + 1)
                                   1294 ;	./src/angry_bird.c:285: prebut_enter = but_enter;
      00070A A2 A2            [12] 1295 	mov	c,_P2_2
      00070C E4               [12] 1296 	clr	a
      00070D 33               [12] 1297 	rlc	a
      00070E F5 38            [12] 1298 	mov	_prebut_enter,a
      000710 75 39 00         [24] 1299 	mov	(_prebut_enter + 1),#0x00
                                   1300 ;	./src/angry_bird.c:286: prebut_up = but_up;
      000713 A2 A0            [12] 1301 	mov	c,_P2_0
      000715 E4               [12] 1302 	clr	a
      000716 33               [12] 1303 	rlc	a
      000717 F5 30            [12] 1304 	mov	_prebut_up,a
      000719 75 31 00         [24] 1305 	mov	(_prebut_up + 1),#0x00
                                   1306 ;	./src/angry_bird.c:287: prebut_down = but_down;
      00071C A2 A1            [12] 1307 	mov	c,_P2_1
      00071E E4               [12] 1308 	clr	a
      00071F 33               [12] 1309 	rlc	a
      000720 F5 32            [12] 1310 	mov	_prebut_down,a
      000722 75 33 00         [24] 1311 	mov	(_prebut_down + 1),#0x00
                                   1312 ;	./src/angry_bird.c:288: delay_ms(10);
      000725 90 00 0A         [24] 1313 	mov	dptr,#0x000a
                                   1314 ;	./src/angry_bird.c:289: }
      000728 02 02 05         [24] 1315 	ljmp	_delay_ms
                                   1316 ;------------------------------------------------------------
                                   1317 ;Allocation info for local variables in function 'angrybird_game_state'
                                   1318 ;------------------------------------------------------------
                                   1319 ;	./src/angry_bird.c:291: void angrybird_game_state(void)
                                   1320 ;	-----------------------------------------
                                   1321 ;	 function angrybird_game_state
                                   1322 ;	-----------------------------------------
      00072B                       1323 _angrybird_game_state:
                                   1324 ;	./src/angry_bird.c:294: if (send_flag == 1)
      00072B 74 01            [12] 1325 	mov	a,#0x01
      00072D B5 0C 0B         [24] 1326 	cjne	a,_send_flag,00102$
                                   1327 ;	./src/angry_bird.c:296: I2C_Stop();
      000730 12 01 20         [24] 1328 	lcall	_I2C_Stop
                                   1329 ;	./src/angry_bird.c:297: SBUF = send_data; // send data to SBUF
      000733 85 0B 99         [24] 1330 	mov	_SBUF,_send_data
                                   1331 ;	./src/angry_bird.c:298: send_flag = 0;
      000736 75 0C 00         [24] 1332 	mov	_send_flag,#0x00
                                   1333 ;	./src/angry_bird.c:299: P1_6 = 0;
                                   1334 ;	assignBit
      000739 C2 96            [12] 1335 	clr	_P1_6
      00073B                       1336 00102$:
                                   1337 ;	./src/angry_bird.c:302: if (received_flag == 1)
      00073B 74 01            [12] 1338 	mov	a,#0x01
      00073D B5 0E 14         [24] 1339 	cjne	a,_received_flag,00105$
                                   1340 ;	./src/angry_bird.c:304: cur_state = STATE_HOME;
      000740 75 2A 01         [24] 1341 	mov	_cur_state,#0x01
      000743 75 2B 00         [24] 1342 	mov	(_cur_state + 1),#0x00
                                   1343 ;	./src/angry_bird.c:305: received_flag = 0;
      000746 75 0E 00         [24] 1344 	mov	_received_flag,#0x00
                                   1345 ;	./src/angry_bird.c:306: P1_4 = 0;
                                   1346 ;	assignBit
      000749 C2 94            [12] 1347 	clr	_P1_4
                                   1348 ;	./src/angry_bird.c:307: I2C_Start();
      00074B 12 01 11         [24] 1349 	lcall	_I2C_Start
                                   1350 ;	./src/angry_bird.c:308: OLED_Init();
      00074E 12 0A D9         [24] 1351 	lcall	_OLED_Init
                                   1352 ;	./src/angry_bird.c:310: angrybird_display_home();
                                   1353 ;	./src/angry_bird.c:312: }
      000751 02 02 1C         [24] 1354 	ljmp	_angrybird_display_home
      000754                       1355 00105$:
      000754 22               [24] 1356 	ret
                                   1357 ;------------------------------------------------------------
                                   1358 ;Allocation info for local variables in function 'angrybird_setting_state'
                                   1359 ;------------------------------------------------------------
                                   1360 ;which                     Allocated to registers r7 
                                   1361 ;which                     Allocated to registers r7 
                                   1362 ;volume_value_             Allocated with name '_angrybird_setting_state_volume_value__262145_107'
                                   1363 ;j                         Allocated to registers r7 
                                   1364 ;i                         Allocated to registers r6 
                                   1365 ;j                         Allocated to registers r7 
                                   1366 ;i                         Allocated to registers r6 
                                   1367 ;j                         Allocated to registers r7 
                                   1368 ;i                         Allocated to registers r6 
                                   1369 ;j                         Allocated to registers r7 
                                   1370 ;i                         Allocated to registers r6 
                                   1371 ;------------------------------------------------------------
                                   1372 ;	./src/angry_bird.c:314: void angrybird_setting_state(void)
                                   1373 ;	-----------------------------------------
                                   1374 ;	 function angrybird_setting_state
                                   1375 ;	-----------------------------------------
      000755                       1376 _angrybird_setting_state:
                                   1377 ;	./src/angry_bird.c:316: if ((but_up == 0) && (prebut_up == 1) || (but_down == 0) && (prebut_down == 1))
      000755 20 A0 0B         [24] 1378 	jb	_P2_0,00115$
      000758 74 01            [12] 1379 	mov	a,#0x01
      00075A B5 30 06         [24] 1380 	cjne	a,_prebut_up,00454$
      00075D 14               [12] 1381 	dec	a
      00075E B5 31 02         [24] 1382 	cjne	a,(_prebut_up + 1),00454$
      000761 80 10            [24] 1383 	sjmp	00111$
      000763                       1384 00454$:
      000763                       1385 00115$:
      000763 20 A1 5C         [24] 1386 	jb	_P2_1,00112$
      000766 74 01            [12] 1387 	mov	a,#0x01
      000768 B5 32 06         [24] 1388 	cjne	a,_prebut_down,00456$
      00076B 14               [12] 1389 	dec	a
      00076C B5 33 02         [24] 1390 	cjne	a,(_prebut_down + 1),00456$
      00076F 80 02            [24] 1391 	sjmp	00457$
      000771                       1392 00456$:
      000771 80 4F            [24] 1393 	sjmp	00112$
      000773                       1394 00457$:
      000773                       1395 00111$:
                                   1396 ;	./src/angry_bird.c:319: int which = (but_up == 0) ? 1 : 0;
      000773 20 A0 04         [24] 1397 	jb	_P2_0,00187$
      000776 7F 01            [12] 1398 	mov	r7,#0x01
      000778 80 02            [24] 1399 	sjmp	00188$
      00077A                       1400 00187$:
      00077A 7F 00            [12] 1401 	mov	r7,#0x00
      00077C                       1402 00188$:
                                   1403 ;	./src/angry_bird.c:320: if (but_up == 0 || but_down == 0)
      00077C 30 A0 03         [24] 1404 	jnb	_P2_0,00108$
      00077F 20 A1 40         [24] 1405 	jb	_P2_1,00112$
      000782                       1406 00108$:
                                   1407 ;	./src/angry_bird.c:322: if (which == 1)
      000782 BF 01 1E         [24] 1408 	cjne	r7,#0x01,00106$
                                   1409 ;	./src/angry_bird.c:324: setting_state--;
      000785 15 20            [12] 1410 	dec	_setting_state
      000787 74 FF            [12] 1411 	mov	a,#0xff
      000789 B5 20 02         [24] 1412 	cjne	a,_setting_state,00463$
      00078C 15 21            [12] 1413 	dec	(_setting_state + 1)
      00078E                       1414 00463$:
                                   1415 ;	./src/angry_bird.c:325: if (setting_state < 1)
      00078E C3               [12] 1416 	clr	c
      00078F E5 20            [12] 1417 	mov	a,_setting_state
      000791 94 01            [12] 1418 	subb	a,#0x01
      000793 E5 21            [12] 1419 	mov	a,(_setting_state + 1)
      000795 64 80            [12] 1420 	xrl	a,#0x80
      000797 94 80            [12] 1421 	subb	a,#0x80
      000799 50 27            [24] 1422 	jnc	00112$
                                   1423 ;	./src/angry_bird.c:326: setting_state = 2;
      00079B 75 20 02         [24] 1424 	mov	_setting_state,#0x02
      00079E 75 21 00         [24] 1425 	mov	(_setting_state + 1),#0x00
      0007A1 80 1F            [24] 1426 	sjmp	00112$
      0007A3                       1427 00106$:
                                   1428 ;	./src/angry_bird.c:330: setting_state++;
      0007A3 05 20            [12] 1429 	inc	_setting_state
      0007A5 E4               [12] 1430 	clr	a
      0007A6 B5 20 02         [24] 1431 	cjne	a,_setting_state,00465$
      0007A9 05 21            [12] 1432 	inc	(_setting_state + 1)
      0007AB                       1433 00465$:
                                   1434 ;	./src/angry_bird.c:331: if (setting_state > 2)
      0007AB C3               [12] 1435 	clr	c
      0007AC 74 02            [12] 1436 	mov	a,#0x02
      0007AE 95 20            [12] 1437 	subb	a,_setting_state
      0007B0 74 80            [12] 1438 	mov	a,#(0x00 ^ 0x80)
      0007B2 85 21 F0         [24] 1439 	mov	b,(_setting_state + 1)
      0007B5 63 F0 80         [24] 1440 	xrl	b,#0x80
      0007B8 95 F0            [12] 1441 	subb	a,b
      0007BA 50 06            [24] 1442 	jnc	00112$
                                   1443 ;	./src/angry_bird.c:332: setting_state = 1;
      0007BC 75 20 01         [24] 1444 	mov	_setting_state,#0x01
      0007BF 75 21 00         [24] 1445 	mov	(_setting_state + 1),#0x00
      0007C2                       1446 00112$:
                                   1447 ;	./src/angry_bird.c:336: if ((but_enter == 0) && (prebut_enter == 1))
      0007C2 20 A2 1F         [24] 1448 	jb	_P2_2,00119$
      0007C5 74 01            [12] 1449 	mov	a,#0x01
      0007C7 B5 38 06         [24] 1450 	cjne	a,_prebut_enter,00468$
      0007CA 14               [12] 1451 	dec	a
      0007CB B5 39 02         [24] 1452 	cjne	a,(_prebut_enter + 1),00468$
      0007CE 80 02            [24] 1453 	sjmp	00469$
      0007D0                       1454 00468$:
      0007D0 80 12            [24] 1455 	sjmp	00119$
      0007D2                       1456 00469$:
                                   1457 ;	./src/angry_bird.c:338: delay_ms(10);
      0007D2 90 00 0A         [24] 1458 	mov	dptr,#0x000a
      0007D5 12 02 05         [24] 1459 	lcall	_delay_ms
                                   1460 ;	./src/angry_bird.c:339: if (but_enter == 0)
      0007D8 20 A2 09         [24] 1461 	jb	_P2_2,00119$
                                   1462 ;	./src/angry_bird.c:341: angrybird_display_home();
      0007DB 12 02 1C         [24] 1463 	lcall	_angrybird_display_home
                                   1464 ;	./src/angry_bird.c:342: cur_state = STATE_HOME;
      0007DE 75 2A 01         [24] 1465 	mov	_cur_state,#0x01
      0007E1 75 2B 00         [24] 1466 	mov	(_cur_state + 1),#0x00
      0007E4                       1467 00119$:
                                   1468 ;	./src/angry_bird.c:345: if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
      0007E4 20 B2 0B         [24] 1469 	jb	_INT0,00147$
      0007E7 74 01            [12] 1470 	mov	a,#0x01
      0007E9 B5 34 06         [24] 1471 	cjne	a,_prebut_left,00472$
      0007EC 14               [12] 1472 	dec	a
      0007ED B5 35 02         [24] 1473 	cjne	a,(_prebut_left + 1),00472$
      0007F0 80 14            [24] 1474 	sjmp	00143$
      0007F2                       1475 00472$:
      0007F2                       1476 00147$:
      0007F2 30 B3 03         [24] 1477 	jnb	_INT1,00473$
      0007F5 02 08 EE         [24] 1478 	ljmp	00144$
      0007F8                       1479 00473$:
      0007F8 74 01            [12] 1480 	mov	a,#0x01
      0007FA B5 36 06         [24] 1481 	cjne	a,_prebut_right,00474$
      0007FD 14               [12] 1482 	dec	a
      0007FE B5 37 02         [24] 1483 	cjne	a,(_prebut_right + 1),00474$
      000801 80 03            [24] 1484 	sjmp	00475$
      000803                       1485 00474$:
      000803 02 08 EE         [24] 1486 	ljmp	00144$
      000806                       1487 00475$:
      000806                       1488 00143$:
                                   1489 ;	./src/angry_bird.c:348: int which = (but_left == 0) ? 0 : 1;
      000806 20 B2 04         [24] 1490 	jb	_INT0,00189$
      000809 7F 00            [12] 1491 	mov	r7,#0x00
      00080B 80 02            [24] 1492 	sjmp	00190$
      00080D                       1493 00189$:
      00080D 7F 01            [12] 1494 	mov	r7,#0x01
      00080F                       1495 00190$:
                                   1496 ;	./src/angry_bird.c:349: if (but_left == 0 || but_right == 0)
      00080F 30 B2 06         [24] 1497 	jnb	_INT0,00140$
      000812 30 B3 03         [24] 1498 	jnb	_INT1,00478$
      000815 02 08 EE         [24] 1499 	ljmp	00144$
      000818                       1500 00478$:
      000818                       1501 00140$:
                                   1502 ;	./src/angry_bird.c:351: if (setting_state == 1)
      000818 74 01            [12] 1503 	mov	a,#0x01
      00081A B5 20 06         [24] 1504 	cjne	a,_setting_state,00479$
      00081D 14               [12] 1505 	dec	a
      00081E B5 21 02         [24] 1506 	cjne	a,(_setting_state + 1),00479$
      000821 80 02            [24] 1507 	sjmp	00480$
      000823                       1508 00479$:
      000823 80 66            [24] 1509 	sjmp	00138$
      000825                       1510 00480$:
                                   1511 ;	./src/angry_bird.c:353: music_value = (music_value - 1 == 0) ? 0 : 1;
      000825 E5 24            [12] 1512 	mov	a,_music_value
      000827 24 FF            [12] 1513 	add	a,#0xff
      000829 FD               [12] 1514 	mov	r5,a
      00082A E5 25            [12] 1515 	mov	a,(_music_value + 1)
      00082C 34 FF            [12] 1516 	addc	a,#0xff
      00082E 4D               [12] 1517 	orl	a,r5
      00082F 70 04            [24] 1518 	jnz	00191$
      000831 FD               [12] 1519 	mov	r5,a
      000832 FE               [12] 1520 	mov	r6,a
      000833 80 04            [24] 1521 	sjmp	00192$
      000835                       1522 00191$:
      000835 7D 01            [12] 1523 	mov	r5,#0x01
      000837 7E 00            [12] 1524 	mov	r6,#0x00
      000839                       1525 00192$:
      000839 8D 24            [24] 1526 	mov	_music_value,r5
      00083B 8E 25            [24] 1527 	mov	(_music_value + 1),r6
                                   1528 ;	./src/angry_bird.c:354: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
      00083D 75 44 40         [24] 1529 	mov	_OLED_SetCursor_PARM_2,#0x40
      000840 75 82 04         [24] 1530 	mov	dpl,#0x04
      000843 12 0B EF         [24] 1531 	lcall	_OLED_SetCursor
                                   1532 ;	./src/angry_bird.c:355: OLED_DisplayString("   ");
      000846 90 0E FC         [24] 1533 	mov	dptr,#___str_4
      000849 75 F0 80         [24] 1534 	mov	b,#0x80
      00084C 12 0B 99         [24] 1535 	lcall	_OLED_DisplayString
                                   1536 ;	./src/angry_bird.c:356: if (music_value == 0)
      00084F E5 24            [12] 1537 	mov	a,_music_value
      000851 45 25            [12] 1538 	orl	a,(_music_value + 1)
      000853 70 15            [24] 1539 	jnz	00124$
                                   1540 ;	./src/angry_bird.c:358: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
      000855 75 44 40         [24] 1541 	mov	_OLED_SetCursor_PARM_2,#0x40
      000858 75 82 04         [24] 1542 	mov	dpl,#0x04
      00085B 12 0B EF         [24] 1543 	lcall	_OLED_SetCursor
                                   1544 ;	./src/angry_bird.c:359: OLED_DisplayString("OFF");
      00085E 90 0E F0         [24] 1545 	mov	dptr,#___str_2
      000861 75 F0 80         [24] 1546 	mov	b,#0x80
      000864 12 0B 99         [24] 1547 	lcall	_OLED_DisplayString
      000867 02 08 EE         [24] 1548 	ljmp	00144$
      00086A                       1549 00124$:
                                   1550 ;	./src/angry_bird.c:361: else if (music_value == 1)
      00086A 74 01            [12] 1551 	mov	a,#0x01
      00086C B5 24 06         [24] 1552 	cjne	a,_music_value,00483$
      00086F 14               [12] 1553 	dec	a
      000870 B5 25 02         [24] 1554 	cjne	a,(_music_value + 1),00483$
      000873 80 02            [24] 1555 	sjmp	00484$
      000875                       1556 00483$:
      000875 80 77            [24] 1557 	sjmp	00144$
      000877                       1558 00484$:
                                   1559 ;	./src/angry_bird.c:363: OLED_SetCursor(music_value_row_cursor, music_value_col_cursor + 1);
      000877 75 44 41         [24] 1560 	mov	_OLED_SetCursor_PARM_2,#0x41
      00087A 75 82 04         [24] 1561 	mov	dpl,#0x04
      00087D 12 0B EF         [24] 1562 	lcall	_OLED_SetCursor
                                   1563 ;	./src/angry_bird.c:364: OLED_DisplayString("ON");
      000880 90 0F 00         [24] 1564 	mov	dptr,#___str_5
      000883 75 F0 80         [24] 1565 	mov	b,#0x80
      000886 12 0B 99         [24] 1566 	lcall	_OLED_DisplayString
      000889 80 63            [24] 1567 	sjmp	00144$
      00088B                       1568 00138$:
                                   1569 ;	./src/angry_bird.c:367: else if (setting_state == 2)
      00088B 74 02            [12] 1570 	mov	a,#0x02
      00088D B5 20 06         [24] 1571 	cjne	a,_setting_state,00485$
      000890 E4               [12] 1572 	clr	a
      000891 B5 21 02         [24] 1573 	cjne	a,(_setting_state + 1),00485$
      000894 80 02            [24] 1574 	sjmp	00486$
      000896                       1575 00485$:
      000896 80 56            [24] 1576 	sjmp	00144$
      000898                       1577 00486$:
                                   1578 ;	./src/angry_bird.c:369: if (which == 0)
      000898 EF               [12] 1579 	mov	a,r7
      000899 70 15            [24] 1580 	jnz	00133$
                                   1581 ;	./src/angry_bird.c:371: volume_value--;
      00089B 15 26            [12] 1582 	dec	_volume_value
      00089D 74 FF            [12] 1583 	mov	a,#0xff
      00089F B5 26 02         [24] 1584 	cjne	a,_volume_value,00488$
      0008A2 15 27            [12] 1585 	dec	(_volume_value + 1)
      0008A4                       1586 00488$:
                                   1587 ;	./src/angry_bird.c:372: if (volume_value < 0)
      0008A4 E5 27            [12] 1588 	mov	a,(_volume_value + 1)
      0008A6 30 E7 29         [24] 1589 	jnb	acc.7,00134$
                                   1590 ;	./src/angry_bird.c:373: volume_value = 0;
      0008A9 E4               [12] 1591 	clr	a
      0008AA F5 26            [12] 1592 	mov	_volume_value,a
      0008AC F5 27            [12] 1593 	mov	(_volume_value + 1),a
      0008AE 80 22            [24] 1594 	sjmp	00134$
      0008B0                       1595 00133$:
                                   1596 ;	./src/angry_bird.c:375: else if (which == 1)
      0008B0 BF 01 1F         [24] 1597 	cjne	r7,#0x01,00134$
                                   1598 ;	./src/angry_bird.c:377: volume_value++;
      0008B3 05 26            [12] 1599 	inc	_volume_value
      0008B5 E4               [12] 1600 	clr	a
      0008B6 B5 26 02         [24] 1601 	cjne	a,_volume_value,00492$
      0008B9 05 27            [12] 1602 	inc	(_volume_value + 1)
      0008BB                       1603 00492$:
                                   1604 ;	./src/angry_bird.c:378: if (volume_value > 3)
      0008BB C3               [12] 1605 	clr	c
      0008BC 74 03            [12] 1606 	mov	a,#0x03
      0008BE 95 26            [12] 1607 	subb	a,_volume_value
      0008C0 74 80            [12] 1608 	mov	a,#(0x00 ^ 0x80)
      0008C2 85 27 F0         [24] 1609 	mov	b,(_volume_value + 1)
      0008C5 63 F0 80         [24] 1610 	xrl	b,#0x80
      0008C8 95 F0            [12] 1611 	subb	a,b
      0008CA 50 06            [24] 1612 	jnc	00134$
                                   1613 ;	./src/angry_bird.c:379: volume_value = 3;
      0008CC 75 26 03         [24] 1614 	mov	_volume_value,#0x03
      0008CF 75 27 00         [24] 1615 	mov	(_volume_value + 1),#0x00
      0008D2                       1616 00134$:
                                   1617 ;	./src/angry_bird.c:381: OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
      0008D2 75 44 44         [24] 1618 	mov	_OLED_SetCursor_PARM_2,#0x44
      0008D5 75 82 07         [24] 1619 	mov	dpl,#0x07
      0008D8 12 0B EF         [24] 1620 	lcall	_OLED_SetCursor
                                   1621 ;	./src/angry_bird.c:383: volume_value_[0] = '0' + volume_value;
      0008DB AF 26            [24] 1622 	mov	r7,_volume_value
      0008DD 74 30            [12] 1623 	mov	a,#0x30
      0008DF 2F               [12] 1624 	add	a,r7
      0008E0 F5 3A            [12] 1625 	mov	_angrybird_setting_state_volume_value__262145_107,a
                                   1626 ;	./src/angry_bird.c:384: volume_value_[1] = '\0';
      0008E2 75 3B 00         [24] 1627 	mov	(_angrybird_setting_state_volume_value__262145_107 + 0x0001),#0x00
                                   1628 ;	./src/angry_bird.c:385: OLED_DisplayString(volume_value_);
      0008E5 90 00 3A         [24] 1629 	mov	dptr,#_angrybird_setting_state_volume_value__262145_107
      0008E8 75 F0 40         [24] 1630 	mov	b,#0x40
      0008EB 12 0B 99         [24] 1631 	lcall	_OLED_DisplayString
      0008EE                       1632 00144$:
                                   1633 ;	./src/angry_bird.c:390: if (setting_state != setting_state_past)
      0008EE E5 22            [12] 1634 	mov	a,_setting_state_past
      0008F0 B5 20 08         [24] 1635 	cjne	a,_setting_state,00494$
      0008F3 E5 23            [12] 1636 	mov	a,(_setting_state_past + 1)
      0008F5 B5 21 03         [24] 1637 	cjne	a,(_setting_state + 1),00494$
      0008F8 02 0A A0         [24] 1638 	ljmp	00160$
      0008FB                       1639 00494$:
                                   1640 ;	./src/angry_bird.c:393: switch (setting_state_past)
      0008FB 74 01            [12] 1641 	mov	a,#0x01
      0008FD B5 22 06         [24] 1642 	cjne	a,_setting_state_past,00495$
      000900 14               [12] 1643 	dec	a
      000901 B5 23 02         [24] 1644 	cjne	a,(_setting_state_past + 1),00495$
      000904 80 0F            [24] 1645 	sjmp	00148$
      000906                       1646 00495$:
      000906 74 02            [12] 1647 	mov	a,#0x02
      000908 B5 22 07         [24] 1648 	cjne	a,_setting_state_past,00496$
      00090B E4               [12] 1649 	clr	a
      00090C B5 23 03         [24] 1650 	cjne	a,(_setting_state_past + 1),00496$
      00090F 02 09 DC         [24] 1651 	ljmp	00153$
      000912                       1652 00496$:
      000912 02 0A A0         [24] 1653 	ljmp	00160$
                                   1654 ;	./src/angry_bird.c:395: case 1:
      000915                       1655 00148$:
                                   1656 ;	./src/angry_bird.c:396: OLED_SetCursor(m_button_left_row_cursor, m_button_left_col_cursor);
      000915 75 44 2D         [24] 1657 	mov	_OLED_SetCursor_PARM_2,#0x2d
      000918 75 82 04         [24] 1658 	mov	dpl,#0x04
      00091B 12 0B EF         [24] 1659 	lcall	_OLED_SetCursor
                                   1660 ;	./src/angry_bird.c:397: OLED_DisplayString(" ");
      00091E 90 0F 03         [24] 1661 	mov	dptr,#___str_6
      000921 75 F0 80         [24] 1662 	mov	b,#0x80
      000924 12 0B 99         [24] 1663 	lcall	_OLED_DisplayString
                                   1664 ;	./src/angry_bird.c:398: OLED_SetCursor(m_button_right_row_cursor, m_button_right_col_cursor);
      000927 75 44 5D         [24] 1665 	mov	_OLED_SetCursor_PARM_2,#0x5d
      00092A 75 82 04         [24] 1666 	mov	dpl,#0x04
      00092D 12 0B EF         [24] 1667 	lcall	_OLED_SetCursor
                                   1668 ;	./src/angry_bird.c:399: OLED_DisplayString(" ");
      000930 90 0F 03         [24] 1669 	mov	dptr,#___str_6
      000933 75 F0 80         [24] 1670 	mov	b,#0x80
      000936 12 0B 99         [24] 1671 	lcall	_OLED_DisplayString
                                   1672 ;	./src/angry_bird.c:401: row_offset = v_button_left_row_cursor;
      000939 75 0F 07         [24] 1673 	mov	_row_offset,#0x07
      00093C 75 10 00         [24] 1674 	mov	(_row_offset + 1),#0x00
                                   1675 ;	./src/angry_bird.c:402: col_offset = v_button_left_col_cursor;
      00093F 75 11 2D         [24] 1676 	mov	_col_offset,#0x2d
      000942 75 12 00         [24] 1677 	mov	(_col_offset + 1),#0x00
                                   1678 ;	./src/angry_bird.c:403: for (int j = 0; j < setting_button_cul_size; j++)
      000945 7F 00            [12] 1679 	mov	r7,#0x00
      000947                       1680 00165$:
      000947 BF 04 00         [24] 1681 	cjne	r7,#0x04,00497$
      00094A                       1682 00497$:
      00094A 50 3D            [24] 1683 	jnc	00150$
                                   1684 ;	./src/angry_bird.c:405: for (int i = 0; i < setting_button_row_size; i++)
      00094C 7E 00            [12] 1685 	mov	r6,#0x00
      00094E                       1686 00162$:
      00094E BE 01 00         [24] 1687 	cjne	r6,#0x01,00499$
      000951                       1688 00499$:
      000951 50 33            [24] 1689 	jnc	00166$
                                   1690 ;	./src/angry_bird.c:407: OLED_SetCursor(row_offset + i, col_offset + j);
      000953 AD 0F            [24] 1691 	mov	r5,_row_offset
      000955 E4               [12] 1692 	clr	a
      000956 2D               [12] 1693 	add	a,r5
      000957 F5 82            [12] 1694 	mov	dpl,a
      000959 AD 11            [24] 1695 	mov	r5,_col_offset
      00095B 8F 04            [24] 1696 	mov	ar4,r7
      00095D EC               [12] 1697 	mov	a,r4
      00095E 2D               [12] 1698 	add	a,r5
      00095F F5 44            [12] 1699 	mov	_OLED_SetCursor_PARM_2,a
      000961 C0 07            [24] 1700 	push	ar7
      000963 C0 04            [24] 1701 	push	ar4
      000965 12 0B EF         [24] 1702 	lcall	_OLED_SetCursor
      000968 D0 04            [24] 1703 	pop	ar4
                                   1704 ;	./src/angry_bird.c:408: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
      00096A EC               [12] 1705 	mov	a,r4
      00096B 33               [12] 1706 	rlc	a
      00096C 95 E0            [12] 1707 	subb	a,acc
      00096E FD               [12] 1708 	mov	r5,a
      00096F EC               [12] 1709 	mov	a,r4
      000970 24 D4            [12] 1710 	add	a,#_button_left_logo
      000972 F5 82            [12] 1711 	mov	dpl,a
      000974 ED               [12] 1712 	mov	a,r5
      000975 34 0E            [12] 1713 	addc	a,#(_button_left_logo >> 8)
      000977 F5 83            [12] 1714 	mov	dph,a
      000979 E4               [12] 1715 	clr	a
      00097A 93               [24] 1716 	movc	a,@a+dptr
      00097B F5 82            [12] 1717 	mov	dpl,a
      00097D 12 0C 2B         [24] 1718 	lcall	_oledSendData
      000980 D0 07            [24] 1719 	pop	ar7
                                   1720 ;	./src/angry_bird.c:405: for (int i = 0; i < setting_button_row_size; i++)
      000982 7E 01            [12] 1721 	mov	r6,#0x01
      000984 80 C8            [24] 1722 	sjmp	00162$
      000986                       1723 00166$:
                                   1724 ;	./src/angry_bird.c:403: for (int j = 0; j < setting_button_cul_size; j++)
      000986 0F               [12] 1725 	inc	r7
      000987 80 BE            [24] 1726 	sjmp	00165$
      000989                       1727 00150$:
                                   1728 ;	./src/angry_bird.c:411: row_offset = v_button_right_row_cursor;
      000989 75 0F 07         [24] 1729 	mov	_row_offset,#0x07
      00098C 75 10 00         [24] 1730 	mov	(_row_offset + 1),#0x00
                                   1731 ;	./src/angry_bird.c:412: col_offset = v_button_right_col_cursor;
      00098F 75 11 5D         [24] 1732 	mov	_col_offset,#0x5d
      000992 75 12 00         [24] 1733 	mov	(_col_offset + 1),#0x00
                                   1734 ;	./src/angry_bird.c:413: for (int j = 0; j < setting_button_cul_size; j++)
      000995 7F 00            [12] 1735 	mov	r7,#0x00
      000997                       1736 00171$:
      000997 BF 04 00         [24] 1737 	cjne	r7,#0x04,00501$
      00099A                       1738 00501$:
      00099A 40 03            [24] 1739 	jc	00502$
      00099C 02 0A A0         [24] 1740 	ljmp	00160$
      00099F                       1741 00502$:
                                   1742 ;	./src/angry_bird.c:415: for (int i = 0; i < setting_button_row_size; i++)
      00099F 7E 00            [12] 1743 	mov	r6,#0x00
      0009A1                       1744 00168$:
      0009A1 BE 01 00         [24] 1745 	cjne	r6,#0x01,00503$
      0009A4                       1746 00503$:
      0009A4 50 33            [24] 1747 	jnc	00172$
                                   1748 ;	./src/angry_bird.c:417: OLED_SetCursor(row_offset + i, col_offset + j);
      0009A6 AD 0F            [24] 1749 	mov	r5,_row_offset
      0009A8 E4               [12] 1750 	clr	a
      0009A9 2D               [12] 1751 	add	a,r5
      0009AA F5 82            [12] 1752 	mov	dpl,a
      0009AC AD 11            [24] 1753 	mov	r5,_col_offset
      0009AE 8F 04            [24] 1754 	mov	ar4,r7
      0009B0 EC               [12] 1755 	mov	a,r4
      0009B1 2D               [12] 1756 	add	a,r5
      0009B2 F5 44            [12] 1757 	mov	_OLED_SetCursor_PARM_2,a
      0009B4 C0 07            [24] 1758 	push	ar7
      0009B6 C0 04            [24] 1759 	push	ar4
      0009B8 12 0B EF         [24] 1760 	lcall	_OLED_SetCursor
      0009BB D0 04            [24] 1761 	pop	ar4
                                   1762 ;	./src/angry_bird.c:418: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
      0009BD EC               [12] 1763 	mov	a,r4
      0009BE 33               [12] 1764 	rlc	a
      0009BF 95 E0            [12] 1765 	subb	a,acc
      0009C1 FD               [12] 1766 	mov	r5,a
      0009C2 EC               [12] 1767 	mov	a,r4
      0009C3 24 D8            [12] 1768 	add	a,#_button_right_logo
      0009C5 F5 82            [12] 1769 	mov	dpl,a
      0009C7 ED               [12] 1770 	mov	a,r5
      0009C8 34 0E            [12] 1771 	addc	a,#(_button_right_logo >> 8)
      0009CA F5 83            [12] 1772 	mov	dph,a
      0009CC E4               [12] 1773 	clr	a
      0009CD 93               [24] 1774 	movc	a,@a+dptr
      0009CE F5 82            [12] 1775 	mov	dpl,a
      0009D0 12 0C 2B         [24] 1776 	lcall	_oledSendData
      0009D3 D0 07            [24] 1777 	pop	ar7
                                   1778 ;	./src/angry_bird.c:415: for (int i = 0; i < setting_button_row_size; i++)
      0009D5 7E 01            [12] 1779 	mov	r6,#0x01
      0009D7 80 C8            [24] 1780 	sjmp	00168$
      0009D9                       1781 00172$:
                                   1782 ;	./src/angry_bird.c:413: for (int j = 0; j < setting_button_cul_size; j++)
      0009D9 0F               [12] 1783 	inc	r7
                                   1784 ;	./src/angry_bird.c:423: case 2:
      0009DA 80 BB            [24] 1785 	sjmp	00171$
      0009DC                       1786 00153$:
                                   1787 ;	./src/angry_bird.c:424: OLED_SetCursor(v_button_left_row_cursor, v_button_left_col_cursor);
      0009DC 75 44 2D         [24] 1788 	mov	_OLED_SetCursor_PARM_2,#0x2d
      0009DF 75 82 07         [24] 1789 	mov	dpl,#0x07
      0009E2 12 0B EF         [24] 1790 	lcall	_OLED_SetCursor
                                   1791 ;	./src/angry_bird.c:425: OLED_DisplayString(" ");
      0009E5 90 0F 03         [24] 1792 	mov	dptr,#___str_6
      0009E8 75 F0 80         [24] 1793 	mov	b,#0x80
      0009EB 12 0B 99         [24] 1794 	lcall	_OLED_DisplayString
                                   1795 ;	./src/angry_bird.c:426: OLED_SetCursor(v_button_right_row_cursor, v_button_right_col_cursor);
      0009EE 75 44 5D         [24] 1796 	mov	_OLED_SetCursor_PARM_2,#0x5d
      0009F1 75 82 07         [24] 1797 	mov	dpl,#0x07
      0009F4 12 0B EF         [24] 1798 	lcall	_OLED_SetCursor
                                   1799 ;	./src/angry_bird.c:427: OLED_DisplayString(" ");
      0009F7 90 0F 03         [24] 1800 	mov	dptr,#___str_6
      0009FA 75 F0 80         [24] 1801 	mov	b,#0x80
      0009FD 12 0B 99         [24] 1802 	lcall	_OLED_DisplayString
                                   1803 ;	./src/angry_bird.c:428: row_offset = m_button_left_row_cursor;
      000A00 75 0F 04         [24] 1804 	mov	_row_offset,#0x04
      000A03 75 10 00         [24] 1805 	mov	(_row_offset + 1),#0x00
                                   1806 ;	./src/angry_bird.c:429: col_offset = m_button_left_col_cursor;
      000A06 75 11 2D         [24] 1807 	mov	_col_offset,#0x2d
      000A09 75 12 00         [24] 1808 	mov	(_col_offset + 1),#0x00
                                   1809 ;	./src/angry_bird.c:430: for (int j = 0; j < setting_button_cul_size; j++)
      000A0C 7F 00            [12] 1810 	mov	r7,#0x00
      000A0E                       1811 00177$:
      000A0E BF 04 00         [24] 1812 	cjne	r7,#0x04,00505$
      000A11                       1813 00505$:
      000A11 50 3D            [24] 1814 	jnc	00155$
                                   1815 ;	./src/angry_bird.c:432: for (int i = 0; i < setting_button_row_size; i++)
      000A13 7E 00            [12] 1816 	mov	r6,#0x00
      000A15                       1817 00174$:
      000A15 BE 01 00         [24] 1818 	cjne	r6,#0x01,00507$
      000A18                       1819 00507$:
      000A18 50 33            [24] 1820 	jnc	00178$
                                   1821 ;	./src/angry_bird.c:434: OLED_SetCursor(row_offset + i, col_offset + j);
      000A1A AD 0F            [24] 1822 	mov	r5,_row_offset
      000A1C E4               [12] 1823 	clr	a
      000A1D 2D               [12] 1824 	add	a,r5
      000A1E F5 82            [12] 1825 	mov	dpl,a
      000A20 AD 11            [24] 1826 	mov	r5,_col_offset
      000A22 8F 04            [24] 1827 	mov	ar4,r7
      000A24 EC               [12] 1828 	mov	a,r4
      000A25 2D               [12] 1829 	add	a,r5
      000A26 F5 44            [12] 1830 	mov	_OLED_SetCursor_PARM_2,a
      000A28 C0 07            [24] 1831 	push	ar7
      000A2A C0 04            [24] 1832 	push	ar4
      000A2C 12 0B EF         [24] 1833 	lcall	_OLED_SetCursor
      000A2F D0 04            [24] 1834 	pop	ar4
                                   1835 ;	./src/angry_bird.c:435: oledSendData(button_left_logo[setting_button_cul_size * i + j]);
      000A31 EC               [12] 1836 	mov	a,r4
      000A32 33               [12] 1837 	rlc	a
      000A33 95 E0            [12] 1838 	subb	a,acc
      000A35 FD               [12] 1839 	mov	r5,a
      000A36 EC               [12] 1840 	mov	a,r4
      000A37 24 D4            [12] 1841 	add	a,#_button_left_logo
      000A39 F5 82            [12] 1842 	mov	dpl,a
      000A3B ED               [12] 1843 	mov	a,r5
      000A3C 34 0E            [12] 1844 	addc	a,#(_button_left_logo >> 8)
      000A3E F5 83            [12] 1845 	mov	dph,a
      000A40 E4               [12] 1846 	clr	a
      000A41 93               [24] 1847 	movc	a,@a+dptr
      000A42 F5 82            [12] 1848 	mov	dpl,a
      000A44 12 0C 2B         [24] 1849 	lcall	_oledSendData
      000A47 D0 07            [24] 1850 	pop	ar7
                                   1851 ;	./src/angry_bird.c:432: for (int i = 0; i < setting_button_row_size; i++)
      000A49 7E 01            [12] 1852 	mov	r6,#0x01
      000A4B 80 C8            [24] 1853 	sjmp	00174$
      000A4D                       1854 00178$:
                                   1855 ;	./src/angry_bird.c:430: for (int j = 0; j < setting_button_cul_size; j++)
      000A4D 0F               [12] 1856 	inc	r7
      000A4E 80 BE            [24] 1857 	sjmp	00177$
      000A50                       1858 00155$:
                                   1859 ;	./src/angry_bird.c:438: row_offset = m_button_right_row_cursor;
      000A50 75 0F 04         [24] 1860 	mov	_row_offset,#0x04
      000A53 75 10 00         [24] 1861 	mov	(_row_offset + 1),#0x00
                                   1862 ;	./src/angry_bird.c:439: col_offset = m_button_right_col_cursor;
      000A56 75 11 5D         [24] 1863 	mov	_col_offset,#0x5d
      000A59 75 12 00         [24] 1864 	mov	(_col_offset + 1),#0x00
                                   1865 ;	./src/angry_bird.c:440: for (int j = 0; j < setting_button_cul_size; j++)
      000A5C 7F 00            [12] 1866 	mov	r7,#0x00
      000A5E                       1867 00183$:
      000A5E BF 04 00         [24] 1868 	cjne	r7,#0x04,00509$
      000A61                       1869 00509$:
      000A61 50 3D            [24] 1870 	jnc	00160$
                                   1871 ;	./src/angry_bird.c:442: for (int i = 0; i < setting_button_row_size; i++)
      000A63 7E 00            [12] 1872 	mov	r6,#0x00
      000A65                       1873 00180$:
      000A65 BE 01 00         [24] 1874 	cjne	r6,#0x01,00511$
      000A68                       1875 00511$:
      000A68 50 33            [24] 1876 	jnc	00184$
                                   1877 ;	./src/angry_bird.c:444: OLED_SetCursor(row_offset + i, col_offset + j);
      000A6A AD 0F            [24] 1878 	mov	r5,_row_offset
      000A6C E4               [12] 1879 	clr	a
      000A6D 2D               [12] 1880 	add	a,r5
      000A6E F5 82            [12] 1881 	mov	dpl,a
      000A70 AD 11            [24] 1882 	mov	r5,_col_offset
      000A72 8F 04            [24] 1883 	mov	ar4,r7
      000A74 EC               [12] 1884 	mov	a,r4
      000A75 2D               [12] 1885 	add	a,r5
      000A76 F5 44            [12] 1886 	mov	_OLED_SetCursor_PARM_2,a
      000A78 C0 07            [24] 1887 	push	ar7
      000A7A C0 04            [24] 1888 	push	ar4
      000A7C 12 0B EF         [24] 1889 	lcall	_OLED_SetCursor
      000A7F D0 04            [24] 1890 	pop	ar4
                                   1891 ;	./src/angry_bird.c:445: oledSendData(button_right_logo[setting_button_cul_size * i + j]);
      000A81 EC               [12] 1892 	mov	a,r4
      000A82 33               [12] 1893 	rlc	a
      000A83 95 E0            [12] 1894 	subb	a,acc
      000A85 FD               [12] 1895 	mov	r5,a
      000A86 EC               [12] 1896 	mov	a,r4
      000A87 24 D8            [12] 1897 	add	a,#_button_right_logo
      000A89 F5 82            [12] 1898 	mov	dpl,a
      000A8B ED               [12] 1899 	mov	a,r5
      000A8C 34 0E            [12] 1900 	addc	a,#(_button_right_logo >> 8)
      000A8E F5 83            [12] 1901 	mov	dph,a
      000A90 E4               [12] 1902 	clr	a
      000A91 93               [24] 1903 	movc	a,@a+dptr
      000A92 F5 82            [12] 1904 	mov	dpl,a
      000A94 12 0C 2B         [24] 1905 	lcall	_oledSendData
      000A97 D0 07            [24] 1906 	pop	ar7
                                   1907 ;	./src/angry_bird.c:442: for (int i = 0; i < setting_button_row_size; i++)
      000A99 7E 01            [12] 1908 	mov	r6,#0x01
      000A9B 80 C8            [24] 1909 	sjmp	00180$
      000A9D                       1910 00184$:
                                   1911 ;	./src/angry_bird.c:440: for (int j = 0; j < setting_button_cul_size; j++)
      000A9D 0F               [12] 1912 	inc	r7
                                   1913 ;	./src/angry_bird.c:449: }
      000A9E 80 BE            [24] 1914 	sjmp	00183$
      000AA0                       1915 00160$:
                                   1916 ;	./src/angry_bird.c:452: setting_state_past = setting_state;
      000AA0 85 20 22         [24] 1917 	mov	_setting_state_past,_setting_state
      000AA3 85 21 23         [24] 1918 	mov	(_setting_state_past + 1),(_setting_state + 1)
                                   1919 ;	./src/angry_bird.c:453: prebut_enter = but_enter;
      000AA6 A2 A2            [12] 1920 	mov	c,_P2_2
      000AA8 E4               [12] 1921 	clr	a
      000AA9 33               [12] 1922 	rlc	a
      000AAA F5 38            [12] 1923 	mov	_prebut_enter,a
      000AAC 75 39 00         [24] 1924 	mov	(_prebut_enter + 1),#0x00
                                   1925 ;	./src/angry_bird.c:454: prebut_up = but_up;
      000AAF A2 A0            [12] 1926 	mov	c,_P2_0
      000AB1 E4               [12] 1927 	clr	a
      000AB2 33               [12] 1928 	rlc	a
      000AB3 F5 30            [12] 1929 	mov	_prebut_up,a
      000AB5 75 31 00         [24] 1930 	mov	(_prebut_up + 1),#0x00
                                   1931 ;	./src/angry_bird.c:455: prebut_down = but_down;
      000AB8 A2 A1            [12] 1932 	mov	c,_P2_1
      000ABA E4               [12] 1933 	clr	a
      000ABB 33               [12] 1934 	rlc	a
      000ABC F5 32            [12] 1935 	mov	_prebut_down,a
      000ABE 75 33 00         [24] 1936 	mov	(_prebut_down + 1),#0x00
                                   1937 ;	./src/angry_bird.c:456: prebut_left = but_left;
      000AC1 A2 B2            [12] 1938 	mov	c,_INT0
      000AC3 E4               [12] 1939 	clr	a
      000AC4 33               [12] 1940 	rlc	a
      000AC5 F5 34            [12] 1941 	mov	_prebut_left,a
      000AC7 75 35 00         [24] 1942 	mov	(_prebut_left + 1),#0x00
                                   1943 ;	./src/angry_bird.c:457: prebut_right = but_right;
      000ACA A2 B3            [12] 1944 	mov	c,_INT1
      000ACC E4               [12] 1945 	clr	a
      000ACD 33               [12] 1946 	rlc	a
      000ACE F5 36            [12] 1947 	mov	_prebut_right,a
      000AD0 75 37 00         [24] 1948 	mov	(_prebut_right + 1),#0x00
                                   1949 ;	./src/angry_bird.c:458: delay_ms(10);
      000AD3 90 00 0A         [24] 1950 	mov	dptr,#0x000a
                                   1951 ;	./src/angry_bird.c:459: }
      000AD6 02 02 05         [24] 1952 	ljmp	_delay_ms
                                   1953 	.area CSEG    (CODE)
                                   1954 	.area CONST   (CODE)
      000C74                       1955 _angry_bird_logo:
      000C74 00                    1956 	.db #0x00	; 0
      000C75 00                    1957 	.db #0x00	; 0
      000C76 00                    1958 	.db #0x00	; 0
      000C77 00                    1959 	.db #0x00	; 0
      000C78 00                    1960 	.db #0x00	; 0
      000C79 00                    1961 	.db #0x00	; 0
      000C7A 00                    1962 	.db #0x00	; 0
      000C7B 00                    1963 	.db #0x00	; 0
      000C7C 00                    1964 	.db #0x00	; 0
      000C7D 00                    1965 	.db #0x00	; 0
      000C7E 00                    1966 	.db #0x00	; 0
      000C7F 00                    1967 	.db #0x00	; 0
      000C80 00                    1968 	.db #0x00	; 0
      000C81 00                    1969 	.db #0x00	; 0
      000C82 00                    1970 	.db #0x00	; 0
      000C83 00                    1971 	.db #0x00	; 0
      000C84 00                    1972 	.db #0x00	; 0
      000C85 00                    1973 	.db #0x00	; 0
      000C86 00                    1974 	.db #0x00	; 0
      000C87 00                    1975 	.db #0x00	; 0
      000C88 00                    1976 	.db #0x00	; 0
      000C89 00                    1977 	.db #0x00	; 0
      000C8A 00                    1978 	.db #0x00	; 0
      000C8B 00                    1979 	.db #0x00	; 0
      000C8C 00                    1980 	.db #0x00	; 0
      000C8D 00                    1981 	.db #0x00	; 0
      000C8E 00                    1982 	.db #0x00	; 0
      000C8F 00                    1983 	.db #0x00	; 0
      000C90 00                    1984 	.db #0x00	; 0
      000C91 80                    1985 	.db #0x80	; 128
      000C92 E0                    1986 	.db #0xe0	; 224
      000C93 20                    1987 	.db #0x20	; 32
      000C94 20                    1988 	.db #0x20	; 32
      000C95 60                    1989 	.db #0x60	; 96
      000C96 40                    1990 	.db #0x40	; 64
      000C97 40                    1991 	.db #0x40	; 64
      000C98 80                    1992 	.db #0x80	; 128
      000C99 80                    1993 	.db #0x80	; 128
      000C9A 00                    1994 	.db #0x00	; 0
      000C9B 00                    1995 	.db #0x00	; 0
      000C9C 00                    1996 	.db #0x00	; 0
      000C9D 00                    1997 	.db #0x00	; 0
      000C9E 00                    1998 	.db #0x00	; 0
      000C9F 00                    1999 	.db #0x00	; 0
      000CA0 00                    2000 	.db #0x00	; 0
      000CA1 00                    2001 	.db #0x00	; 0
      000CA2 00                    2002 	.db #0x00	; 0
      000CA3 00                    2003 	.db #0x00	; 0
      000CA4 00                    2004 	.db #0x00	; 0
      000CA5 00                    2005 	.db #0x00	; 0
      000CA6 00                    2006 	.db #0x00	; 0
      000CA7 00                    2007 	.db #0x00	; 0
      000CA8 00                    2008 	.db #0x00	; 0
      000CA9 00                    2009 	.db #0x00	; 0
      000CAA 00                    2010 	.db #0x00	; 0
      000CAB 00                    2011 	.db #0x00	; 0
      000CAC 00                    2012 	.db #0x00	; 0
      000CAD 00                    2013 	.db #0x00	; 0
      000CAE 00                    2014 	.db #0x00	; 0
      000CAF 00                    2015 	.db #0x00	; 0
      000CB0 00                    2016 	.db #0x00	; 0
      000CB1 00                    2017 	.db #0x00	; 0
      000CB2 00                    2018 	.db #0x00	; 0
      000CB3 00                    2019 	.db #0x00	; 0
      000CB4 00                    2020 	.db #0x00	; 0
      000CB5 00                    2021 	.db #0x00	; 0
      000CB6 00                    2022 	.db #0x00	; 0
      000CB7 00                    2023 	.db #0x00	; 0
      000CB8 00                    2024 	.db #0x00	; 0
      000CB9 00                    2025 	.db #0x00	; 0
      000CBA 00                    2026 	.db #0x00	; 0
      000CBB 00                    2027 	.db #0x00	; 0
      000CBC 00                    2028 	.db #0x00	; 0
      000CBD 00                    2029 	.db #0x00	; 0
      000CBE 00                    2030 	.db #0x00	; 0
      000CBF 00                    2031 	.db #0x00	; 0
      000CC0 00                    2032 	.db #0x00	; 0
      000CC1 00                    2033 	.db #0x00	; 0
      000CC2 00                    2034 	.db #0x00	; 0
      000CC3 00                    2035 	.db #0x00	; 0
      000CC4 00                    2036 	.db #0x00	; 0
      000CC5 00                    2037 	.db #0x00	; 0
      000CC6 00                    2038 	.db #0x00	; 0
      000CC7 00                    2039 	.db #0x00	; 0
      000CC8 00                    2040 	.db #0x00	; 0
      000CC9 30                    2041 	.db #0x30	; 48	'0'
      000CCA 78                    2042 	.db #0x78	; 120	'x'
      000CCB 48                    2043 	.db #0x48	; 72	'H'
      000CCC CC                    2044 	.db #0xcc	; 204
      000CCD 84                    2045 	.db #0x84	; 132
      000CCE 84                    2046 	.db #0x84	; 132
      000CCF 84                    2047 	.db #0x84	; 132
      000CD0 84                    2048 	.db #0x84	; 132
      000CD1 84                    2049 	.db #0x84	; 132
      000CD2 87                    2050 	.db #0x87	; 135
      000CD3 CE                    2051 	.db #0xce	; 206
      000CD4 CC                    2052 	.db #0xcc	; 204
      000CD5 D8                    2053 	.db #0xd8	; 216
      000CD6 F0                    2054 	.db #0xf0	; 240
      000CD7 60                    2055 	.db #0x60	; 96
      000CD8 40                    2056 	.db #0x40	; 64
      000CD9 41                    2057 	.db #0x41	; 65	'A'
      000CDA 43                    2058 	.db #0x43	; 67	'C'
      000CDB 46                    2059 	.db #0x46	; 70	'F'
      000CDC CC                    2060 	.db #0xcc	; 204
      000CDD D8                    2061 	.db #0xd8	; 216
      000CDE F0                    2062 	.db #0xf0	; 240
      000CDF E0                    2063 	.db #0xe0	; 224
      000CE0 80                    2064 	.db #0x80	; 128
      000CE1 80                    2065 	.db #0x80	; 128
      000CE2 00                    2066 	.db #0x00	; 0
      000CE3 00                    2067 	.db #0x00	; 0
      000CE4 00                    2068 	.db #0x00	; 0
      000CE5 00                    2069 	.db #0x00	; 0
      000CE6 00                    2070 	.db #0x00	; 0
      000CE7 00                    2071 	.db #0x00	; 0
      000CE8 00                    2072 	.db #0x00	; 0
      000CE9 00                    2073 	.db #0x00	; 0
      000CEA 00                    2074 	.db #0x00	; 0
      000CEB 00                    2075 	.db #0x00	; 0
      000CEC 00                    2076 	.db #0x00	; 0
      000CED 00                    2077 	.db #0x00	; 0
      000CEE 00                    2078 	.db #0x00	; 0
      000CEF 00                    2079 	.db #0x00	; 0
      000CF0 00                    2080 	.db #0x00	; 0
      000CF1 00                    2081 	.db #0x00	; 0
      000CF2 00                    2082 	.db #0x00	; 0
      000CF3 00                    2083 	.db #0x00	; 0
      000CF4 00                    2084 	.db #0x00	; 0
      000CF5 00                    2085 	.db #0x00	; 0
      000CF6 00                    2086 	.db #0x00	; 0
      000CF7 00                    2087 	.db #0x00	; 0
      000CF8 00                    2088 	.db #0x00	; 0
      000CF9 00                    2089 	.db #0x00	; 0
      000CFA 00                    2090 	.db #0x00	; 0
      000CFB 00                    2091 	.db #0x00	; 0
      000CFC 00                    2092 	.db #0x00	; 0
      000CFD 00                    2093 	.db #0x00	; 0
      000CFE 00                    2094 	.db #0x00	; 0
      000CFF 00                    2095 	.db #0x00	; 0
      000D00 00                    2096 	.db #0x00	; 0
      000D01 00                    2097 	.db #0x00	; 0
      000D02 00                    2098 	.db #0x00	; 0
      000D03 00                    2099 	.db #0x00	; 0
      000D04 00                    2100 	.db #0x00	; 0
      000D05 00                    2101 	.db #0x00	; 0
      000D06 80                    2102 	.db #0x80	; 128
      000D07 E0                    2103 	.db #0xe0	; 224
      000D08 60                    2104 	.db #0x60	; 96
      000D09 30                    2105 	.db #0x30	; 48	'0'
      000D0A 18                    2106 	.db #0x18	; 24
      000D0B 0C                    2107 	.db #0x0c	; 12
      000D0C 06                    2108 	.db #0x06	; 6
      000D0D 06                    2109 	.db #0x06	; 6
      000D0E 03                    2110 	.db #0x03	; 3
      000D0F 03                    2111 	.db #0x03	; 3
      000D10 01                    2112 	.db #0x01	; 1
      000D11 01                    2113 	.db #0x01	; 1
      000D12 01                    2114 	.db #0x01	; 1
      000D13 00                    2115 	.db #0x00	; 0
      000D14 00                    2116 	.db #0x00	; 0
      000D15 00                    2117 	.db #0x00	; 0
      000D16 00                    2118 	.db #0x00	; 0
      000D17 00                    2119 	.db #0x00	; 0
      000D18 00                    2120 	.db #0x00	; 0
      000D19 00                    2121 	.db #0x00	; 0
      000D1A 00                    2122 	.db #0x00	; 0
      000D1B 00                    2123 	.db #0x00	; 0
      000D1C 00                    2124 	.db #0x00	; 0
      000D1D 00                    2125 	.db #0x00	; 0
      000D1E 00                    2126 	.db #0x00	; 0
      000D1F 00                    2127 	.db #0x00	; 0
      000D20 01                    2128 	.db #0x01	; 1
      000D21 01                    2129 	.db #0x01	; 1
      000D22 03                    2130 	.db #0x03	; 3
      000D23 03                    2131 	.db #0x03	; 3
      000D24 06                    2132 	.db #0x06	; 6
      000D25 06                    2133 	.db #0x06	; 6
      000D26 0C                    2134 	.db #0x0c	; 12
      000D27 18                    2135 	.db #0x18	; 24
      000D28 30                    2136 	.db #0x30	; 48	'0'
      000D29 E0                    2137 	.db #0xe0	; 224
      000D2A C0                    2138 	.db #0xc0	; 192
      000D2B 00                    2139 	.db #0x00	; 0
      000D2C 00                    2140 	.db #0x00	; 0
      000D2D 00                    2141 	.db #0x00	; 0
      000D2E 00                    2142 	.db #0x00	; 0
      000D2F 00                    2143 	.db #0x00	; 0
      000D30 00                    2144 	.db #0x00	; 0
      000D31 00                    2145 	.db #0x00	; 0
      000D32 00                    2146 	.db #0x00	; 0
      000D33 00                    2147 	.db #0x00	; 0
      000D34 00                    2148 	.db #0x00	; 0
      000D35 00                    2149 	.db #0x00	; 0
      000D36 00                    2150 	.db #0x00	; 0
      000D37 00                    2151 	.db #0x00	; 0
      000D38 00                    2152 	.db #0x00	; 0
      000D39 00                    2153 	.db #0x00	; 0
      000D3A C0                    2154 	.db #0xc0	; 192
      000D3B E0                    2155 	.db #0xe0	; 224
      000D3C E0                    2156 	.db #0xe0	; 224
      000D3D C0                    2157 	.db #0xc0	; 192
      000D3E F0                    2158 	.db #0xf0	; 240
      000D3F F8                    2159 	.db #0xf8	; 248
      000D40 F8                    2160 	.db #0xf8	; 248
      000D41 F0                    2161 	.db #0xf0	; 240
      000D42 E0                    2162 	.db #0xe0	; 224
      000D43 78                    2163 	.db #0x78	; 120	'x'
      000D44 1E                    2164 	.db #0x1e	; 30
      000D45 07                    2165 	.db #0x07	; 7
      000D46 03                    2166 	.db #0x03	; 3
      000D47 00                    2167 	.db #0x00	; 0
      000D48 00                    2168 	.db #0x00	; 0
      000D49 00                    2169 	.db #0x00	; 0
      000D4A 00                    2170 	.db #0x00	; 0
      000D4B 00                    2171 	.db #0x00	; 0
      000D4C 00                    2172 	.db #0x00	; 0
      000D4D 00                    2173 	.db #0x00	; 0
      000D4E 00                    2174 	.db #0x00	; 0
      000D4F 00                    2175 	.db #0x00	; 0
      000D50 00                    2176 	.db #0x00	; 0
      000D51 00                    2177 	.db #0x00	; 0
      000D52 00                    2178 	.db #0x00	; 0
      000D53 00                    2179 	.db #0x00	; 0
      000D54 80                    2180 	.db #0x80	; 128
      000D55 F0                    2181 	.db #0xf0	; 240
      000D56 F8                    2182 	.db #0xf8	; 248
      000D57 F0                    2183 	.db #0xf0	; 240
      000D58 F0                    2184 	.db #0xf0	; 240
      000D59 F0                    2185 	.db #0xf0	; 240
      000D5A E0                    2186 	.db #0xe0	; 224
      000D5B E0                    2187 	.db #0xe0	; 224
      000D5C E0                    2188 	.db #0xe0	; 224
      000D5D C0                    2189 	.db #0xc0	; 192
      000D5E C0                    2190 	.db #0xc0	; 192
      000D5F 80                    2191 	.db #0x80	; 128
      000D60 80                    2192 	.db #0x80	; 128
      000D61 80                    2193 	.db #0x80	; 128
      000D62 80                    2194 	.db #0x80	; 128
      000D63 80                    2195 	.db #0x80	; 128
      000D64 C0                    2196 	.db #0xc0	; 192
      000D65 C0                    2197 	.db #0xc0	; 192
      000D66 C0                    2198 	.db #0xc0	; 192
      000D67 E0                    2199 	.db #0xe0	; 224
      000D68 E0                    2200 	.db #0xe0	; 224
      000D69 E0                    2201 	.db #0xe0	; 224
      000D6A F1                    2202 	.db #0xf1	; 241
      000D6B F7                    2203 	.db #0xf7	; 247
      000D6C FE                    2204 	.db #0xfe	; 254
      000D6D F8                    2205 	.db #0xf8	; 248
      000D6E C0                    2206 	.db #0xc0	; 192
      000D6F 00                    2207 	.db #0x00	; 0
      000D70 00                    2208 	.db #0x00	; 0
      000D71 00                    2209 	.db #0x00	; 0
      000D72 00                    2210 	.db #0x00	; 0
      000D73 00                    2211 	.db #0x00	; 0
      000D74 00                    2212 	.db #0x00	; 0
      000D75 00                    2213 	.db #0x00	; 0
      000D76 00                    2214 	.db #0x00	; 0
      000D77 00                    2215 	.db #0x00	; 0
      000D78 00                    2216 	.db #0x00	; 0
      000D79 00                    2217 	.db #0x00	; 0
      000D7A 03                    2218 	.db #0x03	; 3
      000D7B 03                    2219 	.db #0x03	; 3
      000D7C 03                    2220 	.db #0x03	; 3
      000D7D 3B                    2221 	.db #0x3b	; 59
      000D7E 3F                    2222 	.db #0x3f	; 63
      000D7F 1F                    2223 	.db #0x1f	; 31
      000D80 1F                    2224 	.db #0x1f	; 31
      000D81 FF                    2225 	.db #0xff	; 255
      000D82 FF                    2226 	.db #0xff	; 255
      000D83 00                    2227 	.db #0x00	; 0
      000D84 00                    2228 	.db #0x00	; 0
      000D85 00                    2229 	.db #0x00	; 0
      000D86 00                    2230 	.db #0x00	; 0
      000D87 00                    2231 	.db #0x00	; 0
      000D88 00                    2232 	.db #0x00	; 0
      000D89 00                    2233 	.db #0x00	; 0
      000D8A 00                    2234 	.db #0x00	; 0
      000D8B 00                    2235 	.db #0x00	; 0
      000D8C 00                    2236 	.db #0x00	; 0
      000D8D 00                    2237 	.db #0x00	; 0
      000D8E 00                    2238 	.db #0x00	; 0
      000D8F 00                    2239 	.db #0x00	; 0
      000D90 00                    2240 	.db #0x00	; 0
      000D91 00                    2241 	.db #0x00	; 0
      000D92 00                    2242 	.db #0x00	; 0
      000D93 00                    2243 	.db #0x00	; 0
      000D94 00                    2244 	.db #0x00	; 0
      000D95 00                    2245 	.db #0x00	; 0
      000D96 00                    2246 	.db #0x00	; 0
      000D97 3D                    2247 	.db #0x3d	; 61
      000D98 67                    2248 	.db #0x67	; 103	'g'
      000D99 81                    2249 	.db #0x81	; 129
      000D9A 81                    2250 	.db #0x81	; 129
      000D9B 03                    2251 	.db #0x03	; 3
      000D9C 03                    2252 	.db #0x03	; 3
      000D9D 9F                    2253 	.db #0x9f	; 159
      000D9E FF                    2254 	.db #0xff	; 255
      000D9F 5F                    2255 	.db #0x5f	; 95
      000DA0 23                    2256 	.db #0x23	; 35
      000DA1 3F                    2257 	.db #0x3f	; 63
      000DA2 3F                    2258 	.db #0x3f	; 63
      000DA3 7F                    2259 	.db #0x7f	; 127
      000DA4 7F                    2260 	.db #0x7f	; 127
      000DA5 9B                    2261 	.db #0x9b	; 155
      000DA6 83                    2262 	.db #0x83	; 131
      000DA7 83                    2263 	.db #0x83	; 131
      000DA8 83                    2264 	.db #0x83	; 131
      000DA9 63                    2265 	.db #0x63	; 99	'c'
      000DAA 3F                    2266 	.db #0x3f	; 63
      000DAB 01                    2267 	.db #0x01	; 1
      000DAC 01                    2268 	.db #0x01	; 1
      000DAD C7                    2269 	.db #0xc7	; 199
      000DAE FF                    2270 	.db #0xff	; 255
      000DAF 00                    2271 	.db #0x00	; 0
      000DB0 00                    2272 	.db #0x00	; 0
      000DB1 00                    2273 	.db #0x00	; 0
      000DB2 00                    2274 	.db #0x00	; 0
      000DB3 00                    2275 	.db #0x00	; 0
      000DB4 00                    2276 	.db #0x00	; 0
      000DB5 00                    2277 	.db #0x00	; 0
      000DB6 00                    2278 	.db #0x00	; 0
      000DB7 00                    2279 	.db #0x00	; 0
      000DB8 00                    2280 	.db #0x00	; 0
      000DB9 00                    2281 	.db #0x00	; 0
      000DBA 00                    2282 	.db #0x00	; 0
      000DBB 00                    2283 	.db #0x00	; 0
      000DBC 00                    2284 	.db #0x00	; 0
      000DBD 00                    2285 	.db #0x00	; 0
      000DBE 00                    2286 	.db #0x00	; 0
      000DBF 00                    2287 	.db #0x00	; 0
      000DC0 00                    2288 	.db #0x00	; 0
      000DC1 03                    2289 	.db #0x03	; 3
      000DC2 1F                    2290 	.db #0x1f	; 31
      000DC3 3C                    2291 	.db #0x3c	; 60
      000DC4 E0                    2292 	.db #0xe0	; 224
      000DC5 C0                    2293 	.db #0xc0	; 192
      000DC6 80                    2294 	.db #0x80	; 128
      000DC7 00                    2295 	.db #0x00	; 0
      000DC8 00                    2296 	.db #0x00	; 0
      000DC9 00                    2297 	.db #0x00	; 0
      000DCA 00                    2298 	.db #0x00	; 0
      000DCB 00                    2299 	.db #0x00	; 0
      000DCC 00                    2300 	.db #0x00	; 0
      000DCD 00                    2301 	.db #0x00	; 0
      000DCE 00                    2302 	.db #0x00	; 0
      000DCF 00                    2303 	.db #0x00	; 0
      000DD0 00                    2304 	.db #0x00	; 0
      000DD1 00                    2305 	.db #0x00	; 0
      000DD2 00                    2306 	.db #0x00	; 0
      000DD3 00                    2307 	.db #0x00	; 0
      000DD4 00                    2308 	.db #0x00	; 0
      000DD5 00                    2309 	.db #0x00	; 0
      000DD6 00                    2310 	.db #0x00	; 0
      000DD7 00                    2311 	.db #0x00	; 0
      000DD8 00                    2312 	.db #0x00	; 0
      000DD9 08                    2313 	.db #0x08	; 8
      000DDA 1D                    2314 	.db #0x1d	; 29
      000DDB 37                    2315 	.db #0x37	; 55	'7'
      000DDC 73                    2316 	.db #0x73	; 115	's'
      000DDD 91                    2317 	.db #0x91	; 145
      000DDE 30                    2318 	.db #0x30	; 48	'0'
      000DDF 30                    2319 	.db #0x30	; 48	'0'
      000DE0 30                    2320 	.db #0x30	; 48	'0'
      000DE1 20                    2321 	.db #0x20	; 32
      000DE2 20                    2322 	.db #0x20	; 32
      000DE3 20                    2323 	.db #0x20	; 32
      000DE4 20                    2324 	.db #0x20	; 32
      000DE5 A0                    2325 	.db #0xa0	; 160
      000DE6 A1                    2326 	.db #0xa1	; 161
      000DE7 63                    2327 	.db #0x63	; 99	'c'
      000DE8 26                    2328 	.db #0x26	; 38
      000DE9 3C                    2329 	.db #0x3c	; 60
      000DEA B0                    2330 	.db #0xb0	; 176
      000DEB E0                    2331 	.db #0xe0	; 224
      000DEC 78                    2332 	.db #0x78	; 120	'x'
      000DED 1F                    2333 	.db #0x1f	; 31
      000DEE 07                    2334 	.db #0x07	; 7
      000DEF 00                    2335 	.db #0x00	; 0
      000DF0 00                    2336 	.db #0x00	; 0
      000DF1 00                    2337 	.db #0x00	; 0
      000DF2 00                    2338 	.db #0x00	; 0
      000DF3 00                    2339 	.db #0x00	; 0
      000DF4 00                    2340 	.db #0x00	; 0
      000DF5 00                    2341 	.db #0x00	; 0
      000DF6 00                    2342 	.db #0x00	; 0
      000DF7 00                    2343 	.db #0x00	; 0
      000DF8 00                    2344 	.db #0x00	; 0
      000DF9 00                    2345 	.db #0x00	; 0
      000DFA 00                    2346 	.db #0x00	; 0
      000DFB 00                    2347 	.db #0x00	; 0
      000DFC 00                    2348 	.db #0x00	; 0
      000DFD 00                    2349 	.db #0x00	; 0
      000DFE 00                    2350 	.db #0x00	; 0
      000DFF 00                    2351 	.db #0x00	; 0
      000E00 00                    2352 	.db #0x00	; 0
      000E01 00                    2353 	.db #0x00	; 0
      000E02 00                    2354 	.db #0x00	; 0
      000E03 00                    2355 	.db #0x00	; 0
      000E04 00                    2356 	.db #0x00	; 0
      000E05 01                    2357 	.db #0x01	; 1
      000E06 03                    2358 	.db #0x03	; 3
      000E07 06                    2359 	.db #0x06	; 6
      000E08 0C                    2360 	.db #0x0c	; 12
      000E09 1C                    2361 	.db #0x1c	; 28
      000E0A 18                    2362 	.db #0x18	; 24
      000E0B 30                    2363 	.db #0x30	; 48	'0'
      000E0C 30                    2364 	.db #0x30	; 48	'0'
      000E0D 60                    2365 	.db #0x60	; 96
      000E0E 60                    2366 	.db #0x60	; 96
      000E0F C0                    2367 	.db #0xc0	; 192
      000E10 C0                    2368 	.db #0xc0	; 192
      000E11 80                    2369 	.db #0x80	; 128
      000E12 80                    2370 	.db #0x80	; 128
      000E13 80                    2371 	.db #0x80	; 128
      000E14 80                    2372 	.db #0x80	; 128
      000E15 80                    2373 	.db #0x80	; 128
      000E16 80                    2374 	.db #0x80	; 128
      000E17 80                    2375 	.db #0x80	; 128
      000E18 80                    2376 	.db #0x80	; 128
      000E19 80                    2377 	.db #0x80	; 128
      000E1A 80                    2378 	.db #0x80	; 128
      000E1B 80                    2379 	.db #0x80	; 128
      000E1C 80                    2380 	.db #0x80	; 128
      000E1D 80                    2381 	.db #0x80	; 128
      000E1E 83                    2382 	.db #0x83	; 131
      000E1F 86                    2383 	.db #0x86	; 134
      000E20 CC                    2384 	.db #0xcc	; 204
      000E21 CC                    2385 	.db #0xcc	; 204
      000E22 66                    2386 	.db #0x66	; 102	'f'
      000E23 62                    2387 	.db #0x62	; 98	'b'
      000E24 33                    2388 	.db #0x33	; 51	'3'
      000E25 31                    2389 	.db #0x31	; 49	'1'
      000E26 18                    2390 	.db #0x18	; 24
      000E27 1C                    2391 	.db #0x1c	; 28
      000E28 0E                    2392 	.db #0x0e	; 14
      000E29 07                    2393 	.db #0x07	; 7
      000E2A 03                    2394 	.db #0x03	; 3
      000E2B 00                    2395 	.db #0x00	; 0
      000E2C 00                    2396 	.db #0x00	; 0
      000E2D 00                    2397 	.db #0x00	; 0
      000E2E 00                    2398 	.db #0x00	; 0
      000E2F 00                    2399 	.db #0x00	; 0
      000E30 00                    2400 	.db #0x00	; 0
      000E31 00                    2401 	.db #0x00	; 0
      000E32 00                    2402 	.db #0x00	; 0
      000E33 00                    2403 	.db #0x00	; 0
      000E34 00                    2404 	.db #0x00	; 0
      000E35 00                    2405 	.db #0x00	; 0
      000E36 00                    2406 	.db #0x00	; 0
      000E37 00                    2407 	.db #0x00	; 0
      000E38 00                    2408 	.db #0x00	; 0
      000E39 00                    2409 	.db #0x00	; 0
      000E3A 00                    2410 	.db #0x00	; 0
      000E3B 00                    2411 	.db #0x00	; 0
      000E3C 00                    2412 	.db #0x00	; 0
      000E3D 00                    2413 	.db #0x00	; 0
      000E3E 00                    2414 	.db #0x00	; 0
      000E3F 00                    2415 	.db #0x00	; 0
      000E40 00                    2416 	.db #0x00	; 0
      000E41 00                    2417 	.db #0x00	; 0
      000E42 00                    2418 	.db #0x00	; 0
      000E43 00                    2419 	.db #0x00	; 0
      000E44 00                    2420 	.db #0x00	; 0
      000E45 00                    2421 	.db #0x00	; 0
      000E46 00                    2422 	.db #0x00	; 0
      000E47 00                    2423 	.db #0x00	; 0
      000E48 00                    2424 	.db #0x00	; 0
      000E49 00                    2425 	.db #0x00	; 0
      000E4A 00                    2426 	.db #0x00	; 0
      000E4B 00                    2427 	.db #0x00	; 0
      000E4C 00                    2428 	.db #0x00	; 0
      000E4D 00                    2429 	.db #0x00	; 0
      000E4E 00                    2430 	.db #0x00	; 0
      000E4F 00                    2431 	.db #0x00	; 0
      000E50 00                    2432 	.db #0x00	; 0
      000E51 00                    2433 	.db #0x00	; 0
      000E52 01                    2434 	.db #0x01	; 1
      000E53 01                    2435 	.db #0x01	; 1
      000E54 01                    2436 	.db #0x01	; 1
      000E55 01                    2437 	.db #0x01	; 1
      000E56 01                    2438 	.db #0x01	; 1
      000E57 01                    2439 	.db #0x01	; 1
      000E58 01                    2440 	.db #0x01	; 1
      000E59 01                    2441 	.db #0x01	; 1
      000E5A 01                    2442 	.db #0x01	; 1
      000E5B 01                    2443 	.db #0x01	; 1
      000E5C 01                    2444 	.db #0x01	; 1
      000E5D 01                    2445 	.db #0x01	; 1
      000E5E 01                    2446 	.db #0x01	; 1
      000E5F 00                    2447 	.db #0x00	; 0
      000E60 00                    2448 	.db #0x00	; 0
      000E61 00                    2449 	.db #0x00	; 0
      000E62 00                    2450 	.db #0x00	; 0
      000E63 00                    2451 	.db #0x00	; 0
      000E64 00                    2452 	.db #0x00	; 0
      000E65 00                    2453 	.db #0x00	; 0
      000E66 00                    2454 	.db #0x00	; 0
      000E67 00                    2455 	.db #0x00	; 0
      000E68 00                    2456 	.db #0x00	; 0
      000E69 00                    2457 	.db #0x00	; 0
      000E6A 00                    2458 	.db #0x00	; 0
      000E6B 00                    2459 	.db #0x00	; 0
      000E6C 00                    2460 	.db #0x00	; 0
      000E6D 00                    2461 	.db #0x00	; 0
      000E6E 00                    2462 	.db #0x00	; 0
      000E6F 00                    2463 	.db #0x00	; 0
      000E70 00                    2464 	.db #0x00	; 0
      000E71 00                    2465 	.db #0x00	; 0
      000E72 00                    2466 	.db #0x00	; 0
      000E73 00                    2467 	.db #0x00	; 0
      000E74                       2468 _button_up_logo:
      000E74 00                    2469 	.db #0x00	; 0
      000E75 00                    2470 	.db #0x00	; 0
      000E76 00                    2471 	.db #0x00	; 0
      000E77 00                    2472 	.db #0x00	; 0
      000E78 08                    2473 	.db #0x08	; 8
      000E79 0C                    2474 	.db #0x0c	; 12
      000E7A 0E                    2475 	.db #0x0e	; 14
      000E7B 0F                    2476 	.db #0x0f	; 15
      000E7C 0F                    2477 	.db #0x0f	; 15
      000E7D 0E                    2478 	.db #0x0e	; 14
      000E7E 0C                    2479 	.db #0x0c	; 12
      000E7F 08                    2480 	.db #0x08	; 8
      000E80 00                    2481 	.db #0x00	; 0
      000E81 00                    2482 	.db #0x00	; 0
      000E82 00                    2483 	.db #0x00	; 0
      000E83 00                    2484 	.db #0x00	; 0
      000E84                       2485 _button_down_logo:
      000E84 00                    2486 	.db #0x00	; 0
      000E85 00                    2487 	.db #0x00	; 0
      000E86 00                    2488 	.db #0x00	; 0
      000E87 00                    2489 	.db #0x00	; 0
      000E88 10                    2490 	.db #0x10	; 16
      000E89 30                    2491 	.db #0x30	; 48	'0'
      000E8A 70                    2492 	.db #0x70	; 112	'p'
      000E8B F0                    2493 	.db #0xf0	; 240
      000E8C F0                    2494 	.db #0xf0	; 240
      000E8D 70                    2495 	.db #0x70	; 112	'p'
      000E8E 30                    2496 	.db #0x30	; 48	'0'
      000E8F 10                    2497 	.db #0x10	; 16
      000E90 00                    2498 	.db #0x00	; 0
      000E91 00                    2499 	.db #0x00	; 0
      000E92 00                    2500 	.db #0x00	; 0
      000E93 00                    2501 	.db #0x00	; 0
      000E94                       2502 _music_logo:
      000E94 00                    2503 	.db #0x00	; 0
      000E95 00                    2504 	.db #0x00	; 0
      000E96 00                    2505 	.db #0x00	; 0
      000E97 00                    2506 	.db #0x00	; 0
      000E98 00                    2507 	.db #0x00	; 0
      000E99 FC                    2508 	.db #0xfc	; 252
      000E9A 1C                    2509 	.db #0x1c	; 28
      000E9B 1C                    2510 	.db #0x1c	; 28
      000E9C 1E                    2511 	.db #0x1e	; 30
      000E9D 0E                    2512 	.db #0x0e	; 14
      000E9E 0E                    2513 	.db #0x0e	; 14
      000E9F 0E                    2514 	.db #0x0e	; 14
      000EA0 0F                    2515 	.db #0x0f	; 15
      000EA1 FE                    2516 	.db #0xfe	; 254
      000EA2 00                    2517 	.db #0x00	; 0
      000EA3 00                    2518 	.db #0x00	; 0
      000EA4 00                    2519 	.db #0x00	; 0
      000EA5 60                    2520 	.db #0x60	; 96
      000EA6 F0                    2521 	.db #0xf0	; 240
      000EA7 F0                    2522 	.db #0xf0	; 240
      000EA8 70                    2523 	.db #0x70	; 112	'p'
      000EA9 7F                    2524 	.db #0x7f	; 127
      000EAA 00                    2525 	.db #0x00	; 0
      000EAB 00                    2526 	.db #0x00	; 0
      000EAC 00                    2527 	.db #0x00	; 0
      000EAD 18                    2528 	.db #0x18	; 24
      000EAE 38                    2529 	.db #0x38	; 56	'8'
      000EAF 38                    2530 	.db #0x38	; 56	'8'
      000EB0 3C                    2531 	.db #0x3c	; 60
      000EB1 1F                    2532 	.db #0x1f	; 31
      000EB2 00                    2533 	.db #0x00	; 0
      000EB3 00                    2534 	.db #0x00	; 0
      000EB4                       2535 _volume_logo:
      000EB4 C0                    2536 	.db #0xc0	; 192
      000EB5 C0                    2537 	.db #0xc0	; 192
      000EB6 E0                    2538 	.db #0xe0	; 224
      000EB7 E0                    2539 	.db #0xe0	; 224
      000EB8 F0                    2540 	.db #0xf0	; 240
      000EB9 F8                    2541 	.db #0xf8	; 248
      000EBA FC                    2542 	.db #0xfc	; 252
      000EBB 00                    2543 	.db #0x00	; 0
      000EBC 00                    2544 	.db #0x00	; 0
      000EBD 20                    2545 	.db #0x20	; 32
      000EBE C8                    2546 	.db #0xc8	; 200
      000EBF 18                    2547 	.db #0x18	; 24
      000EC0 E2                    2548 	.db #0xe2	; 226
      000EC1 06                    2549 	.db #0x06	; 6
      000EC2 18                    2550 	.db #0x18	; 24
      000EC3 E0                    2551 	.db #0xe0	; 224
      000EC4 03                    2552 	.db #0x03	; 3
      000EC5 03                    2553 	.db #0x03	; 3
      000EC6 07                    2554 	.db #0x07	; 7
      000EC7 07                    2555 	.db #0x07	; 7
      000EC8 0F                    2556 	.db #0x0f	; 15
      000EC9 1F                    2557 	.db #0x1f	; 31
      000ECA 3F                    2558 	.db #0x3f	; 63
      000ECB 00                    2559 	.db #0x00	; 0
      000ECC 00                    2560 	.db #0x00	; 0
      000ECD 04                    2561 	.db #0x04	; 4
      000ECE 13                    2562 	.db #0x13	; 19
      000ECF 18                    2563 	.db #0x18	; 24
      000ED0 47                    2564 	.db #0x47	; 71	'G'
      000ED1 60                    2565 	.db #0x60	; 96
      000ED2 18                    2566 	.db #0x18	; 24
      000ED3 07                    2567 	.db #0x07	; 7
      000ED4                       2568 _button_left_logo:
      000ED4 18                    2569 	.db #0x18	; 24
      000ED5 3C                    2570 	.db #0x3c	; 60
      000ED6 7E                    2571 	.db #0x7e	; 126
      000ED7 FF                    2572 	.db #0xff	; 255
      000ED8                       2573 _button_right_logo:
      000ED8 FF                    2574 	.db #0xff	; 255
      000ED9 7E                    2575 	.db #0x7e	; 126
      000EDA 3C                    2576 	.db #0x3c	; 60
      000EDB 18                    2577 	.db #0x18	; 24
                                   2578 	.area CONST   (CODE)
      000EDC                       2579 ___str_0:
      000EDC 41 6E 67 72 79 20 42  2580 	.ascii "Angry Bird!"
             69 72 64 21
      000EE7 00                    2581 	.db 0x00
                                   2582 	.area CSEG    (CODE)
                                   2583 	.area CONST   (CODE)
      000EE8                       2584 ___str_1:
      000EE8 53 65 74 74 69 6E 67  2585 	.ascii "Setting"
      000EEF 00                    2586 	.db 0x00
                                   2587 	.area CSEG    (CODE)
                                   2588 	.area CONST   (CODE)
      000EF0                       2589 ___str_2:
      000EF0 4F 46 46              2590 	.ascii "OFF"
      000EF3 00                    2591 	.db 0x00
                                   2592 	.area CSEG    (CODE)
                                   2593 	.area CONST   (CODE)
      000EF4                       2594 ___str_3:
      000EF4 20 20 20 20 20 20 20  2595 	.ascii "       "
      000EFB 00                    2596 	.db 0x00
                                   2597 	.area CSEG    (CODE)
                                   2598 	.area CONST   (CODE)
      000EFC                       2599 ___str_4:
      000EFC 20 20 20              2600 	.ascii "   "
      000EFF 00                    2601 	.db 0x00
                                   2602 	.area CSEG    (CODE)
                                   2603 	.area CONST   (CODE)
      000F00                       2604 ___str_5:
      000F00 4F 4E                 2605 	.ascii "ON"
      000F02 00                    2606 	.db 0x00
                                   2607 	.area CSEG    (CODE)
                                   2608 	.area CONST   (CODE)
      000F03                       2609 ___str_6:
      000F03 20                    2610 	.ascii " "
      000F04 00                    2611 	.db 0x00
                                   2612 	.area CSEG    (CODE)
                                   2613 	.area CONST   (CODE)
      000F05                       2614 ___str_7:
      000F05 45 61 73 79           2615 	.ascii "Easy"
      000F09 00                    2616 	.db 0x00
                                   2617 	.area CSEG    (CODE)
                                   2618 	.area CONST   (CODE)
      000F0A                       2619 ___str_8:
      000F0A 48 61 72 64           2620 	.ascii "Hard"
      000F0E 00                    2621 	.db 0x00
                                   2622 	.area CSEG    (CODE)
                                   2623 	.area XINIT   (CODE)
                                   2624 	.area CABS    (ABS,CODE)
