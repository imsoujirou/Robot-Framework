*** Settings ***
Resource  ../Resources/Setup.robot
Resource    ../Page Objects/Login.robot
Library    browsermanager.py



*** Keywords ***
Open Sauce Demo
    Open Browser    ${Web_URL}    ${BROWSER}

Login with valid credentials
    Login.Input Username    ${Username}
    Login.Input Password    ${Password}
    Login.Click Login Button