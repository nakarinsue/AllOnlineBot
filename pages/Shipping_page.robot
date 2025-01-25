*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***

Check_phone_number
    [Documentation]  ตรวจสอบเบอร์โทรที่เเสดง
    [Arguments]     ${phone_number}
    ${Text}=    SeleniumLibrary.Get Text    xpath=//*[@id="second-phone-shipping"]
    Log To Console  ${Text}
Input_store_id
    [Documentation]  กรอกรหัสร้าน
    [Arguments]     ${store_id}
    common.Input_Text_Into_Field    xpath=//*[@class="form-control 7OnlineClass"]     ${store_id}
Click_search_store_id
    [Documentation]  ค้นหา เลขร้าน
    [Arguments]     ${store_id}
    common.Click_Element    xpath=//*[@id="btn-check-storenumber"]
    common.Wait_Page  xpath=//*[@class="address-7_11_store-detail-header"]
Click_store_id_dropdown
    [Documentation]  คลิก เปิด ค้นหา เลขร้าน
    common.Click_Element    xpath=//*[@aria-controls="store-number-tab"]
Check_address_detail
    [Documentation]  ตรวจสอบที่อยู่ร้าน
    [Arguments]     ${address}=0
    ${Text}=    SeleniumLibrary.Get Text    xpath=//*[@value="${address}"]
    Log To Console  ${Text}
click_payment
    [Documentation]  กด ปุ่ม ชำระสิ้นค้า
    common.Scroll_To_Element  xpath=//*[@class="col-sm-4 col-xs-4 nopd"]
    common.Click_Element    xpath=//*[@id="continue-payment-btn"]


