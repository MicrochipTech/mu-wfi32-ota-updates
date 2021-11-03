/*******************************************************************************
  MPLAB Harmony Application Source File

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
#include "system/mqtt/sys_mqtt.h"
#include "app_mqtt.h"
// *****************************************************************************
// *****************************************************************************
// Section: Declarations
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// *****************************************************************************
// Section: Global Data Definitions
// *****************************************************************************
// *****************************************************************************
// *****************************************************************************


volatile APP_DATA g_appData;

SYS_MODULE_OBJ g_sSysMqttHandle = SYS_MODULE_OBJ_INVALID;
SYS_MQTT_Config g_sTmpSysMqttCfg;

/**Modified : Included variable to control LED, this is extern for app_led_control.c***/ 
bool led_control;
bool mqtt_initiate_ota_check = false;
bool subscribe_next_topic;
/**Modified : Included MACRO to support configuration using MQTT APIs.***/ 
#define APP_CFG_WITH_MQTT_API

// *****************************************************************************
// *****************************************************************************
// Section: Local data
// *****************************************************************************
// *****************************************************************************


int32_t APP_MQTT_PublishMsg(char *message) {
	SYS_MQTT_PublishTopicCfg	sMqttTopicCfg;
	int32_t retVal = SYS_MQTT_FAILURE;
    
    /**Modified : Changed MQTT topic name for Application version ***/ 
	strcpy(sMqttTopicCfg.topicName, MQTT_APP_VERSION_PUB_TOPIC);
	sMqttTopicCfg.topicLength = strlen(MQTT_APP_VERSION_PUB_TOPIC);
	sMqttTopicCfg.retain = MQTT_DEF_PUB_RETAIN;
	sMqttTopicCfg.qos = MQTT_DEF_PUB_QOS;

	retVal = SYS_MQTT_Publish(g_sSysMqttHandle,
			&sMqttTopicCfg,
			message,
			strlen(message));
	if (retVal != SYS_MQTT_SUCCESS) {
		SYS_CONSOLE_PRINT("\nPublish_PeriodicMsg(): Failed (%d)\r\n", retVal);
	}
	return retVal;
}



// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

/******************************************************************************
  Function:
    int32_t MqttCallback(SYS_MQTT_EVENT_TYPE eEventType, void *data, uint16_t len, void* cookie)

  Remarks:
    Callback function registered with the SYS_MQTT_Connect() API. For more details 
	check https://microchip-mplab-harmony.github.io/wireless/system/mqtt/docs/interface.html
 */
int32_t MqttCallback(SYS_MQTT_EVENT_TYPE eEventType, void *data, uint16_t len, void* cookie) {
    switch (eEventType) {
        case SYS_MQTT_EVENT_MSG_RCVD:
        {
            /* Message received on Subscribed Topic */
            SYS_MQTT_PublishConfig *psMsg = (SYS_MQTT_PublishConfig *) data;
            psMsg->message[psMsg->messageLength] = 0;
            psMsg->topicName[psMsg->topicLength] = 0;
            SYS_CONSOLE_PRINT("\nMqttCallback(): Msg received on Topic: %s ; Msg: %s\r\n",
                    psMsg->topicName, psMsg->message);
            
            //ota
            if (!strncmp((char*) psMsg->message, "start", (psMsg->messageLength - 1)))
                mqtt_initiate_ota_check = true;
            
            /***Modified : Included LED control message***/
            if (!strcmp((char*) psMsg->topicName, MQTT_LED_CONTROL_SUB_TOPIC)) {
                if (!strcmp((char*) psMsg->message, "ON"))
                    led_control = true;
                else if (!strcmp((char*) psMsg->message, "OFF"))
                    led_control = false;
                else {
                    /*Do nothing*/
                }
            }
        }
        break;

        case SYS_MQTT_EVENT_MSG_DISCONNECTED:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): MQTT Disconnected\r\n");
        }
        break;

        case SYS_MQTT_EVENT_MSG_CONNECTED:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): MQTT Connected\r\n");
        }
        break;

        case SYS_MQTT_EVENT_MSG_SUBSCRIBED:
        {
            /***Modified : Added console print ***/
            SYS_MQTT_SubscribeConfig *psMqttSubCfg = (SYS_MQTT_SubscribeConfig *) data;
            SYS_CONSOLE_PRINT("\nMqttCallback(): Subscribed to Topic '%s'\r\n", psMqttSubCfg->topicName);
            
            if (!strcmp(psMqttSubCfg->topicName, MQTT_OTA_TRIGGER_SUB_TOPIC)) {
                SYS_CONSOLE_PRINT("Topic %s is subscribed, Subscribing next topic\n\r", psMqttSubCfg->topicName);              
                subscribe_next_topic = true;
            }
        }
        break;

        case SYS_MQTT_EVENT_MSG_UNSUBSCRIBED:
        {
            /***Modified : Added console print ***/
            SYS_MQTT_SubscribeConfig *psMqttSubCfg = (SYS_MQTT_SubscribeConfig *) data;
            SYS_CONSOLE_PRINT("\nMqttCallback(): UnSubscribed to Topic '%s'\r\n", psMqttSubCfg->topicName);
        }
        break;

        case SYS_MQTT_EVENT_MSG_PUBLISHED:
        {
            /* MQTT Client Msg Published */
           
        }
        break;

        case SYS_MQTT_EVENT_MSG_CONNACK_TO:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): Connack Timeout Happened\r\n");
        }
        break;

        case SYS_MQTT_EVENT_MSG_SUBACK_TO:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): Suback Timeout Happened\r\n");
        }
        break;

        case SYS_MQTT_EVENT_MSG_PUBACK_TO:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): Puback Timeout Happened\r\n");
            
        }
        break;

        case SYS_MQTT_EVENT_MSG_UNSUBACK_TO:
        {
            /***Modified : Added console print ***/
            SYS_CONSOLE_PRINT("\nMqttCallback(): UnSuback Timeout Happened\r\n");
        }
        break;

    }
    return SYS_MQTT_SUCCESS;

    
}

