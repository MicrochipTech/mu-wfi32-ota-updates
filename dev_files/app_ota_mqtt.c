/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_ota_mqtt.c

  Summary:
    This file contains the source code for the MPLAB Harmony application.

  Description:
    This file contains the source code for the MPLAB Harmony application.  It
    implements the logic of the application's state machine and it may call
    API routines of other MPLAB Harmony modules in the system, such as drivers,
    system services, and middleware.  However, it does not call any of the
    system interfaces (such as the "Initialize" and "Tasks" functions) of any of
    the modules in the system or make any assumptions about when those functions
    are called.  That is the responsibility of the configuration-specific system
    files.
 *******************************************************************************/

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_ota_mqtt.h"
#include "definitions.h"
#include "system/mqtt/sys_mqtt.h"
#include "app_mqtt.h"
#include "system/mqtt/sys_mqtt.h"
#include "system/sys_time_h2_adapter.h"
#include "string.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_OTA_MQTT_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_OTA_MQTT_DATA app_ota_mqttData;
extern APP_MQTT_DATA g_appMqttData;
extern OTA_STATUS ota_status;
extern bool mqtt_ota_complete;
static uint32_t  g_waitSystemResetTriggerTimeout = 0;
#define WAIT_SYSTEM_RESET_TRIGGER_TIMEOUT   1   // in seconds
#define WAIT_SYSTEM_RESET_TRIGGER_TIMEOUT_CONST (WAIT_SYSTEM_RESET_TRIGGER_TIMEOUT * SYS_TMR_TickCounterFrequencyGet())

// *****************************************************************************
// *****************************************************************************
// Section: Application Callback Functions
// *****************************************************************************
// *****************************************************************************

/* TODO:  Add any necessary callback functions.
*/

// *****************************************************************************
// *****************************************************************************
// Section: Application Local Functions
// *****************************************************************************
// *****************************************************************************


/* TODO:  Add any necessary local functions.
*/


// *****************************************************************************
// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/*******************************************************************************
  Function:
    void APP_OTA_MQTT_Initialize ( void )

  Remarks:
    See prototype in app_ota_mqtt.h.
 */

void APP_OTA_MQTT_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_ota_mqttData.state = APP_OTA_MQTT_STATE_INIT;
    


    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_OTA_MQTT_Tasks ( void )

  Remarks:
    See prototype in app_ota_mqtt.h.
 */

void APP_OTA_MQTT_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_ota_mqttData.state )
    {
        /* Application's initial state. */
        case APP_OTA_MQTT_STATE_INIT:
        {
            bool appInitialized = true;

            if (appInitialized)
            {
                /*Registering ota callback*/
                ota_app_reg_cb();
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_OTA_MQTT_STATE_SERVICE_TASKS:
        { 
            /*if OTA process triggered by user*/
            if (g_appMqttData.mqtt_initiate_ota_check == true) {
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_UPDATE_CHECK_TASKS;
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_UPDATE_CHECK_TASKS:
        {
            if (SYS_OTA_CtrlMsg(SYS_OTA_UPDATECHCK, NULL, 0) == SYS_OTA_SUCCESS) {
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_FOR_UPDATE_CHECK_COMPLETE;
            } else {
                APP_MQTT_PublishMsg("OTA_not_initiated");
                g_appMqttData.mqtt_initiate_ota_check = false;
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_WAIT_FOR_UPDATE_CHECK_COMPLETE:
        {
            if (ota_status == OTA_UPDATED_VERSION_AVAILABLE) {
                if (SYS_OTA_CtrlMsg(SYS_OTA_INITIATE_OTA, NULL, 0) == SYS_OTA_SUCCESS) {
                    APP_MQTT_PublishMsg("Downloading");
                    app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_FOR_OTA_COMPLETE_TASK;
                } else {
                    APP_MQTT_PublishMsg("OTA_not_initiated");
                    mqtt_ota_complete = false;
                    ota_status = OTA_NOT_TRIGGERED;
                    g_appMqttData.mqtt_initiate_ota_check = false;
                    app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
                }
                break;
            } else if (ota_status == OTA_UPDATED_VERSION_NOT_AVAILABLE) {
                APP_MQTT_PublishMsg("Update_not_available");
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
                /*if update available below lines will not be executed*/
                mqtt_ota_complete = false;
                ota_status = OTA_NOT_TRIGGERED;
                g_appMqttData.mqtt_initiate_ota_check = false;
                break;
            }
        }
        
        case APP_OTA_MQTT_STATE_WAIT_FOR_OTA_COMPLETE_TASK:
        {
            if (mqtt_ota_complete == true) {
                mqtt_ota_complete = false;
                g_appMqttData.mqtt_initiate_ota_check = false;
                
                switch(ota_status){
                    case OTA_FAILED:
                        APP_MQTT_PublishMsg("Image_Download_failed");
                        app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
                        ota_status = OTA_NOT_TRIGGERED;
                        break;
                    case OTA_SUCCESS:
                        app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_TRIGGER_SYSTEM_RESET;
                        APP_MQTT_PublishMsg("OTA_Success: Restarting");
                        SYS_CONSOLE_PRINT("\r\nOTA Success: Restarting...\r\n");
                        g_waitSystemResetTriggerTimeout = SYS_TMR_TickCountGet();
                        break;
                    default:
                        break;      
                }
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_WAIT_TRIGGER_SYSTEM_RESET:
        {
            // delay x second to allow SYS_PRINT message to be displayed before system is reset
            if (SYS_TMR_TickCountGet() - g_waitSystemResetTriggerTimeout > WAIT_SYSTEM_RESET_TRIGGER_TIMEOUT_CONST)
            {
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_TRIGGER_SYSTEM_RESET;
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_TRIGGER_SYSTEM_RESET:
        {
            // Must continue to run the OTA state machine until it's idle
            if(SYS_OTA_SUCCESS == SYS_OTA_CtrlMsg(SYS_OTA_TRIGGER_SYSTEM_RESET, NULL, 0)){
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_SYSTEM_RESET;
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_WAIT_SYSTEM_RESET:
        {
            // do nothing while waiting for OTA service to reset the MCU
            break;
        }

        /* TODO: implement your application state machine.*/


        /* The default state should never be executed. */
        default:
        {
            /* TODO: Handle error in application's state machine. */
            break;
        }
    }
}


/*******************************************************************************
 End of File
 */
