*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Drag and Drop the Element
   Set Selenium Speed    2
   Open Browser    https://testautomationpractice.blogspot.com/    Chrome
   Maximize Browser Window
   Scroll Element Into View    xpath://h2[text()='Slider']
   Sleep    2
   Drag And Drop    xpath://p[text()='Drag me to my target']    //p[text()='Drop here']
   Sleep    2
   Close Browser
