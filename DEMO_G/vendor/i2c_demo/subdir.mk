################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../vendor/i2c_demo/interrupt.c \
../vendor/i2c_demo/main.c 

OBJS += \
./vendor/i2c_demo/interrupt.o \
./vendor/i2c_demo/main.o 


# Each subdirectory must supply rules for building sources it contributes
vendor/i2c_demo/%.o: ../vendor/i2c_demo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: TC32 Compiler'
	tc32-elf-gcc -ffunction-sections -fdata-sections -I"D:\Thread_MeshCop\Intel_Mesh\sensor_mesh_txrx_demo\sensor_mesh_pallet" -Wall -O2 -fpack-struct -fshort-enums -finline-small-functions -std=c99 -fshort-wchar -fms-extensions -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


