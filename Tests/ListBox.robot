*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}    https://chercher.tech/practice/practice-dropdowns-selenium-webdriver
${browser}    chrome

*** Test Cases ***
Listbox
    Openurl

    Select From List By Label    second    Pizza
    Sleep    3
    Select From List By Value    second    burger
    Sleep    3
    Select From List By Index    second    3
    Sleep    3


    Closeurl



*** Keywords ***
openurl
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    4

closeurl
    Close Browser