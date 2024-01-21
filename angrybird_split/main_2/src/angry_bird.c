#include "angry_bird.h"

__code unsigned char const shooter_logo[] = {0x00, 0xff, 0xff, 0xf6, 0x00, 0xfe, 0xff, 0xfe,
                                             0x00, 0x01, 0x07, 0xff, 0xfe, 0xff, 0x07, 0x00};

__code unsigned char const pig_logo[] = {0xc0, 0x30, 0x38, 0xfc, 0xff, 0xff, 0xfc, 0xfc, 0x3e, 0x3e, 0xf0, 0xc0,
                                         0x01, 0x03, 0x07, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x07, 0x03, 0x01};

__code unsigned char const bird_logo[] = {0x7e, 0xc3, 0x81, 0x81, 0x81, 0x81, 0xc3, 0x7e};

__code unsigned char const win_page[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x1f, 0xff, 0xff, 0xf0, 0xe0,
                                         0xfc, 0xff, 0x1f, 0x3f, 0xff, 0xf8, 0xe0, 0xfc, 0xff, 0x7f, 0x07, 0x00, 0x00, 0xff, 0xff, 0xff,
                                         0x00, 0x00, 0x00, 0xff, 0xff, 0xff, 0xff, 0x3e, 0x7c, 0xf0, 0xe0, 0xff, 0xff, 0xff, 0xff, 0x00,
                                         0x00, 0x0f, 0x7f, 0x7f, 0x1f, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                         0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x07, 0x07, 0x07,
                                         0x07, 0x00, 0x00, 0x00, 0x03, 0x07, 0x07, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x07, 0x07, 0x07,
                                         0x00, 0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0x00, 0x00, 0x00, 0x03, 0x07, 0x07, 0x07, 0x07, 0x00,
                                         0x00, 0x07, 0x07, 0x07, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__code unsigned char const over_page[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xfc, 0xfe, 0xff, 0x07, 0x03, 0x03,
                                          0x07, 0xdf, 0xfe, 0xfe, 0xf8, 0x03, 0x0f, 0x7f, 0xfe, 0xf0, 0x80, 0xe0, 0xfc, 0xff, 0x1f, 0x07,
                                          0x00, 0x00, 0xff, 0xff, 0xff, 0x33, 0x33, 0x33, 0x33, 0x33, 0x03, 0x00, 0xfe, 0xff, 0xff, 0xff,
                                          0x73, 0xf3, 0xf7, 0xff, 0xbf, 0x1e, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                          0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x03, 0x07, 0x07, 0x07, 0x07,
                                          0x07, 0x07, 0x03, 0x01, 0x00, 0x00, 0x00, 0x00, 0x03, 0x07, 0x07, 0x07, 0x07, 0x00, 0x00, 0x00,
                                          0x00, 0x00, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x07, 0x00, 0x03, 0x07, 0x07, 0x07,
                                          0x00, 0x00, 0x01, 0x07, 0x07, 0x07, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

/******************************************** UART ************************************************/

unsigned char send_data;
unsigned char send_flag;
unsigned char received_data;
unsigned char received_flag;

/***************************************************************************************************
                                  Display Page Function
 ***************************************************************************************************/

int row_offset, col_offset;

int bird_amt, pig_amt;
int control_angle, control_strength;
void angrybird_display_game(void)
{
    bird_amt = bird_total_amount;
    pig_amt = pig_total_amount;
    control_angle = 60;
    control_strength = 3;

    OLED_Clear();

    char control_strength_[2], control_angle_[5];
    // display control value
    control_strength_[0] = '0' + control_strength;
    control_strength_[1] = '\0';

    int i = 0;
    if (control_angle < 0)
        control_angle_[i++] = '-';
    int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
    if (angle_ % 100 / 10 != 0)
        control_angle_[i++] = '0' + angle_ % 100 / 10;
    control_angle_[i++] = '0' + angle_ % 10;
    control_angle_[i++] = '\0';

    OLED_SetCursor(strength_text_row_cursor, 0);
    OLED_DisplayString("S ");
    OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
    OLED_DisplayString(control_strength_);

    OLED_SetCursor(strength_text_row_cursor, 20);
    OLED_DisplayString("A ");
    OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
    OLED_DisplayString(control_angle_);

    // display bird remaining amount
    for (int k = 0; k < bird_total_amount; k++)
    {
        row_offset = 0;
        col_offset = bird_remain_col_cursor + k * 8;
        for (int j = 0; j < bird_cul_size; j++)
        {
            for (int i = 0; i < bird_row_size; i++)
            {
                OLED_SetCursor(row_offset + i, col_offset + j);
                oledSendData(bird_logo[bird_cul_size * i + j]);
            }
        }
    }

    // display shooter
    row_offset = shoot_row_cursor;
    col_offset = shoot_col_cursor;
    for (int j = 0; j < shoot_cul_size; j++)
    {
        for (int i = 0; i < shoot_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(shooter_logo[shoot_cul_size * i + j]);
        }
    }

    // display bird
    row_offset = bird_init_row_cursor;
    col_offset = bird_init_col_cursor;
    for (int j = 0; j < bird_cul_size; j++)
    {
        for (int i = 0; i < bird_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(bird_logo[bird_cul_size * i + j]);
        }
    }

    // display three pigs
    // int pig_row[3] = {pig1_row_cursor, pig2_row_cursor, pig3_row_cursor};
    // int pig_col[3] = {pig1_col_cursor, pig2_col_cursor, pig3_col_cursor};
    // for (int k = 0; k < pig_total_amount; k++)
    // {
    //     row_offset = pig_row[k];
    //     col_offset = pig_col[k];
    //     for (int j = 0; j < pig_cul_size; j++)
    //     {
    //         for (int i = 0; i < pig_row_size; i++)
    //         {
    //             OLED_SetCursor(row_offset + i, col_offset + j);
    //             oledSendData(pig_logo[pig_cul_size * i + j]);
    //         }
    //     }
    // }

    // test for one pig
    row_offset = pig1_row_cursor;
    col_offset = pig1_col_cursor;
    for (int j = 0; j < pig_cul_size; j++)
    {
        for (int i = 0; i < pig_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(pig_logo[pig_cul_size * i + j]);
        }
    }
}

int led_cur_state = 1;
// void display_for_OLED_debug()
// {
//     if (led_cur_state)
//     {
//         OLED_SetCursor(3, 40);
//         OLED_DisplayString("             ");
//     }
//     else
//     {
//         OLED_SetCursor(3, 40);
//         OLED_DisplayString("Waiting .... ");
//     }
// }
/***************************************************************************************************
                                  State Control Function & Local Functions
 ***************************************************************************************************/

int cur_state = 0;
void angrybird_state_machine(void)
{
    switch (cur_state)
    {
    case STATE_PLAY_EASY:
    case STATE_PLAY_HARD:
        P1_0 = 0;
        angrybird_game_state();
        break;

    default:
        if (led_cur_state == 0)
            led_cur_state = 1;
        else if (led_cur_state == 1)
            led_cur_state = 0;
        P1_0 = led_cur_state;
        // display_for_OLED_debug();
        delay_ms(500);
        break;
    }

    // if receive game state singal, start I2C
    if (received_flag == 1)
    {
        cur_state = received_data;
        received_flag = 0;
        P1_0 = 0;

        I2C_Start();
        OLED_Init();

        // display game page
        if (cur_state == STATE_PLAY_EASY || cur_state == STATE_PLAY_HARD)
            angrybird_display_game();
    }

    // if ready to send a home state signal, stop signal
    if (send_flag == 1)
    {
        I2C_Stop();
        SBUF = send_data; // send data to SBUF
        send_flag = 0;
    }

    // =========================== TODO ===========================
    // if music or volume is not zero or off, play music and volume
    // ============================================================
}

unsigned int prebut_up = 0;
unsigned int prebut_down = 0;
unsigned int prebut_left = 0;
unsigned int prebut_right = 0;
unsigned int prebut_enter = 0;

float const sine_table[10] = {0, 0.1736, 0.342, 0.5, 0.6428, 0.766, 0.866, 0.9397, 0.9848, 1.0};

void angrybird_game_state(void)
{
    // up, down for intensity control
    if (((but_up == 0) && (prebut_up == 1)) || ((but_down == 0) && (prebut_down == 1)))
    {
        // delay_ms(10);
        int which = (but_up == 0) ? 1 : 0;
        if (but_up == 0 || but_down == 0)
        {
            if (which == 1)
            {
                control_angle += 10;
                if (control_angle > 90)
                    control_angle = 90;
            }
            else
            {
                control_angle -= 10;
                if (control_angle < 0)
                    control_angle = 0;
            }
            char control_angle_[5];
            // display control value

            int i = 0;
            if (control_angle < 0)
                control_angle_[i++] = '-';
            int angle_ = (control_angle >= 0) ? control_angle : -1 * control_angle;
            if (angle_ % 100 / 10 != 0)
                control_angle_[i++] = '0' + angle_ % 100 / 10;
            control_angle_[i++] = '0' + angle_ % 10;
            control_angle_[i++] = '\0';

            OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
            OLED_DisplayString("   ");
            OLED_SetCursor(angle_text_row_cursor, angle_text_col_cursor);
            OLED_DisplayString(control_angle_);
        }
    }

    // left, right for angel control
    if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
    {
        // delay_ms(10);
        int which = (but_left == 0) ? 1 : 0;
        if (but_left == 0 || but_right == 0)
        {
            if (which == 1)
            {
                control_strength--;
                if (control_strength < 1)
                    control_strength = 1;
            }
            else
            {
                control_strength++;
                if (control_strength > 3)
                    control_strength = 3;
            }

            char control_strength_[2];
            // display control value
            control_strength_[0] = '0' + control_strength;
            control_strength_[1] = '\0';

            OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
            OLED_DisplayString(" ");
            OLED_SetCursor(strength_text_row_cursor, strength_text_col_cursor);
            OLED_DisplayString(control_strength_);
        }
    }

    // shoot
    if ((but_enter == 0) && (prebut_enter == 1))
    {
        delay_ms(10);
        if (but_enter == 0)
        {
            bird_amt--;
            // eliminate one bird
            row_offset = 0;
            col_offset = bird_remain_col_cursor + (bird_total_amount - bird_amt - 1) * 8;
            for (int j = 0; j < bird_cul_size; j++)
            {
                for (int i = 0; i < bird_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(0x00);
                }
            }

            // diplay bird locus
            // if pig hit(pig_amt--), eliminate the pig

            float delta_y = (control_angle_value) / (SQRT_2 / 2) * getsine(control_angle);
            float delta_x = control_strength_value * control_strength - delta_y * 4;
            float peak_x = bird_init_col_cursor + delta_x;
            float peak_y = bird_init_row_cursor - delta_y;
            float a = delta_y / pow_2(delta_x);

            row_offset = bird_init_row_cursor;
            col_offset = bird_init_col_cursor;
            for (int j = 0; j < bird_cul_size; j++)
            {
                for (int i = 0; i < bird_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(0x00);
                }
            }

            for (int i = 16; i <= 119; i += 8)
            {
                int output_row = a * pow_2(i - peak_x) + peak_y;

                if (1 <= output_row && output_row <= 7)
                {
                    // display bird
                    row_offset = output_row;
                    col_offset = bird_init_col_cursor + i;
                    for (int j = 0; j < bird_cul_size; j++)
                    {
                        for (int i = 0; i < bird_row_size; i++)
                        {
                            OLED_SetCursor(row_offset + i, col_offset + j);
                            oledSendData(bird_logo[bird_cul_size * i + j]);
                        }
                    }
                    delay_ms(400);

                    // make sure at this position pig is hit or not
                    // int pig_row[3] = {pig1_row_cursor, pig2_row_cursor, pig3_row_cursor};
                    // int pig_col[3] = {pig1_col_cursor, pig2_col_cursor, pig3_col_cursor};
                    // for (int k = 0; k < pig_total_amount; k++)
                    // {
                    //     if (pig_row[k] <= row_offset && row_offset <= pig_row[k] + 1 && pig_col[k] - 8 < col_offset && col_offset < pig_col[k] + 12)
                    //     {
                    //         pig_amt--;
                    //         row_offset = pig_row[k];
                    //         col_offset = pig_col[k];
                    //         for (int j = 0; j < pig_cul_size; j++)
                    //         {
                    //             for (int i = 0; i < pig_row_size; i++)
                    //             {
                    //                 OLED_SetCursor(row_offset + i, col_offset + j);
                    //                 oledSendData(pig_logo[pig_cul_size * i + j]);
                    //             }
                    //         }
                    //     }
                    // }

                    // test
                    if (pig1_row_cursor <= row_offset && row_offset <= pig1_row_cursor + 1 && pig1_col_cursor - 8 < col_offset && col_offset < pig1_col_cursor + 12)
                    {
                        pig_amt--;
                        row_offset = pig1_row_cursor;
                        col_offset = pig1_col_cursor;
                        for (int j = 0; j < pig_cul_size; j++)
                        {
                            for (int i = 0; i < pig_row_size; i++)
                            {
                                OLED_SetCursor(row_offset + i, col_offset + j);
                                oledSendData(0x00);
                            }
                        }
                    }

                    row_offset = output_row;
                    col_offset = bird_init_col_cursor + i;
                    for (int j = 0; j < bird_cul_size; j++)
                    {
                        for (int i = 0; i < bird_row_size; i++)
                        {
                            OLED_SetCursor(row_offset + i, col_offset + j);
                            oledSendData(0x00);
                        }
                    }
                }
            }

            // display a new one at init position
            row_offset = bird_init_row_cursor;
            col_offset = bird_init_col_cursor;
            for (int j = 0; j < bird_cul_size; j++)
            {
                for (int i = 0; i < bird_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(bird_logo[bird_cul_size * i + j]);
                }
            }
        }
    }
    // else if (cur_state == STATE_PLAY_EASY)
    // {
    //      with predict line: write the function draw line
    // }

    //  determine bird and pigs reamining for game state
    if (pig_amt == 0 || bird_amt == 0)
    {
        if (pig_amt == 0)
        {
            OLED_SetCursor(win_row_cursor, win_col_cursor);
            for (int j = 0; j < win_cul_size; j++)
            {
                for (int i = 0; i < win_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(win_page[win_cul_size * i + j]);
                }
            }
        }
        else if (bird_amt == 0)
        {
            OLED_SetCursor(over_row_cursor, over_col_cursor);
            for (int j = 0; j < over_cul_size; j++)
            {
                for (int i = 0; i < over_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(over_page[over_cul_size * i + j]);
                }
            }
        }
        delay_ms(1000);
        cur_state = STATE_HOME;
        // send uart to another page
        send_data = cur_state;
        send_flag = 1;
        // angrybird_display_home();
    }

    prebut_enter = but_enter;
    prebut_up = but_up;
    prebut_down = but_down;
    prebut_left = but_left;
    prebut_right = but_right;
    delay_ms(10);
}

/***************************************************************************************************
                                             Math Function
 ***************************************************************************************************/

float getsine(int angle)
{
    int index = (angle > 0) ? (angle / 10) : (-angle / 10);
    return (angle > 0) ? sine_table[index] : -sine_table[index];
}
float getcosine(int angle)
{
    return getsine((angle > 0) ? -angle + 90 : angle + 90);
}
float pow_2(float n)
{
    return n * n;
}

// int custom_sqrt(int x)
// {
//     int result = 0, bit = 1 << 14; // Start with the highest bit for 16-bit numbers

//     while (bit > x)
//         bit >>= 2; // Shift right by 2 bits

//     while (bit != 0)
//     {
//         if (x >= result + bit)
//         {
//             x -= result + bit;
//             result += bit << 1; // Add the bit to the result
//         }
//         result >>= 1; // Shift the result right by 1 bit
//         bit >>= 2;    // Shift the bit right by 2 bits
//     }

//     return result;
// }

// float custom_sin(int angle)
// {
//     float radius = angle * M_PI / 180;
//     while (radius < -M_PI)
//         radius += M_PI_2;
//     while (radius > M_PI)
//         radius -= M_PI_2;

//     float result = 1.0, term = 1.0, sign = 1.0;
//     for (int i = 2; i <= 6; i += 2)
//     {
//         term *= (radius * radius / (i * (i - 1)));
//         result += sign * term;
//         sign = -sign;
//     }

//     return result;
// }

// float custom_cos(int angle)
// {
//     float radius = angle * M_PI / 180;
//     while (radius < -M_PI)
//         radius += M_PI_2;
//     while (radius > M_PI)
//         radius -= M_PI_2;

//     float result = 1.0, term = 1.0, sign = -1.0;
//     for (int i = 3; i <= 7; i += 2)
//     {
//         term *= (radius * radius / (i * (i - 1)));
//         result += sign * term;
//         sign = -sign;
//     }

//     return result;
// }