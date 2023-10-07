*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot
Variables    variable.py

*** Test Cases ***
#Business Test Case
Order 5 Pizza's Online

#Child Test Case
    Login
    Select Medium Size pizza, Veggie Delight Flavor, Buffalo Sauce, And Greenolive+Tomatoes Toppings
    Set the Quantity to 5 and Add to Cart
    Verify Success Message
    Print Success Message
    

*** Keywords ***
login
    Success login

Select Medium Size pizza, Veggie Delight Flavor, Buffalo Sauce, And Greenolive+Tomatoes Toppings
    Sleep    1
    Wait Until Element Is Visible    css:h3
    #select medium pizza
    Click Element    id:rad_medium
    #select Veggie Delight Flavor
    Select From List By Label    id:select_flavor    Veggie Delight
    #select Buffalo Sauce And Green Olive Toppings
    Click Element    id:rad_buffalo
    Click Element    id:green_olive
    Sleep    0.5

Set the Quantity to 5 and Add to Cart
    Click Element    id:quantity
    Input Text    id:quantity    5
    Click Button    id:submit_button

Verify Success Message
    Sleep    0.5
    Wait Until Element Is Visible    id:added_message
    Element Text Should Be    id:added_message    Pizza added to the cart!
    
Print Success Message
    Sleep    2
    ${SuccessMessage}    Get Text    id:added_message
    Log To Console    ${SuccessMessage} 
    Log    ${SuccessMessage} 
    Sleep    0.5
    

  

    