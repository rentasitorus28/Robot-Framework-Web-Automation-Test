*** Settings ***
Library    SeleniumLibrary
Variables    variable.py
*** Keywords ***
Success login
    Open Browser    ${url}    Chrome
    Click Element    ${user} 
    Input Text    ${user}     admin
    Click Element    ${password} 
    Input Text    ${password}     admin
    Click Button    ${btn_login}
    

Not Success login
    Open Browser    ${url}    Chrome
    Click Element    ${user} 
    Input Text    ${user}     admin
    Click Element    ${password} 
    Input Text    ${password}     admin123
    Click Button    ${btn_login}
    Sleep    1
    Wait Until Element Contains    id:message    Incorrect username or password. Try again!!
    Log    Incorrect username or password. Try again!!
    Close Browser