*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser  https://www.salesforce.com/         browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://www.salesforce.com/in/form/signup/freetrial-sales/
     Click Element   id=truste-consent-button
     Click Element    link=Try Free
     Input Text    name=UserFirstName    Divya
     Input Text    name=UserLastName   ABHI
     Input Text    name=UserEmail    gdivya0809@gmail.com
     Select From List By Label    name=UserTitle  It Manager
     Input Text    name=CompanyName     LTTS
     Select From List By Value    name=CompanyEmployees             1 - 15 employees
     Select From List By Label    name=CompanyCountry           India
     Click Element     xpath=(//div[@class='checkbox-ui'])(1)
     Click Element    name=start my free trial
     Element Text Should Be    xpath=//span[contains[@id,'UserPhone')]  enter a valid phone number


