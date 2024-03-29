#ifndef _OLED_I2C_H_
#define _OLED_I2C_H_
#include "stdutils.h"

/******************************************************************************
                      SSD1306 ID and Command List
******************************************************************************/

#define OLED_SlaveAddress 0x78
#define SSD1306_ADDRESS 0x3C

#define SSD1306_COMMAND 0x00
#define SSD1306_DATA 0xC0
#define SSD1306_DATA_CONTINUE 0x40

#define SSD1306_SET_CONTRAST_CONTROL 0x81
#define SSD1306_DISPLAY_ALL_ON_RESUME 0xA4
#define SSD1306_DISPLAY_ALL_ON 0xA5
#define SSD1306_NORMAL_DISPLAY 0xA6
#define SSD1306_INVERT_DISPLAY 0xA7
#define SSD1306_DISPLAY_OFF 0xAE
#define SSD1306_DISPLAY_ON 0xAF
#define SSD1306_NOP 0xE3

#define SSD1306_HORIZONTAL_SCROLL_RIGHT 0x26
#define SSD1306_HORIZONTAL_SCROLL_LEFT 0x27
#define SSD1306_HORIZONTAL_SCROLL_VERTICAL_AND_RIGHT 0x29
#define SSD1306_HORIZONTAL_SCROLL_VERTICAL_AND_LEFT 0x2A
#define SSD1306_DEACTIVATE_SCROLL 0x2E
#define SSD1306_ACTIVATE_SCROLL 0x2F
#define SSD1306_SET_VERTICAL_SCROLL_AREA 0xA3

#define SSD1306_SET_LOWER_COLUMN 0x00
#define SSD1306_SET_HIGHER_COLUMN 0x10
#define SSD1306_MEMORY_ADDR_MODE 0x20
#define SSD1306_SET_COLUMN_ADDR 0x21
#define SSD1306_SET_PAGE_ADDR 0x22

#define SSD1306_SET_START_LINE 0x40
#define SSD1306_SET_SEGMENT_REMAP 0xA0
#define SSD1306_SET_MULTIPLEX_RATIO 0xA8
#define SSD1306_COM_SCAN_DIR_INC 0xC0
#define SSD1306_COM_SCAN_DIR_DEC 0xC8
#define SSD1306_SET_DISPLAY_OFFSET 0xD3
#define SSD1306_SET_COM_PINS 0xDA
#define SSD1306_CHARGE_PUMP 0x8D

#define SSD1306_SET_DISPLAY_CLOCK_DIV_RATIO 0xD5
#define SSD1306_SET_PRECHARGE_PERIOD 0xD9
#define SSD1306_SET_VCOM_DESELECT 0xDB
/****************************************************************************/

/***************************************************************************************************
                             Commonly used LCD macros/Constants
***************************************************************************************************/
#define C_DefaultDigits 10

#define C_OledFirstLine_U8 0x00u
#define C_OledLastLine_U8 0x07u

#define C_FirstLineAddress_U8 0xB8
#define C_LastLineAddress_U8 0xBF

#define C_DisplayDefaultDigits_U8 0xffu                              // Will display the exact digits in the number
#define C_MaxDigitsToDisplay_U8 10u                                  // Max decimal/hexadecimal digits to be displayed
#define C_NumOfBinDigitsToDisplay_U8 16u                             // Max bits of a binary number to be displayed
#define C_MaxDigitsToDisplayUsingPrintf_U8 C_DisplayDefaultDigits_U8 /* Max dec/hexadecimal digits to be displayed using printf */

#define C_MaxBarGraphs_U8 4
/**************************************************************************************************/
// typedef unsigned char code;

/***************************************************************************************************
                 PreCompile configurations to enable/disable the functions
****************************************************************************************************
PreCompile configuration to enable or disable the API's.
 1.Required interfaces can be enabled/disabled by configuring its respective macros to 1/0.
 2. By default all the API's are disabled.
 3. Displaying of floating number takes huge controller resources and need to be enabled only
    if required. This implies for other interfaces as well.
****************************************************************************************************/
#define Enable_OLED_DisplayString 1
/**************************************************************************************************/

/***************************************************************************************************
                                Logo bit map declaration
 ***************************************************************************************************/
// extern code const unsigned char LogoBitMap[];
/**************************************************************************************************/

/***************************************************************************************************
                             Function Prototypes
 ***************************************************************************************************/
void OLED_Init(void);
void OLED_DisplayChar(uint8_t ch);
void OLED_DisplayString(uint8_t *);
void OLED_Clear(void);
void OLED_SetCursor(uint8_t lineNumber, uint8_t CursorPosition);
/**************************************************************************************************/

// uint8_t OledLineNum,OledCursorPos;

/***************************************************************************************************
                                  Local Function Declaration
 ***************************************************************************************************/
void oledSendCommand(uint8_t cmd);
void oledSendStart(uint8_t address);
void oledSendStop(void);
void oledWaitForAck(void);
void oledSendByte(uint8_t ch);
void oledSendData(uint8_t cmd);

/**************************************************************************************************/

#define FONT_SIZE 5

#endif
