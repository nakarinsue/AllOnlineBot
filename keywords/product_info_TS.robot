*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot
*** Keywords ***
Click_add_item_product
    [Documentation]   เลือก Item
    product_info_page.Check_name_product
    product_info_page.Check_price
    product_info_page.Click_search_store_id
add_address_sent_item
    [Documentation]  กรอกเลขร้านที่จัดส่งเเละ ตรวจสอบ รายละเอียด เเละ รับชำระ
    [Arguments]     ${store_id}
    Shipping_page.Click_store_id_dropdown
    Shipping_page.Input_store_id  ${store_id}
    Shipping_page.Click_search_store_id  ${store_id}
    Shipping_page.click_payment