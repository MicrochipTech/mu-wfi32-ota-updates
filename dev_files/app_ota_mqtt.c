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

char *mqtt_pub_message[] = {   "Downloading",
                            "Update_not_available",
                            "Image_Download_failed"};

typedef enum{
    DOWNLOADING=0,
    UPDATE_NOT_AVAILABLE,
    IMAGE_DOWNLOAD_FAILED        
}MQTT_PUB_MESSAGE;
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
            //SYS_MQTT_Task(g_sSysMqttHandle);

            if (SYS_OTA_CtrlMsg(SYS_OTA_UPDATECHCK, NULL, 0) == SYS_OTA_SUCCESS) {
                //SYS_CONSOLE_PRINT("OTA update check initiated successfully \r\n");
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_FOR_UPDATE_CHECK_COMPLETE;
            } else {
                //sprintf(message, "{\"value\": %d}", APPLICATION_VERSION);
                APP_MQTT_PublishMsg("OTA_not_initiated");
                //SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, "OTA_not_initiated", 17);
                g_appMqttData.mqtt_initiate_ota_check = false;
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
            }
            break;
        }
        
        case APP_OTA_MQTT_STATE_WAIT_FOR_UPDATE_CHECK_COMPLETE:
        {
            if (ota_status == OTA_UPDATED_VERSION_AVAILABLE) {
                APP_MQTT_PublishMsg(mqtt_pub_message[DOWNLOADING]);
                //SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, mqtt_pub_message[DOWNLOADING], strlen(mqtt_pub_message[DOWNLOADING]));
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_WAIT_FOR_OTA_COMPLETE_TASK;
                /*Go to next state*/
                break;
            } else if (ota_status == OTA_UPDATED_VERSION_NOT_AVAILABLE) {
                APP_MQTT_PublishMsg(mqtt_pub_message[UPDATE_NOT_AVAILABLE]);
                //SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, mqtt_pub_message[UPDATE_NOT_AVAILABLE], strlen(mqtt_pub_message[UPDATE_NOT_AVAILABLE]));
                app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
                /*if update available below lines will not be executed*/
                mqtt_ota_complete = false;
                ota_status = OTA_NOT_TRIGGERED;
                g_appMqttData.mqtt_initiate_ota_check = false;

            }
        }
        
        case APP_OTA_MQTT_STATE_WAIT_FOR_OTA_COMPLETE_TASK:
        {
            if (mqtt_ota_complete == true) {
                mqtt_ota_complete = false;
                g_appMqttData.mqtt_initiate_ota_check = false;
                
                if(ota_status == OTA_FAILED){
                    APP_MQTT_PublishMsg("Image_Download_failed");
                    //SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, "Image_Download_failed", 22);
                    app_ota_mqttData.state = APP_OTA_MQTT_STATE_SERVICE_TASKS;
                }
                ota_status = OTA_NOT_TRIGGERED;
            }
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
