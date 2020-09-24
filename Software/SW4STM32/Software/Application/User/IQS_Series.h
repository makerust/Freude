/*
 * IQS_Series.h
 *
 *  Created on: Sep 22, 2020
 *      Author: Tom
 */

#ifndef APPLICATION_USER_IQS_SERIES_H_
#define APPLICATION_USER_IQS_SERIES_H_

static const uint16_t IQS_I2C_Address = (0x74<<1); //left shift because HAL requires

void IQS_ResoWriteXY(I2C_HandleTypeDef *handle, uint8_t *X1, uint8_t *Y1);
void IQS_ResoReadXY(I2C_HandleTypeDef *handle, uint8_t *X1, uint8_t *Y1);
void IQS_ReadPosABS(I2C_HandleTypeDef *handle, uint16_t *X1, uint16_t *Y1);


#endif /* APPLICATION_USER_IQS_SERIES_H_ */
