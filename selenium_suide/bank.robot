*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser          browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://netbanking.hdfcbank.com/netbanking/
     Select Frame    xpath=https://frame[@name='Login_page']
     Input Text    name=fldLoginUserId  divya
     Click Element    link=CONTINUE