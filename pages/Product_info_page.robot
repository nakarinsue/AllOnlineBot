*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***

Check_name_product
    [Documentation]  ตรวจสอบเบอร์โทรที่เเสดง
    [Arguments]     ${phone_number}=0
    common.Wait_Page  xpath=//*[@id="title-product"]
    ${Text}=    SeleniumLibrary.Get Text    xpath=//*[@id="title-product"]
    Log To Console  ${Text}
Check_price
    [Documentation]  ตรวจสอบเบอร์โทรที่เเสดง
    [Arguments]     ${phone_number}=0
    ${Text}=    SeleniumLibrary.Get Text    xpath=//*[@class="currentPrice"]
    Log To Console  ${Text}
Click_search_store_id
    [Documentation]  ค้นหา เลขร้าน
    common.Click_Element    xpath=//*[@class="btn btn-proceed btn-green gradient broad buy-now"]
