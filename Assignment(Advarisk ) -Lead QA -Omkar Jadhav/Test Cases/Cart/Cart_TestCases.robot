*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${browser}    Chrome
${url}    https://www.saucedemo.com/
${Username}    standard_user
${Password}    secret_sauce


*** Test Cases ***
Test Cases of Cart
    Set Selenium Speed    1
    [Setup]    Openlink
    Login Website    ${Username}    ${Password}
    Cart Icon are available
    Click on Cart Icon it redirect to cart page
    Add to Cart Buttons are visible
    Select item to Add it into Cart and same item should be present in the cart
    Select any item add to cart and Remove same item form cart
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

Cart Icon are available
    Element Should Be Visible    xpath://div[@id='shopping_cart_container']

Click on Cart Icon it redirect to cart page
    Click Element    xpath://div[@id='shopping_cart_container']
    Page Should Contain    Your Cart
    Click on Continue to Shopping

Add to Cart Buttons are visible
    Element Should Be Visible    xpath://button[@id='add-to-cart-sauce-labs-bike-light']

Select item to Add it into Cart and same item should be present in the cart
    Click Element    xpath://div[text()='Sauce Labs Bike Light']
    Wait Until Element Is Visible    xpath://button[@id='add-to-cart-sauce-labs-bike-light']
    Click Element    xpath://button[@id='add-to-cart-sauce-labs-bike-light']
    Page Should Contain    Sauce Labs Bike Light
    Wait Until Element Is Visible    //a[@class='shopping_cart_link']
    Click on Cart Icon it redirect to cart page

Select any item add to cart and Remove same item form cart
    Click Element    xpath://div[text()='Sauce Labs Backpack']
    Wait Until Element Is Visible    xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Click Element    xpath://button[@id='add-to-cart-sauce-labs-backpack']
    Page Should Contain    Sauce Labs Backpack
    Wait Until Element Is Visible    //a[@class='shopping_cart_link']
    Click Element    xpath://div[@id='shopping_cart_container']
    Page Should Contain    Your Cart
    Click Button    //button[@id='remove-sauce-labs-backpack']
    Click on Continue to Shopping

