################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/ethercat/beckhoff/Src/bootmode.c \
../src/ethercat/beckhoff/Src/coeappl.c \
../src/ethercat/beckhoff/Src/ecatappl.c \
../src/ethercat/beckhoff/Src/ecatcoe.c \
../src/ethercat/beckhoff/Src/ecatfoe.c \
../src/ethercat/beckhoff/Src/ecatslv.c \
../src/ethercat/beckhoff/Src/foeappl.c \
../src/ethercat/beckhoff/Src/mailbox.c \
../src/ethercat/beckhoff/Src/objdef.c \
../src/ethercat/beckhoff/Src/sdoserv.c 

LST += \
bootmode.lst \
coeappl.lst \
ecatappl.lst \
ecatcoe.lst \
ecatfoe.lst \
ecatslv.lst \
foeappl.lst \
mailbox.lst \
objdef.lst \
sdoserv.lst 

C_DEPS += \
./src/ethercat/beckhoff/Src/bootmode.d \
./src/ethercat/beckhoff/Src/coeappl.d \
./src/ethercat/beckhoff/Src/ecatappl.d \
./src/ethercat/beckhoff/Src/ecatcoe.d \
./src/ethercat/beckhoff/Src/ecatfoe.d \
./src/ethercat/beckhoff/Src/ecatslv.d \
./src/ethercat/beckhoff/Src/foeappl.d \
./src/ethercat/beckhoff/Src/mailbox.d \
./src/ethercat/beckhoff/Src/objdef.d \
./src/ethercat/beckhoff/Src/sdoserv.d 

OBJS += \
./src/ethercat/beckhoff/Src/bootmode.o \
./src/ethercat/beckhoff/Src/coeappl.o \
./src/ethercat/beckhoff/Src/ecatappl.o \
./src/ethercat/beckhoff/Src/ecatcoe.o \
./src/ethercat/beckhoff/Src/ecatfoe.o \
./src/ethercat/beckhoff/Src/ecatslv.o \
./src/ethercat/beckhoff/Src/foeappl.o \
./src/ethercat/beckhoff/Src/mailbox.o \
./src/ethercat/beckhoff/Src/objdef.o \
./src/ethercat/beckhoff/Src/sdoserv.o 

MAP += \
RZN2L_esc_RSK.map 


# Each subdirectory must supply rules for building sources it contributes
src/ethercat/beckhoff/Src/%.o: ../src/ethercat/beckhoff/Src/%.c
	@echo 'Building file: $<'
	$(file > $@.in,-mcpu=cortex-r52 -mthumb -mfloat-abi=hard -mfpu=neon-fp-armv8 -fdiagnostics-parseable-fixits -O2 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections -Wunused -Wuninitialized -Wall -Wextra -Wmissing-declarations -Wconversion -Wpointer-arith -Wshadow -Wlogical-op -Waggregate-return -Wfloat-equal -Wnull-dereference -g -gdwarf-4 -D_RENESAS_RZN_ -DETHERCAT_SSC_PORT_GMAC_MDIO_SUPPORT=1 -DXSPI0_BANK1 -DREVISION_NUMBER=0x0201 -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/generate" -I"C:/07.RZ/02.RZN2L/RZN2L_Official_Release/old/r01an6523xx0120-rzn2l-ethercat-package/ecat_FoE/e2studio/src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\api" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\inc\\instances" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\arm\\CMSIS_5\\CMSIS\\Core_R\\Include" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_gen" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg\\bsp" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\fsp_cfg" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn\\fsp\\src\\rm_ethercat_ssc_port" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\rzn_cfg\\driver" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\beckhoff\\Src" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\ethercat\\renesas" -I"C:\\07.RZ\\02.RZN2L\\RZN2L_Official_Release\\old\\r01an6523xx0120-rzn2l-ethercat-package\\ecat_FoE\\e2studio\\src\\r_fw_up_rz" -std=c99 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" "$<")
	@echo $< && arm-none-eabi-gcc @"$@.in"

