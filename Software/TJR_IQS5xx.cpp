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

