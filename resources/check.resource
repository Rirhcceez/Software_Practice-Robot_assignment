*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variable.resource

*** Keywords ***

# ============ Function Combiner ============

Text Checker
    [Arguments]    ${locator}    ${value}    ${expected_status}
    Textfield Value Should Be    ${locator}    ${value}
    ${result}=    Get Element Attribute    id=${locator}    aria-invalid
    Should Be Equal    ${result}    ${expected_status}

Dropdown Checker
    [Arguments]    ${locator}    ${value}    ${expected_status}

    IF    '${value}' != '${EMPTY}'
        ${text}=    Get Text    id=${NUMBER_OF_ADULT_BOX}
        Should Contain    ${text}    ${value}
    END

    ${result}=    Get Element Attribute    id=${NUMBER_OF_ADULT_BOX}    aria-invalid
    Should Be Equal    ${result}    ${expected_status}

Checkbox Checker
    [Arguments]    ${locator}    ${status}
    
    IF    '${status}' == 'checked'
        Checkbox Should Be Selected    class=${locator}
    ELSE IF    '${status}' == 'not_checked'
        Checkbox Should Not Be Selected    class=${locator}
    END

# ============ Check Valid Data ============

Check FirstName is Valid
    Text Checker    ${FNAME_BOX}    ${FIRSTNAME}    false

Check LastName is Valid
    Text Checker    ${LNAME_BOX}    ${LASTNAME}    false

Check Phone is Valid
    Text Checker    ${PHONE_BOX}    ${PHONE}    false

Check Email is Valid
    Text Checker    ${EMAIL_BOX}    ${EMAIL}    false

Check Number of Adult is Valid
    Dropdown Checker    ${NUMBER_OF_ADULT_BOX}  ${NUMBER_OF_ADULT}    false

Check Accept is Valid
    Checkbox Checker    ${ACCEPT_CHECKBOX}  checked

# ============ Check Invalid Data ============

Check FirstName is Invalid
    Text Checker    ${FNAME_BOX}    ${EMPTY}    true

Check LastName is Invalid
    Text Checker    ${LNAME_BOX}    ${EMPTY}    true

Check Phone is Invalid
    Text Checker    ${PHONE_BOX}    ${EMPTY}    true

Check Email is Invalid
    Text Checker    ${EMAIL_BOX}    ${EMPTY}    true

Check Number of Adult is Invalid
    Dropdown Checker    ${NUMBER_OF_ADULT_BOX}  ${EMPTY}    true

Check Accept is Invalid
    Checkbox Checker    ${ACCEPT_CHECKBOX}  not_checked