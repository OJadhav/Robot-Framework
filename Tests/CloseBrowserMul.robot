*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
closingbrowser
    Open Browser    https://www.google.com    Chrome
    Maximize Browser Window
    Sleep    3

    Open Browser    https://www.flipkart.com    Chrome
    Maximize Browser Window
    Sleep    3

    Open Browser    https://www.amazon.com    Chrome
    Maximize Browser Window
    Sleep    3

    Close All Browsers