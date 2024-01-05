*** Settings ***
Library             AppiumLibrary

*** Variables ***
${REMOTE_URL}          http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}       Android
${PLATFORM_VERSION}    9.0
${DEVICE_NAME}         emulator-5554
${APP_PACKAGE}         com.traveloka.android
${APP_ACTIVITY}        com.traveloka.android/.user.landing.widget.LandingActivity

*** Keywords ***
Open Traveloka Application
    Open Application    remote_url=${REMOTE_URL} 
    ...                 platformName=${PLATFORM_NAME}
    ...                 platformVersion=${PLATFORM_VERSION}
    ...                 deviceName=${DEVICE_NAME}
    ...                 appPackage=${APP_PACKAGE}
    ...                 appActivity=${APP_ACTIVITY}                           
Close Traveloka Application
    Close Application