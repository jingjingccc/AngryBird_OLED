                                      1 ;--------------------------------------------------------
                                      2 ; File Created by SDCC : free open source ISO C Compiler 
                                      3 ; Version 4.3.2 #14362 (MINGW64)
                                      4 ;--------------------------------------------------------
                                      5 	.module delay_func
                                      6 	.optsdcc -mmcs51 --model-small
                                      7 	
                                      8 ;--------------------------------------------------------
                                      9 ; Public variables in this module
                                     10 ;--------------------------------------------------------
                                     11 	.globl _Delay_Do
                                     12 	.globl _Delay_Re
                                     13 	.globl _Delay_Mi
                                     14 	.globl _Delay_Fa
                                     15 	.globl _Delay_So
                                     16 	.globl _Delay_La
                                     17 	.globl _Delay_Si
                                     18 ;--------------------------------------------------------
                                     19 ; special function registers
                                     20 ;--------------------------------------------------------
                                     21 	.area RSEG    (ABS,DATA)
      000000                         22 	.org 0x0000
                                     23 ;--------------------------------------------------------
                                     24 ; special function bits
                                     25 ;--------------------------------------------------------
                                     26 	.area RSEG    (ABS,DATA)
      000000                         27 	.org 0x0000
                                     28 ;--------------------------------------------------------
                                     29 ; overlayable register banks
                                     30 ;--------------------------------------------------------
                                     31 	.area REG_BANK_0	(REL,OVR,DATA)
      000000                         32 	.ds 8
                                     33 ;--------------------------------------------------------
                                     34 ; internal ram data
                                     35 ;--------------------------------------------------------
                                     36 	.area DSEG    (DATA)
                                     37 ;--------------------------------------------------------
                                     38 ; overlayable items in internal ram
                                     39 ;--------------------------------------------------------
                                     40 ;--------------------------------------------------------
                                     41 ; indirectly addressable internal ram data
                                     42 ;--------------------------------------------------------
                                     43 	.area ISEG    (DATA)
                                     44 ;--------------------------------------------------------
                                     45 ; absolute internal ram data
                                     46 ;--------------------------------------------------------
                                     47 	.area IABS    (ABS,DATA)
                                     48 	.area IABS    (ABS,DATA)
                                     49 ;--------------------------------------------------------
                                     50 ; bit data
                                     51 ;--------------------------------------------------------
                                     52 	.area BSEG    (BIT)
                                     53 ;--------------------------------------------------------
                                     54 ; paged external ram data
                                     55 ;--------------------------------------------------------
                                     56 	.area PSEG    (PAG,XDATA)
                                     57 ;--------------------------------------------------------
                                     58 ; uninitialized external ram data
                                     59 ;--------------------------------------------------------
                                     60 	.area XSEG    (XDATA)
                                     61 ;--------------------------------------------------------
                                     62 ; absolute external ram data
                                     63 ;--------------------------------------------------------
                                     64 	.area XABS    (ABS,XDATA)
                                     65 ;--------------------------------------------------------
                                     66 ; initialized external ram data
                                     67 ;--------------------------------------------------------
                                     68 	.area XISEG   (XDATA)
                                     69 	.area HOME    (CODE)
                                     70 	.area GSINIT0 (CODE)
                                     71 	.area GSINIT1 (CODE)
                                     72 	.area GSINIT2 (CODE)
                                     73 	.area GSINIT3 (CODE)
                                     74 	.area GSINIT4 (CODE)
                                     75 	.area GSINIT5 (CODE)
                                     76 	.area GSINIT  (CODE)
                                     77 	.area GSFINAL (CODE)
                                     78 	.area CSEG    (CODE)
                                     79 ;--------------------------------------------------------
                                     80 ; global & static initialisations
                                     81 ;--------------------------------------------------------
                                     82 	.area HOME    (CODE)
                                     83 	.area GSINIT  (CODE)
                                     84 	.area GSFINAL (CODE)
                                     85 	.area GSINIT  (CODE)
                                     86 ;--------------------------------------------------------
                                     87 ; Home
                                     88 ;--------------------------------------------------------
                                     89 	.area HOME    (CODE)
                                     90 	.area HOME    (CODE)
                                     91 ;--------------------------------------------------------
                                     92 ; code
                                     93 ;--------------------------------------------------------
                                     94 	.area CSEG    (CODE)
                                     95 ;------------------------------------------------------------
                                     96 ;Allocation info for local variables in function 'Delay_Do'
                                     97 ;------------------------------------------------------------
                                     98 ;	./src/delay_func.c:3: void Delay_Do(void) {
                                     99 ;	-----------------------------------------
                                    100 ;	 function Delay_Do
                                    101 ;	-----------------------------------------
      00023D                        102 _Delay_Do:
                           000007   103 	ar7 = 0x07
                           000006   104 	ar6 = 0x06
                           000005   105 	ar5 = 0x05
                           000004   106 	ar4 = 0x04
                           000003   107 	ar3 = 0x03
                           000002   108 	ar2 = 0x02
                           000001   109 	ar1 = 0x01
                           000000   110 	ar0 = 0x00
                                    111 ;	./src/delay_func.c:28: __endasm;
      00023D                        112 DELAY_Do:
      00023D 7E 0A            [12]  113 	MOV	R6,#10
      00023F                        114 DELAY_Do_DL1:
      00023F 7F 13            [12]  115 	MOV	R7,#19
      000241                        116 STEP1:
      000241 DF FE            [24]  117 	DJNZ	R7,STEP1
      000243 DE FA            [24]  118 	DJNZ	R6,DELAY_Do_DL1
      000245 7F 0D            [12]  119 	MOV	R7,#13
      000247                        120 STEP2:
      000247 DF FE            [24]  121 	DJNZ	R7,STEP2
      000249 22               [24]  122 	RET
                                    123 ;	./src/delay_func.c:30: }
      00024A 22               [24]  124 	ret
                                    125 ;------------------------------------------------------------
                                    126 ;Allocation info for local variables in function 'Delay_Re'
                                    127 ;------------------------------------------------------------
                                    128 ;	./src/delay_func.c:32: void Delay_Re(void) {
                                    129 ;	-----------------------------------------
                                    130 ;	 function Delay_Re
                                    131 ;	-----------------------------------------
      00024B                        132 _Delay_Re:
                                    133 ;	./src/delay_func.c:57: __endasm;
      00024B                        134 DELAY_RE:
      00024B 7E 0A            [12]  135 	MOV	R6,#10
      00024D                        136 DELAY_RE_DL1:
      00024D 7F 11            [12]  137 	MOV	R7,#17
      00024F                        138 STEP3:
      00024F DF FE            [24]  139 	DJNZ	R7,STEP3
      000251 DE FA            [24]  140 	DJNZ	R6,DELAY_RE_DL1
      000253 7F 09            [12]  141 	MOV	R7,#9
      000255                        142 STEP4:
      000255 DF FE            [24]  143 	DJNZ	R7,STEP4
      000257 22               [24]  144 	RET
                                    145 ;	./src/delay_func.c:58: }
      000258 22               [24]  146 	ret
                                    147 ;------------------------------------------------------------
                                    148 ;Allocation info for local variables in function 'Delay_Mi'
                                    149 ;------------------------------------------------------------
                                    150 ;	./src/delay_func.c:60: void Delay_Mi(void) {
                                    151 ;	-----------------------------------------
                                    152 ;	 function Delay_Mi
                                    153 ;	-----------------------------------------
      000259                        154 _Delay_Mi:
                                    155 ;	./src/delay_func.c:85: __endasm;
      000259                        156 DELAY_MI:
      000259 7E 0A            [12]  157 	MOV	R6,#10
      00025B                        158 DELAY_MI_DL1:
      00025B 7F 0F            [12]  159 	MOV	R7,#15
      00025D                        160 STEP5:
      00025D DF FE            [24]  161 	DJNZ	R7,STEP5
      00025F DE FA            [24]  162 	DJNZ	R6,DELAY_MI_DL1
      000261 7F 07            [12]  163 	MOV	R7,#7
      000263                        164 STEP6:
      000263 DF FE            [24]  165 	DJNZ	R7,STEP6
      000265 22               [24]  166 	RET
                                    167 ;	./src/delay_func.c:86: }
      000266 22               [24]  168 	ret
                                    169 ;------------------------------------------------------------
                                    170 ;Allocation info for local variables in function 'Delay_Fa'
                                    171 ;------------------------------------------------------------
                                    172 ;	./src/delay_func.c:88: void Delay_Fa(void) {
                                    173 ;	-----------------------------------------
                                    174 ;	 function Delay_Fa
                                    175 ;	-----------------------------------------
      000267                        176 _Delay_Fa:
                                    177 ;	./src/delay_func.c:117: __endasm;
      000267                        178 DELAY_FA:
      000267 7E 0A            [12]  179 	MOV	R6,#10
      000269                        180 DELAY_FA_DL1:
      000269 7F 0D            [12]  181 	MOV	R7,#13
      00026B                        182 STEP7:
      00026B DF FE            [24]  183 	DJNZ	R7,STEP7
      00026D DE FA            [24]  184 	DJNZ	R6,DELAY_FA_DL1
      00026F 7F 12            [12]  185 	MOV	R7,#18
      000271                        186 STEP8:
      000271 DF FE            [24]  187 	DJNZ	R7,STEP8
      000273 22               [24]  188 	RET
                                    189 ;	./src/delay_func.c:118: }
      000274 22               [24]  190 	ret
                                    191 ;------------------------------------------------------------
                                    192 ;Allocation info for local variables in function 'Delay_So'
                                    193 ;------------------------------------------------------------
                                    194 ;	./src/delay_func.c:120: void Delay_So(void) {
                                    195 ;	-----------------------------------------
                                    196 ;	 function Delay_So
                                    197 ;	-----------------------------------------
      000275                        198 _Delay_So:
                                    199 ;	./src/delay_func.c:148: __endasm;
      000275                        200 DELAY_SO:
      000275 7E 0A            [12]  201 	MOV	R6,#10
      000277                        202 DELAY_SO_DL1:
      000277 7F 0C            [12]  203 	MOV	R7,#12
      000279                        204 STEP9:
      000279 DF FE            [24]  205 	DJNZ	R7,STEP9
      00027B DE FA            [24]  206 	DJNZ	R6,DELAY_SO_DL1
      00027D 7F 0A            [12]  207 	MOV	R7,#10
      00027F                        208 STEP10:
      00027F DF FE            [24]  209 	DJNZ	R7,STEP10
      000281 22               [24]  210 	RET
                                    211 ;	./src/delay_func.c:149: }
      000282 22               [24]  212 	ret
                                    213 ;------------------------------------------------------------
                                    214 ;Allocation info for local variables in function 'Delay_La'
                                    215 ;------------------------------------------------------------
                                    216 ;	./src/delay_func.c:151: void Delay_La(void) {
                                    217 ;	-----------------------------------------
                                    218 ;	 function Delay_La
                                    219 ;	-----------------------------------------
      000283                        220 _Delay_La:
                                    221 ;	./src/delay_func.c:179: __endasm;
      000283                        222 DELAY_LA:
      000283 7E 0A            [12]  223 	MOV	R6,#10
      000285                        224 DELAY_LA_DL1:
      000285 7F 0B            [12]  225 	MOV	R7,#11
      000287                        226 STEP11:
      000287 DF FE            [24]  227 	DJNZ	R7,STEP11
      000289 DE FA            [24]  228 	DJNZ	R6,DELAY_LA_DL1
      00028B 7F 04            [12]  229 	MOV	R7,#4
      00028D                        230 STEP12:
      00028D DF FE            [24]  231 	DJNZ	R7,STEP12
      00028F 22               [24]  232 	RET
                                    233 ;	./src/delay_func.c:180: }
      000290 22               [24]  234 	ret
                                    235 ;------------------------------------------------------------
                                    236 ;Allocation info for local variables in function 'Delay_Si'
                                    237 ;------------------------------------------------------------
                                    238 ;	./src/delay_func.c:182: void Delay_Si(void) {
                                    239 ;	-----------------------------------------
                                    240 ;	 function Delay_Si
                                    241 ;	-----------------------------------------
      000291                        242 _Delay_Si:
                                    243 ;	./src/delay_func.c:210: __endasm;
      000291                        244 DELAY_SI:
      000291 7E 09            [12]  245 	MOV	R6,#9
      000293                        246 DELAY_SI_DL1:
      000293 7F 0B            [12]  247 	MOV	R7,#11
      000295                        248 STEP13:
      000295 DF FE            [24]  249 	DJNZ	R7,STEP13
      000297 DE FA            [24]  250 	DJNZ	R6,DELAY_SI_DL1
      000299 7F 02            [12]  251 	MOV	R7,#2
      00029B                        252 STEP14:
      00029B DF FE            [24]  253 	DJNZ	R7,STEP14
      00029D 22               [24]  254 	RET
                                    255 ;	./src/delay_func.c:211: }
      00029E 22               [24]  256 	ret
                                    257 	.area CSEG    (CODE)
                                    258 	.area CONST   (CODE)
                                    259 	.area XINIT   (CODE)
                                    260 	.area CABS    (ABS,CODE)
