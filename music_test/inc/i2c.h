// i2c.h 
#ifndef I2C_H

#include "param.h"

#define I2C_H

void I2C_Start(void);
void I2C_Stop(void);
void I2C_SendACK(bit ack);
bit I2C_RecvACK(void);
void I2C_SendByte(uint8_t dat);
uint8_t I2C_RecvByte(void);
void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address,uint8_t REG_data);
uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address);


#endif





