*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser and Maximize
Test Teardown     Close Browser
Resource          ../variables/variable.resource
Resource          ../resources/keyword.resource

Library           SeleniumLibrary    run_on_failure=NONE

*** Test Cases ***
Verify registration form with all input field
    [Tags]    Happy Case

    Input and Check "Valid" FirstName
    Input and Check "Valid" LastName
    Input and Check "Valid" Phone
    Input and Check "Valid" Email
    Input and Check "Valid" Number of Adult
    Input and Check "Valid" Note
    Input and Check "Valid" Accept

