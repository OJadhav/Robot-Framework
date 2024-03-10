*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://www.saucedemo.com/
${browser}    Chrome

*** Keywords ***
OpenSite
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

CloseSite
    Close Browser

Back to Home
    Go To    ${url}

InputUsername
    [Arguments]    ${webusername}
    Input Text    id:Email    ${webusername}

InputPassword
    [Arguments]    ${webpassword}
    Input Text    id:Password    ${webpassword}

LoginButton
    Click Button    xpath://input[@type='submit']

Error Message Should be displayed
    Page Should Contain    Epic sadface: Username is required

Login Should be Successful
    Page Should Contain

