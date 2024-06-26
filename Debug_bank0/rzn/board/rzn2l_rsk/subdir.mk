################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../rzn/board/rzn2l_rsk/board_init.c \
../rzn/board/rzn2l_rsk/board_leds.c 

LST += \
board_init.lst \
board_leds.lst 

C_DEPS += \
./rzn/board/rzn2l_rsk/board_init.d \
./rzn/board/rzn2l_rsk/board_leds.d 

OBJS += \
./rzn/board/rzn2l_rsk/board_init.o \
./rzn/board/rzn2l_rsk/board_leds.o 

MAP += \
RZN2L_esc_RSK.map 


# Each subdirectory must supply rules for building sources it contributes
rzn/board/rzn2l_rsk/%.o: ../rzn/board/rzn2l_rsk/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-mcpu=cortex-r52 -mthumb -mfloat-abi=hard -mfpu=neon-fp-armv8 -fdiagnostics-parseable-fixits -Og -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -gdwarf-4 -D_RENESAS_RZN_ -DETHERCAT_SSC_PORT_GMAC_MDIO_SUPPORT=1 -DXSPI0_BANK0 -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/generate" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\r_fw_up_rz" -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\api" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\instances" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\arm\\CMSIS_5\\CMSIS\\Core_R\\Include" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_gen" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg\\bsp" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\src\\rm_ethercat_ssc_port" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\beckhoff\\Src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\renesas" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\driver" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo $< && arm-none-eabi-gcc @"$@.in"

