/*******************************************************************************
  MPLAB Harmony Application Source File

  Company:
    Microchip Technology Inc.

  File Name:
    app.c

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

// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************
#include "app.h"
#include "system/mqtt/sys_mqtt.h"
#include "string.h"
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
char *mqtt_pub_message[] = {   "Downloading",
                            "Update_not_available",
                            "Image_Download_failed"};
typedef enum{
    DOWNLOADING=0,
    UPDATE_NOT_AVAILABLE,
    IMAGE_DOWNLOAD_FAILED        
}MQTT_PUB_MESSAGE;
bool led_control;
bool prev_switch_state;
SYS_MQTT_PublishTopicCfg	sMqttTopicCfg_1;
/*==============================================================================*/
volatile APP_DATA g_appData;

SYS_MODULE_OBJ g_sSysMqttHandle = SYS_MODULE_OBJ_INVALID;
SYS_MQTT_Config g_sTmpSysMqttCfg;
static uint32_t g_lastPubTimeout = 0;
static uint32_t PubMsgCnt = 0;
bool mqtt_initiate_ota_check = false;
static SYS_WIFI_CONFIG wificonfig;
extern uint8_t mqtt_ota_trigger_status;
extern bool mqtt_ota_complete;
bool subscribe_next_topic;
#define MQTT_PERIOIDC_PUB_TIMEOUT   10 //Sec
#define MQTT_PUB_TIMEOUT_CONST (MQTT_PERIOIDC_PUB_TIMEOUT * SYS_TMR_TickCounterFrequencyGet())

//#define APP_CFG_WITH_MQTT_API

// *****************************************************************************
// *****************************************************************************
// Section: Local data
// *****************************************************************************
// *****************************************************************************


// *****************************************************************************
// Section: Application Initialization and State Machine Functions
// *****************************************************************************
// *****************************************************************************

int32_t MqttCallback(SYS_MQTT_EVENT_TYPE eEventType, void *data, uint16_t len, void* cookie) {
    switch (eEventType) {
        case SYS_MQTT_EVENT_MSG_RCVD:
        {
            SYS_MQTT_PublishConfig *psMsg = (SYS_MQTT_PublishConfig *) data;
            psMsg->message[psMsg->messageLength] = 0;
            psMsg->topicName[psMsg->topicLength] = 0;
            SYS_CONSOLE_PRINT("\nMqttCallback(): Msg received on Topic: %s ; Msg: %s\r\n",
                    psMsg->topicName, psMsg->message);
            if (!strncmp((char*) psMsg->message, "start", (psMsg->messageLength - 1)))
                mqtt_initiate_ota_check = true;
            if (!strcmp((char*) psMsg->topicName, "pranjal139/feeds/led-control")) {
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
            SYS_CONSOLE_PRINT("\nMqttCallback(): MQTT Disconnected\r\n");
        }
            break;

        case SYS_MQTT_EVENT_MSG_CONNECTED:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): MQTT Connected\r\n");
            g_lastPubTimeout = SYS_TMR_TickCountGet();

        }
            break;

        case SYS_MQTT_EVENT_MSG_SUBSCRIBED:
        {
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
            SYS_MQTT_SubscribeConfig *psMqttSubCfg = (SYS_MQTT_SubscribeConfig *) data;
            SYS_CONSOLE_PRINT("\nMqttCallback(): UnSubscribed to Topic '%s'\r\n", psMqttSubCfg->topicName);
        }
            break;

        case SYS_MQTT_EVENT_MSG_PUBLISHED:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): Published Msg(%d) to Topic\r\n", PubMsgCnt);
            g_lastPubTimeout = SYS_TMR_TickCountGet();
        }
            break;

        case SYS_MQTT_EVENT_MSG_CONNACK_TO:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): Connack Timeout Happened\r\n");
        }
            break;

        case SYS_MQTT_EVENT_MSG_SUBACK_TO:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): Suback Timeout Happened\r\n");
        }
            break;

        case SYS_MQTT_EVENT_MSG_PUBACK_TO:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): Puback Timeout Happened\r\n");
            g_lastPubTimeout = SYS_TMR_TickCountGet();
        }
            break;

        case SYS_MQTT_EVENT_MSG_UNSUBACK_TO:
        {
            SYS_CONSOLE_PRINT("\nMqttCallback(): UnSuback Timeout Happened\r\n");
        }
            break;

    }
    return SYS_MQTT_SUCCESS;
}

