################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rzn/fsp/src/bsp/mcu/all/bsp_clocks.c \
../rzn/fsp/src/bsp/mcu/all/bsp_common.c \
../rzn/fsp/src/bsp/mcu/all/bsp_delay.c \
../rzn/fsp/src/bsp/mcu/all/bsp_io.c \
../rzn/fsp/src/bsp/mcu/all/bsp_irq.c \
../rzn/fsp/src/bsp/mcu/all/bsp_register_protection.c \
../rzn/fsp/src/bsp/mcu/all/bsp_reset.c \
../rzn/fsp/src/bsp/mcu/all/bsp_sbrk.c 

LST += \
bsp_clocks.lst \
bsp_common.lst \
bsp_delay.lst \
bsp_io.lst \
bsp_irq.lst \
bsp_register_protection.lst \
bsp_reset.lst \
bsp_sbrk.lst 

C_DEPS += \
./rzn/fsp/src/bsp/mcu/all/bsp_clocks.d \
./rzn/fsp/src/bsp/mcu/all/bsp_common.d \
./rzn/fsp/src/bsp/mcu/all/bsp_delay.d \
./rzn/fsp/src/bsp/mcu/all/bsp_io.d \
./rzn/fsp/src/bsp/mcu/all/bsp_irq.d \
./rzn/fsp/src/bsp/mcu/all/bsp_register_protection.d \
./rzn/fsp/src/bsp/mcu/all/bsp_reset.d \
./rzn/fsp/src/bsp/mcu/all/bsp_sbrk.d 

OBJS += \
./rzn/fsp/src/bsp/mcu/all/bsp_clocks.o \
./rzn/fsp/src/bsp/mcu/all/bsp_common.o \
./rzn/fsp/src/bsp/mcu/all/bsp_delay.o \
./rzn/fsp/src/bsp/mcu/all/bsp_io.o \
./rzn/fsp/src/bsp/mcu/all/bsp_irq.o \
./rzn/fsp/src/bsp/mcu/all/bsp_register_protection.o \
./rzn/fsp/src/bsp/mcu/all/bsp_reset.o \
./rzn/fsp/src/bsp/mcu/all/bsp_sbrk.o 

MAP += \
RZN2L_esc_RSK.map 


# Each subdirectory must supply rules for building sources it contributes
rzn/fsp/src/bsp/mcu/all/%.o: ../rzn/fsp/src/bsp/mcu/all/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-mcpu=cortex-r52 -mthumb -mfloat-abi=hard -mfpu=neon-fp-armv8 -fdiagnostics-parseable-fixits -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -gdwarf-4 -D_RENESAS_RZN_ -DETHERCAT_SSC_PORT_GMAC_MDIO_SUPPORT=1 -DXSPI0_BANK1 -DREVISION_NUMBER=0x0201 -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/generate" -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\api" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\instances" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\arm\\CMSIS_5\\CMSIS\\Core_R\\Include" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_gen" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg\\bsp" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\src\\rm_ethercat_ssc_port" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\driver" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\beckhoff\\Src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\renesas" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\r_fw_up_rz" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo $< && arm-none-eabi-gcc @"$@.in"

