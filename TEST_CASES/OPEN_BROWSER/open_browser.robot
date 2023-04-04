*** Settings ***
Library    SeleniumLibrary
Variables  ../../DATA/VARIABLES/common_xpath.py
Resource    ../../DATA/orange_hrm_variables.robot

*** Keywords ***
Open Dashboard OrangeHRM
    OPEN BROWSER    ${urlHrm}   ${BrowserType}
    set window size    ${1600}  ${900}
    wait until element is visible    ${loginSubmitBtn}      60