/*******************************************************************************
  Function:
    void APP_Initialize ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_Initialize(void) {
    g_appData.state = APP_STATE_INIT_DONE;
    SYS_CONSOLE_MESSAGE("Application: Paho MQTT Client\r\n");
}

bool checkTimeOut(uint32_t timeOutValue, uint32_t lastTimeOut) {
    if (lastTimeOut == 0)
        return 0;

    return (SYS_TMR_TickCountGet() - lastTimeOut > timeOutValue);
}
#if 1
uint8_t publish_message_num = 1;
SYS_MQTT_PublishTopicCfg sMqttTopicCfg;

void Publish_PeriodicMsg(void) {
    if (checkTimeOut(MQTT_PUB_TIMEOUT_CONST, g_lastPubTimeout)) {
        char message[32] = {0};

        int32_t retVal = SYS_MQTT_FAILURE;

        //reset the timer
        g_lastPubTimeout = 0;
        if (publish_message_num == 1) {
            publish_message_num = 1;
            /* All Params other than the message are initialized by the config provided in MHC*/
            strcpy(sMqttTopicCfg.topicName, SYS_MQTT_DEF_PUB_TOPIC_NAME);
            sMqttTopicCfg.topicLength = strlen(SYS_MQTT_DEF_PUB_TOPIC_NAME);
            sMqttTopicCfg.retain = SYS_MQTT_DEF_PUB_RETAIN;
            sMqttTopicCfg.qos = SYS_MQTT_DEF_PUB_QOS;

            sprintf(message, "App_version-%d\r\n", SYS_OTA_APP_VER_NUM);

            retVal = SYS_MQTT_Publish(g_sSysMqttHandle,
                    &sMqttTopicCfg,
                    message,
                    sizeof (message));
            if (retVal != SYS_MQTT_SUCCESS) {
                SYS_CONSOLE_PRINT("\nPublish_PeriodicMsg(): Failed (%d)\r\n", retVal);
            }
        } else {
            publish_message_num = 1;
#if 0
            //char        message[32] = {0};
            SYS_MQTT_PublishTopicCfg sMqttTopicCfg_1;
            retVal = SYS_MQTT_FAILURE;

            //reset the timer
            g_lastPubTimeout = 0;

            /* All Params other than the message are initialized by the config provided in MHC*/
            strcpy(sMqttTopicCfg_1.topicName, "MCHP/Sample/d");
            sMqttTopicCfg_1.topicLength = strlen("MCHP/Sample/d");
            sMqttTopicCfg_1.retain = SYS_MQTT_DEF_PUB_RETAIN;
            sMqttTopicCfg_1.qos = SYS_MQTT_DEF_PUB_QOS;

            sprintf(message, "message_%d\r\n", PubMsgCnt);

            retVal = SYS_MQTT_Publish(g_sSysMqttHandle,
                    &sMqttTopicCfg_1,
                    message,
                    sizeof (message));
            if (retVal != SYS_MQTT_SUCCESS) {
                SYS_CONSOLE_PRINT("\nPublish_PeriodicMsg(): Failed (%d)\r\n", retVal);
            }
#endif
        }
        PubMsgCnt++;
    }
}
#endif

/******************************************************************************
  Function:
    void APP_Tasks ( void )

  Remarks:
    See prototype in app.h.
 */
