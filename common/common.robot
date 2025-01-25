*** Settings *** 
Resource    ${CURDIR}/imports.robot
*** Keywords ***
setup_Testcase
    [Documentation]     URL temp
    [Arguments]    ${URL}    ${Browser}=headlessChrome
    common.Close_Browser
    common.Open_Browser  ${URL}     ${Browser}
Open_Browser
    [Documentation]    เปิดเบราว์เซอร์ที่ URL ที่กำหนด
    [Arguments]    ${URL}    ${Browser}=headlessChrome
    SeleniumLibrary.Open Browser    ${URL}    ${Browser}
    SeleniumLibrary.Maximize Browser Window

Navigate_To_URL
    [Documentation]    ไปยัง URL ที่กำหนด Go To 
    [Arguments]    ${URL}
    SeleniumLibrary.Go To    ${URL}

Close_Browser
    [Documentation]    ปิดเบราว์เซอร์เมื่อเสร็จสิ้นการทดสอบ
    SeleniumLibrary.Close Browser   

Action_Enter
    [Documentation]    กด Enter
    SeleniumLibrary.Press Keys      None    'RETURN'
Click_Element
    [Documentation]    คลิกที่องค์ประกอบที่ระบุ Click Element
    [Arguments]    ${Locator}
    Wait_Page  ${Locator}
    SeleniumLibrary.Click Element    ${Locator}
Input_Text_Into_Field
    [Documentation]    ป้อนข้อความลงในช่องที่ระบุ Input Text
    [Arguments]    ${Locator}    ${Text}
    SeleniumLibrary.Input Text    ${Locator}    ${Text}

Select_Dropdown_Option
    [Documentation]    เลือกตัวเลือกจาก Dropdown ที่ระบุ Select From List By Label
    [Arguments]    ${Locator}    ${Option}
    SeleniumLibrary.Select From List By Label    ${Locator}    ${Option}

Scroll_To_Element
    [Documentation]    เลื่อนหน้าจอไปยังองค์ประกอบที่ระบุ Scroll Element Into View
    [Arguments]    ${Locator}
    SeleniumLibrary.Scroll Element Into View    ${Locator}


Get_Text_From_Element
    [Documentation]    ดึงข้อความจากองค์ประกอบที่ระบุ Get Text
    [Arguments]    ${Locator}
    ${Text}=    SeleniumLibrary.Get Text    ${Locator}
    [Return]    ${Text}    


Verify_Page_Title
    [Documentation]    ตรวจสอบชื่อของหน้าเว็บ Get Title
    [Arguments]    ${Expected_Title}
    ${Actual_Title}=    SeleniumLibrary.Get Title
    SSeleniumLibrary.hould Be Equal As Strings    ${Expected_Title}    ${Actual_Title}

Verify_Text_From_Element
    [Documentation]    ตรวจสอบชื่อของหน้าเว็บ Get Title
    [Arguments]    ${Expected_Title}    ${Locator}
    Wait_Until_Element_Is_Visible    ${Locator}
    ${Actual_Title}=    common.Get_Text_From_Element    ${Locator}
    SeleniumLibrary.Should Be Equal As Strings    ${Expected_Title}    ${Actual_Title}    

Select_From_List_By_Label
    [Documentation]    ตรวจสอบชื่อของหน้าเว็บ Get Title
    [Arguments]    ${Locator}   ${labels}
    SeleniumLibrary.Select From List By Label    ${Locator}   ${labels}
Wait_Until_Text_Is_Visible
    [Documentation]    รอจนกว่าข้อความจะปรากฏในหน้า Wait Until Page Contains
    [Arguments]    ${Text}      ${timeout}=10
    SeleniumLibrary.Wait Until Page Contains    ${Text}     ${timeout}

Wait_Page_Should
    [Documentation]    รอจนกว่าจะพบช่อง Page Should Contain
    [Arguments]      ${Text}
    Wait_Until_Text_Is_Visible    ${Text}
    SeleniumLibrary.Page Should Contain    ${Text}
Wait_Page
    [Documentation]    รอจนกว่าจะพบช่อง Page Should Contain
    [Arguments]      ${Locator}     ${timeout}=10
    SeleniumLibrary.Wait_Until_Element_Is_Visible   ${Locator}     ${timeout}
Element_Should_Contain
    [Documentation]    รอจนกว่าองค์ประกอบจะปรากฏในหน้า Wait Until Element Is Visible
    [Arguments]    ${Locator}    ${Text}
    SeleniumLibrary.Element Should Contain    ${Locator}    ${Text}

