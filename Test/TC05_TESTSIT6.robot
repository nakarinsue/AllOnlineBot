*** Settings *** 
Resource    ${CURDIR}/../common/imports.robot

Test Setup      common.setup_Testcase     ${MAPPING}[${ENV}][URL]     ${MAPPING}[${ENV}][BROWSER]
Test Teardown   common.Close_Browser

*** Test Cases ***
TC01_LOGIN_PAGE
    [Documentation]     ลูกค้าlOGINสำเร็จ
    [Tags]  TC_01
    All_Online_Main_page.Click_btn_allmember_login
    login_TS.login_Wab_and_input_email_password  ${email}  ${password}
TC02_LOGIN AND SEARD ITEM
    [Documentation]     ตรวจสอบการ Search ข้อมูลสินค้า
    [Tags]  TC_02
    All_Online_Main_page.Click_btn_allmember_login
    login_TS.login_Wab_and_input_email_password  ${email}  ${password}
    main_TS.search_item_by_keyword_input  ${SEARCH}
    All_Online_Main_page.Click_Image_item  ${SHOTNAME}
TC04_customer_successfully_placed_order
    [Documentation]     ลูกค้าสั่งซื้อสินค้าเลือกรับที่ร้านและชำระเงินด้วยบัตรเดบิต CASE FOCUS การส่ง เเละวิธีการสั่งซื้อ
    [Tags]  TC_05
    All_Online_Main_page.Click_btn_allmember_login
    login_TS.login_Wab_and_input_email_password  ${email}  ${password}
    main_TS.search_item_by_keyword_input  ${SEARCH}
    main_TS.Click_item_and_and_Store_id  ${SHOTNAME}  ${STORE}
    CS_payment_TS.payment_input_data_CC_and_payment  ${NAMECC}  ${NUMBERCC}  ${EXDADECC}  ${CVCODECC}
    CS_payment_TS.payment_input_OTP  ${OTPNO}


