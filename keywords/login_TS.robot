*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
login_Wab_and_input_email_password
    [Documentation]   กรอกข้อมูลเเละ Login 
    [Arguments]     ${Username}    ${password}
    login_page.Wait_Login_Page
    Login_page.input_email_user_login   ${Username}
    Login_page.input_password_user_login   ${password}
    Login_page.Click_login_Button
 
