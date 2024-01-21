#include "delay.h"

void delay_ms(unsigned char input_ms) // ms will save in *dpl
{ 
	input_ms;			// to avoid unrefferenced warning
	// 1ms = 921.6 cycles @Fosc = 11.0592MHz

	__asm				// start of assembly code
	
	DELAY:
		MOV R5,dpl 		// 1 cycle, R5 = input_ms[7:0]
	DL1:
		MOV R6,#2		// 1 cycle
	DL2:
		MOV R7,#228		// 1 cycle
	DL3:
		DJNZ R7,DL3		// 2 cycles
		DJNZ R6,DL2		// 2 cycles
		DJNZ R5,DL1		// 2 cycles
	// total cycle = R5 * (1 + R6 * (1 + (R7 * 2) + 2) + 2) 
	//			   = input_ms * (1 + 2 * (1 + (228 * 2) + 2) + 2)
	//			   = input_ms * 921, where 921 represents the cycle time required for 1ms

	__endasm;			// end of assembly code, don't forget to add ";"
}