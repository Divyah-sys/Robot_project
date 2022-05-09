*** Variables ***

&{MY_DETAILS}            name=divya       role=student


*** Test Cases ***
TC1
    Log To Console    ${MY_DETAILS}[name]
    Log To Console    ${MY_DETAILS}[role]
