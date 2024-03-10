*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.saucedemo.com/
${Username}    standard_user
${Password}    secret_sauce
${firstname}    Omkar
${lastname}    Jadhav
${postcode}    411019

*** Test Cases ***
Test Cases of CheckOut Function
    Set Selenium Speed    1
    [Setup]    Openlink
    Login Website    ${Username}    ${Password}
    CheckOut Button is visible on Cart Page
    Sleep    3seconds
    Click on Checkout Button Personal Information need to fill for Shipping
    After filling personal details and continue user is on Checkout overview page
    On Checkout overview page Finish button is visible
    On Checkout overview page Cancel button is visible
    Item Summary can visible on Checkout overview page
    Checkout Overview page contains Payments, Shipping and Price details
    Clicking on Finish Button got message
    Back to Home button is visible


    Logout Website
    [Teardown]    Closelink

*** Keywords ***
openlink
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Login Button
    Click Button    xpath://input[@type='submit']

Login Website
    [Arguments]    ${webusername}                   ${webpassword}
    Input Text    xpath://input[@id='user-name']    ${webusername}
    Input Text    xpath://input[@id='password']    ${webpassword}
    Login Button

Logout Website
    Page Should Contain    Swag Labs
    Click Button    xpath://button[@id='react-burger-menu-btn']
    Wait Until Element Is Visible    xpath://a[@id='logout_sidebar_link']
    Click Element    xpath://a[@id='logout_sidebar_link']

closelink
    Close Browser

Click on Continue to Shopping
    Click Button    xpath://button[@name='continue-shopping']

CheckOut Button is visible on Cart Page
    Click Element    xpath://div[text()='Sauce Labs Backpack']
    Wait Until Element Is Visible    xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Click Element    xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Page Should Contain    Sauce Labs Backpack
    Wait Until Element Is Visible    //a[@class='shopping_cart_link']
    Click Element    xpath://div[@id='shopping_cart_container']
    Page Should Contain    Your Cart
    Element Should Be Visible    xpath://button[@id='checkout']

Click on Checkout Button Personal Information need to fill for Shipping
    Click Button    xpath://button[@id='checkout']
    Page Should Contain    Checkout: Your Information
    Wait Until Element Is Visible    xpath://input[@placeholder='First Name']
    Wait Until Element Is Enabled    xpath://input[@placeholder='First Name']
    Click Element    xpath://input[@placeholder='First Name']
    Input Text    xpath://input[@placeholder='First Name']    Omkar
    Input Text    xpath://input[@placeholder='Last Name']    Jadhav
    Input Text    xpath://input[@placeholder='Zip/Postal Code']    411019
    Click Element    xpath://input[@id='continue']

After filling personal details and continue user is on Checkout overview page
    Wait Until Element Is Visible    xpath://span[text()='Checkout: Overview']
    Page Should Contain    Checkout: Overview

On Checkout overview page Finish button is visible
    Wait Until Element Is Visible    xpath://button[@id='finish']
    Element Should Be Visible    xpath://button[@id='finish']

On Checkout overview page Cancel button is visible
    Wait Until Element Is Visible    xpath://button[@id='cancel']
    Element Should Be Visible    xpath://button[@id='cancel']

Item Summary can visible on Checkout overview page
    Page Should Contain    Sauce Labs Backpack

Checkout Overview page contains Payments, Shipping and Price details
    Page Should Contain    Payment Information
    Page Should Contain    Shipping Information
    Page Should Contain    Price Total

Clicking on Finish Button got message
    Click Button    xpath://button[@id='finish']
    Wait Until Element Is Visible    //span[text()='Checkout: Complete!']
    Page Should Contain    Checkout: Complete!

Back to Home button is visible
    Wait Until Element Is Visible    //button[@id='back-to-products']
    Click Element    //button[@id='back-to-products']

