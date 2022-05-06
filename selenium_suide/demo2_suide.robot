*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser    url=https://www.facebook.com/             browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Click Element    link=Create New Account
     Input Text    name=First name    Divya
     Input Text    name=Surname    ABHI
     Input Text    name=reg_email_    gdivya0809@gmail.com
     Input Text    name=reg_email_configuration_    gdivya0809@gmail.com
     Input Text    id=password_step_input   password
     Select From List By Label    id=day           22
     Select From List By Label    id=month         08
     Select From List By Label    id=year         2000
     Click Element  Xpath=//input[@value='-1']
     Click Element  name=websubmit
     Close Browser

     




