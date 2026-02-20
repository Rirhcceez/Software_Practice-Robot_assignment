*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variable.resource

*** Keywords ***

# ============ Input Valid Data ============
Input Valid FirstName
    Input Text    id=${FNAME_BOX}     ${FIRSTNAME}

Input Valid LastName
    Input Text    id=${LNAME_BOX}     ${LASTNAME}

Input Valid Phone
    Input Text    id=${PHONE_BOX}     ${PHONE}

Input Valid Email
    Input Text    id=${EMAIL_BOX}     ${EMAIL}

Input Valid Number of Adult
    [Arguments]
    Scroll Element Into View            id=${NUMBER_OF_ADULT_BOX}
    Click Element                       id=${NUMBER_OF_ADULT_BOX}
    Wait Until Element Is Visible       id=${MENU_ITEM_BOX}
    Click Element                       id=${MENU_ITEM}${NUMBER_OF_ADULT}

Input Note
    Input Text    id=${NOTE_BOX}     ${NOTE}

Click Pet Yes
    SeleniumLibrary.Click Element    //*[@id="comp-ltubl4ab"]/fieldset/div/label[1]/div[1]

Click Pet No
    SeleniumLibrary.Click Element    //*[@id="comp-ltubl4ab"]/fieldset/div/label[2]/div[2]

Click Accept
    Click Element    class=${ACCEPT_CHECKBOX}

Click Submit Button
    Click Element    class=${SUBMIT_BUTTON}



