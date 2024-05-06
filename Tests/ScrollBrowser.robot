*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Scrolling the Web Page
    Set Selenium Speed    2seconds
    Open Browser    https://en.wikipedia.org/wiki/Ganesha    Chrome
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0, 1000)
    #Scroll Element Into View    xpath://img[@src='//upload.wikimedia.org/wikipedia/commons/thumb/7/77/6th_century_Ganesha_Badami_Caves.jpg/185px-6th_century_Ganesha_Badami_Caves.jpg']
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Sleep    2
    Execute Javascript    window.scrollTo(0, -document.body.scrollHeight)
    Sleep    2
    Close Browser