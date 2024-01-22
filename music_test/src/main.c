#include "8051.h"
#include "delay_func.h"
#include "delay.h"
#include "oled_i2c.h"
#include "i2c.h"

#define but P2_2
#define scan_cnt 9
int music_on = 0, scan_cnting = 0, stable_but = 0;
int music_play_note = 0, duration_time = 0;

#define NOTE_NUM 25
__code unsigned char music_table[NOTE_NUM] = {2, 4, 3, 1, 2, 2, 4, 3, 1,
                                              6, 4, 5, 3, 4, 2, 3, 1,
                                              6, 4, 5, 3, 4, 2, 3, 1};

__code unsigned char duration_table[NOTE_NUM] = {500, 50, 200, 50, 50, 50, 50, 500, 50,
                                                 500, 100, 500, 500, 200, 200, 200, 100,
                                                 500, 100, 500, 500, 200, 200, 200, 100};

__code unsigned char blanck_table[NOTE_NUM] = {50, 50, 50, 500, 50, 50, 50, 50, 500,
                                               50, 50, 50, 200, 30, 30, 30, 500,
                                               50, 50, 50, 200, 30, 30, 30, 500};

void LookForSound(int now);

void T0_isr(void) __interrupt(1) // Interrupt routine w/ priority 1
{
    // PC jumps to here every 1ms
    TH0 = (65536 - 1000) / 256; // Reset higher 8 bits of Timer 0
    TL0 = (65536 - 1000) % 256; // Reset lower 8 bits of Timer 0

    duration_time++;

    while (duration_time < duration_table[music_play_note])
    {
        duration_time++;
        P3_7 = 1;
        LookForSound(music_table[music_play_note]);
        P3_7 = 0;
        LookForSound(music_table[music_play_note]);
    }
    if (duration_time >= (duration_table[music_play_note] + blanck_table[music_play_note]))
    {
        duration_time = 0;
        music_play_note++;

        if (music_play_note >= NOTE_NUM)
        {
            music_on = 0;
            music_play_note = 0;
        }
    }
}

#define text_row 3
#define text_col 40

int main()
{
    // timer interrupt initialize
    TMOD = 0x01;                // Set Timer 1 to mode 0 & Timer 0 mode 1. (16-bit timer)
    TH0 = (65536 - 1000) / 256; // Load initial higher 8 bits into Timer 0
    TL0 = (65536 - 1000) % 256; // Load initial lower 8 bits into Timer 0
    ET0 = 1;                    // Enable Timer 0 interrupt
    EA = 1;                     // Enable all interrupt
    TR0 = 0;                    // Start Timer 0

    // I2C initialization
    SDA = 1;
    SCL = 1;

    OLED_Init();
    OLED_SetCursor(text_row, text_col);
    OLED_DisplayString("music off!");

    while (1)
    {
        // scanning button input
        if (but == 0 && stable_but == 1)
        {
            if (scan_cnting < scan_cnt)
            {
                scan_cnting++;
                if (scan_cnting == scan_cnt)
                {
                    music_on ^= 1;
                    stable_but = 0;
                }
            }
        }
        else if (but == 1 && stable_but == 0)
        {
            if (scan_cnting < scan_cnt)
            {
                scan_cnting++;
                if (scan_cnting == scan_cnt)
                    stable_but = 1;
            }
        }
        else
            scan_cnting = 0;

        OLED_SetCursor(5, text_col);
        char a[2];
        a[0] = '0' + scan_cnting;
        a[1] = '\0';
        OLED_DisplayString(a);
        OLED_SetCursor(6, text_col);
        a[0] = '0' + stable_but;
        OLED_DisplayString(a);

        // turn on/off timer0
        if (music_on && TR0 == 0)
        {
            TR0 = 1;
            OLED_SetCursor(text_row, text_col);
            OLED_DisplayString("           ");
            OLED_SetCursor(text_row, text_col);
            OLED_DisplayString("music on!");
        }
        else if (!music_on && TR0 == 1)
        {
            TR0 = 0;
            OLED_SetCursor(text_row, text_col);
            OLED_DisplayString("           ");
            OLED_SetCursor(text_row, text_col);
            OLED_DisplayString("music off!");
        }
    }
}

void LookForSound(int now)
{
    switch (now)
    {
    case 1:
        Delay_Do();
        break;

    case 2:
        Delay_Re();
        break;

    case 3:
        Delay_Mi();
        break;

    case 4:
        Delay_Fa();
        break;

    case 5:
        Delay_So();
        break;

    case 6:
        Delay_La();
        break;

    default:
        break;
    }
}
