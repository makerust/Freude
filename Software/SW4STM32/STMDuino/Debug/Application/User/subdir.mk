################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Application/User/IQS_Series.c \
C:/Users/Tom/Documents/STMDuino/Src/dac.c \
C:/Users/Tom/Documents/STMDuino/Src/gpio.c \
C:/Users/Tom/Documents/STMDuino/Src/i2c.c \
C:/Users/Tom/Documents/STMDuino/Src/main.c \
C:/Users/Tom/Documents/STMDuino/Src/stm32f0xx_hal_msp.c \
C:/Users/Tom/Documents/STMDuino/Src/stm32f0xx_it.c \
C:/Users/Tom/Documents/STMDuino/Src/tim.c \
C:/Users/Tom/Documents/STMDuino/Src/usart.c 

OBJS += \
./Application/User/IQS_Series.o \
./Application/User/dac.o \
./Application/User/gpio.o \
./Application/User/i2c.o \
./Application/User/main.o \
./Application/User/stm32f0xx_hal_msp.o \
./Application/User/stm32f0xx_it.o \
./Application/User/tim.o \
./Application/User/usart.o 

C_DEPS += \
./Application/User/IQS_Series.d \
./Application/User/dac.d \
./Application/User/gpio.d \
./Application/User/i2c.d \
./Application/User/main.d \
./Application/User/stm32f0xx_hal_msp.d \
./Application/User/stm32f0xx_it.d \
./Application/User/tim.d \
./Application/User/usart.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/%.o: ../Application/User/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/dac.o: C:/Users/Tom/Documents/STMDuino/Src/dac.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/gpio.o: C:/Users/Tom/Documents/STMDuino/Src/gpio.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/i2c.o: C:/Users/Tom/Documents/STMDuino/Src/i2c.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/main.o: C:/Users/Tom/Documents/STMDuino/Src/main.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_hal_msp.o: C:/Users/Tom/Documents/STMDuino/Src/stm32f0xx_hal_msp.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/stm32f0xx_it.o: C:/Users/Tom/Documents/STMDuino/Src/stm32f0xx_it.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/tim.o: C:/Users/Tom/Documents/STMDuino/Src/tim.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/User/usart.o: C:/Users/Tom/Documents/STMDuino/Src/usart.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


