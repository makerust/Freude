#include "Arduino.h"
#include "defs.h"
#include "I2C.h"
//#include "TJR_IQS5xx.h"


void IQS5xx_WriteTxRxLines(uint8_t *X1, uint8_t *Y1)
{
  uint8_t xReso[1];
  uint8_t yReso[1];

  xReso[0] = *X1;
  yReso[0] = *Y1;

  I2C_Write(0x063D, &xReso[0], 1);
  I2C_Write(0x063E, &yReso[0], 1);

}

void IQS5xx_ReadTxRxLines(uint8_t *X1, uint8_t *Y1)
{
  uint8_t xReso[1];
  uint8_t yReso[1];

  I2C_Read(0x063D, &xReso[0], 1);
  I2C_Read(0x063E, &yReso[0], 1);

  *X1 = xReso[0];
  *Y1 = yReso[0];
}

void IQS5xx_ReadTouchStrength(uint8_t *Z1, uint8_t *Z2)
{
  uint8_t touchStrength[2];

  I2C_Read(0x001A, &touchStrength[0], 2);

  *Z1 = touchStrength[0];
  *Z2 = touchStrength[1];  
}



void IQS5xx_ReadTouchArea(uint8_t *A1)
{
  uint8_t touchArea[1];

  I2C_Read(0x001C, &touchArea[0], 1);

  *A1 = touchArea[0];  
}

void IQS5xx_ReadXAbs(uint16_t *X1)
{
  uint8_t XAbs[2];

  I2C_Read(0x0016, &XAbs[0], 2);

  *X1 = ((XAbs[0]<<8)|XAbs[1]);  
}

void IQS5xx_ReadYAbs(uint16_t *Y1)
{
  uint8_t YAbs[2];

  I2C_Read(0x0018, &YAbs[0], 2);

  *Y1 = ((YAbs[0]<<8)|YAbs[1]);  
}

