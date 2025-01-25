*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
search_item_by_keyword_input
    [Documentation]   ค้นหาคำที่ต้องการเเละกด ค้นหา
    [Arguments]     ${Test}
    All_Online_Main_page.Wait_btn_search_item
    All_Online_Main_page.input_search_item      ${Test}
    All_Online_Main_page.Click_btn_search_item

Click_item_and_and_Store_id
    [Documentation]   กรอกข้อมูล เเละ เลขร้าน
    [Arguments]     ${SHOTNAME}     ${STORE}
    All_Online_Main_page.Click_Image_item  ${SHOTNAME}
    product_info_TS.Click_add_item_product
    product_info_TS.add_address_sent_item  ${STORE}
    Payment_page.click_payment_CC
    Payment_page.click_payment_confrim