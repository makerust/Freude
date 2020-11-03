/* USER CODE BEGIN Header */
/**
 ******************************************************************************
 * @file           : main.c
 * @brief          : Main program body
 ******************************************************************************
 ** This notice applies to any and all portions of this file
 * that are not between comment pairs USER CODE BEGIN and
 * USER CODE END. Other portions of this file, whether
 * inserted by the user or by software development tools
 * are owned by their respective copyright owners.
 *
 * COPYRIGHT(c) 2020 STMicroelectronics
 *
 * Redistribution and use in source and binary forms, with or without
 *modification, are permitted provided that the following conditions are met:
 *   1. Redistributions of source code must retain the above copyright notice,
 *      this list of conditions and the following disclaimer.
 *   2. Redistributions in binary form must reproduce the above copyright
 *notice, this list of conditions and the following disclaimer in the
 *documentation and/or other materials provided with the distribution.
 *   3. Neither the name of STMicroelectronics nor the names of its contributors
 *      may be used to endorse or promote products derived from this software
 *      without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 *ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 *LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 *CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 *SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 *INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 *CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 *ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 *POSSIBILITY OF SUCH DAMAGE.
 *
 ******************************************************************************
 */
/* USER CODE END Header */

/* Includes ------------------------------------------------------------------*/
#include "main.h"
#include "dac.h"
#include "i2c.h"
#include "tim.h"
#include "usart.h"
#include "gpio.h"
#include "stm32f0xx_hal_dac.h"
#include "stdbool.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>
#include <stdint.h>
#include <IQS_Series.h>
/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
uint8_t xres = 6;
uint8_t yres = 7;
uint8_t retToCenter = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
uint16_t DAC_Map(uint16_t input);
/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */

  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_USART2_UART_Init();
  MX_I2C1_Init();
  MX_TIM1_Init();
  MX_DAC_Init();
  /* USER CODE BEGIN 2 */
    uint8_t TxHelloWorld[] = "Hello World\r\n";
    HAL_UART_Transmit(&huart2, (uint8_t*)TxHelloWorld, sizeof(TxHelloWorld),
                      1000);


    IQS_Handle IQS = {&hi2c1, "Startup"};
    HAL_StatusTypeDef i2c_status;

    RDY_Delay (5, 100);
    bool whyCantIJustReturn = 0;//turns out I can, clean later
    whyCantIJustReturn = IQS_CheckReset(&IQS);
    HAL_Delay(3);
    if (!whyCantIJustReturn){
    	RDY_Delay (5, 100);
    	IQS_AckReset(&IQS);

    	if (IQS.error != "Iz chill brah"){
    		uint8_t ErrDec[] = "i2c Error \r\n";
        	HAL_UART_Transmit(&huart2, (uint8_t*)ErrDec, sizeof(ErrDec), 1000);
        	HAL_UART_Transmit(&huart2, (uint8_t*)IQS.error,
                         sizeof(IQS.error), 100);
    	}
    }





    char buf[80] = {0};
    uint8_t throwaway2=0;

    RDY_Delay (5, 100);
    i2c_status
        = HAL_I2C_Mem_Read(&hi2c1, IQS_I2C_Address, 0x0004, 1, &throwaway2, 1,
                           1000);  // address is for minor version, but line
                                   // mostly checks status.
    snprintf(buf, sizeof(buf), "Revision read as %u  \r\n", (unsigned)throwaway2);
    HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

    RDY_Delay (5, 100);
    IQS_SystemConfig(&IQS);

    RDY_Delay (5, 100);
    IQS_ResoWriteXY(&IQS, xres, yres);

    snprintf(buf, sizeof(buf), "Reso set as %u by %u \r\n", (unsigned)xres,
             (unsigned)yres);
    HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

    uint8_t read_x_res = 0;
    uint8_t read_y_res = 0;
    RDY_Delay (5, 100);
    IQS_ResoReadXY(&IQS, &read_x_res, &read_y_res);

    RDY_Delay (5, 100);
    IQS_Config_Rx(&IQS);
    RDY_Delay (5, 100);
    IQS_Config_Tx(&IQS);

    uint8_t buffer_Rx[10];
    RDY_Delay(5, 100);
    HAL_I2C_Mem_Read(&hi2c1, IQS_I2C_Address, 0x063F, 2, &buffer_Rx, 10,
                               1000);  // address is for minor version, but line
                                       // mostly checks status.
    snprintf(buf, sizeof(buf), "Rx Array order is %u, %u, %u, %u, %u, %u, %u, %u, %u, %u \r\n", (uint8_t)buffer_Rx[0],
    		(unsigned)buffer_Rx[1],(unsigned)buffer_Rx[2],(unsigned)buffer_Rx[3],(unsigned)buffer_Rx[4],
			(unsigned)buffer_Rx[5],(unsigned)buffer_Rx[6],(unsigned)buffer_Rx[7],(unsigned)buffer_Rx[8],
			(unsigned)buffer_Rx[9]);
    HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

    uint8_t buffer_Tx[15];
    RDY_Delay(5, 100);
    HAL_I2C_Mem_Read(&hi2c1, IQS_I2C_Address, 0x0649, 2, &buffer_Tx, 15,
                               1000);  // address is for minor version, but line
                                       // mostly checks status.
    snprintf(buf, sizeof(buf), "Tx Array order is %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u, %u \r\n", (uint8_t)buffer_Tx[0],
    		(unsigned)buffer_Tx[1],(unsigned)buffer_Tx[2],(unsigned)buffer_Tx[3],(unsigned)buffer_Tx[4],
			(unsigned)buffer_Tx[5],(unsigned)buffer_Tx[6],(unsigned)buffer_Tx[7],(unsigned)buffer_Tx[8],
			(unsigned)buffer_Tx[9],(unsigned)buffer_Tx[10],(unsigned)buffer_Tx[11], (unsigned)buffer_Tx[12],
			(unsigned)buffer_Tx[13],(unsigned)buffer_Tx[14]);
    HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

    RDY_Delay (5, 100);
    IQS_SetupComplete(&IQS);

    RDY_Delay (5, 100);
    IQS_resumeOperation(&IQS);
    snprintf(buf, sizeof(buf), "Reso read as %u by %u \r\n",
             (unsigned)read_x_res, (unsigned)read_y_res);
    HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

