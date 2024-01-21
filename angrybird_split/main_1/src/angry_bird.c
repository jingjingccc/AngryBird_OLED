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

/***************************************************************************************************
                                            UART
 ***************************************************************************************************/

unsigned char send_data;
unsigned char send_flag;
unsigned char received_data;
unsigned char received_flag;

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

    if (selection_list_cur == 0)
        OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
    else
        OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
    OLED_DisplayString(selection_list[selection_list_cur]);
}

int setting_state = 1, setting_state_past = 1;
int music_value = 0, volume_value = 0;
void angrybird_display_setting(void)
{
    OLED_Clear();

    OLED_SetCursor(setting_text_row_cursor, setting_text_col_cursor);
    OLED_DisplayString("Setting");

    row_offset = music_row_cursor;
    col_offset = music_col_cursor;
    for (int j = 0; j < music_cul_size; j++)
    {
        for (int i = 0; i < music_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(music_logo[music_cul_size * i + j]);
        }
    }

    row_offset = m_button_left_row_cursor;
    col_offset = m_button_left_col_cursor;
    for (int j = 0; j < setting_button_cul_size; j++)
    {
        for (int i = 0; i < setting_button_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(button_left_logo[setting_button_cul_size * i + j]);
        }
    }

    OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
    OLED_DisplayString("OFF");

    row_offset = m_button_right_row_cursor;
    col_offset = m_button_right_col_cursor;
    for (int j = 0; j < setting_button_cul_size; j++)
    {
        for (int i = 0; i < setting_button_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(button_right_logo[setting_button_cul_size * i + j]);
        }
    }

    row_offset = volume_row_cursor;
    col_offset = volume_col_cursor;
    for (int j = 0; j < volume_cul_size; j++)
    {
        for (int i = 0; i < volume_row_size; i++)
        {
            OLED_SetCursor(row_offset + i, col_offset + j);
            oledSendData(volume_logo[volume_cul_size * i + j]);
        }
    }

    OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
    char volume_value_[2];
    volume_value_[0] = '0' + volume_value;
    volume_value_[1] = '\0';
    OLED_DisplayString(volume_value_);
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
                // setting data, and raise sending flag
                send_data = selection_list_cur + 2;
                send_flag = 1;
                P1_7 = 0;

                // [another 8051 do the following...]
                // bird_amt = bird_total_amount;
                // pig_amt = pig_total_amount;
                // control_angle = 60;
                // control_strength = 3;
                // angrybird_display_game();
                // then, switch to game_state_control

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
        if (selection_list_cur == 0)
            OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
        else
            OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
        OLED_DisplayString("       ");

        if (selection_list_cur == 0)
            OLED_SetCursor(selection_row_cursor, selection_col_cursor - 7);
        else
            OLED_SetCursor(selection_row_cursor, selection_col_cursor - 4);
        OLED_DisplayString(selection_list[selection_list_cur]);
    }

    selection_list_past = selection_list_cur;
    prebut_enter = but_enter;
    prebut_up = but_up;
    prebut_down = but_down;
    delay_ms(10);
}

void angrybird_game_state(void)
{
    // start or stop I2C
    if (send_flag == 1)
    {
        I2C_Stop();
        SBUF = send_data; // send data is cur_state
        send_flag = 0;
        P1_6 = 0;
    }

    if (received_flag == 1)
    {
        cur_state = STATE_HOME;
        received_flag = 0;
        P1_4 = 0;
        I2C_Start();
        OLED_Init();
        angrybird_display_home();
    }
}

