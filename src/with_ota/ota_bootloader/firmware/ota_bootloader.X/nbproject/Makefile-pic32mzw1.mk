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
SOURCEFILES_QUOTED_IF_SPACED=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/system_pmu_mldo_trim.c ../src/config/pic32mzw1/tasks.c ../src/config/pic32mzw1/exceptions.c ../src/config/pic32mzw1/exceptionsHandler.S ../src/main.c ../src/app.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1058221795/exceptions.o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1505089206/csv.o.d ${OBJECTDIR}/_ext/302149311/bootloader.o.d ${OBJECTDIR}/_ext/302149311/int_flash.o.d ${OBJECTDIR}/_ext/302149311/sha256.o.d ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d ${OBJECTDIR}/_ext/305408435/bsp.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d ${OBJECTDIR}/_ext/687152980/sys_cache.o.d ${OBJECTDIR}/_ext/456523338/ff.o.d ${OBJECTDIR}/_ext/456523338/ffunicode.o.d ${OBJECTDIR}/_ext/1514505107/diskio.o.d ${OBJECTDIR}/_ext/72121328/sys_fs.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d ${OBJECTDIR}/_ext/345302806/sys_int.o.d ${OBJECTDIR}/_ext/1058221795/initialization.o.d ${OBJECTDIR}/_ext/1058221795/interrupts.o.d ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/1058221795/tasks.o.d ${OBJECTDIR}/_ext/1058221795/exceptions.o.d ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1360937237/app.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1505089206/csv.o ${OBJECTDIR}/_ext/302149311/bootloader.o ${OBJECTDIR}/_ext/302149311/int_flash.o ${OBJECTDIR}/_ext/302149311/sha256.o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ${OBJECTDIR}/_ext/305408435/bsp.o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ${OBJECTDIR}/_ext/687152980/sys_cache.o ${OBJECTDIR}/_ext/456523338/ff.o ${OBJECTDIR}/_ext/456523338/ffunicode.o ${OBJECTDIR}/_ext/1514505107/diskio.o ${OBJECTDIR}/_ext/72121328/sys_fs.o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ${OBJECTDIR}/_ext/345302806/sys_int.o ${OBJECTDIR}/_ext/1058221795/initialization.o ${OBJECTDIR}/_ext/1058221795/interrupts.o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1058221795/tasks.o ${OBJECTDIR}/_ext/1058221795/exceptions.o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1360937237/app.o

