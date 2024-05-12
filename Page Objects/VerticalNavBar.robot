*** Settings ***
Resource    ../Resources/Setup.robot

*** Variables ***
${Logout_Button}    id:logout_sidebar_link
${Burger_Menu}    id:react-burger-menu-btn

*** Keywords ***
Click Logout Button
    Wait Until Element Is Visible    ${Logout_Button}    timeout=3s    error=Logout_Button ${Not_Found}
    Click Element    ${Logout_Button}

Click Burger Menu
    Wait Until Element Is Visible    ${Burger_Menu}    timeout=3s    error=Burger_Menu ${Not_Found}
    Click Element    ${Burger_Menu}

