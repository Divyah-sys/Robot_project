*** Settings ***

Library  SeleniumLibrary
Library    Collections
Library    OperatingSystem

*** Variables ***
${MY_NAME}       Divya
${ROLE}           Student
@{COLORS}   Black     Blue   Brown

*** Test Cases ***
TC1
   Log To Console    ${MY_NAME}
   ${name}  Set Variable  Divya
   Log To Console    ${name}

TC2
  Log To Console    ${MY_NAME}
  Log To Console    ${ROLE}
  Log To Console    ${COLORS}
  Log To Console    ${COLORS}(0)


Tc3
    @{fruit}    Create List     apple    grapes    orange
    Log To Console    ${fruit}[1]
    Append To List      ${fruit}    pineapple
    Log To Console    ${fruit}
    Remove From List    ${fruit}    1
    Log To Console    ${fruit}
    Insert Into List    ${fruit}    2    mango
    Log To Console    ${fruit}
    Remove Values From List    ${fruit}     1
    Log To Console    ${fruit}


TC4
       @{fruit}    Create List     apple    grapes    orange
       FOR    ${i}    IN   RANGE  0  4 1
           Log    ${fruit}{$[i]}
           END
TC5
          @{fruit}    Create List     apple    grapes    orange
        FOR    ${fruit}    IN    @{fruit}
           Log    ${fruit}
        END



