*** Settings ***

*** Variables ***
&{credentials}      username=admin      password=123258

*** Keywords ***
Log My Username
    [Arguments]     ${user_name}
    Log To Console    ${user_name}

Log My Password
    [Arguments]     ${password}
    Log To Console    ${password}


Login using specific username
    [Arguments]     ${username}     ${password}
    Log To Console    ${username} ${password}