//    HAL_DAC_Init(&hdac);
//    HAL_DAC_Start(&hdac, DAC_CHANNEL_1);
//    HAL_DAC_Start(&hdac, DAC_CHANNEL_2);
//    uint32_t initValue = 2048;
//    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, initValue);
//    HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2, DAC_ALIGN_12B_R, initValue);


  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
//     while (1) {
    RDY_Delay (5, 100);
         if (HAL_GPIO_ReadPin(RDY_PIN_GPIO_Port, RDY_PIN_Pin) == 1) {


             uint16_t read_x = 0;
             uint16_t read_y = 0;
             IQS_ReadPosABS(&IQS, &read_x, &read_y);
//             IQS_resumeOperation(&IQS);

             uint16_t dac_x = 2048;
             uint16_t dac_y = 2048;
             dac_x = DAC_Map(read_x);
             dac_y = DAC_Map(read_y);
             snprintf(buf, sizeof(buf), "Dac: %u, map: %u \r\n", (unsigned)read_x,
                      (unsigned)dac_x);
             HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);


//             HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, dac_x);
//             HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2, DAC_ALIGN_12B_R, dac_y);

             snprintf(buf, sizeof(buf), "%u, %u \r\n", (unsigned)read_x,
                      (unsigned)read_y);
             HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

             RDY_Delay(5,100);
             IQS_ReadABSX(&IQS, &read_x);
             RDY_Delay(5,100);
             IQS_ReadABSY(&IQS, &read_x);
             snprintf(buf, sizeof(buf), "Re read as %u, %u \r\n", (unsigned)read_x,
                      (unsigned)read_y);
             HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);

             retToCenter=1;
             //HAL_Delay(100);
         }
//         else if (retToCenter != 0){
//        	 uint16_t touch_S = 0;
//        	 uint16_t touch_thresh = 5 ;
//        	 IQS_ReadTouchStr(&IQS, &touch_S);
//             snprintf(buf, sizeof(buf), "Touch Strength %u \r\n", (unsigned)touch_S);
//             HAL_UART_Transmit(&huart2, (uint8_t*)buf, strlen(buf), 1000);
//        	 if(touch_S < touch_thresh){
//                 HAL_DAC_SetValue(&hdac, DAC_CHANNEL_1, DAC_ALIGN_12B_R, 2048);
//                 HAL_DAC_SetValue(&hdac, DAC_CHANNEL_2, DAC_ALIGN_12B_R, 2048);
//                 retToCenter = 0;
//        	 }
//
//         }

//     }
    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  /* USER CODE END 3 */
}

uint16_t DAC_Map(uint16_t input){
	uint16_t output = 0;
	if (input > 2000) output = 2048;
	else{
		output = (input)*(4096)/(1000);
		if (output > 4096) output = 4096;
		else if (output < 0) output = 0;
	}

	return output;
}

void RDY_Delay (uint8_t delay_ms, uint8_t retries){
    uint8_t attempt = 0;
    HAL_Delay(3);
	while (HAL_GPIO_ReadPin(RDY_PIN_GPIO_Port, RDY_PIN_Pin)==0 && attempt < retries){
    	attempt ++;
		HAL_Delay(delay_ms);
	}
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
  RCC_PeriphCLKInitTypeDef PeriphClkInit = {0};

  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI|RCC_OSCILLATORTYPE_HSI48;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSI48State = RCC_HSI48_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_NONE;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }
  /**Initializes the CPU, AHB and APB busses clocks 
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_HSI48;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_1) != HAL_OK)
  {
    Error_Handler();
  }
  PeriphClkInit.PeriphClockSelection = RCC_PERIPHCLK_USART2|RCC_PERIPHCLK_I2C1;
  PeriphClkInit.Usart2ClockSelection = RCC_USART2CLKSOURCE_PCLK1;
  PeriphClkInit.I2c1ClockSelection = RCC_I2C1CLKSOURCE_HSI;
  if (HAL_RCCEx_PeriphCLKConfig(&PeriphClkInit) != HAL_OK)
  {
    Error_Handler();
  }
}

/* USER CODE BEGIN 4 */

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
    /* User can add his own implementation to report the HAL error return state
     */

  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(char *file, uint32_t line)
{ 
  /* USER CODE BEGIN 6 */
    /* User can add his own implementation to report the file name and line
       number, tex: printf("Wrong parameters value: file %s on line %d\r\n",
       file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */

/************************ (C) COPYRIGHT STMicroelectronics *****END OF FILE****/
