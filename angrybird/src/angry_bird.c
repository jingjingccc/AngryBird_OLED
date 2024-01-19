#include "angry_bird.h"

__code unsigned char const angry_bird_logo[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x80, 0xe0, 0x20,
                                                0x20, 0x60, 0x40, 0x40, 0x80, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x30, 0x78, 0x48, 0xcc, 0x84, 0x84, 0x84, 0x84, 0x84, 0x87, 0xce,
                                                0xcc, 0xd8, 0xf0, 0x60, 0x40, 0x41, 0x43, 0x46, 0xcc, 0xd8, 0xf0, 0xe0, 0x80, 0x80, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x80, 0xe0, 0x60, 0x30, 0x18, 0x0c, 0x06, 0x06, 0x03, 0x03, 0x01, 0x01, 0x01, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x03, 0x03,
                                                0x06, 0x06, 0x0c, 0x18, 0x30, 0xe0, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0xc0, 0xe0, 0xe0, 0xc0, 0xf0, 0xf8, 0xf8, 0xf0, 0xe0, 0x78,
                                                0x1e, 0x07, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x80, 0xf0, 0xf8, 0xf0, 0xf0, 0xf0, 0xe0, 0xe0, 0xe0, 0xc0, 0xc0, 0x80, 0x80, 0x80, 0x80, 0x80,
                                                0xc0, 0xc0, 0xc0, 0xe0, 0xe0, 0xe0, 0xf1, 0xf7, 0xfe, 0xf8, 0xc0, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x03, 0x03, 0x3b, 0x3f, 0x1f, 0x1f, 0xff, 0xff, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x3d, 0x67, 0x81, 0x81, 0x03, 0x03, 0x9f, 0xff, 0x5f, 0x23, 0x3f, 0x3f, 0x7f,
                                                0x7f, 0x9b, 0x83, 0x83, 0x83, 0x63, 0x3f, 0x01, 0x01, 0xc7, 0xff, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x1f, 0x3c,
                                                0xe0, 0xc0, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x1d, 0x37, 0x73, 0x91, 0x30, 0x30, 0x30, 0x20, 0x20, 0x20,
                                                0x20, 0xa0, 0xa1, 0x63, 0x26, 0x3c, 0xb0, 0xe0, 0x78, 0x1f, 0x07, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x01, 0x03, 0x06, 0x0c, 0x1c, 0x18, 0x30, 0x30, 0x60, 0x60, 0xc0, 0xc0, 0x80, 0x80, 0x80,
                                                0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x80, 0x83, 0x86, 0xcc, 0xcc, 0x66, 0x62,
                                                0x33, 0x31, 0x18, 0x1c, 0x0e, 0x07, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01,
                                                0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00,
                                                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};

__code unsigned char const button_up_logo[] = {0x00, 0x00, 0x00, 0x00, 0x08, 0x0c, 0x0e, 0x0f, 0x0f, 0x0e, 0x0c, 0x08, 0x00, 0x00, 0x00, 0x00};
__code unsigned char const button_down_logo[] = {0x00, 0x00, 0x00, 0x00, 0x10, 0x30, 0x70, 0xf0, 0xf0, 0x70, 0x30, 0x10, 0x00, 0x00, 0x00, 0x00};

__code unsigned char const music_logo[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0xfc, 0x1c, 0x1c, 0x1e, 0x0e, 0x0e, 0x0e, 0x0f, 0xfe, 0x00, 0x00,
                                           0x00, 0x60, 0xf0, 0xf0, 0x70, 0x7f, 0x00, 0x00, 0x00, 0x18, 0x38, 0x38, 0x3c, 0x1f, 0x00, 0x00};

__code unsigned char const volume_logo[] = {0xc0, 0xc0, 0xe0, 0xe0, 0xf0, 0xf8, 0xfc, 0x00, 0x00, 0x20, 0xc8, 0x18, 0xe2, 0x06, 0x18, 0xe0,
                                            0x03, 0x03, 0x07, 0x07, 0x0f, 0x1f, 0x3f, 0x00, 0x00, 0x04, 0x13, 0x18, 0x47, 0x60, 0x18, 0x07};

