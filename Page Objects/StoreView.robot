*** Settings ***
Resource    ../Resources/Setup.robot


*** Variables ***
${App_Logo}    class:app_logo
${Add_To_Cart_Button}    id:add-to-cart-sauce-labs-backpack
${Shopping_Cart_Badge}    class:shopping_cart_badge
${Remove_Add_To_Cart}    id:remove-sauce-labs-backpack


*** Keywords ***
Login Success Verification
    Wait Until Element Is Visible    ${App_Logo}    timeout=3s    error=App_Logo ${Not_Found}
    Wait Until Element Contains    ${App_Logo}    Swag Labs    timeout=10s    error=App_Logo ${Not_Found}

Add to Cart
    Wait Until Element Is Visible    ${Add_To_Cart_Button}    timeout=3s    error=Add_To_Cart_Button ${Not_Found}
    Click Element    ${Add_To_Cart_Button}

Cart Value
    Wait Until Element Is Visible    ${Shopping_Cart_Badge}    timeout=3s    error=Shopping_Cart_Badge ${Not_Found}
    Wait Until Element Contains    ${Shopping_Cart_Badge}    1    timeout=10s    error=Shopping_Cart_Badge ${Not_Found}

Remove Add to Cart
    Wait Until Element Is Visible    ${Remove_Add_To_Cart}    timeout=3s    error=Remove_Add_To_Cart ${Not_Found}
    Click Element    ${Remove_Add_To_Cart}