void APP_Tasks(void) {
    switch (g_appData.state) {
        case APP_STATE_INIT_DONE:
        {
            if (SYS_WIFI_CtrlMsg(sysObj.syswifi, SYS_WIFI_GETCONFIG, &wificonfig, sizeof (wificonfig)) == SYS_WIFI_SUCCESS) {
                if (SYS_WIFI_STA == wificonfig.mode) {
                    SYS_CONSOLE_PRINT("%s(): Device mode = STA \r\n", __func__);
                    g_appData.state = APP_STATE_MODE_STA;
                } else {
                    SYS_CONSOLE_PRINT("%s(): Device mode = AP \r\n", __func__);
                    g_appData.state = APP_STATE_MODE_AP;
                }
            }
            break;
        }

        case APP_STATE_MODE_AP:
        {
            break;
        }

        case APP_STATE_MODE_STA:
        {
            strcpy(sMqttTopicCfg_1.topicName, "pranjal139/feeds/switch-state");
            sMqttTopicCfg_1.topicLength = strlen("pranjal139/feeds/switch-state");
            sMqttTopicCfg_1.retain = SYS_MQTT_DEF_PUB_RETAIN;
            sMqttTopicCfg_1.qos = SYS_MQTT_DEF_PUB_QOS;
#ifdef APP_CFG_WITH_MQTT_API
            SYS_MQTT_Config *psMqttCfg;

            //memset(&g_sTmpSysMqttCfg, 0, sizeof(g_sTmpSysMqttCfg));
            psMqttCfg = &g_sTmpSysMqttCfg;
            //psMqttCfg->sBrokerConfig.autoConnect = false;
            //psMqttCfg->sBrokerConfig.tlsEnabled = true;
            strcpy(psMqttCfg->sBrokerConfig.brokerName, "test.mosquitto.org");
            //psMqttCfg->sBrokerConfig.serverPort = 8883;
            psMqttCfg->subscribeCount = 2;
            psMqttCfg->sSubscribeConfig[1].qos = 1;
            strcpy(psMqttCfg->sSubscribeConfig[1].topicName, "MCHP/sample/b");
            strcpy(psMqttCfg->sSubscribeConfig[0].topicName, "MCHP/sample/c");
            g_sSysMqttHandle = SYS_MQTT_Connect(&g_sTmpSysMqttCfg, MqttCallback, NULL);
#else    
            g_sSysMqttHandle = SYS_MQTT_Connect(NULL, MqttCallback, NULL);
            /*Registering ota callback*/
            ota_app_reg_cb();
#endif    
            g_appData.state = APP_STATE_MQTT_OTA_SERVICE_TASK;
            break;
        }
        case APP_STATE_MQTT_OTA_SERVICE_TASK:
        {
            /*second topic will be subscribed after first topic */
            if (subscribe_next_topic == true) {
                subscribe_next_topic = false;

                SYS_MQTT_SubscribeConfig sMqttCfg_new;
                sMqttCfg_new.qos = 1;
                strcpy(sMqttCfg_new.topicName, MQTT_LED_CONTROL_SUB_TOPIC);
                SYS_MQTT_Subscribe(g_sSysMqttHandle, &sMqttCfg_new);
            }

            /*************************Control led*******************************/
            if (led_control == true) {
                //SYS_CONSOLE_PRINT("Switchig On LED\n\r");
                LED_RED_On();
            } else {
                //SYS_CONSOLE_PRINT("Switchig Off LED\n\r");
                LED_RED_Off();
            }
            /******************************************************************/
            if((SWITCH1_Get()  == SWITCH1_STATE_PRESSED) && (prev_switch_state == SWITCH1_STATE_RELEASED))
            {
                prev_switch_state = SWITCH1_STATE_PRESSED;
                SYS_MQTT_Publish(g_sSysMqttHandle, 
                                &sMqttTopicCfg_1,
                                "SWITCH1_STATE_PRESSED",
                                sizeof("SWITCH1_STATE_PRESSED"));
            }
            else if(SWITCH1_Get()  == SWITCH1_STATE_RELEASED && (prev_switch_state == SWITCH1_STATE_PRESSED))
            {
                 prev_switch_state = SWITCH1_STATE_RELEASED;
                SYS_MQTT_Publish(g_sSysMqttHandle, 
                                &sMqttTopicCfg_1,
                                "SWITCH1_STATE_RELEASED",
                                sizeof("SWITCH1_STATE_RELEASED"));
            }

            Publish_PeriodicMsg();
            SYS_MQTT_Task(g_sSysMqttHandle);

            /*if OTA process triggered by user*/
            if (mqtt_initiate_ota_check == true) {

                g_appData.state = APP_STATE_OTA_SERVICE_TASK;
            }
            break;
        }

        case APP_STATE_OTA_SERVICE_TASK:
        {
            SYS_MQTT_Task(g_sSysMqttHandle);

            if (SYS_OTA_CtrlMsg(SYS_OTA_UPDATECHCK, NULL, NULL) == SYS_OTA_SUCCESS) {
                //SYS_CONSOLE_PRINT("OTA update check initiated successfully \r\n");
                g_appData.state = APP_STATE_MQTT_SERVICE_TASK;
            } else {
                SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, "OTA_not_initiated", 17);
                mqtt_initiate_ota_check = false;
                g_appData.state = APP_STATE_MQTT_OTA_SERVICE_TASK;
            }
        }
            break;


        case APP_STATE_MQTT_SERVICE_TASK:
        {
            //SYS_MQTT_Task(g_sSysMqttHandle);
            if (mqtt_ota_trigger_status == MQTT_OTA_UPDATED_VERSION_AVAILABLE) {
                SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, mqtt_pub_message[DOWNLOADING], strlen(mqtt_pub_message[DOWNLOADING]));
                g_appData.state = APP_STATE_WAIT_FOR_OTA_COMPLETE_TASK;
                /*Go to next state*/
                break;
            } else if (mqtt_ota_trigger_status == MQTT_OTA_UPDATED_VERSION_NOT_AVAILABLE) {
                SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, mqtt_pub_message[UPDATE_NOT_AVAILABLE], strlen(mqtt_pub_message[UPDATE_NOT_AVAILABLE]));
                g_appData.state = APP_STATE_MQTT_OTA_SERVICE_TASK;
                /*if update available below lines will not be executed*/
                mqtt_ota_complete = false;
                mqtt_ota_trigger_status = MQTT_OTA_NOT_TRIGGERED;
                mqtt_initiate_ota_check = false;

            }
            
            break;
        }

        case APP_STATE_WAIT_FOR_OTA_COMPLETE_TASK:
        {
            if (mqtt_ota_complete == true) {
                mqtt_ota_complete = false;
                mqtt_initiate_ota_check = false;
                
                if(mqtt_ota_trigger_status == MQTT_OTA_FAILED){
                    SYS_MQTT_Publish(g_sSysMqttHandle, &sMqttTopicCfg, "Image_Download_failed", 22);
                    g_appData.state = APP_STATE_MQTT_OTA_SERVICE_TASK;
                }
                mqtt_ota_trigger_status = MQTT_OTA_NOT_TRIGGERED;
            }
        }
        default:
        {
            break;
        }
    }

}


/*******************************************************************************
 End of File
 */
