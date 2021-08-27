/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_switch.c

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

#include "app_switch.h"
#include "definitions.h"
#include "app_mqtt.h"
// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
extern SYS_MODULE_OBJ g_sSysMqttHandle;
SYS_MQTT_PublishTopicCfg	sMqttPubTopicCfg[MQTT_MAX_PUB_TOPIC];
bool prev_switch_state;
// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_SWITCH_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_SWITCH_DATA app_switchData;

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
    void APP_SWITCH_Initialize ( void )

  Remarks:
    See prototype in app_switch.h.
 */

void APP_SWITCH_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_switchData.state = APP_SWITCH_STATE_INIT;

    strcpy(sMqttPubTopicCfg[0].topicName,MQTT_SWITCH_STATE_PUB_TOPIC);
    sMqttPubTopicCfg[0].topicLength = strlen(MQTT_SWITCH_STATE_PUB_TOPIC);
    sMqttPubTopicCfg[0].retain = MQTT_DEF_PUB_RETAIN;
    sMqttPubTopicCfg[0].qos = MQTT_DEF_PUB_QOS;

    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
}


/******************************************************************************
  Function:
    void APP_SWITCH_Tasks ( void )

  Remarks:
    See prototype in app_switch.h.
 */

void APP_SWITCH_Tasks ( void )
{

    /* Check the application's current state. */
    switch ( app_switchData.state )
    {
        /* Application's initial state. */
        case APP_SWITCH_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                app_switchData.state = APP_SWITCH_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_SWITCH_STATE_SERVICE_TASKS:
        {
            if((SWITCH1_Get()  == SWITCH1_STATE_PRESSED) && (prev_switch_state == SWITCH1_STATE_RELEASED))
            {
                prev_switch_state = SWITCH1_STATE_PRESSED;
                
                SYS_MQTT_Publish(g_sSysMqttHandle, 
                                &sMqttPubTopicCfg[0],
                                "SWITCH1_STATE_PRESSED",
                                sizeof("SWITCH1_STATE_PRESSED"));
            }
            else if(SWITCH1_Get()  == SWITCH1_STATE_RELEASED && (prev_switch_state == SWITCH1_STATE_PRESSED))
            {
                
                prev_switch_state = SWITCH1_STATE_RELEASED;
                 
                SYS_MQTT_Publish(g_sSysMqttHandle, 
                                &sMqttPubTopicCfg[0],
                                "SWITCH1_STATE_RELEASED",
                                sizeof("SWITCH1_STATE_RELEASED"));
            }
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
