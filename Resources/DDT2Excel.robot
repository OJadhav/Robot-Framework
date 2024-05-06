*** Settings ***
Library    SeleniumLibrary
Library    DataDriver        ../Resources/Data.xlsx
Resource    ../Resources/Resources.robot
Suite Setup    Openlink
Suite Teardown    Closelink
Test Template    Invalid Login

*** Test Cases ***
Login Test Using Excel using ${username} and ${password}

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputPassword    ${password}
    LoginButton
    Error Message Should be displayed