#ifndef ANGRY_BIRD_H

#include "string.h"
#include "delay.h"
#include "oled_i2c.h"
#include "i2c.h"
#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ANGRY_BIRD_H

/***************************************************************************************************
                                  Keyboard Definitions
 ***************************************************************************************************/

#define but_up P2_0
#define but_down P2_1
#define but_left INT0
#define but_right P2_2
#define but_enter INT1

// debounce
// extern unsigned int prebut_up;
// extern unsigned int prebut_down;
// extern unsigned int prebut_left;
// extern unsigned int prebut_right;
// extern unsigned int prebut_enter;

/***************************************************************************************************
                                  Game State Definitions
 ***************************************************************************************************/

// extern int cur_state;
#define STATE_HOME 1
#define STATE_SETTING 2
#define STATE_PLAY_EASY 3
#define STATE_PLAY_HARD 4

/***************************************************************************************************
                                  Home Page Definitions
 ***************************************************************************************************/

// image definitions
#define image_row_size 8
#define image_cul_size 64

#define image_row_cursor 0
#define image_col_cursor 0

// game name definitions
#define game_name_row_cursor 1
#define game_name_col_cursor 60

// button definitions
#define button_row_size 1
#define button_cul_size 16

#define button_up_row_cursor 3
#define button_up_col_cursor 85
#define button_down_row_cursor 7
#define button_down_col_cursor 85

// selection list definitions
// 0 for setting, 1 for easy, 2 for hard
// extern int selection_list_cur, selection_list_past;
#define selection_row_cursor 5
#define selection_col_cursor 84

/***************************************************************************************************
                                  Game Page Definitions
 ***************************************************************************************************/

// shooter logo definitions
#define shoot_row_size 2
#define shoot_cul_size 8

#define shoot_row_cursor 6
#define shoot_col_cursor 0

// extern int bird_amt;
#define bird_total_amount 9
// bird logo definitions
#define bird_row_size 1
#define bird_cul_size 8

#define bird_init_row_cursor 7
#define bird_init_col_cursor 8

#define bird_remain_col_cursor 50

// extern int pig_amt;
#define pig_total_amount 3
// pig logo definitions
#define pig_row_size 2
#define pig_cul_size 12

// pig  definitions
#define pig1_row_cursor 3
#define pig1_col_cursor 80

#define pig2_row_cursor 2
#define pig2_col_cursor 40

#define pig3_row_cursor 6
#define pig3_col_cursor 115

// extern int control_angle, control_strength;
#define strength_text_row_cursor 0
#define strength_text_col_cursor 10
#define angle_text_row_cursor 0
#define angle_text_col_cursor 30

#define control_strength_value 25
#define control_angle_value bird_init_row_cursor - 1

/***************************************************************************************************
                                  Setting Page Definitions
 ***************************************************************************************************/

// setting text definitions
#define setting_text_row_cursor 1
#define setting_text_col_cursor 50

// extern int setting_state, setting_state_past; // 1 for music, 2 for volume

// button logo definitions
#define setting_button_row_size 1
#define setting_button_cul_size 4

#define m_button_left_row_cursor 4
#define m_button_left_col_cursor 45
#define m_button_right_row_cursor 4
#define m_button_right_col_cursor 93

#define v_button_left_row_cursor 7
#define v_button_left_col_cursor 45
#define v_button_right_row_cursor 7
#define v_button_right_col_cursor 93

// extern int music_value; // 0 for off, 1 for on
// music logo definitions
#define music_row_size 2
#define music_cul_size 16

#define music_row_cursor 3
#define music_col_cursor 5

#define music_value_row_cursor 4
#define music_value_col_cursor 64

// extern int volume_value; // from 0 to 3, 3 level
// volume logo definitions
#define volume_row_size 2
#define volume_cul_size 16

#define volume_row_cursor 6
#define volume_col_cursor 5

#define volume_value_row_cursor 7
#define volume_value_col_cursor 68

/***************************************************************************************************
                                  Functino Prototype
 ***************************************************************************************************/
void angrybird_display_home(void);
void angrybird_display_setting(void);
void angrybird_display_game(void);
void angrybird_state_machine(void);

void angrybird_home_state(void);
void angrybird_setting_state(void);
void angrybird_game_state(void);

/***************************************************************************************************
                                  Math Function Prototype
 ***************************************************************************************************/

// #define M_PI 3.14159265359
// #define M_PI_2 6.28318530718
// float custom_sin(int angle);
// float custom_cos(int angle);

// for a more light-weight approach, I use look-up table for sine and cosine value
#define SQRT_2 1.4142135
float getsine(int angle);
float getcosine(int angle);
float pow_2(float n);
// int custom_sqrt(int x);

#endif