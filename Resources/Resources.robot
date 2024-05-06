*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://admin-demo.nopcommerce.com/
${browser}    Chrome


*** Keywords ***
Openlink
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Closelink
    Close Browser

BackToHome
    Go To    ${url}

InputUsername
    [Arguments]    ${webusername}
    Input Text    id:Email    ${webusername}

InputPassword
    [Arguments]    ${webpassword}
    Input Text    id:Password    ${webpassword}

LoginButton
    Click Button    xpath://button[@type='submit']

LogOutButton
    Click Link    Logout

Login Should be Successful
    Page Should Contain    Swag Labs



