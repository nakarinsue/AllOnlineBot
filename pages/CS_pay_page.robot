*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
wait_web_page_cs_payment
    [Documentation]  รอจนกว่าจะถึงหน้า cs payment
    common.Wait_Page  xpath=//*[@id="csModalPayment"]   30

Click_payment
    [Documentation]  คลิกชำระ
    common.Click_Element    xpath=//*[@id="subFormPay"]

input_Card_Name
    [Documentation]  กรอก  ชื่อผู้ถือบัตร
    [Arguments]     ${Test}
    common.Wait_Page     xpath=//*[@id="cardName"]
    common.Input_Text_Into_Field    xpath=//*[@id="cardName"]     ${Test}
input_Card_Number
    [Documentation]  กรอก  เลขบัตร
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@name="cardNumber"]     ${Test}

input_Expiry_Date
    [Documentation]  กรอก  วันหมดอายุ
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@name="expiryDate"]     ${Test}

input_CV_Code
    [Documentation]  กรอก  เลขcv code
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@id="cvCode"]     ${Test}
wait_OTP_CODE
    [Documentation]  รอจนกว่าเห็น OTP CODE
    common.Wait_Page  xpath=//*[@id="otpCode"]   30
input_OTP_CODE
    [Documentation]  กรอก  เลข OTP CODE
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@id="otpCode"]     ${Test}

Click_Confrim_otp
    [Documentation]  คลิก ยันยัน เลข otp
    common.Click_Element    xpath=//*[@id="submitBtn"]

wait_confeim_payment
    [Documentation]  คลิก รอการทำรายการ 
    common.Wait_Page    xpath=//*[@class="e-Tax-detail-url"]   40

