*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${browser}    chrome
${url}    http://www.google.com/
${PYTHON}    python
${PYTHON_SCRIPT}    CaptureScreenShot.py
${SCREENSHOT_PATH}    C:/Users/Admin/PycharmProjects/RobotFramework/screenshot.png


*** Test Cases ***
Google
    opengoogle
    Input Text    xpath://textarea[@name='q']    Amazon
    Sleep    2
    Click Button    xpath://input[@type='submit']
    Sleep    6
    Capture Page Screenshot        Test1.png
    [Documentation]    Take a screenshot of the entire screen
    ${command}    Set Variable    ${PYTHON} ${PYTHON_SCRIPT} ${SCREENSHOT_PATH}
    ${output}    OperatingSystem.Run    ${command}
    BuiltIn.Log    Screenshot saved to: ${output}
    Log To Console    ${SCREENSHOT_PATH}
    sleep    2
    closebrowserwindow

*** Keywords ***
opengoogle
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Sleep    5

closebrowserwindow
    Close Browser

