#include "8051.h"
#include "param.h"
#include "angry_bird.h"

int main()
{
    SDA = 1;
    SCL = 1;

    OLED_Init();
    angrybird_display_home();

    while (1)
    {
        angrybird_state_machine();
    }
}