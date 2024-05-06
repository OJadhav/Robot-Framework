*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Table Validation
    Set Selenium Speed    2
    Open Browser    https://testautomationpractice.blogspot.com/    Chrome
    Maximize Browser Window
    Sleep    3
    ${rows}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr
    ${columns}    Get Element Count    xpath://table[@name='BookTable']/tbody/tr[1]/th

    Log To Console    ${rows}
    Log To Console    ${columns}

    ${data1}    Get Text    xpath://table[@name='BookTable']/tbody/tr[2]/td[1]
    Log To Console    ${data1}
    ${data2}    Get Text    xpath://table[@name='BookTable']/tbody/tr[4]/td[4]
    Log To Console    ${data2}

    Table Column Should Contain    xpath://table[@name='BookTable']    2    Animesh
    Table Row Should Contain    xpath://table[@name='BookTable']    5    3000
    Table Cell Should Contain    xpath://table[@name='BookTable']    7    1    Master In JS
    Table Header Should Contain    xpath://table[@name='BookTable']    Subject



    Close Browser


