*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Test Setup        Open Traveloka Application
Test Teardown     Close Traveloka Application

*** Variables ***
${VALID_USERNAME}    nailamrsh98@gmail.com
${VALID_PASSWORD}    xxxxxxxx



*** Test Cases ***
Login Valid Credential
    Click Log In Button On Home Page
    Input Username On Login Page    ${VALID_USERNAME}
    Input Password On Login Page    ${VALID_PASSWORD}
    Click Log In Button on Login Page
    

