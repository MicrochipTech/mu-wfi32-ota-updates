---
grand_parent: OTA Demo Application
parent: OTA Demo
title: Demo Application User Guide 
has_toc: true
nav_order: 1
---

# Demo Application User Guide 
## Description

This is a demo application consisting of OTA service . Application will communicate with user defined MQTT broker and will share informations using user defined MQTT topics. 


## Steps To be followed

1. Please provide the correct parameters as shown in below figure :

    ![](images/mqtt_cfg.png)
2. Configure Parameters accordingly as shown in below figure:

    ![](images/app_h_cfg.png).

3. Generate code and compile .

4. Please follow below messages on UART1 console :
    ![](images/uart1_console1.png).

   

5. Please provide below command on UART console :

    `"wifiprov set 0 1 "GEN" 0 1 4 <SSID> <password>`

    example:
    `"wifiprov set 0 1 "GEN" 0 1 4 "riodemo139" "password"`

6. System will try to connect with user defined MQTt broker.
