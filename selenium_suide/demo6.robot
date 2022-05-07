*** Settings ***
Library   SeleniumLibrary
Library     OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable    path   C:\\Users\\admin\\Desktop\\robot project\\driver
     Open Browser          browser=chrome
     Maximize Browser Window
     Set Selenium Implicit Wait    30s
     Go To    url=https://demo.openemr.io/b/openemr
     Input Text    id=authUser    admin
     Input Text    id=clearPass    pass
     Select From List By Label       name=language
     Click Element    id=login-button
     Click Element    xpath://body/div[@id='mainBox']/div[@id='tabs_div']/div[1]/div[3]
     Click Element    xpath://span[contains(text(),'Message Center')]
     Click Element    xpath://body/div[@id='mainBox']/div[@id='mainFrames_div']/div[@id='framesDisplay']/div[2]/iframe[1]




