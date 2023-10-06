***Settings***

Library      AppiumLibrary
Resource     helpers.robot

***Keywords***
Open Session
    Set Appium Timeout  5
    Open Application    http://localhost:4723/wd/hub 
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=Emulator
    ...                 app=${EXECDIR}/app/App_v_3.9.apk


Close Session
    Close Application