*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser    url=https://www.facebook.com/           browser=chrome
     Input Text    id=email    gdivya0809@gmail.com
     Input Password    id=pass    password
     Click Element    name=login
