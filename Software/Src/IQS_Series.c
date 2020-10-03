/*
 * IQS_Series.cpp

 *
 *  Created on: Sep 27, 2020
 *      Author: Tom
 */

#include <IQS_Series.h>
#include <stm32l4xx_hal_i2c.h>

void IQS_resumeOperation(I2C_HandleTypeDef* handle){
	const uint16_t END_WINDOW = 0xEEEE;
	uint8_t throwaway = 0;
	HAL_I2C_Mem_Write(handle, IQS_I2C_Address, END_WINDOW, 1, &throwaway, 1, 1000);
}

void IQS_AckReset(I2C_HandleTypeDef* handle){
	const uint16_t cmd_addr = 0x0431;
	uint8_t reset_cmd = 0x80;

	HAL_I2C_Mem_Write(handle, IQS_I2C_Address, cmd_addr, 1, &reset_cmd, 1, 1000);
}

int IQS_CheckReset(I2C_HandleTypeDef* handle){
	const uint16_t cmd_addr = 0x0431;
	uint8_t buffer=0;

	HAL_I2C_Mem_Read(handle, IQS_I2C_Address, cmd_addr, 1, &buffer, 1, 1000);

	if(buffer >= 0x80)return 1;
	else return 0;
}

void IQS_ResoWriteXY(I2C_HandleTypeDef *handle, uint8_t X1, uint8_t Y1){
	const uint16_t x_addr = 0x063D;
	const uint16_t y_addr = 0x063E;


	HAL_I2C_Mem_Write(handle, IQS_I2C_Address, x_addr, 1, &X1, 1, 1000 );
	HAL_I2C_Mem_Write(handle, IQS_I2C_Address, y_addr, 1, &Y1, 1, 1000 );

};

void IQS_ResoReadXY(I2C_HandleTypeDef *handle, uint8_t *X1, uint8_t *Y1){
	const uint16_t x_addr = 0x063D;
	const uint16_t y_addr = 0x063E;
	uint8_t buffer[2] = {0};

	HAL_I2C_Mem_Read(handle, IQS_I2C_Address, x_addr, 1, &buffer[0], 1, 1000 );
	HAL_I2C_Mem_Read(handle, IQS_I2C_Address, y_addr, 1, &buffer[1], 1, 1000 );

	*X1 = buffer[0];
	*Y1 = buffer[1];

};

void IQS_ReadPosABS(I2C_HandleTypeDef *handle, uint16_t *X1, uint16_t *Y1){
	const uint16_t x_addr = 0x0016;
	const uint16_t y_addr = 0x0018;
	uint8_t buffer[4] = {0};

	HAL_I2C_Mem_Read(handle, IQS_I2C_Address, x_addr, 2, &buffer[0], 2, 1000 );
	HAL_I2C_Mem_Read(handle, IQS_I2C_Address, y_addr, 2, &buffer[2], 2, 1000 );

	*X1 = ((buffer[0]<<8)|buffer[1]);
	*Y1 = ((buffer[2]<<8)|buffer[3]);

};

