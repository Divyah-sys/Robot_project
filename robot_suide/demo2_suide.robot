*** Settings ***
Library    OperatingSystem

*** Test Cases ***
TC1
    Create File   path=D:\\robotproject\\robot_suite\\hii.txt
    ${list}    List Files In Directory    path=D:\\robotProject\\robot_suite\\
    Log To Console    ${list}
TC2
   Remove File    path=D:\\robotproject\\robot_suite\\hii.txt
TC3
   Create Dictionary          D:\\robotproject\\robot_suite2