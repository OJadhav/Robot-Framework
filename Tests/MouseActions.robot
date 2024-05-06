*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Mouse action on Webpage
    Set Selenium Speed    3seconds
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Open Context Menu    xpath://button[text()='New Browser Window']
    Sleep    2
    Double Click Element    xpath://button[text()='Copy Text']
    Sleep    2

    Close Browser