/*******************************************************************************
  MPLAB Harmony Application Header File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

  Summary:
    This file contains the source code for the MPLAB Harmony MQTT application.

  Description:
    This file contains the source code for the MPLAB Harmony MQTT application.
    It implements the logic of the application's state machine and it may call
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

// *****************************************************************************
// *****************************************************************************
// Section: Declarations
// *****************************************************************************
// *****************************************************************************

/**Modified : Included various MACRO for MQTT configuration***/ 
/*****Subscribe topic parameters******/
#define     MQTT_SUB_QOS                    1
#define     MQTT_LED_CONTROL_SUB_TOPIC      "../feeds/led-control"
#define     MQTT_OTA_TRIGGER_SUB_TOPIC      "../feeds/ota-trigger"

/*****Publish topic parameters******/
#define     MQTT_MAX_PUB_TOPIC                   2 
#define     MQTT_DEF_PUB_RETAIN             false
#define     MQTT_DEF_PUB_QOS                1
#define     MQTT_SWITCH_STATE_PUB_TOPIC     "../feeds/switch-state"
#define     MQTT_APP_VERSION_PUB_TOPIC      "../feeds/firmware-version"
 
/*****MQTT Broker parameters******/
#define     MQTT_BROKER_SERVER_PORT         1883
#define     MQTT_BROKER_CLEAN_SESSION       true
#define     MQTT_BROKER_NAME                "io.adafruit.com"
#define     MQTT_BROKER_USER_NAME           ""
#define     MQTT_BROKER_PASSWORD            ""
#define     MQTT_BROKER_CLIENTID            ""



void APP_MQTT_Initialize(void);
void APP_MQTT_Tasks(void);

int32_t APP_MQTT_GetStatus(void *p);
int32_t APP_MQTT_PublishMsg(char *message);
int32_t APP_MQTT_Subscribe(const char *topic, uint8_t qos);
void    APP_MQTT_Connect(void);

// *****************************************************************************
/* Application states

  Summary:
    Application states enumeration

  Description:
    This enumeration defines the valid application states.  These states
    determine the behavior of the application at various times.
*/

typedef enum
{
    /* Application's state machine's initial state. */
    APP_MQTT_STATE_CONNECTING=0,
    APP_MQTT_STATE_SUBSCRIBE_LED_CONTROL,
    APP_MQTT_STATE_SUBSCRIBE_OTA_TRIGGER,
    APP_MQTT_STATE_PUB_SUB,
    APP_MQTT_STATE_SERVICE_TASKS
    /* TODO: Define states used by the application state machine. */

} APP_MQTT_STATES;

// *****************************************************************************
/* Application Data

  Summary:
    Holds application data

  Description:
    This structure holds the application's data.

  Remarks:
    Application strings and buffers are be defined outside this structure.
 */

typedef struct
{
    /* The application's current state */
    APP_MQTT_STATES state;
    
    /* TODO: Define any additional data used by the application. */
    bool mqtt_initiate_ota_check;
    bool led_control_topic_is_subscribed;
    bool ota_control_topic_is_subscribed;
    bool mqtt_is_connected;

} APP_MQTT_DATA;

/*******************************************************************************
 End of File
 */
