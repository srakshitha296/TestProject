*** Settings ***
Documentation  This is my fourth Test case
Library        OperatingSystem

*** Keywords ***
Log My Username
    Log To Console    ${credentials}[username]

Log My Password
    Log To Console    ${credentials}[password]

Login
    Log To Console    ${credentials}[username]
    Log To Console    ${credentials}[password]

Login2
    Log My Username
    Log My Password

Login using specific username
    [Arguments]     ${username}     ${password}
    Log To Console    ${username} ${password}

*** Variables ***
${a}    Robot
${b}    Framework

@{versions}    v0   v1   v2   v3   v4

&{credentials}      username=robo   password=12345678
*** Test Cases ***
TEST4
    [Tags]      demo   demo2
    Log To Console    ${a} ${b} ${versions}[1]
#    Log My Username
#    Log My Password
#    Login
#    Login2
    Login using specific username       ${credentials}[username]        ${credentials}[password]
    Login using specific username       jaaduu      125