# Source Files
SOURCEFILES=../src/bootloader/csv/csv.c ../src/bootloader/bootloader.c ../src/bootloader/int_flash.c ../src/bootloader/sha256.c ../src/bootloader/ota_database_parser.c ../src/config/pic32mzw1/bsp/bsp.c ../src/config/pic32mzw1/driver/memory/src/drv_memory.c ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c ../src/config/pic32mzw1/peripheral/cache/plib_cache.c ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S ../src/config/pic32mzw1/peripheral/clk/plib_clk.c ../src/config/pic32mzw1/peripheral/evic/plib_evic.c ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c ../src/config/pic32mzw1/stdio/xc32_monitor.c ../src/config/pic32mzw1/system/cache/sys_cache.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c ../src/config/pic32mzw1/system/fs/src/sys_fs.c ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c ../src/config/pic32mzw1/system/int/src/sys_int.c ../src/config/pic32mzw1/initialization.c ../src/config/pic32mzw1/interrupts.c ../src/config/pic32mzw1/system_pmu_mldo_trim.c ../src/config/pic32mzw1/tasks.c ../src/config/pic32mzw1/exceptions.c ../src/config/pic32mzw1/exceptionsHandler.S ../src/main.c ../src/app.c



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
MP_LINKER_FILE_OPTION=,--script="../src/bootloader/p32MZ1025W104132_bootloader.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/e73d37bd20b366e6c51889af6da7d552eb66cb6a .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/f560f88757066a6d1931a26f394f936e5177b950 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.ok ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d"  -o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ../src/config/pic32mzw1/exceptionsHandler.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d" "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/499cc23630b354467567e741d5b32d9f957a039d .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--gdwarf-2 -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/c64e3dd49612edcae074438deec1ad6a0711b927 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
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
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/7d62e7407f7012c4f3dbc6acfab316422b053d02 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/f93a437da8f5c742fb53d54dd8b07e8744c96394 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/6b4e572ea6566bb2f52c7d7ac5977ca1e2e6123 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/8bfcfd43ed91e98d15af98689c5017c414bab0f3 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/435b27b8e7d2cb106ea53c6ca60fa3b40b64860 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/11cccde90a438ee27ba749eddceb98936948c3aa .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/8d34cb5e396d4271ef747a465bac941ad3b78004 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/a73080f935b6b77f9641be9856df8c105657502e .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/bed09bb53e8da501346c06eb400e6110c400f63f .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/b0a7f1ad5fed08cfecc0c7b14944c14f8120beeb .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/a1cd3d73c6555e292ed3c0f77a1ae8f1ee0ab581 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/c50cea59ba15be89cc02bf46c9166c3234b02402 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/61a3531833957bf3d46c821af035c1654d5dd028 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/22ed1ae96364ae8aa34a0d68e490c915c5b19beb .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/8864d6abec0e0e0763362546b0303b330f360adf .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/dc898ae9b32ba1d9dfc47fd18a8454eb257038d9 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/2af6580eae12e2de69561333a487dc1e68f30bb5 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/79eea12e593627207f95a96c5ec1508d12b8b90a .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/d27950dab7519b1e29e8c0aa1ab8c010328f58bb .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/96a8377452be5e9232d7366fb6ece84b87a0312 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/bd2d99485503bcf6ba412af7f4982232857f10e9 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/1cb5bb6dd7e8eccbc28dce04455936dd9ead32d5 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/3890ae11e69adba1f9de77d403781ec1f1049fa .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/4fe3188547229986535925bd10e5a144f10632d4 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/82b0e7f048790b22b97a83c80edc7b596636ea08 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/6e700488e4e5c6c4139d89c6133e6f743310c38d .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/9e380cd9817b3a5bd5fb9b17db9f0c872d43c3a6 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o: ../src/config/pic32mzw1/system_pmu_mldo_trim.c  .generated_files/flags/pic32mzw1/fe4bdbbb356e2046240c3f779fd8d3d65db176f5 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ../src/config/pic32mzw1/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/f4cdd4857a35fcdf8273d65482755e07c4fbf7f1 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/f29dfc9163a7aac7e94a0f3fc6806e5394e4f681 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/331abb93ceb231927d5509606edd577cc1ccca9a .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/cd41e08e47f72b5ebce051eeca694ebeccae3010 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/6cb40c5149d64c08e34504687321b8509d76a22d .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/a76df2cb4ef752d131559365643579593c3a9567 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/298b886c18a135fd58e2ff57738886dc35ca8fc5 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/c74ba5a709027ff4d474c45461375ac732614ed4 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/441105d6e604207f1258018b4a9ec845c4943fb1 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/4f733e5deedae9659737747e5b0f85313a7dbb4b .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/fa7996c833d542dd2edde0c77330659cdd265708 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/9b5e5004c1ef6fc6dcaeb1e23d81c1bc713856b9 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/77634b066a2dc13c7499d841c36d72e5eba4d3ae .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/aa02e70ef6d4c89465b9b336b01a567bb44a4951 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/9b57f2796dcb877028c5cee21c6ab60666a9cbbe .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/af81291a1cb571d5dde8aeef29e01d22d0323aa8 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/cc44f113fa4336519a85fd29e236181752f3d3b3 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/624bb412d178cbbe1025e29734dc8c3bcd3f1e7 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/fc4b502fad8fa574a5bcbf7753f5cb8e726c762b .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/4a118e5edbf2f79af09135d0fcc0f2ecbcbde257 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/475be9dc56560c8ab223af0106e31e5edeb93f78 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/509d79cf252547c84ea8e7b00b7e3f2835a55276 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/3358bf58ea1ad633147439ba75447f41b67881c0 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/604f12f3446c57e5a0e9cc518b630308cc8a8bf1 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/9c0f69556c0ce4df05a04ee5892dad6885b2e7d .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/9b3095e6479385c07d7f767f057be332995b59df .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/dc062bc9a64299d6b32dba8aad09f51693d7c401 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/3d86b594c1d8c7c0a589c1c95c6899dcf698f913 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/51e61368f2ef4dd7f6d5a08e26cc0d1fe28b62bb .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/a079fadcfa95d530d0d3107fb4c0edd0f0d96e2f .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/6bcdcf1f469d669802244974919f6c6352639e2a .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o: ../src/config/pic32mzw1/system_pmu_mldo_trim.c  .generated_files/flags/pic32mzw1/3e0a9d8b3bdafb6310357c85d425f5907f32b536 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1058221795/system_pmu_mldo_trim.o ../src/config/pic32mzw1/system_pmu_mldo_trim.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/5d77ffea1e40c68a8da49775415a1e31b1d2e84c .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/6163f4c60437d9d81cff093bd2d89625a6c9aff4 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/c2ae712db56ab71ada7fad5fc4ea0ff44bffdb57 .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/d91e320046775b1c8cb3cb8e54b8202db0c01dda .generated_files/flags/pic32mzw1/bab4eaa1a52052780c74096d646ba6529eb0dfbd
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -I"../src/packs/PIC32MZ1025W104132_DFP" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC_DIR}/xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/pic32mzw1
	${RM} -r dist/pic32mzw1
