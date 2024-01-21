#ifndef ANGRY_BIRD_H

#include "delay.h"
#include "oled_i2c.h"
#include "i2c.h"

#define ANGRY_BIRD_H

/***************************************************************************************************
                                  Keyboard Definitions
 ***************************************************************************************************/

#define but_up P2_0
#define but_down P2_1
#define but_left INT0
#define but_right INT1
#define but_enter P2_2

// debounce
// extern unsigned int prebut_up;
// extern unsigned int prebut_down;
// extern unsigned int prebut_left;
// extern unsigned int prebut_right;
// extern unsigned int prebut_enter;

/***************************************************************************************************
                                  UART Definitions
 ***************************************************************************************************/

extern unsigned char send_data;
extern unsigned char send_flag;
extern unsigned char received_data;
extern unsigned char received_flag;

/***************************************************************************************************
                                  Game State Definitions
 ***************************************************************************************************/

// extern int cur_state;
#define STATE_HOME 1
#define STATE_SETTING 2
#define STATE_PLAY_EASY 3
#define STATE_PLAY_HARD 4

/***************************************************************************************************
                                  Game Page Definitions
 ***************************************************************************************************/

// shooter logo definitions
#define shoot_row_size 2
#define shoot_cul_size 8

#define shoot_row_cursor 6
#define shoot_col_cursor 0

// extern int bird_amt;
#define bird_total_amount 5
// bird logo definitions
#define bird_row_size 1
#define bird_cul_size 8

#define bird_init_row_cursor 7
#define bird_init_col_cursor 8

#define bird_remain_col_cursor 50

// extern int pig_amt;
#define pig_total_amount 1
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

//*************** END PAGE ***************//
// win logo definitions
#define win_row_size 2
#define win_cul_size 64

#define win_row_cursor 2
#define win_col_cursor 50

#define over_row_size 2
#define over_cul_size 64

#define over_row_cursor 2
#define over_col_cursor 50

/***************************************************************************************************
                                  Functino Prototype
 ***************************************************************************************************/
// void angrybird_display_home(void);
// void angrybird_display_setting(void);
void angrybird_display_game(void);
void angrybird_state_machine(void);

// void angrybird_home_state(void);
// void angrybird_setting_state(void);
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