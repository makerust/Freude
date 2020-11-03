/*
 * IQS_Series.cpp

 *
 *  Created on: Sep 27, 2020
 *      Author: Tom
 */

#include <IQS_Series.h>
#include <stm32f0xx_hal_i2c.h>
#include "stdbool.h"

const char * ackResetErr = "Error during AckReset";
const char * resumeOpErr = "Error during Resume Operation";
const char * noErr = "Iz chill brah";

void IQS_resumeOperation(IQS_Handle* handle){
	const uint16_t END_WINDOW = 0xEEEE;
	uint8_t throwaway = 0;
	HAL_StatusTypeDef error = HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, END_WINDOW, 2, &throwaway, 1, 1000);
	if (error != HAL_OK)
		handle->error = resumeOpErr;
	else
		handle->error = noErr;
}

void IQS_AckReset(IQS_Handle* handle){
	const uint16_t cmd_addr = 0x0431;
	uint8_t reset_cmd = 0x80;
	HAL_StatusTypeDef error = HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, cmd_addr, 2, &reset_cmd, 1, 1000);
	if (error != HAL_OK)
		handle->error = ackResetErr;
	else
		handle->error = noErr;
}

int IQS_CheckReset(IQS_Handle* handle){
	const uint16_t cmd_addr = 0x0431;
	uint8_t buffer=0;

	HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, cmd_addr, 2, &buffer, 1, 1000);

	if(buffer >= 0x80)return 1;
	else return 0;
}

void IQS_ResoWriteXY(IQS_Handle *handle, uint8_t X1, uint8_t Y1){
	const uint16_t x_addr = 0x063D;
	const uint16_t y_addr = 0x063E;
	uint8_t buffer[2];
	buffer[0] = X1;
	buffer[1] = Y1;

	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, x_addr, 2, &buffer, 2, 1000 );
//	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, y_addr, 2, &Y1, 1, 1000 );

};

void IQS_ResoReadXY(IQS_Handle *handle, uint8_t *X1, uint8_t *Y1){
	const uint16_t x_addr = 0x063D;
	const uint16_t y_addr = 0x063E;
	uint8_t buffer[2] = {0};
	HAL_StatusTypeDef local_Status = HAL_OK ;
	int retry_number = 3;
	int retry_attempt = 0;

	local_Status = HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, x_addr, 2, &buffer[0], 2, 1000 );
	if (local_Status == HAL_OK && retry_attempt < retry_number ){
		HAL_Delay (1);
		local_Status = HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, x_addr, 2, &buffer[0], 2, 1000 );
	}


	*X1 = buffer[0];
	*Y1 = buffer[1];

};

void IQS_ReadPosABS(IQS_Handle *handle, uint16_t *X1, uint16_t *Y1){
	const uint16_t x_addr = 0x0016;
	const uint16_t y_addr = 0x0018;
	uint8_t buffer[4] = {0};
	HAL_StatusTypeDef local_Status = HAL_OK ;

	local_Status = HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, x_addr, 2, &buffer[0], 4, 1000 );
	if (local_Status == HAL_OK){
	*X1 = ((buffer[0]<<8)|buffer[1]);
	*Y1 = ((buffer[2]<<8)|buffer[3]);
	}
	else{
		*X1 = 2049;
		*Y1 = 2049;
	}

};

void IQS_ReadABSX(IQS_Handle *handle, uint16_t *X1){
	const uint16_t x_addr = 0x0016;
	const uint16_t y_addr = 0x0018;
	uint8_t buffer[2] = {0};
	HAL_StatusTypeDef local_Status = HAL_OK ;

	local_Status = HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, x_addr, 2, &buffer[0], 2, 1000 );
	if (local_Status == HAL_OK){
	*X1 = ((buffer[0]<<8)|buffer[1]);
	}
	else{
		*X1 = 2049;
	}
};

void IQS_ReadABSY(IQS_Handle *handle, uint16_t *Y1){
	const uint16_t y_addr = 0x0018;
	uint8_t buffer[2] = {0};
	HAL_StatusTypeDef local_Status = HAL_OK ;

	local_Status = HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, y_addr, 2, &buffer[0], 2, 1000 );
	if (local_Status == HAL_OK){
	*Y1 = ((buffer[0]<<8)|buffer[1]);
	}
	else{
		*Y1 = 2049;
	}
};


void IQS_ReadTouchStr(IQS_Handle *handle, uint16_t *T1){
	const uint16_t T_addr = 0x001A;
	uint8_t buffer[2] = {0};

	HAL_I2C_Mem_Read(handle->i2c_hdl, IQS_I2C_Address, T_addr, 2, &buffer[0], 2, 1000 );

	*T1 = ((buffer[0]<<8)|buffer[1]);

};

//int IQS_IsTouchEvent(IQS_Handle *handle){
//	const uint16_t touch_addr = 0x
//};

void IQS_SystemConfig(IQS_Handle *handle){
	uint16_t register_add = 0x0010;
	uint8_t conf = ((0<<7)+(1<<6)+(0<<5)+(0<<4)+(0<<3)+(0<<2)+(0<<1)+1);
	// Prox Event || Touch Event || Snap Event || ALP Prox Event || REATI Event || TP Event || Gesture Event || Event Mode

	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, register_add, 2, &conf, 1, 1000 );
};

void IQS_Config_Rx(IQS_Handle *handle){
	const uint16_t Rx_addr = 0x063F;

	uint8_t buffer[]={0,1,2,3,4,5};

	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, Rx_addr, 2, &buffer, 6, 1000 );
}

void IQS_Config_Tx(IQS_Handle *handle){
	const uint16_t Tx_addr = 0x0649;

	uint8_t buffer[]={0,1,2,3,4,5,6};

	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, Tx_addr, 2, &buffer, 7, 1000 );
}


void IQS_SetupComplete(IQS_Handle *handle){
	uint16_t register_add = 0x058E;
	uint8_t conf = ((0<<7)+(1<<6)+(0<<5)+(0<<4)+(0<<3)+(0<<2)+(0<<1)+0);
	// Manual Ctl || Setup Complete || WDT || X || ALP REATI|| REATI || Wake Sel|| wake

	HAL_I2C_Mem_Write(handle->i2c_hdl, IQS_I2C_Address, register_add, 2, &conf, 1, 1000 );
};

