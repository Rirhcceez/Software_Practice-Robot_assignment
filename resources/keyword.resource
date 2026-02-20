*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variable.resource
Resource   ../resources/input.resource
Resource   ../resources/check.resource


*** Keywords ***

Open Browser and Maximize
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep   5s

# =========== Check Valid Case ============

Input and Check "Valid" FirstName
    Input Valid FirstName
    Check FirstName is Valid

Input and Check "Valid" LastName
    Input Valid LastName
    Check LastName is Valid

Input and Check "Valid" Phone
    Input Valid Phone
    Check Phone is Valid

Input and Check "Valid" Email
    Input Valid Email
    Check Email is Valid

Input and Check "Valid" Number of Adult
    Input ValidNumber of Adult   0
    Check Number of Adult is Valid

Input and Check "Valid" Note
    Input Valid Note
    Check Note is Valid

Input and Check "Valid" Accept
    Input Valid Accept
    Check Accept is Valid

# =========== Check Invalid Case ============

Input and Check "Invalid" FirstName
    Input Invalid FirstName
    Check FirstName is Invalid

Input and Check "Invalid" LastName
    Input Invalid LastName
    Check LastName is Invalid

Input and Check "Invalid" Phone
    Input Invalid Phone
    Check Phone is Invalid

Input and Check "Invalid" Email
    Input Invalid Email
    Check Email is Invalid

Input and Check "Invalid" Number of Adult
    Input Invalid of Adult   0
    Check Number of Adult is Invalid

Input and Check "Invalid" Note
    Input Invalid Note
    Check Note is Invalid

Input and Check "Invalid" Accept
    Input Invalid Accept
    Check Accept is Invalid