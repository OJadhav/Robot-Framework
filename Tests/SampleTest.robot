*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    http://www.google.com/


*** Test Cases ***
Google
    opengoogle
    Input Text    xpath://textarea[@name='q']    Amazon
    Sleep    3
    Click Button    xpath://input[@type='submit']
    sleep    4
    Clear Element Text    xpath://textarea[@name='q']
    sleep    4
    Input Text    xpath://textarea[@name='q']    Facebook
    Sleep    6
    Click Button    xpath://button[@type='submit']
    sleep    4
    
    closebrowserwindow

*** Keywords ***
opengoogle
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

closebrowserwindow
    Close Browser