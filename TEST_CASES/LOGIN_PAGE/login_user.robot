*** Settings ***
Library    SeleniumLibrary
Variables    ../../DATA/VARIABLES/common_xpath.py
Variables    ../../DATA/VARIABLES/common_wording.py
Resource    ../../DATA/orange_hrm_variables.robot

*** Keywords ***
Login Dashboard OrangeHRM - Valid
    wait until element is visible   ${inputEmailField}  2s
    input text    ${inputEmailField}    ${HrmUsername}
    wait until element is visible    ${inputPasswordField}  2s
    input text    ${inputPasswordField}     ${HrmPassword}
    wait until element is visible    ${loginSubmitBtn}  2s
    click button    ${loginSubmitBtn}
    sleep    3s

Login Dashboard OrangeHRM - invalid username
    wait until element is visible   ${inputEmailField}  2s
    input text    ${inputEmailField}    ${InvalidHrmUsername}
    wait until element is visible    ${inputPasswordField}  2s
    input text    ${inputPasswordField}     ${HrmPassword}
    wait until element is visible    ${loginSubmitBtn}  2s
    click button    ${loginSubmitBtn}

    wait until element is visible   ${wrongCredentialsPopUp}    30s
    ${PopUpText}=  get text    ${wrongCredentialsPopUp}
    should be equal    ${PopUpText}     ${InvalidCredentialsText}
    reload page
    sleep    2s

Login Dashboard OrangeHRM - invalid password
    wait until element is visible   ${inputEmailField}  2s
    input text    ${inputEmailField}    ${HrmUsername}
    wait until element is visible   ${inputPasswordField}  2s
    input text     ${inputPasswordField}   ${InvalidHrmPassword}
    wait until element is visible    ${loginSubmitBtn}  2s
    click button    ${loginSubmitBtn}

    wait until element is visible   ${wrongCredentialsPopUp}    30s
    ${PopUpText}=  get text    ${wrongCredentialsPopUp}
    should be equal    ${PopUpText}     ${InvalidCredentialsText}
    reload page
    sleep    2s