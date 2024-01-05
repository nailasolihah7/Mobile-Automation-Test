*** Settings ***
Resource        ../pageObjects/homePageObject/homePage.robot
Resource         ../pageObjects/loginPageObject/loginPage.robot
Resource         ../pageObjects/flightPageObjects/flight.robot


*** Variables ***
${VALID_USERNAME}    nailamrsh98@gmail.com
${VALID_PASSWORD}    Naila300798


*** Test Cases ***
Booking One Way Flight
    Open Traveloka Application
    Click Log In Button On Home Page
    loginPage.Input Username On Login Page    ${VALID_USERNAME}
    loginPage.Input Password On Login Page    ${VALID_PASSWORD} 
    Click Log In Button on Login Page
    Click Flight in Main menu 
    Select Value From
    Select Value To City
    Select Value Departure Date
    Select Value Passengers
    Select Value Seat Class
    Click Search Button on Flight Page