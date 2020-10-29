/*
 * IQS_Series.hpp
 *
 *  Created on: Sep 27, 2020
 *      Author: Tom
 */

#ifndef IQS_SERIES_H_
#define IQS_SERIES_H_

#include <stdint.h>
#include <stm32f0xx_hal.h>

static const uint16_t IQS_I2C_Address = (0x74<<1); //left shift because HAL requires

typedef struct {
    I2C_HandleTypeDef* i2c_hdl;
    char * error;
}IQS_Handle;



void IQS_resumeOperation(IQS_Handle* handle);
void IQS_AckReset(IQS_Handle* handle);
int IQS_CheckReset(IQS_Handle* handle);
void IQS_ResoWriteXY(IQS_Handle *handle, uint8_t X1, uint8_t Y1);
void IQS_ResoReadXY(IQS_Handle *handle, uint8_t *X1, uint8_t *Y1);
void IQS_ReadPosABS(IQS_Handle *handle, uint16_t *X1, uint16_t *Y1);
void IQS_ReadTouchStr(IQS_Handle *handle, uint16_t *T1);
void IQS_SystemConfig(IQS_Handle *handle);



#endif /* IQS_SERIES_H_ */