__code unsigned char const button_left_logo[] = {0x18, 0x3c, 0x7e, 0xff};
__code unsigned char const button_right_logo[] = {0xff, 0x7e, 0x3c, 0x18};

__code unsigned char const shooter_logo[] = {0x00, 0xff, 0xff, 0xf6, 0x00, 0xfe, 0xff, 0xfe,
                                             0x00, 0x01, 0x07, 0xff, 0xfe, 0xff, 0x07, 0x00};

__code unsigned char const pig_logo[] = {0xc0, 0x30, 0x38, 0xfc, 0xff, 0xff, 0xfc, 0xfc, 0x3e, 0x3e, 0xf0, 0xc0,
                                         0x01, 0x03, 0x07, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x0f, 0x07, 0x03, 0x01};

__code unsigned char const bird_logo[] = {0x7e, 0xc3, 0x81, 0x81, 0x81, 0x81, 0xc3, 0x7e};

/***************************************************************************************************
                                  Display Page Function
 ***************************************************************************************************/

int row_offset, col_offset;
int selection_list_cur = 1, selection_list_past = 1;
char **selection_list[] = {"Setting", "Easy", "Hard"};

void angrybird_display_home(void)
{
    OLED_Clear();
    row_offset = image_row_cursor;
    col_offset = image_col_cursor;
    for (int j = 0; j < image_cul_size; j++)
    {
        for (int i = 0; i < image_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(angry_bird_logo[image_cul_size * i + j]);
        }
    }

    OLED_SetCursor(game_name_row_cursor, game_name_col_cursor);
    OLED_DisplayString("Angry Bird!");

    row_offset = button_up_row_cursor;
    col_offset = button_up_col_cursor;
    for (int j = 0; j < button_cul_size; j++)
    {
        for (int i = 0; i < button_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(button_up_logo[button_cul_size * i + j]);
        }
    }

    row_offset = button_down_row_cursor;
    col_offset = button_down_col_cursor;
    for (int j = 0; j < button_cul_size; j++)
    {
        for (int i = 0; i < button_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(button_down_logo[button_cul_size * i + j]);
        }
    }

    OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
    OLED_DisplayString(selection_list[selection_list_cur]);
}

int setting_state = 1, setting_state_past = 1;
int music_value = 0, volume_value = 0;
void angrybird_display_setting(void)
{
    // OLED_Clear();

    // OLED_SetCursor(setting_text_row_cursor, setting_text_col_cursor);
    // OLED_DisplayString("Setting");

    // row_offset = music_row_cursor;
    // col_offset = music_col_cursor;
    // for (int j = 0; j < music_cul_size; j++)
    // {
    //     for (int i = 0; i < music_row_size; i++)
    //     {
    //         OLED_SetCursor(row_offset + i, col_offset + j);
    //         oledSendData(music_logo[music_cul_size * i + j]);
    //     }
    // }

    // row_offset = m_button_left_row_cursor;
    // col_offset = m_button_left_col_cursor;
    // for (int j = 0; j < setting_button_cul_size; j++)
    // {
    //     for (int i = 0; i < setting_button_row_size; i++)
    //     {
    //         OLED_SetCursor(row_offset + i, col_offset + j);
    //         oledSendData(button_left_logo[setting_button_cul_size * i + j]);
    //     }
    // }

    // OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
    // OLED_DisplayString("OFF");

    // row_offset = m_button_right_row_cursor;
    // col_offset = m_button_right_col_cursor;
    // for (int j = 0; j < setting_button_cul_size; j++)
    // {
    //     for (int i = 0; i < setting_button_row_size; i++)
    //     {
    //         OLED_SetCursor(row_offset + i, col_offset + j);
    //         oledSendData(button_right_logo[setting_button_cul_size * i + j]);
    //     }
    // }

    // row_offset = volume_row_cursor;
    // col_offset = volume_col_cursor;
    // for (int j = 0; j < volume_cul_size; j++)
    // {
    //     for (int i = 0; i < volume_row_size; i++)
    //     {
    //         OLED_SetCursor(row_offset + i, col_offset + j);
    //         oledSendData(volume_logo[volume_cul_size * i + j]);
    //     }
    // }

    // OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
    // char volume_value_[10];
    // sprintf(volume_value_, "%d", volume_value);
    // OLED_DisplayString(volume_value_);
}

