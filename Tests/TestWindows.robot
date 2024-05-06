*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
windows tab close
    Open Browser    https://docs.robotframework.org/docs/different_libraries/appium    chrome
    Maximize Browser Window
    Sleep    2
    Click Link    xpath://a[contains(text(),'AppiumLibrary')]
    Sleep    2
    Switch Window    Appium Library | ROBOT FRAMEWORK
    Sleep    2
    Close Window
    Sleep    2
    Close Browser