#include "8051.h"
#include "param.h"
#include "angry_bird.h"

int main()
{
    // Init I2C for OLED
    // SDA = 1;
    // SCL = 1;
    I2C_Start();

    // set timer and initialize communication port
    TMOD = 0x20; // set timer1 to mode2
    SCON = 0x50; // set serial mode1
    TH1 = 250;   // baudrate = 9600, fosc = 11.0592MHz
    TR1 = 1;     // enable timer = 1
    IE = 0x90;   // enable serial port interrupt

    but_up = 1;
    but_down = 1;
    but_left = 1;
    but_right = 1;
    but_enter = 1;

    OLED_Init();
    angrybird_display_home();

    while (1)
    {
        angrybird_state_machine();
    }
}

void uart_isr(void) __interrupt(4)
{
    if (TI == 1)
        TI = 0;

    if (RI == 1)
    {
        RI = 0;               // refresh RI
        received_data = SBUF; // receive data from SBUF
        received_flag = 1;    // receiving finished
    }
}

// trasmitter
// if (send_flag == 1)
// {
// 	  SBUF = send_data;	// send data to SBUF
// 	  send_flag = 0;
// }

// receiver
// if (received_flag == 1)
// {
//     /* do somthing */
// }