*** Settings ***
Library    SeleniumLibrary
Resource   ../variables/variable.resource

*** Keywords ***

Open Browser and Maximize
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep   5s

# ============ Input Valid Data ============
Input Valid FirstName
    Input Text    id=${FNAME_BOX}     ${FIRSTNAME}

Input Valid LastName
    Input Text    id=${LNAME_BOX}     ${LASTNAME}

Input Valid hone
    Input Text    id=${PHONE_BOX}     ${PHONE}

Input Valid Email
    Input Text    id=${EMAIL_BOX}     ${EMAIL}

Input Valid Number of Adult
    [Arguments]    ${amount}
    Scroll Element Into View            id=${NUMBER_OF_ADULT_BOX}
    Click Element                       id=${NUMBER_OF_ADULT_BOX}
    Wait Until Element Is Visible       id=${MENU_ITEM_BOX}
    Click Element                       id=${MENU_ITEM}${amount}

Input Valid Pet Yes
    SeleniumLibrary.Click Element    //*[@id="comp-ltubl4ab"]/fieldset/div/label[1]/div[1]

Input Pet No
    SeleniumLibrary.Click Element    //*[@id="comp-ltubl4ab"]/fieldset/div/label[2]/div[2]

Input Valid Note
    Input Text    id=${NOTE_BOX}     ${NOTE}

Input Valid Accept
    Click Element    class=${ACCEPT_CHECKBOX}

# ============ Input Invalid Data ============


