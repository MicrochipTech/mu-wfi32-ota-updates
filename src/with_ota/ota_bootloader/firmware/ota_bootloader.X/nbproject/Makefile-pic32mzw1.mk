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
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/46c1cd85e81e0dc80dbfedcfc8cb43d25e86f2d1 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/b00b91f4a36fa637eb2a894862efa35cca8d7037 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.ok ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d"  -o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ../src/config/pic32mzw1/exceptionsHandler.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d" "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  .generated_files/flags/pic32mzw1/4e8b034af3e1acff3bcdb69f14ff9bf673372769 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o ../src/config/pic32mzw1/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1289446431/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o: ../src/config/pic32mzw1/exceptionsHandler.S  .generated_files/flags/pic32mzw1/dbf2054485c0e8ffa23e38fe419e22d6ee3338ef .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.ok ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION)  -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d"  -o ${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o ../src/config/pic32mzw1/exceptionsHandler.S  -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d",--gdwarf-2 
	@${FIXDEPS} "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.d" "${OBJECTDIR}/_ext/1058221795/exceptionsHandler.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/2b0b8a69e823751d48a5c29874cc6080fdd63466 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/95fb0c84727550260aaf9ea9ee5facc7bf209eb0 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/ffd3cca8942a2d53e79d6452965552ddea1ccec7 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/fc2a7ef45ddf325fa259528e7edfce12290496ab .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/26d423f5e4ce1dd56f081a6ee68b0f8002c8bc04 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/d8323c9cb7b7c7d62a087822ecb1a1076fe0ec47 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/1444fa34506be4a20ba9fe04e01b867667075c2e .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/6a2ffa57fc0e0db5c2d3e608c6a4355f758e88e1 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/e449f63f1927493eeb1a533303af9a5c9c4c6313 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/8bfefd30272ac54c7891e13e57de7db9c1159e0a .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/8a2819d204903be4ef6c3f288401f252e18c7ed4 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/12e3b3e83421db2442123489b4ac5e1552c9ce9f .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/6ebf03c3185710075c7f1f740e15b78900eb0d26 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/8cc5007fa98f41baf02b54e8cb28bfa4ff947698 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/25ffd0f2c2fdecd34fe5974fce0230eab5693523 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/e61c71979501e4b4ecc924e84daa3eb47d3c97f5 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/e24f40858f7fa0809728c1f5aba0e47b6de0f7cf .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/7f26859d4137f1ec5b551c30c325e81cb96959c8 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/a76ff97b9ff5a970e085b109fbb8859d1ed2485a .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/4a0347205de0f773925ce7f455f799923365d8eb .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/771e3d279000958e9c3b1ded0eb1d6ba892729d3 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/db20c0959660ba6bd03e87a3e2cd0323b48cec1b .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/ebeba5f9459314c72ac9c115bac171aaf893a533 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/5da00f79259e2d76edf6716b6ca464bf1d447aa3 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/50a082c94d8d37e7f0b5b20e84e1f8e5a0cc0063 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/ee5db36bdc4d90df3d0bb01c530583e603f0012e .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/d1925ff8766fd374205e74b5e1a046e73396ff20 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/616d06036352d13ce51723d884de55a0b6d76444 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/b8403ec536c578efe0dfc01f78941dca36dc155f .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/pmu_init.o: ../src/config/pic32mzw1/pmu_init.c  .generated_files/flags/pic32mzw1/66e42ce67376c8b7ef10922ecf3530226d70acad .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/pmu_init.o.d" -o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ../src/config/pic32mzw1/pmu_init.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/8e80a41fef341b268d6b8e4352c4efb5313d18cd .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/9f35ba200056f695ff612c357d745c2b219b3b03 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
else
${OBJECTDIR}/_ext/1505089206/csv.o: ../src/bootloader/csv/csv.c  .generated_files/flags/pic32mzw1/bdd49c0646ac12cbf0ab0b67f6ae8c4eabda96cf .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1505089206" 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1505089206/csv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1505089206/csv.o.d" -o ${OBJECTDIR}/_ext/1505089206/csv.o ../src/bootloader/csv/csv.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/bootloader.o: ../src/bootloader/bootloader.c  .generated_files/flags/pic32mzw1/f77d011b585e54b35c75ce04da84b78eded3d611 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/bootloader.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/bootloader.o.d" -o ${OBJECTDIR}/_ext/302149311/bootloader.o ../src/bootloader/bootloader.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/int_flash.o: ../src/bootloader/int_flash.c  .generated_files/flags/pic32mzw1/74728a06505eb6f5e57df3a344f9041d740303ab .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/int_flash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/int_flash.o.d" -o ${OBJECTDIR}/_ext/302149311/int_flash.o ../src/bootloader/int_flash.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/sha256.o: ../src/bootloader/sha256.c  .generated_files/flags/pic32mzw1/6718429c4b5efae874b23c35131f87573927c7f6 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/sha256.o.d" -o ${OBJECTDIR}/_ext/302149311/sha256.o ../src/bootloader/sha256.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/302149311/ota_database_parser.o: ../src/bootloader/ota_database_parser.c  .generated_files/flags/pic32mzw1/956c7ace4e31e1557523990c9567f36032e3ed17 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/302149311" 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d 
	@${RM} ${OBJECTDIR}/_ext/302149311/ota_database_parser.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/302149311/ota_database_parser.o.d" -o ${OBJECTDIR}/_ext/302149311/ota_database_parser.o ../src/bootloader/ota_database_parser.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/305408435/bsp.o: ../src/config/pic32mzw1/bsp/bsp.c  .generated_files/flags/pic32mzw1/ab42d1ad8fd80d1e21cb1a5b4365d5fc0710ea69 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/305408435" 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/305408435/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/305408435/bsp.o.d" -o ${OBJECTDIR}/_ext/305408435/bsp.o ../src/config/pic32mzw1/bsp/bsp.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1704679509/drv_memory.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory.c  .generated_files/flags/pic32mzw1/86973383625f872c1a3cd573c02a716b5ad86902 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory.o ../src/config/pic32mzw1/driver/memory/src/drv_memory.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o: ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c  .generated_files/flags/pic32mzw1/4aa9f2bef5648086f750e0e9a1eab1e102e25582 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1704679509" 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/1704679509/drv_memory_file_system.o ../src/config/pic32mzw1/driver/memory/src/drv_memory_file_system.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1559640120/drv_sst26.o: ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c  .generated_files/flags/pic32mzw1/3c7dba08dda48b3f3c44c280cd40e2d9ac326930 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1559640120" 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d 
	@${RM} ${OBJECTDIR}/_ext/1559640120/drv_sst26.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1559640120/drv_sst26.o.d" -o ${OBJECTDIR}/_ext/1559640120/drv_sst26.o ../src/config/pic32mzw1/driver/sst26/src/drv_sst26.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1289446431/plib_cache.o: ../src/config/pic32mzw1/peripheral/cache/plib_cache.c  .generated_files/flags/pic32mzw1/5ab84b09d72d96240a5624b1fca76f27a8fc27f8 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1289446431" 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1289446431/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1289446431/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1289446431/plib_cache.o ../src/config/pic32mzw1/peripheral/cache/plib_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1476200127/plib_clk.o: ../src/config/pic32mzw1/peripheral/clk/plib_clk.c  .generated_files/flags/pic32mzw1/75830f088762e27b7a4228181f4cc5f9ec1f2de4 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1476200127" 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476200127/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476200127/plib_clk.o.d" -o ${OBJECTDIR}/_ext/1476200127/plib_clk.o ../src/config/pic32mzw1/peripheral/clk/plib_clk.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482505548/plib_evic.o: ../src/config/pic32mzw1/peripheral/evic/plib_evic.c  .generated_files/flags/pic32mzw1/d38df6801408f5a1fcbf17e860f832d9277b60d0 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482505548" 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482505548/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482505548/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1482505548/plib_evic.o ../src/config/pic32mzw1/peripheral/evic/plib_evic.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482559376/plib_gpio.o: ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c  .generated_files/flags/pic32mzw1/dcd36e24c190c9bd9ce11aa4ef36c5d6b6705ef7 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482559376" 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482559376/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482559376/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1482559376/plib_gpio.o ../src/config/pic32mzw1/peripheral/gpio/plib_gpio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1476189244/plib_nvm.o: ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c  .generated_files/flags/pic32mzw1/ff3c7dd5677424231bc6d852b145bfe69da59258 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1476189244" 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1476189244/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1476189244/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/1476189244/plib_nvm.o ../src/config/pic32mzw1/peripheral/nvm/plib_nvm.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/377196313/plib_spi1_master.o: ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c  .generated_files/flags/pic32mzw1/2a4010a709a6ec7b20ddc78e81d10b8667db365 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/377196313" 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d 
	@${RM} ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/377196313/plib_spi1_master.o.d" -o ${OBJECTDIR}/_ext/377196313/plib_spi1_master.o ../src/config/pic32mzw1/peripheral/spi/spi_master/plib_spi1_master.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1482962319/plib_uart1.o: ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c  .generated_files/flags/pic32mzw1/837ceed1d5fbc6265d49b629ea84b01cfbab028 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1482962319" 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1482962319/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1482962319/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1482962319/plib_uart1.o ../src/config/pic32mzw1/peripheral/uart/plib_uart1.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1424008425/xc32_monitor.o: ../src/config/pic32mzw1/stdio/xc32_monitor.c  .generated_files/flags/pic32mzw1/deb4a44c0a7d08f8779d99fa4b02f4edd04dc5fd .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1424008425" 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1424008425/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/1424008425/xc32_monitor.o ../src/config/pic32mzw1/stdio/xc32_monitor.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/687152980/sys_cache.o: ../src/config/pic32mzw1/system/cache/sys_cache.c  .generated_files/flags/pic32mzw1/7d4e53a672cbfcb7fbe680b3546c642cedadf1ad .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/687152980" 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/687152980/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/687152980/sys_cache.o.d" -o ${OBJECTDIR}/_ext/687152980/sys_cache.o ../src/config/pic32mzw1/system/cache/sys_cache.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/456523338/ff.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c  .generated_files/flags/pic32mzw1/e491a7fa3648b51cf7b613c3271401cca44d20c3 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ff.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ff.o.d" -o ${OBJECTDIR}/_ext/456523338/ff.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ff.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/456523338/ffunicode.o: ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c  .generated_files/flags/pic32mzw1/5708343a0fdcdf3a0ebe3abb9cbf157d75e753e1 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/456523338" 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o.d 
	@${RM} ${OBJECTDIR}/_ext/456523338/ffunicode.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/456523338/ffunicode.o.d" -o ${OBJECTDIR}/_ext/456523338/ffunicode.o ../src/config/pic32mzw1/system/fs/fat_fs/file_system/ffunicode.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1514505107/diskio.o: ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c  .generated_files/flags/pic32mzw1/e58924cede94c01cdd8d5a3a9bdc602204772663 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1514505107" 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1514505107/diskio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1514505107/diskio.o.d" -o ${OBJECTDIR}/_ext/1514505107/diskio.o ../src/config/pic32mzw1/system/fs/fat_fs/hardware_access/diskio.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs.o: ../src/config/pic32mzw1/system/fs/src/sys_fs.c  .generated_files/flags/pic32mzw1/a57b86ca17122d5b23ace7e6934bacda546cfa4e .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs.o ../src/config/pic32mzw1/system/fs/src/sys_fs.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c  .generated_files/flags/pic32mzw1/588036951110ca6e497185a62f8dd1e05a1df57e .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_media_manager.o ../src/config/pic32mzw1/system/fs/src/sys_fs_media_manager.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o: ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c  .generated_files/flags/pic32mzw1/b25fecd8697f5a8e541dae7952b022eb7166d24d .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/72121328" 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d 
	@${RM} ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o.d" -o ${OBJECTDIR}/_ext/72121328/sys_fs_fat_interface.o ../src/config/pic32mzw1/system/fs/src/sys_fs_fat_interface.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/345302806/sys_int.o: ../src/config/pic32mzw1/system/int/src/sys_int.c  .generated_files/flags/pic32mzw1/278c3e13d6b627b5cb505b03333ed631a795c9df .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/345302806" 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/345302806/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/345302806/sys_int.o.d" -o ${OBJECTDIR}/_ext/345302806/sys_int.o ../src/config/pic32mzw1/system/int/src/sys_int.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/initialization.o: ../src/config/pic32mzw1/initialization.c  .generated_files/flags/pic32mzw1/83eccb3cfcd5a8b3c11e1fd839bee653476fc436 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/initialization.o.d" -o ${OBJECTDIR}/_ext/1058221795/initialization.o ../src/config/pic32mzw1/initialization.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/interrupts.o: ../src/config/pic32mzw1/interrupts.c  .generated_files/flags/pic32mzw1/b043929b1c1f57b09cbd5b9871d13dd8a6180898 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/interrupts.o.d" -o ${OBJECTDIR}/_ext/1058221795/interrupts.o ../src/config/pic32mzw1/interrupts.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/tasks.o: ../src/config/pic32mzw1/tasks.c  .generated_files/flags/pic32mzw1/1c8a83aeca34998e78f41b8064d71f428f7119da .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/tasks.o.d" -o ${OBJECTDIR}/_ext/1058221795/tasks.o ../src/config/pic32mzw1/tasks.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/exceptions.o: ../src/config/pic32mzw1/exceptions.c  .generated_files/flags/pic32mzw1/18daab93ce8eddcafff39a064b15803a2b015a20 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/exceptions.o.d" -o ${OBJECTDIR}/_ext/1058221795/exceptions.o ../src/config/pic32mzw1/exceptions.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1058221795/pmu_init.o: ../src/config/pic32mzw1/pmu_init.c  .generated_files/flags/pic32mzw1/7382a13f4615d2f7badef69f0a3c53771b0c9807 .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1058221795" 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o.d 
	@${RM} ${OBJECTDIR}/_ext/1058221795/pmu_init.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1058221795/pmu_init.o.d" -o ${OBJECTDIR}/_ext/1058221795/pmu_init.o ../src/config/pic32mzw1/pmu_init.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  .generated_files/flags/pic32mzw1/3e46383095b7fcdad3190fcb3defbf8d39ec4aca .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
${OBJECTDIR}/_ext/1360937237/app.o: ../src/app.c  .generated_files/flags/pic32mzw1/4e73929b21b3b543c919b5815be7959f650dcf0c .generated_files/flags/pic32mzw1/ac79cb83f223a8ad0818d3d13b835d2ffa41ea6e
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -I"../../../framework" -I"../src" -I"../src/config/pic32mzw1" -I"../src/config/pic32mzw1/system/fs/fat_fs/file_system" -I"../src/config/pic32mzw1/system/fs/fat_fs/hardware_access" -Werror -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/1360937237/app.o.d" -o ${OBJECTDIR}/_ext/1360937237/app.o ../src/app.c    -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)    
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   ../src/bootloader/p32MZ1025W104132_bootloader.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/ota_bootloader.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_pic32mzw1=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=8192,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml 
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
