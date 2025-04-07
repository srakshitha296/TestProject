*** Settings ***
Resource        ../Resources/resources.robot

*** Variables ***
#&{credentials}      username=admin      password=123258

*** Keywords ***
#Log My Username
#    [Arguments]     ${user_name}
#    Log To Console    ${user_name}
#
#Log My Password
#    [Arguments]     ${password}
#    Log To Console    ${password}
#
#
#Login using specific username
#    [Arguments]     ${username}     ${password}
#    Log To Console    ${username} ${password}

*** Test Cases ***
Test6
    Login using specific username   ${credentials}[username]   ${credentials}[password]
