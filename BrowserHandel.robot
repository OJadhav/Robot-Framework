*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Command Browser
    Set Selenium Speed    2seconds
    Open Browser    https://www.google.com    Chrome
    Maximize Browser Window
    Sleep    3
    Go To    https://www.flipkart.com
    Sleep    3
    Go Back
    Close Browser