*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
click_payment_CC
    [Documentation]  คลิกเลือกจ่ายด้วย เครดิต การ์ด
    common.Click_Element    xpath=//*[@aria-controls="COUNTERSERVICE_CC-tab"]
click_payment_TMW
    [Documentation]  คลิกเลือกจ่ายด้วย ทรูมันนี่
    common.Click_Element    xpath=//*[@aria-controls="COUNTERSERVICE_TMW-tab"]
click_payment_CASH
    [Documentation]  คลิกเลือกจ่ายด้วย เงินสดที่ร้าน
    common.Click_Element    xpath=//*[@aria-controls="COUNTERSERVICE_CASH-tab"]
click_payment_QR_payment
    [Documentation]  คลิกเลือกจ่ายด้วย พร้อมเพย์
    common.Click_Element    xpath=//*[@aria-controls="COUNTERSERVICE_QR-tab"]

click_payment_confrim
    [Documentation]  คลิกยืนยันการชำระ
    common.Scroll_To_Element  xpath=//*[@class="col-sm-4 col-xs-4 nopd"]
    common.Click_Element    xpath=//*[@class="btn js-pdbc btn-proceed btn-green gradient btn-lg btn-half wide pull-right space-down continue-payment-btn continue-payment-btn-popup"]
