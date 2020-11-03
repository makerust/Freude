################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
C:/Users/Tom/Documents/STMDuino/SW4STM32/startup_stm32f072xb.s 

C_SRCS += \
C:/Users/Tom/Documents/STMDuino/SW4STM32/syscalls.c 

OBJS += \
./Application/SW4STM32/startup_stm32f072xb.o \
./Application/SW4STM32/syscalls.o 

C_DEPS += \
./Application/SW4STM32/syscalls.d 


# Each subdirectory must supply rules for building sources it contributes
Application/SW4STM32/startup_stm32f072xb.o: C:/Users/Tom/Documents/STMDuino/SW4STM32/startup_stm32f072xb.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

Application/SW4STM32/syscalls.o: C:/Users/Tom/Documents/STMDuino/SW4STM32/syscalls.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m0 -mthumb -mfloat-abi=soft '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F072xB -I"C:/Users/Tom/Documents/STMDuino/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc" -I"C:/Users/Tom/Documents/STMDuino/Drivers/STM32F0xx_HAL_Driver/Inc/Legacy" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Device/ST/STM32F0xx/Include" -I"C:/Users/Tom/Documents/STMDuino/Drivers/CMSIS/Include"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


