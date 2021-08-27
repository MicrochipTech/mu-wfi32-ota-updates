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

1. Provide wifi Credentials:
    ![](images/wifi_cfg.png). 

2. Please provide the correct parameters in `app_mqtt.h` file as shown in below figure :

    ![](images/mqtt_cfg.png)

2. Generate code and compile . 
    ***NOTE: Please Do Not take changes for `app_mqtt.c` & `app_mqtt.h` files, while generating code**

3. Please follow below messages on UART1 console :
    ![](images/uart1_console1.png).


5. System will try to connect with user defined MQTT broker.
