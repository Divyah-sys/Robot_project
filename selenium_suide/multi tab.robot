*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser          browser=chrome
     Set Selenium Implicit Wait    30s
     Go To    url=https://www.medibuddy.in/
     Click Element   id=wzrk-cancel
     Click Element   link=For Employer
     Switch Window   MediBuddy LaunchPad
     Input Text    id=getInTouchName    Divya
     Input Text    id=getInTouchEmail   gdivya0809@gmail.com
     Input Text    id=getInTouchMobile   9684527881
     Input Text    id=getInTouchDesignation    Robot FrameWork
     Input Text    id=getInTouchEmpCount    500
     Click Element  xpath=//button[text()='Get in Touch']