void angrybird_setting_state(void)
{
    if ((but_up == 0) && (prebut_up == 1) || (but_down == 0) && (prebut_down == 1))
    {
        // delay_ms(10);
        int which = (but_up == 0) ? 1 : 0;
        if (but_up == 0 || but_down == 0)
        {
            if (which == 1)
            {
                setting_state--;
                if (setting_state < 1)
                    setting_state = 2;
            }
            else
            {
                setting_state++;
                if (setting_state > 2)
                    setting_state = 1;
            }
        }
    }
    if ((but_enter == 0) && (prebut_enter == 1))
    {
        delay_ms(10);
        if (but_enter == 0)
        { // go back to home page
            angrybird_display_home();
            cur_state = STATE_HOME;
        }
    }
    if (((but_left == 0) && (prebut_left == 1)) || ((but_right == 0) && (prebut_right == 1)))
    {
        // delay_ms(10);
        int which = (but_left == 0) ? 0 : 1;
        if (but_left == 0 || but_right == 0)
        {
            if (setting_state == 1)
            {
                music_value = (music_value - 1 == 0) ? 0 : 1;
                OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
                OLED_DisplayString("   ");
                if (music_value == 0)
                {
                    OLED_SetCursor(music_value_row_cursor, music_value_col_cursor);
                    OLED_DisplayString("OFF");
                }
                else if (music_value == 1)
                {
                    OLED_SetCursor(music_value_row_cursor, music_value_col_cursor + 1);
                    OLED_DisplayString("ON");
                }
            }
            else if (setting_state == 2)
            {
                if (which == 0)
                {
                    volume_value--;
                    if (volume_value < 0)
                        volume_value = 0;
                }
                else if (which == 1)
                {
                    volume_value++;
                    if (volume_value > 3)
                        volume_value = 3;
                }
                OLED_SetCursor(volume_value_row_cursor, volume_value_col_cursor);
                char volume_value_[10];
                volume_value_[0] = '0' + volume_value;
                volume_value_[1] = '\0';
                OLED_DisplayString(volume_value_);
            }
        }
    }

    if (setting_state != setting_state_past)
    {
        // erase and show
        switch (setting_state_past)
        {
        case 1:
            OLED_SetCursor(m_button_left_row_cursor, m_button_left_col_cursor);
            OLED_DisplayString(" ");
            OLED_SetCursor(m_button_right_row_cursor, m_button_right_col_cursor);
            OLED_DisplayString(" ");

            row_offset = v_button_left_row_cursor;
            col_offset = v_button_left_col_cursor;
            for (int j = 0; j < setting_button_cul_size; j++)
            {
                for (int i = 0; i < setting_button_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(button_left_logo[setting_button_cul_size * i + j]);
                }
            }
            row_offset = v_button_right_row_cursor;
            col_offset = v_button_right_col_cursor;
            for (int j = 0; j < setting_button_cul_size; j++)
            {
                for (int i = 0; i < setting_button_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(button_right_logo[setting_button_cul_size * i + j]);
                }
            }
            break;

        case 2:
            OLED_SetCursor(v_button_left_row_cursor, v_button_left_col_cursor);
            OLED_DisplayString(" ");
            OLED_SetCursor(v_button_right_row_cursor, v_button_right_col_cursor);
            OLED_DisplayString(" ");
            row_offset = m_button_left_row_cursor;
            col_offset = m_button_left_col_cursor;
            for (int j = 0; j < setting_button_cul_size; j++)
            {
                for (int i = 0; i < setting_button_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(button_left_logo[setting_button_cul_size * i + j]);
                }
            }
            row_offset = m_button_right_row_cursor;
            col_offset = m_button_right_col_cursor;
            for (int j = 0; j < setting_button_cul_size; j++)
            {
                for (int i = 0; i < setting_button_row_size; i++)
                {
                    OLED_SetCursor(row_offset + i, col_offset + j);
                    oledSendData(button_right_logo[setting_button_cul_size * i + j]);
                }
            }
            break;
        }
    }

    setting_state_past = setting_state;
    prebut_enter = but_enter;
    prebut_up = but_up;
    prebut_down = but_down;
    prebut_left = but_left;
    prebut_right = but_right;
    delay_ms(10);
}
