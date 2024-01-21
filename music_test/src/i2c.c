#include "i2c.h"
#include "delay.h"

// I2C Start Condition
void I2C_Start()
{
    SDA = 1;
    SCL = 1;
    delay_5();
    SDA = 0;
    delay_5();
    SCL = 0;
}

// I2C Stop Condition
void I2C_Stop()
{
    SDA = 0;
    SCL = 1;
    delay_5();
    SDA = 1;
    delay_5();
}

// Send ACK
void I2C_SendACK(bit ack)
{
    SDA = ack;
    SCL = 1;
    delay_5();
    SCL = 0;
    delay_5();
}

// Recieve ACK
bit I2C_RecvACK()
{
    SCL = 1;
    delay_5();
    CY = SDA;
    SCL = 0;
    delay_5();
    return CY;
}

// Send a Byte
void I2C_SendByte(uint8_t dat)
{
    uint8_t i;
    for (i = 0; i < 8; i++)
    {
        dat <<= 1;
        SDA = CY;
        SCL = 1;
        delay_5();
        SCL = 0;
        delay_5();
    }
    I2C_RecvACK();
}

// Recieve a Byte
uint8_t I2C_RecvByte()
{
    uint8_t i;
    uint8_t dat = 0;
    SDA = 1;
    for (i = 0; i < 8; i++)
    {
        dat <<= 1;
        SCL = 1;
        delay_5();
        dat |= SDA;
        SCL = 0;
        delay_5();
    }
    return dat;
}

// I2C Data Transfer: Write mode
void Single_WriteI2C(uint8_t SlaveAddress, uint8_t REG_Address, uint8_t REG_data)
{
    I2C_Start();
    I2C_SendByte(SlaveAddress);
    I2C_SendByte(REG_Address);
    I2C_SendByte(REG_data);
    I2C_Stop();
}

// I2C Data Transfer: Read mode
uint8_t Single_ReadI2C(uint8_t SlaveAddress, uint8_t REG_Address)
{
    uint8_t REG_data;
    I2C_Start();
    I2C_SendByte(SlaveAddress);
    I2C_SendByte(REG_Address);
    I2C_Stop();

    I2C_Start();
    I2C_SendByte(SlaveAddress | 0x01); // R/W#: 1 means read mode
    REG_data = I2C_RecvByte();
    I2C_SendACK(1);
    I2C_Stop();
    return REG_data;
}