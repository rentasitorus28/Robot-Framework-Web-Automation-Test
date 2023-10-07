*** Settings ***
Library    SeleniumLibrary
Resource    steps.robot

*** Test Cases ***
Login with valid credential
    Success login
    Close Browser
Login with invalid credential
    Not Success login