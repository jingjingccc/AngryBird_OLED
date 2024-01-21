#include "8051.h"
#include "delay_func.h"
#include "delay.h"

int music_plat_note = 0, duration_time = 0, black_space = 50; // Adjust blank_space as needed

#define NOTE_NUM 17
__code unsigned char music_table[NOTE_NUM] = {2, 4, 3, 1, 2, 2, 4, 3, 1,
                                              6, 4, 5, 3, 4, 2, 3, 1};
__code unsigned char duration_table[NOTE_NUM] = {500, 50, 200, 50, 50, 50, 50, 500, 50,
                                                 500, 50, 150, 50, 100, 100, 50, 100};

__code unsigned char blanck_table[NOTE_NUM] = {50, 50, 50, 50, 50, 50, 50, 50, 50, 200,
                                               50, 50, 50, 50, 30, 30, 30, 30};

void LookForSound(int now);

void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
{
    // PC jumps to here every 1ms
    TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
    TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0

    duration_time++;

    while (duration_time < duration_table[music_plat_note])
    {
        duration_time++;
        P3_7 = 1;
        LookForSound(music_table[music_plat_note]);
        P3_7 = 0;
        LookForSound(music_table[music_plat_note]);
    }
    if (duration_time >= duration_table[music_plat_note] && duration_time < (100 + blanck_table[music_plat_note]))
    {
        P3_7 = 0; // Buzzer OFF or set to desired state
    }
    else if (duration_time >= (duration_table[music_plat_note] + blanck_table[music_plat_note]))
    {
        duration_time = 0;
        music_plat_note++;

        if (music_plat_note == 9)
            black_space = 200;
        else
            black_space = 50;

        if (music_plat_note >= NOTE_NUM)
            TR0 = 0;
    }
}

int main()
{
    // initialize timer interrupt
    TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
    TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
    TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
    ET0 = 1;                    // Enable Timer 0 interrupt
    EA = 1;                     // Enable all interrupt
    TR0 = 1;                    // Start Timer 0

    while (1)
    {
        /* code */
    }
}

void LookForSound(int now)
{
    P1 = 0xff;
    switch (now)
    {
    case 1:
        Delay_Do();
        P1_7 = 0;
        break;

    case 2:
        Delay_Re();
        P1_6 = 0;
        break;

    case 3:
        Delay_Mi();
        P1_5 = 0;
        break;

    case 4:
        Delay_Fa();
        P1_4 = 0;
        break;

    case 5:
        Delay_So();
        P1_3 = 0;
        break;

    case 6:
        Delay_La();
        P1_2 = 0;
        break;

    default:
        break;
    }
}
