*** Settings ***
Library     Process
Library     SeleniumLibrary
# Library    DataDriver    file=Workshop-Group-5.xlsx    sheet_name=Data_TS05

Library     ${CURDIR}/../python/FakerLibrary.py

Resource    ${CURDIR}/common.robot

Variables   ${CURDIR}/../development/Data.yaml


Resource    ${CURDIR}/../pages/All_Online_Main_page.robot
Resource    ${CURDIR}/../pages/CS_pay_page.robot
Resource    ${CURDIR}/../pages/Login_page.robot
Resource    ${CURDIR}/../pages/Product_info_page.robot
Resource    ${CURDIR}/../pages/Payment_page.robot
Resource    ${CURDIR}/../pages/Shipping_page.robot

Resource    ${CURDIR}/../keywords/login_TS.robot
Resource    ${CURDIR}/../keywords/main_TS.robot
Resource    ${CURDIR}/../keywords/product_info_TS.robot
Resource    ${CURDIR}/../keywords/CS_payment_TS.robot

*** Variables ***
${credit_card}=    Generate Credit Card
${NAMECC}=        Generate Fake Name
${NUMBERCC}=       Get From Dictionary   ${credit_card}     number
${EXDADECC}=       Get From Dictionary   ${credit_card}     expiry_date
${CVCODECC}=       Get From Dictionary   ${credit_card}     cvv