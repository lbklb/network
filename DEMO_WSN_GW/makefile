################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include wsn/subdir.mk
-include vendor/coor/subdir.mk
-include print/subdir.mk
-include interface/subdir.mk
-include drivers/8267/subdir.mk
-include debug/subdir.mk
-include common/subdir.mk
-include boot/8267/subdir.mk
-include objects.mk

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
LST += \
gateway.lst \

FLASH_IMAGE += \
gateway.bin \

SIZEDUMMY += \
sizedummy \


# All Target
all: SensorMesh_20170418.elf secondary-outputs

# Tool invocations
SensorMesh_20170418.elf: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: TC32 C Linker'
	tc32-elf-ld  -T ../boot.link -o"SensorMesh_20170418.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

gateway.lst: SensorMesh_20170418.elf
	@echo 'Invoking: TC32 Create Extended Listing'
	tc32-elf-objdump -x -D -l -S SensorMesh_20170418.elf  >"gateway.lst"
	@echo 'Finished building: $@'
	@echo ' '

gateway.bin: SensorMesh_20170418.elf
	@echo 'Create Flash image (binary format)'
	tc32-elf-objcopy -O binary SensorMesh_20170418.elf  "gateway.bin"
	@echo 'Finished building: $@'
	@echo ' '

sizedummy: SensorMesh_20170418.elf
	@echo 'Invoking: Print Size'
	tc32-elf-size -t SensorMesh_20170418.elf
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(FLASH_IMAGE)$(ELFS)$(LST)$(SIZEDUMMY) SensorMesh_20170418.elf
	-@echo ' '

secondary-outputs: $(LST) $(FLASH_IMAGE) $(SIZEDUMMY)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
