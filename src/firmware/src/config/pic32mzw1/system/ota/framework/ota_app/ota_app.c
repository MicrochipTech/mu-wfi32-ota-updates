/*******************************************************************************
  OTA Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    ota_app.c

  Summary:
    This file contains the source code for the OTA application.

  Description:
    This file contains the source code for the ota application. It includes necessary callback function
    and respective states. It includes logic to register callback function. Customer can build own logic
 *  on the top of it. 
 *******************************************************************************/

//DOM-IGNORE-BEGIN
/*******************************************************************************
Copyright (C) 2020 released Microchip Technology Inc.  All rights reserved.

Microchip licenses to you the right to use, modify, copy and distribute
Software only when embedded on a Microchip microcontroller or digital signal
controller that is integrated into your product or third party product
(pursuant to the sublicense terms in the accompanying license agreement).

You should refer to the license agreement accompanying this Software for
additional information regarding your rights and obligations.

SOFTWARE AND DOCUMENTATION ARE PROVIDED AS IS WITHOUT WARRANTY OF ANY KIND,
EITHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF
MERCHANTABILITY, TITLE, NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE.
IN NO EVENT SHALL MICROCHIP OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER
CONTRACT, NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR
OTHER LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE OR
CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT OF
SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
(INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.
 *******************************************************************************/
//DOM-IGNORE-END
// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "ota_app.h"
#include "definitions.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

uint8_t mqtt_ota_trigger_status;
bool mqtt_ota_complete;
// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
 */
void sys_ota_cb(uint32_t event, void * data, void *cookie) {
    switch (event) {
        
        case SYS_OTA_UPDATE_CHECK_START:
        {
            /*OTA update check start . Customer can build their own custom logic */
            SYS_CONSOLE_PRINT("SYS_OTA_UPDATE_CHECK_START\r\n");
            break;
        }
        case SYS_OTA_UPDATE_CHECK_FAILED:
        {
            /*OTA update check failed . Customer can build their own custom logic */
            SYS_CONSOLE_PRINT("SYS_OTA_UPDATE_CHECK_FAILED\r\n");
            break;
        }
        case SYS_OTA_UPDATE_AVAILABLE:
        {
            /*OTA update available . Customer can build their own custom logic */
            mqtt_ota_trigger_status = 1;
            SYS_CONSOLE_PRINT("SYS_OTA_UPDATE_AVAILABLE\r\n");
            break;
        }
        case SYS_OTA_UPDATE_NOTAVAILABLE:
        {
            /*OTA update not available. Customer can build their own custom logic*/
            mqtt_ota_trigger_status = 2;
            SYS_CONSOLE_PRINT("SYS_OTA_UPDATE_NOTAVAILABLE\r\n");
            break;
        }
        case SYS_OTA_TRIGGER_OTA_FAILED:
        {
            /*OTA trigger failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_TRIGGER_OTA_FAILED\r\n");
            break;
        }
        case SYS_OTA_FACTORY_RESET_SUCCESS:
        {
            /*OTA Factory reset success . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_FACTORY_RESET_SUCCESS\r\n");
            break;
        }
        case SYS_OTA_FACTORY_RESET_FAILED:
        {
            /*OTA Factory reset failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_FACTORY_RESET_FAILED\r\n");
            break;
        }
        case SYS_OTA_ROLLBACK_SUCCESS:
        {
            /*OTA rollback success . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_ROLLBACK_SUCCESS\r\n");
            break;
        }
        case SYS_OTA_ROLLBACK_FAILED:
        {
            /*OTA rollback failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_ROLLBACK_FAILED\r\n");
            break;
        }
        case SYS_OTA_DOWNLOAD_START:
        {
            /*OTA image download start . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_DOWNLOAD_START\r\n");
            break;
        }
        case SYS_OTA_DOWNLOAD_SUCCESS:
        {
            /*OTA image download success . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_DOWNLOAD_SUCCESS\r\n");
            break;
        }
        case SYS_OTA_DOWNLOAD_FAILED:
        {
            mqtt_ota_complete = true;
            mqtt_ota_trigger_status = 3;
            /*OTA image download failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_DOWNLOAD_FAILED\r\n");
            break;
        }
        case SYS_OTA_IMAGE_DIGEST_VERIFY_START:
        {
            /*OTA image digest verify start . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_DIGEST_VERIFY_START\r\n");
            break;
        }
        case SYS_OTA_IMAGE_DIGEST_VERIFY_SUCCESS:
        {
            /*OTA image digest verify success . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_DIGEST_VERIFY_SUCCESS\r\n");
            mqtt_ota_complete = true;
            break;
        }
        case SYS_OTA_IMAGE_DIGEST_VERIFY_FAILED:
        {
            mqtt_ota_complete = true;
            mqtt_ota_trigger_status = 3;
            /*OTA image digest verify failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_VERIFICATION_FAILED\r\n");
            
            break;
        }
        case SYS_OTA_IMAGE_ERASE_FAILED:
        {
            /*OTA image erase failed . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_ERASE_FAILED\r\n");
            break;
        }
        case SYS_OTA_IMAGE_ERASED:
        {
            /*OTA image erase success . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_ERASED\r\n");
            break;
        }
        case SYS_OTA_IMAGE_DATABASE_FULL:
        {
            /*OTA image database full . Customer can build their own custom logic*/
            SYS_CONSOLE_PRINT("SYS_OTA_IMAGE_DATABASE_FULL\r\n");
            break;
        }
        default:
        {
            /*unknown state*/
            break;
        }
    }
}
// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
 */

/*******************************************************************************
  Function:
    bool ota_app_reg_cb(void)

  Remarks:
    Registering OTA service callback function.
  Return:
    True: if success
    False: if fail
 */
bool ota_app_reg_cb(void) {
    if (SYS_OTA_SUCCESS == SYS_OTA_CtrlMsg(SYS_OTA_REGCALLBACK, sys_ota_cb, sizeof (uint8_t *))) {
        return true;
    } else {
        return false;
    }
}


/*******************************************************************************
 End of File
 */
