*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.tutorialspoint.com/selenium/practice/selenium_automation_practice.php
${browser}    chrome

*** Test Cases ***
SpeedTest
    Openlink
    Set Selenium Speed    1seconds
    Input Text    id:name    Omkar Jadhav
    Input Text    id:email    omkarus.jadhav@gmail.com
    Select Radio Button    gender    gender

    Closelink

*** Keywords ***
openlink
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    3

closelink
    Close Browser