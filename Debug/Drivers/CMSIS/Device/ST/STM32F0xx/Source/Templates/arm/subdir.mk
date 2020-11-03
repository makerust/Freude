################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.s \
../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.s 

OBJS += \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030x8.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f030xc.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f031x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f038xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f042x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f048xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f051x8.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f058xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070x6.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f070xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f071xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f072xb.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f078xx.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f091xc.o \
./Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/startup_stm32f098xx.o 


# Each subdirectory must supply rules for building sources it contributes
Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/%.o: ../Drivers/CMSIS/Device/ST/STM32F0xx/Source/Templates/arm/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo $(PWD)
	arm-none-eabi-as -mcpu=cortex-m0 -mthumb -mfloat-abi=soft -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