int control_angle, control_strength;
void angrybird_display_game(void)
{
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
    // for (int k = 0; k < bird_total_amount; k++)
    // {
    //     row_offset = 0;
    //     col_offset = bird_remain_col_cursor + k * 8;
    //     for (int j = 0; j < bird_cul_size; j++)
    //     {
    //         for (int i = 0; i < bird_row_size; i++)
    //         {
    //             OLED_SetCursor(row_offset + i, col_offset + j);
    //             oledSendData(bird_logo[bird_cul_size * i + j]);
    //         }
    //     }
    // }

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

/***************************************************************************************************
                                  State Control Function & Local Functions
 ***************************************************************************************************/

int cur_state = 1;
int bird_amt, pig_amt;
void angrybird_state_machine(void)
{
    switch (cur_state)
    {
    case STATE_HOME:
        angrybird_home_state();
        break;

    case STATE_SETTING:
        angrybird_setting_state();
        break;

    case STATE_PLAY_EASY:
    case STATE_PLAY_HARD:
        angrybird_game_state();
        break;
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

void angrybird_home_state(void)
{
    if ((but_up == 0) && (prebut_up == 1))
    {
        delay_ms(10);
        if (but_up == 0)
        {
            selection_list_cur--;
            if (selection_list_cur < 0)
                selection_list_cur = 2;
        }
    }
    if ((but_down == 0) && (prebut_down == 1))
    {
        delay_ms(10);
        if (but_down == 0)
        {
            selection_list_cur++;
            if (selection_list_cur > 2)
                selection_list_cur = 0;
        }
    }
    if ((but_enter == 0) && (prebut_enter == 1))
    {
        delay_ms(10);
        if (but_enter == 0)
        {
            // display new page, then change state to next control mode
            switch (selection_list_cur + 2)
            {
            case STATE_SETTING:
                angrybird_display_setting();
                cur_state = STATE_SETTING;
                break;

            case STATE_PLAY_EASY:
            case STATE_PLAY_HARD:
                bird_amt = bird_total_amount;
                pig_amt = pig_total_amount;
                control_angle = 60;
                control_strength = 3;
                angrybird_display_game();

                break;
            }

            if (selection_list_cur + 2 == STATE_PLAY_EASY)
                cur_state = STATE_PLAY_EASY;
            else if (selection_list_cur + 2 == STATE_PLAY_HARD)
                cur_state = STATE_PLAY_HARD;
        }
    }

    if (selection_list_past != selection_list_cur)
    {
        OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_past]));
        OLED_DisplayString("       ");
        OLED_SetCursor(selection_row_cursor, selection_col_cursor - strlen(selection_list[selection_list_cur]));
        OLED_DisplayString(selection_list[selection_list_cur]);
    }

    selection_list_past = selection_list_cur;
    prebut_enter = but_enter;
    prebut_up = but_up;
    prebut_down = but_down;
    delay_ms(10);
}

