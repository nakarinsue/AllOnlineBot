*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
Click_btn_allmember_login
    [Documentation]  คลิกปุ่ม Login 
    common.Click_Element    xpath=//*[@class="btn-allmember-login nopd onLine"]

Click_btn_search_item
    [Documentation]  คลิกปุ่ม ค้นหา
    common.Click_Element    xpath=//*[@class="btn btn-default search"]
Wait_btn_search_item
    [Documentation]  รอปุ่มค้นหา
    common.Wait_Page    xpath=//*[@class="btn btn-default search"]  30
input_search_item
    [Documentation]  กรอก  ชื่อ สินค้า หรือ Keyword ที่ เกี่ยวข้อง
    [Arguments]     ${Test}
    common.Input_Text_Into_Field    xpath=//*[@class="form-control header-search header-search-sug hasClear"]     ${Test}

Click_Image_item
    [Documentation]  คลิก iem ที่ต้องการ
    [Arguments]     ${Name}
    common.Click_Element    xpath=//*[starts-with(@title, "${Name}")]
    common.Wait_Page    xpath=//*[@id="title-product"]

Click_history_payment
    [Documentation]  คลิก iem ที่ต้องการ
    [Arguments]     ${Name}
    common.Click_Element    xpath=//*[@class="e-Tax-detail-url"]

Click_confeim_payment
    [Documentation]  คลิก ใรอการทำรยการ 
    common.Click_Element    xpath=//*[@class="e-Tax-detail-url"]