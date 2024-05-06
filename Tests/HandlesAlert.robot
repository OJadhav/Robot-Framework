*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Alert Windows Handles
    Set Selenium Speed    2seconds
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Click Button    xpath://button[@onclick='myFunctionAlert()']
    Alert Should Be Present    I am an alert box!

    Close Browser