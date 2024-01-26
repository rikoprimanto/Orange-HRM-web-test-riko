*** Settings ***
Library    SeleniumLibrary
Resource    ../TEST_CASES/OPEN_BROWSER/open_browser.robot
Resource    ../TEST_CASES/LOGIN_PAGE/login_user.robot
Resource    ../TEST_CASES/ADMIN_USER_PAGE/open_admin_user_page.robot

Resource    ../DATA/orange_hrm_variables.robot

Variables    ../DATA/VARIABLES/common_xpath.py
Variables    ../DATA/VARIABLES/common_wording.py

*** Test Cases ***
#Dashboard OrangeHRM
Add New User
    Open Dashboard OrangeHRM
    Login Dashboard OrangeHRM - Valid
    Open Admin User Page
    Add New User