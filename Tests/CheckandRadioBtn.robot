*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    chrome
${url}    https://rahulshettyacademy.com/AutomationPractice/


*** Test Cases ***
RadioandCheckBtn
    Openlink
    Set Selenium Speed    1seconds
    #Selecting the radio buttons
    Select Radio Button    radioButton    radio1
    Select Radio Button    radioButton    radio3

    #Selecting the Check boxes
    Select Checkbox    checkBoxOption1
    Select Checkbox    checkBoxOption2
    Select Checkbox    checkBoxOption3
    Unselect Checkbox    checkBoxOption1

    #Selecting the Dropdwon box
    Select From List By Label    dropdown-class-example    Option1
    Select From List By Index    dropdown-class-example    3
    Select From List By Value    dropdown-class-example    option2

    Closelink


*** Keywords ***
openlink
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5

closelink
    Close Browser
    