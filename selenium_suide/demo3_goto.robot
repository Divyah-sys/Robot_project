*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser  https://www.goto.com/meeting/          browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element   id=truste-consent-button
     Click Element    link=Try Free
     Input Text    name=FirstName    Divya
     Input Text    name=LastName   ABHI
     Input Text    name=Email    gdivya0809@gmail.com
     Input Text    name=PhoneNumber    965481745
     Input Text    name=Password    Srec@123
     Select From List By Label   id=CompanySize    10 - 99
     Click Element    Xpath = data-button="trial-submit"






