*** Settings ***
Resource    ../Resources/Setup.robot


*** Variables ***
# Text Field
${Login_Username}    id=user-name
${Login_Password}    id=password
${Login_Button}    id=login-button
${Username}    standard_user
${Password}    secret_sauce

*** Keywords ***
Input Username
    [Arguments]    ${LOGIN}
    Wait Until Element Is Visible    ${Login_Username}    timeout=3s    error=Login_Username ${Not_Found}
    Input Text    ${Login_Username}    ${LOGIN}

Input Password
    [Arguments]    ${LOGIN}
    Wait Until Element Is Visible    ${Login_Password}    timeout=3s    error=Login_Password ${Not_Found}
    Input Text    ${Login_Password}    ${LOGIN}

Click Login Button
    [Arguments]
    Wait Until Element Is Visible    ${Login_Button}    error=Login_Button ${Not_Found}
    Click Button    ${Login_Button}