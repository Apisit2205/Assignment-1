*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL_FACE}    https://www.facebook.com
${PASSWORD}    1234
${input_pass}    //*[@id="pass"]

*** Keywords ***
Open Faecbook Page
    Open Browser    ${URL_FACE}    chrome
    
Empty username    
    Input Text    ${input_pass}    ${PASSWORD}

*** Test cases ***

Testcase -1- Empty Username
    Open Faecbook Page
    Empty username       
    Click Button    login
    

