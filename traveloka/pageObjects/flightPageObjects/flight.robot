*** Settings ***
Resource         ../base/base.robot
Variables        flight-locators.yaml



*** Keywords ***
Input Username On Login Page
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input} 
    Input Text    ${username-input}     ${username}

Input Password On Login Page
    Wait Until Element Is Visible    ${password-input}
    [Arguments]   ${password}
    Input Text    ${password-input}     ${password}

Click Flight in Main menu
    Wait Until Page Contains Element    ${flight-menu}
    Click Element     ${flight-menu}


Select Value From 
    Wait Until Page Contains Element   ${formflight1} 
    Click Element    ${formflight1}
    Wait Until Page Contains Element   ${from-city} 
    Click Element    ${from-city}

Select Value To City
    Wait Until Page Contains Element    ${to-city}
    Click Element     ${to-city}

Select Value Departure Date
    Wait Until Page Contains Element    ${depart-date}
    Click Element    ${depart-date}
    Wait Until Page Contains Element    ${set-depart-date}
    Click Element    ${set-depart-date}

Select Value  Passengers
    Wait Until Page Contains Element   ${spinner3} 
    Click Element    ${spinner3}
    Wait Until Page Contains Element   ${passengers-add} 
    Click Element    ${passengers-add}
    Click Element    ${OK-set-button}

  Wait Until Page Contains Element   ${spinner3} 
    Click Element    ${spinner3}
    Wait Until Page Contains Element   ${seat-class} 
    Click Element    ${seat-class}
    Click Element    ${OK-set-button}
Click Search Button on Flight Page
    Wait Until Page Contains Element    ${search-button}
    Click Element    ${search-button}
    
