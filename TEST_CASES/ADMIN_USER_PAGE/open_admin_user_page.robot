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

Add New User
    Sleep    2s
    Click Button    ${adminCreateBtn}
    Wait Until Element Is Visible    ${fieldCreateNewUser}
    Input Text    ${fieldCreateNewUser}    ${newUsername}    2s
    Input Text    ${fieldCreateNewPassword}    ${newPassword}    2s
    Input Text    ${fieldCreateNewPasswordConfirm}    ${newPassword}    2s
    Input Text    ${fieldEmployeeName}    ${employeeName}
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div/div[1]
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[1]/div/div[2]/div/div[2]
    Wait Until Element Is Visible    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div
    Click Element    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[1]/div/div[3]/div/div[2]/div/div[2]
    Click Button    //*[@id="app"]/div[1]/div[2]/div[2]/div/div/form/div[3]/button[2]