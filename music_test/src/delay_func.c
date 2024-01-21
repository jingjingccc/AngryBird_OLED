#include "delay_func.h"

void Delay_Do(void) {
	__asm
	// DO = 1047Hz
	// we require a delay of 0.4776ms for each half period
	// 440 cycles @Fosc = 11.0592MHz
	DELAY_Do:
		MOV R6,#10				// 1 cycle
	
	DELAY_Do_DL1:
		MOV R7,#19				// 1 cycle
	
	STEP1:
		DJNZ R7,STEP1			// 2 cycles
		DJNZ R6,DELAY_Do_DL1	// 2 cycles
		// 410 cycle = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (19 * 2) + 2)
		
		MOV R7,#13				// 1 cycle
	
	STEP2:
		DJNZ R7,STEP2			// 2 cycles
		// 27 cycle = 1 + (R7 * 2) = 1 + (13 * 2)

		RET						// 2 cycles
		// Total = 440 cycles, meeting the required cycle count for generating DO
	
	__endasm;
						
}

void Delay_Re(void) {
	__asm
	// RE = 1175Hz
	// we require a delay of 0.4255ms for each half period
	// 392 cycles @Fosc = 11.0592MHz
	DELAY_RE:
		MOV R6,#10				// 1 cycle
	
	DELAY_RE_DL1:
		MOV R7,#17				// 1 cycle
	
	STEP3:
		DJNZ R7,STEP3			// 2 cycles
		DJNZ R6,DELAY_RE_DL1	// 2 cycles
		// 370 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (17 * 2) + 2)
		
		MOV R7,#9				// 1 cycle
	
	STEP4:
		DJNZ R7,STEP4			// 2 cycles
		// 19 cycles = 1 + (R7 * 2) = 1 + (9 * 2)

		RET						// 2 cycles
		// Total = 392 cycles, meeting the required cycle count for generating RE				

	__endasm;
}

void Delay_Mi(void) {
	__asm
	// MI = 1319Hz
	// we require a delay of 0.3791ms for each half period
	// 349 cycles @Fosc = 11.0592MHz
	DELAY_MI:
		MOV R6,#10				// 1 cycle
	
	DELAY_MI_DL1:
		MOV R7,#15				// 1 cycle
	
	STEP5:
		DJNZ R7,STEP5			// 2 cycles
		DJNZ R6,DELAY_MI_DL1	// 2 cycles
		// 330 cycles = R6 * (1 + (R7 * 2) + 2) = 10 * (1 + (15 * 2) + 2)
		
		MOV R7,#7				// 1 cycle
	
	STEP6:
		DJNZ R7,STEP6			// 2 cycles
		// 15 cycles = 1 + (R7 * 2) = 1 + (7 * 2)

		RET						// 2 cycles
		// Total = 349 cycles, meeting the required cycle count for generating MI

	__endasm;
}

void Delay_Fa(void) {
	__asm
	// Fa = 1397Hz
	// we require a delay of 0.3579ms for each half period
	// 330 cycles @Fosc = 11.0592MHz

	//================//
	DELAY_FA:
		MOV R6,#10				// 1 cycle
	
	DELAY_FA_DL1:
		MOV R7,#13				// 1 cycle
	
	STEP7:
		DJNZ R7,STEP7			// 2 cycles
		DJNZ R6,DELAY_FA_DL1	// 2 cycles
		// 290 cycles = R6 * (1 + (R7 * 2) + 2) 
		
		MOV R7,#18				// 1 cycle
	
	STEP8:
		DJNZ R7,STEP8			// 2 cycles
		// 37 cycles = 1 + (R7 * 2) 

		RET						// 2 cycles
		// Total = 330 cycles

	//================//

	__endasm;
}

void Delay_So(void) {
	__asm
	// SO = 1568Hz
	// we require a delay of 0.3189ms for each half period
	// 294 cycles @Fosc = 11.0592MHz

	//================//
	DELAY_SO:
		MOV R6,#10				// 1 cycle
	
	DELAY_SO_DL1:
		MOV R7,#12 			    // 1 cycle
	
	STEP9:
		DJNZ R7,STEP9			// 2 cycles
		DJNZ R6,DELAY_SO_DL1	// 2 cycles
		// 290 cycles = R6 * (1 + (R7 * 2) + 2) 
		
		MOV R7,#10				// 1 cycle
	
	STEP10:
		DJNZ R7,STEP10			// 2 cycles
		// 17 cycles = 1 + (R7 * 2) 

		RET						// 2 cycles
		// Total = 294 cycles
	//================//

	__endasm;
}

void Delay_La(void) {
	__asm
	// LA = 1760Hz
	// we require a delay of 0.2841ms for each half period
	// 262 cycles @Fosc = 11.0592MHz

	//================//
	DELAY_LA:
		MOV R6,#10				// 1 cycle
	
	DELAY_LA_DL1:
		MOV R7,#11				// 1 cycle
	
	STEP11:
		DJNZ R7,STEP11			// 2 cycles
		DJNZ R6,DELAY_LA_DL1	// 2 cycles
		// 250 cycles = R6 * (1 + (R7 * 2) + 2) 
		
		MOV R7,#4				// 1 cycle
	
	STEP12:
		DJNZ R7,STEP12			// 2 cycles
		// 9 cycles = 1 + (R7 * 2) 

		RET						// 2 cycles
		// Total = 262 cycles
	//================//

	__endasm;
}

void Delay_Si(void) {
	__asm
	// SI = 1976Hz
	// we require a delay of 0.2530ms for each half period
	// 233 cycles @Fosc = 11.0592MHz
	
	//================//
	DELAY_SI:
		MOV R6,#9				// 1 cycle
	
	DELAY_SI_DL1:
		MOV R7,#11				// 1 cycle
	
	STEP13:
		DJNZ R7,STEP13			// 2 cycles
		DJNZ R6,DELAY_SI_DL1	// 2 cycles
		// 225 cycles = R6 * (1 + (R7 * 2) + 2) 
		
		MOV R7,#2				// 1 cycle
	
	STEP14:
		DJNZ R7,STEP14			// 2 cycles
		// 5 cycles = 1 + (R7 * 2) 

		RET						// 2 cycles
		// Total = 232 cycles
	//================//

	__endasm;
}

