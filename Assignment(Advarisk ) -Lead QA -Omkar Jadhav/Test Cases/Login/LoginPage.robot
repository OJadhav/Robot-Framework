*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.saucedemo.com/

*** Test Cases ***
Test cases of Login
    Set Selenium Speed    1
    [Setup]    Openlink
    LoginPageAccessible
    LoginPageTitle
    LoginPage UserName and Password are visible
    LoginPage Login Button is visible
    LoginPage Empty Username and Empty Password click on login button
    LoginPage correct Username and wrong password
    LoginPage wrong Username and correct password
    LoginPage Empty Username and correct Password
    LoginPage correct Username and Empty Password
    LoginPage wrong Username and wrong password
    LoginPage Correct Username and Correct Password
    Page Should Contain    Swag Labs
    Sleep    2
    Click Button    xpath://button[@id='react-burger-menu-btn']
    Sleep    2
    Click Element    xpath://a[@id='logout_sidebar_link']
    [Teardown]    Closelink

*** Keywords ***
openlink
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    2

closelink
    Close Browser

Login Button
    Click Button    xpath://input[@type='submit']

Go to New Url Link
    Go To    ${url}

Error Message Close Button
    Click Button    xpath://button[@class='error-button']

Clear Username and Password Text Field
    Clear Element Text    xpath://input[@id='user-name']
    Clear Element Text    xpath://input[@id='password']

LoginPageAccessible
    Log To Console    Web Site working fine.

LoginPageTitle
    Title Should Be    Swag Labs

LoginPage UserName and Password are visible
    Element Should Be Visible    id:user-name
    Element Should Be Visible    id:password

LoginPage Login Button is visible
    Element Should Be Visible    id:login-button

LoginPage Empty Username and Empty Password click on login button
    Go to New Url Link
    Click Element    id:login-button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Username is required')]
    Error Message Close Button

LoginPage correct Username and wrong password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']    xyz_abc
    Login Button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Username and password do not match any user in this service')]
    Error Message Close Button
    Clear Username and Password Text Field

LoginPage wrong Username and correct password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    abcde_user
    Input Text    xpath://input[@id='password']    secret_sauce
    Login Button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Username and password do not match any user in this service')]
    Error Message Close Button
    Clear Username and Password Text Field

LoginPage correct Username and Empty Password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']    ${EMPTY}
    Login Button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Password is required')]
    Error Message Close Button
    Clear Username and Password Text Field

LoginPage Empty Username and correct Password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    ${EMPTY}
    Input Text    xpath://input[@id='password']    secret_sauce
    Login Button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Username is required')]
    Error Message Close Button
    Clear Username and Password Text Field

LoginPage wrong Username and wrong password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    abc_user
    Input Text    xpath://input[@id='password']    user_sauce
    Login Button
    Element Should Be Visible    xpath://h3[contains(text(), 'Epic sadface: Username and password do not match any user in this service')]
    Error Message Close Button
    Clear Username and Password Text Field

LoginPage Correct Username and Correct Password
    Go to New Url Link
    Input Text    xpath://input[@id='user-name']    standard_user
    Input Text    xpath://input[@id='password']    secret_sauce
    Login Button
