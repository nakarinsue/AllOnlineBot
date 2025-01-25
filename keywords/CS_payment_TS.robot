*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
 
payment_input_data_CC_and_payment
    [Documentation]   กรอกข้อมูล เเละ ยืนยัน ที่หน้าจอชำระ
    [Arguments]     ${NAME}    ${NUMBER}    ${EXDADE}     ${CVV}
    CS_pay_page.wait_web_page_cs_payment
    CS_pay_page.input_Card_Name     ${NAME}
    CS_pay_page.input_Card_Number   ${NUMBER}
    CS_pay_page.input_Expiry_Date   ${EXDADE}
    CS_pay_page.input_CV_Code   ${CVV}
    CS_pay_page.Click_payment

payment_input_OTP
    [Documentation]   กรอกข้อมูล เเละ ยืนยัน ที่หน้าจอชำระ
    [Arguments]     ${OTP} 
    CS_pay_page.wait_OTP_CODE
    CS_pay_page.input_OTP_CODE  ${OTP}
    CS_pay_page.Click_Confrim_otp
    CS_pay_page.wait_confeim_payment
    All_Online_Main_page.Click_confeim_payment