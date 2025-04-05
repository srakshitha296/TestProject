*** Settings ***
Documentation  This is my fourth Test case
Library        OperatingSystem

*** Keywords ***

*** Variables ***
${a}    Robot
${b}    Framework

@{versions}    v0   v1   v2   v3   v4

&{credentials}      username=jaadu   password=12345678
*** Test Cases ***
TEST4
    [Tags]      demo   demo2
    Log To Console    ${a} ${b} ${versions}[1]
    Log To Console    ${credentials}[username]
    Log To Console    ${credentials}[password]
