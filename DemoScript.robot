*** Settings ***
Resource    ./Resources/Setup.robot
Resource    ./Page Objects/Login.robot
Resource    ./Page Objects/StoreView.robot
Resource    ./Page Objects/VerticalNavBar.robot
Resource    ./Global Keywords/GlobalKeywords.robot


*** Test Cases ***

Login with valid credentials
    [Documentation]    This is to login user and add to cart item, validate cart count, remove item then logout
    [Tags]    Smoke
    GlobalKeywords.Open Sauce Demo
    GlobalKeywords.Login with valid credentials
    StoreView.Login Success Verification
    StoreView.Add to Cart
    StoreView.Cart Value
    StoreView.Remove Add to Cart
    VerticalNavBar.Click Burger Menu
    VerticalNavBar.Click Logout Button
    