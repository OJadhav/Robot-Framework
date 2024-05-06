*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url1}    https://www.google.com
${url2}    https://www.yahoo.com
${browser}    Chrome

*** Test Cases ***
Arguments to the test
    Set Selenium Speed    3
    ${pagetitle}    Openlink    ${url1}    ${browser}
    Log To Console    ${pagetitle}
    Log    ${pagetitle}
    Closelink


*** Keywords ***
openlink
    [Arguments]    ${weburl}    ${webbrowser}
    Open Browser    ${weburl}    ${webbrowser}
    Maximize Browser Window
    Sleep    5
    ${title}    Get Title
    [Return]    ${title}
closelink
    Close Browser