*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/Resources.robot
Suite Setup    Openlink
Suite Teardown    Closelink
Test Template    Invalid Login

*** Test Cases ***                   username               password
Right username and wrong password    admin@yourstore.com    xyz         
Wrong username and right password    abcde@yourstore.com    admin
Right username and empty password    admin@yourstore.com    ${EMPTY}
Empty username and right password    ${EMPTY}               admin
Wrong username and wrong password    abcde@yourstore.com    lmnop

*** Keywords ***
Invalid Login
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputPassword    ${password}
    LoginButton
    Error Message Should be displayed