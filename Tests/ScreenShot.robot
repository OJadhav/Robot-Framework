*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Screen Shot Takes
    Set Selenium Speed    2seconds
    Open Browser    https://www.britannica.com/topic/Ganesha    chrome
    Maximize Browser Window
    Capture Element Screenshot    //img[@src='https://cdn.britannica.com/60/176060-050-52247096/Ganesha-beginnings-Hindu.jpg?w=300']    Ganesha.jpg
    Capture Page Screenshot    GaneshaWebsite.jpg

    Close Browser