*** Settings ***
Library    SeleniumLibrary
Variables    ../../DATA/VARIABLES/common_xpath.py
Variables    ../../DATA/VARIABLES/common_wording.py
Resource    ../../DATA/orange_hrm_variables.robot

*** Keywords ***
Open Admin User Page
    sleep    2s
    wait until element is visible   ${menuAdminBtn}
    click element    ${menuAdminBtn}
    sleep    2s

    #Display Admin User Page
    wait until element is visible   ${adminUsernameField}
    wait until element is visible   ${adminUserRoleField}
    wait until element is visible   ${adminEmployeeNameField}
    wait until element is visible   ${adminStatusField}
    wait until element is visible   ${adminSearchFilterBtn}
    wait until element is visible   ${adminResetFilterBtn}
    wait until element is visible   ${adminCreateBtn}
    wait until element is visible   ${adminRecordFound}
    wait until element is visible   ${adminListContainer}
    sleep    2s