*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
input_email_user_login 
    [Documentation]  กรอก email
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@class="input-email-form"]     ${Test}
input_password_user_login 
    [Documentation]  กรอก password
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@class="input-password-form"]     ${Test}
Click_login_Button
    common.Click_Element    xpath=//*[@class="btn btn-small"]
Wait_Login_Page
    common.Wait_Page  xpath=//*[@class="input-email-form"]




