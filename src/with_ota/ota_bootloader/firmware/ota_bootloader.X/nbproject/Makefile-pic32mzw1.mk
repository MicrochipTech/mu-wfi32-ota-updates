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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=pic32mzw1
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/tasks.c ../src/config/pic32mzw1/exceptions.c ../src/config/pic32mzw1/exceptionsHandler.S ../src/config/pic32mzw1/pmu_init.c ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1058221795/exceptions.o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1505089206/csv.o.d ${OBJECTDIR}/_ext/302149311/bootloader.o.d ${OBJECTDIR}/_ext/302149311/int_flash.o.d ${OBJECTDIR}/_ext/302149311/sha256.o.d ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d ${OBJECTDIR}/_ext/305408435/bsp.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d ${OBJECTDIR}/_ext/687152980/sys_cache.o.d ${OBJECTDIR}/_ext/456523338/ff.o.d ${OBJECTDIR}/_ext/456523338/ffunicode.o.d ${OBJECTDIR}/_ext/1514505107/diskio.o.d ${OBJECTDIR}/_ext/72121328/sys_fs.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/345302806/sys_int.o.d ${OBJECTDIR}/_ext/1058221795/initialization.o.d ${OBJECTDIR}/_ext/1058221795/interrupts.o.d ${OBJECTDIR}/_ext/1058221795/tasks.o.d ${OBJECTDIR}/_ext/1058221795/exceptions.o.d ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d ${OBJECTDIR}/_ext/1058221795/pmu_init.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1058221795/exceptions.o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/tasks.c ../src/config/pic32mzw1/exceptions.c ../src/config/pic32mzw1/exceptionsHandler.S ../src/config/pic32mzw1/pmu_init.c ../src/main.c ../src/app.c



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
	${MAKE}  -f nbproject/Makefile-pic32mzw1.mk ${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1025W104132
MP_LINKER_FILE_OPTION=,--script="../src/bootloader/p32MZ1025W104132_bootloader.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/72ba2070c18b818074d5d26cb48b1c2e87a32ee2 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/349f11a60749793f0a2a6489d17dc545b0c772c4 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.ok ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d"  -o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ../src/config/pic32mzw1/exceptionsHandler.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d" "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/dfc02a7c36dc2487a1ea6d3ea793ec1ffb09f1e8 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/4bf0e744279d70af72909a0693dd7b282bcae846 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.ok ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d"  -o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ../src/config/pic32mzw1/exceptionsHandler.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d" "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/4af426ba531b9da0bbbc48d24022a19a8f7d3186 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/77252d6686bf879ecd372ea1da10651eb48e0b38 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/88f70c5727d9cba6df3cc12fc6d61297d12587c4 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/3120a2255042f08b57800abec522d99ba44ec1a3 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/16bf0f587a900d4dbacb79e72439c2f4c2b1393d .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/e20593543675cd92865f061cdc3d7bbaf057e12f .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/280ea89b4c0473816aab06d740bf76da637f69fb .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/cf524532e9994d054706186714a87f72a6a5d6cf .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/cb35417f0f85276f7d7b41a65983322df07e513e .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/668dc3953bcca70b5c2dc223081293dea55b7139 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/febcca179a7296a325d3e1e6b0335e63d9e0e44f .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/e3c4f9313d267033f49064dcdf9cc94f5679648d .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/239eeb12a38728287ce8a6622e3e6134bc7be43b .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/8569d10dfd88a7325ba17afe942d13a3695ce .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/389e5ced37a66bb8ac7780fd0501044aca30c316 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/f7bd40146a31f641b68905e65ee87d8733d4854e .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/c3247c2be76fb8cad4080f5a51fa7e38389987ae .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/2c9b2e8779515d882d479ba2fccc5e3c65a58d51 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/b36745be49dcd410c4c71b4fcee4f43c80d0fd91 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/7dd4fb086fd87e1e383b535e5c203fa01eff848a .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/b97ed8700d1f8eeae05f427618db2b536647a37c .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/c2995c8e86dfb2dfe7c6a1986af25d9e8d4dcc83 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/b3c5b3025d7fcbb8c50d7b5907fd15920da1cc68 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/66a6ef65e132e4c38b417a6b3f2ac2df64c964e7 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/5fa75f77cddd6770202dfd7499f667fde11d5981 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/1d9a06968929a48f603f0c8f6bb37789bc04c322 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/c74ccd19dd81f83dfc04005c6138a8332f2ad130 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/e7267f361d5802b873c02e3c213df56a2f5d4d91 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/3672b5491d04b01841b6289e9409e2a33f1b6762 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/pmu_init.o: ../src/config/pic32mzw1/pmu_init.c  .generated_files/flags/pic32mzw1/36cda359c15762b869bb098cffda18462c742a42 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/pmu_init.o.d" -o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ../src/config/pic32mzw1/pmu_init.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/2beb36ca49691b27fa4d956669cdef438041d7f2 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/7a98fc2196620d582cc7740d7e87ce2ce540ae2e .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/36a6133f5c648ca2f6cbbdac034b7b614a61a173 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/a29a9f71323da116a5de816ef882ea6ee0077eb5 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/4f836c38aeb5990310e0fa7f2e7dbbbed42c6bf1 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/656079183832f4123741b0ef67b46910e22e972 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/b51c6a09212cb2b3a1dc8a839b773cb3cca76ae5 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/31425f7a68261f06b44f18b2c4d9a27b9706f5cd .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/b3120fa218ee5236d36aa23a1b337f66015d1206 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/abbc8d17c30fbf1b307ed295cd198769ce23e0c4 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/733e2ddf25b16d3d247d572d20df8c00c8fd61d7 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/e676cc100c0d2e3a8cc7050173053e45c5ca3d26 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/9c9fb69c3476670b86a6248cfaaf626d02ed24fe .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/5c8dc2e3cd44d810990cfe58fda9b35aa5a54a8 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/b7fc2d02360171251db064d99b50b458ef1c33db .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/cb27780403264fbc91ac69cce7eb916a54f6e790 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/c11e2ed135f05e2b7d01a66e5ef757fc82596e34 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/d09a98bac9d0b7c25ecf78f499fefd186d1cde22 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/c957a9ff960e2e32878295d1efe013f6e7394a71 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/4d6e5b7fd9221541dd2d0d0f9dda28d04d46c9ef .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/ae4616d0e7ef34485649ebbc32042503a46f1989 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/8d40fa605fe1cda71b703d623cbb7d5a2625308f .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/6d190f986e10e3d8974321f6ccb4e625aa7ef02d .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/9c9fffa2af24bc2f1d419f3ac9800d3d3ef7c86b .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/b3953263a61abe1fb2c132db3b8222187d33584 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/7f8f083ff8dd8af001afacdabd7d9dc3b3bb1521 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/9e3f52a91c50df252424a3474c9ebe8545b08341 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/45e58e3d6bc7a6fb3eb539cbf035a306fcf9634a .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/a295e36be9b2db8545e33b0115b1232d903e9105 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/8881b949f13511844c6e90791eb2aad6e553d185 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/ac70dc4f40341bbc41429d61505833aa3db1394a .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/pmu_init.o: ../src/config/pic32mzw1/pmu_init.c  .generated_files/flags/pic32mzw1/46aa698819a226dd732a6939859ff70f2fe70949 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/pmu_init.o.d" -o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ../src/config/pic32mzw1/pmu_init.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/2f95273faea2c9d44f93f2957b287bfe977c299 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/de61168e0768f8cbf1e2ef10499511d06a6e42f2 .generated_files/flags/pic32mzw1/e426f2e5c1612b585ae714625834ce450de445f0
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    ../src/bootloader/p32MZ1025W104132_bootloader.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/bootloader/p32MZ1025W104132_bootloader.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