void angrybird_setting_state(void)
{
    // if ((but_up == 0) && (prebut_up == 1))
    // {
    //     delay_ms(10);
    //     if (but_up == 0)
    //     {
    //         setting_state--;
    //         if (setting_state < 1)
    //             setting_state = 2;
    //     }
    // }
    // if ((but_down == 0) && (prebut_down == 1))
    // {
    //     delay_ms(10);
    //     if (but_down == 0)
    //     {
    //         setting_state++;
    //         if (setting_state > 2)
    //             setting_state = 1;
    //     }
    // }
    // if ((but_enter == 0) && (prebut_enter == 1))
    // {
    //     delay_ms(10);
    //     if (but_enter == 0)
    //     { // go back to home page
    //         angrybird_display_home();
    //         cur_state = STATE_HOME;
    //     }
    // }
    // if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
    // {
    // // delay_ms(10);
    //     int which = (but_left == 0)? 1:0;

    //     if (but_left == 0 || but_right == 0)
    //     {
    //         if (setting_state == 1)
    //         {
    //             music_value = (music_value - 1 == 0) ? 0 : 1;
    //             OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
    //             OLED_DisplayString("   ");
    //             if (music_value == 0)
    //             {
    //                 OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
    //                 OLED_DisplayString("OFF");
    //             }
    //             else if (music_value == 1)
    //             {
    //                 OLED_SetCursor(music_value_row_cursor, music_value_col_cursor + 1);
    //                 OLED_DisplayString("ON");
    //             }
    //         }
    //         else if (setting_state == 2)
    //         {
    //             if (which == 0)
    //             {
    //                 volume_value--;
    //                 if (volume_value < 0)
    //                     volume_value = 0;
    //             }
    //             else if (which == 1)
    //             {
    //                 volume_value++;
    //                 if (volume_value > 3)
    //                     volume_value = 3;
    //             }
    //             OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
    //             char volume_value_[10];
    //             sprintf(volume_value_, "%d", volume_value);
    //             OLED_DisplayString(volume_value_);
    //         }
    //     }
    // }

    // if (setting_state != setting_state_past)
    // {
    //     // erase and show
    //     switch (setting_state_past)
    //     {
    //     case 1:
    //         OLED_SetCursor(m_button_left_row_cursor, m_button_left_col_cursor);
    //         OLED_DisplayString(" ");
    //         OLED_SetCursor(m_button_right_row_cursor, m_button_right_col_cursor);
    //         OLED_DisplayString(" ");

    //         row_offset = v_button_left_row_cursor;
    //         col_offset = v_button_left_col_cursor;
    //         for (int j = 0; j < setting_button_cul_size; j++)
    //         {
    //             for (int i = 0; i < setting_button_row_size; i++)
    //             {
    //                 OLED_SetCursor(row_offset + i, col_offset + j);
    //                 oledSendData(button_left_logo[setting_button_cul_size * i + j]);
    //             }
    //         }
    //         row_offset = v_button_right_row_cursor;
    //         col_offset = v_button_right_col_cursor;
    //         for (int j = 0; j < setting_button_cul_size; j++)
    //         {
    //             for (int i = 0; i < setting_button_row_size; i++)
    //             {
    //                 OLED_SetCursor(row_offset + i, col_offset + j);
    //                 oledSendData(button_right_logo[setting_button_cul_size * i + j]);
    //             }
    //         }
    //         break;

    //     case 2:
    //         OLED_SetCursor(v_button_left_row_cursor, v_button_left_col_cursor);
    //         OLED_DisplayString(" ");
    //         OLED_SetCursor(v_button_right_row_cursor, v_button_right_col_cursor);
    //         OLED_DisplayString(" ");
    //         row_offset = m_button_left_row_cursor;
    //         col_offset = m_button_left_col_cursor;
    //         for (int j = 0; j < setting_button_cul_size; j++)
    //         {
    //             for (int i = 0; i < setting_button_row_size; i++)
    //             {
    //                 OLED_SetCursor(row_offset + i, col_offset + j);
    //                 oledSendData(button_left_logo[setting_button_cul_size * i + j]);
    //             }
    //         }
    //         row_offset = m_button_right_row_cursor;
    //         col_offset = m_button_right_col_cursor;
    //         for (int j = 0; j < setting_button_cul_size; j++)
    //         {
    //             for (int i = 0; i < setting_button_row_size; i++)
    //             {
    //                 OLED_SetCursor(row_offset + i, col_offset + j);
    //                 oledSendData(button_right_logo[setting_button_cul_size * i + j]);
    //             }
    //         }
    //         break;
    //     }
    // }

    // setting_state_past = setting_state;
    // prebut_enter = but_enter;
    // prebut_up = but_up;
    // prebut_down = but_down;
    // prebut_left = but_left;
    // prebut_right = but_right;
    // delay_ms(10);
}

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
                control_strength--;
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

            // if (cur_state == STATE_PLAY_EASY)
            // {
            // }
            // else if (cur_state == STATE_PLAY_HARD) // with wind
            // {
            // }
        }
    }
    // else
    // {
    //     // draw predict line 4*4
    // }

    //  determine bird and pigs reamining for game state
    if (pig_amt == 0)
    {
        // win: delay(3000)
        // then, go back to home page
        cur_state = STATE_HOME;
        angrybird_display_home();
    }
    else if (bird_amt == 0)
    {
        // game over: delay(3000)
        // then, go back to home page
        cur_state = STATE_HOME;
        angrybird_display_home();
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