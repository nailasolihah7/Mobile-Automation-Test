*** Settings ***
Resource     ../base/base.robot
Variables    home-locators.yaml

*** Keywords ***
Click Log In Button On Home Page
    Click Element    ${log-in-button}