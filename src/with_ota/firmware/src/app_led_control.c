/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app_led_control.c

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

/*******************************************************************************
Copyright (C) 2021 released Microchip Technology Inc.  All rights reserved.

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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include "app_led_control.h"
#include "definitions.h"
#include "app_mqtt.h"

// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************

extern bool led_control;
extern bool subscribe_next_topic;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    This structure should be initialized by the APP_LED_CONTROL_Initialize function.

    Application strings and buffers are be defined outside this structure.
*/

APP_LED_CONTROL_DATA app_led_controlData;

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
    void APP_LED_CONTROL_Initialize ( void )

  Remarks:
    See prototype in app_led_control.h.
 */

void APP_LED_CONTROL_Initialize ( void )
{
    /* Place the App state machine in its initial state. */
    app_led_controlData.state = APP_LED_CONTROL_STATE_INIT;



    /* TODO: Initialize your application's state machine and other
     * parameters.
     */
	 
}


/******************************************************************************
  Function:
    void APP_LED_CONTROL_Tasks ( void )

  Remarks:
    See prototype in app_led_control.h.
 */

void APP_LED_CONTROL_Tasks ( void )
{
    /* Check the application's current state. */
    switch ( app_led_controlData.state )
    {
        /* Application's initial state. */
        case APP_LED_CONTROL_STATE_INIT:
        {
            bool appInitialized = true;


            if (appInitialized)
            {

                app_led_controlData.state = APP_LED_CONTROL_STATE_SERVICE_TASKS;
            }
            break;
        }

        case APP_LED_CONTROL_STATE_SERVICE_TASKS:
        {
            /*second topic will be subscribed after first topic */
            if (subscribe_next_topic == true) {
                subscribe_next_topic = false;
                APP_MQTT_Subscribe(MQTT_LED_CONTROL_SUB_TOPIC,1);
                /*SYS_MQTT_SubscribeConfig sMqttCfg_new;
                sMqttCfg_new.qos = 1;
                strcpy(sMqttCfg_new.topicName, MQTT_LED_CONTROL_SUB_TOPIC);
                SYS_MQTT_Subscribe(g_sSysMqttHandle, &sMqttCfg_new);*/
            }
            /*************************Control led*******************************/
            if (led_control == true) {
                //SYS_CONSOLE_PRINT("Switchig On LED\n\r");
                LED_RED_On();
            } else {
                //SYS_CONSOLE_PRINT("Switchig Off LED\n\r");
                LED_RED_Off();
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
