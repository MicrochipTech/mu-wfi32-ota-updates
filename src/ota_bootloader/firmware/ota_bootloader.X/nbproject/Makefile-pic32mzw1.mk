#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-pic32mzw1.mk)" "nbproject/Makefile-local-pic32mzw1.mk"
include nbproject/Makefile-local-pic32mzw1.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mzw1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/system_pmu_mldo_trim.c ../src/config/pic32mzw1/tasks.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1505089206/csv.o.d ${OBJECTDIR}/_ext/302149311/bootloader.o.d ${OBJECTDIR}/_ext/302149311/int_flash.o.d ${OBJECTDIR}/_ext/302149311/sha256.o.d ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d ${OBJECTDIR}/_ext/305408435/bsp.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d ${OBJECTDIR}/_ext/687152980/sys_cache.o.d ${OBJECTDIR}/_ext/456523338/ff.o.d ${OBJECTDIR}/_ext/456523338/ffunicode.o.d ${OBJECTDIR}/_ext/1514505107/diskio.o.d ${OBJECTDIR}/_ext/72121328/sys_fs.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/345302806/sys_int.o.d ${OBJECTDIR}/_ext/1058221795/initialization.o.d ${OBJECTDIR}/_ext/1058221795/interrupts.o.d ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/1058221795/tasks.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/system_pmu_mldo_trim.c ../src/config/pic32mzw1/tasks.c ../src/main.c ../src/app.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-pic32mzw1.mk dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1025W104132
MP_LINKER_FILE_OPTION=,--script="..\src\bootloader\p32MZ1025W104132_bootloader.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1505089206/csv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/int_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/305408435/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/456523338/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1514505107/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/345302806/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o: ../src/config/pic32mzw1/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ../src/config/pic32mzw1/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1505089206/csv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/bootloader.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/int_flash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/305408435/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/456523338/ff.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1514505107/diskio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/345302806/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o: ../src/config/pic32mzw1/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ../src/config/pic32mzw1/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../src" -I"../src/config/pic32mzw1" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../../../framework" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/bootloader/p32MZ1025W104132_bootloader.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/bootloader/p32MZ1025W104132_bootloader.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mzw1
	${RM} -r dist/pic32mzw1
