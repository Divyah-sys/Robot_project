*** Settings ***
Library    Dialogs
Library    DateTime

*** Test Cases ***
TC1
   Log To Console   Hello everyone
   Log To Console   Hello welcome


TC2
    ${demo}  Set Variable   25
    ${script}  Set Variable  7
    Log To Console    $content   1
    ${content}    Get Selection From User


TC4
  ${date}      Get Current Date

