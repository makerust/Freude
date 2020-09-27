/*
 * IQS_Series.hpp
 *
 *  Created on: Sep 27, 2020
 *      Author: Tom
 */

#ifndef IQS_SERIES_H_
#define IQS_SERIES_H_

#include <stdint.h>
#include <stm32l4xx_hal.h>

static const uint16_t IQS_I2C_Address = (0x74<<1); //left shift because HAL requires

void IQS_resumeOperation(I2C_HandleTypeDef* handle);
void IQS_AckReset(I2C_HandleTypeDef* handle);
void IQS_ResoWriteXY(I2C_HandleTypeDef *handle, uint8_t X1, uint8_t Y1);
void IQS_ResoReadXY(I2C_HandleTypeDef *handle, uint8_t *X1, uint8_t *Y1);
void IQS_ReadPosABS(I2C_HandleTypeDef *handle, uint16_t *X1, uint16_t *Y1);


#endif /* IQS_SERIES_H_ */