/*******************************************************************************
  Function:
    void APP_MQTT_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_MQTT_Initialize(void) {

	/*
	** For more details check https://microchip-mplab-harmony.github.io/wireless/system/mqtt/docs/interface.html
	*/
#ifdef APP_CFG_WITH_MQTT_API

	/* In case the user does not want to use the configuration given in the MHC */
    
    /***Modified : Initializing required parameters using APIs***/
    SYS_MQTT_Config *psMqttCfg;
    memset(&g_sTmpSysMqttCfg, 0, sizeof (g_sTmpSysMqttCfg));
    psMqttCfg = &g_sTmpSysMqttCfg;
    psMqttCfg->sBrokerConfig.autoConnect = false;
    psMqttCfg->sBrokerConfig.tlsEnabled = false;
    strcpy(psMqttCfg->sBrokerConfig.brokerName, MQTT_BROKER_NAME);
    strcpy(psMqttCfg->sBrokerConfig.username, MQTT_BROKER_USER_NAME);
    strcpy(psMqttCfg->sBrokerConfig.password, MQTT_BROKER_PASSWORD);
    strcpy(psMqttCfg->sBrokerConfig.clientId, MQTT_BROKER_CLIENTID);
    psMqttCfg->sBrokerConfig.serverPort = MQTT_BROKER_SERVER_PORT;
    psMqttCfg->sBrokerConfig.cleanSession = MQTT_BROKER_CLEAN_SESSION;
    psMqttCfg->subscribeCount = MQTT_SUB_TOPIC_COUNT;
    psMqttCfg->sSubscribeConfig[0].qos = MQTT_SUB_QOS;
    strcpy(psMqttCfg->sSubscribeConfig[0].topicName, MQTT_OTA_TRIGGER_SUB_TOPIC);
    g_sSysMqttHandle = SYS_MQTT_Connect(&g_sTmpSysMqttCfg, MqttCallback, NULL);
#else    
    g_sSysMqttHandle = SYS_MQTT_Connect(NULL, /* NULL value means that the MHC configuration should be used for this connection */
										MqttCallback, 
										NULL);
#endif    
}

/******************************************************************************
  Function:
    void APP_MQTT_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_MQTT_Tasks(void) {

    SYS_MQTT_Task(g_sSysMqttHandle);
}

/******************************************************************************
  Function:
    int32_t APP_MQTT_GetStatus ( void *)

  Remarks:
    See prototype in app.h.
 */
int32_t APP_MQTT_GetStatus(void *p) {

    return SYS_MQTT_GetStatus(g_sSysMqttHandle);
}

int32_t APP_MQTT_Subscribe(const char *topic, uint8_t qos) {
    SYS_MQTT_SubscribeConfig    sSubCfg;
    memset(&sSubCfg, 0, sizeof(sSubCfg));
    sSubCfg.qos = 1;
    strcpy(sSubCfg.topicName, topic);
    return SYS_MQTT_Subscribe(g_sSysMqttHandle, &sSubCfg);
}
/*******************************************************************************
 End of File
 */
