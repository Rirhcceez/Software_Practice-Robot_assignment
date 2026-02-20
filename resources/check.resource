*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variable.resource

*** Keywords ***

# ============ Check Valid Data ============

Verify FirstName Input Is Correct
    Textfield Value Should Be    ${FNAME_BOX}    ${FIRSTNAME}

Verify LastName Input Is Correct
    Textfield Value Should Be    ${LNAME_BOX}    ${LASTNAME}

Verify Phone Input Is Correct
    Textfield Value Should Be    ${PHONE_BOX}    ${PHONE}

Verify Email Input Is Correct
    Textfield Value Should Be    ${EMAIL_BOX}    ${EMAIL}

Verify Number of Adult Input Is Correct
    Textfield Value Should Be    ${NUMBER_OF_ADULT_BOX}    ${NUMBER_OF_ADULT}

Verify Note Input Is Correct
    Textfield Value Should Be    ${NOTE_BOX}    ${NOTE}

Verify Accept Input Is Correct
    Checkbox Should Be Selected    class=${ACCEPT_CHECKBOX}

# ============ Check InValid Data ============

