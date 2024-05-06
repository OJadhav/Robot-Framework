*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${browser}    chrome
${url}    https://www.flipkart.com/

*** Test Cases ***
ValidateTest
    openlink
    Title Should Be    Online Shopping Site for Mobiles, Electronics, Furniture, Grocery, Lifestyle, Books & More. Best Offers!
    Sleep    5
    
    Click Element    xpath://a[@title='Login']/span[text()='Login']
    Sleep    4
    ${input_txt}    Set Variable    xpath://span[text()='Enter Email/Mobile number']/preceding::input[1]
    Element Should Be Enabled    ${input_txt}
    Element Should Be Visible    ${input_txt}
    Sleep    3
    Input Text    xpath://span[text()='Enter Email/Mobile number']/preceding::input[1]    omkarus.jadhav@gmail.com
    Sleep    3
    Clear Element Text    xpath://span[text()='Enter Email/Mobile number']/preceding::input[1]
    Sleep    4
    

    closelink


*** Keywords ***
openlink
    Open Browser    ${url}    ${browser}
    Wait Until Page Contains    ${url}
    Maximize Browser Window
    Sleep    5

closelink
    Close Browser