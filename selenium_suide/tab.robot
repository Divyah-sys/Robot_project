*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser          browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://www.db4free.net/
     Click Element    link=phpMyAdmin »
     Switch Window   phpMyAdmin
     Input Text    id=input_username    admin
     Input Password    id=input_password    admin123
     Click Element    id=input_go
     Element Text Should Be    xpath=//div[contains(text()='Access denied for user.')]    denied by user
     Close Window
     Close Browser

