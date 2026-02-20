*** Settings ***
Library           SeleniumLibrary
Test Setup        Open Browser and Maximize
Test Teardown     Close Browser
Resource          ../variables/variable.resource
Resource          ../resources/keyword.resource
Resource          ../resources/input.resource
Resource          ../resources/check.resource

Library           SeleniumLibrary    run_on_failure=NONE

*** Test Cases ***
Verify registration form with all input field
    [Tags]    Happy Case

    Input Valid FirstName
    Input Valid LastName
    Input Valid Phone
    Input Valid Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Valid
    Check Phone is Valid
    Check Email is Valid
    Check Number of Adult is Valid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "FirstName" field
    [Tags]  Unhappy Case

    #Missing Firstname
    Input Valid LastName
    Input Valid Phone
    Input Valid Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Invalid
    Check LastName is Valid
    Check Phone is Valid
    Check Email is Valid
    Check Number of Adult is Valid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "LastName" field
    [Tags]  Unhappy Case

    Input Valid FirstName
    #Missung Lastname
    Input Valid Phone
    Input Valid Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Invalid
    Check Phone is Valid
    Check Email is Valid
    Check Number of Adult is Valid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "Phone" field
    [Tags]  Unhappy Case

    Input Valid FirstName
    Input Valid LastName
    #Missing Phone Number
    Input Valid Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Valid
    Check Phone is Invalid
    Check Email is Valid
    Check Number of Adult is Valid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "Email" field
    [Tags]  Unhappy Case

    Input Valid FirstName
    Input Valid LastName
    Input Valid Phone
    #Missing Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Valid
    Check Phone is Valid
    Check Email is Invalid
    Check Number of Adult is Valid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "Number of adults" field
    [Tags]  Unhappy Case

    Input Valid FirstName
    Input Valid LastName
    Input Valid Phone
    Input Valid Email
    #Missing Number of Adult
    Input Note
    Click Pet Yes
    Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Valid
    Check Phone is Valid
    Check Email is Valid
    Check Number of Adult is Invalid
    Check Accept is Valid
    
    Sleep   1s

Verify registration form with invalid "Accept" field
    [Tags]  Unhappy Case

    Input Valid FirstName
    Input Valid LastName
    Input Valid Phone
    Input Valid Email
    Input Valid Number of Adult
    Input Note
    Click Pet Yes
    #Not Click Accept

    Click Submit Button

    Check FirstName is Valid
    Check LastName is Valid
    Check Phone is Valid
    Check Email is Valid
    Check Number of Adult is Valid
    Check Accept is Invalid
    
    Sleep   1s
