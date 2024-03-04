*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open Event Registration Page
    Open Browser    http://localhost:7272/Lab11/Registration.html    Chrome
	
    ${current_url} =    http://localhost:7272/Lab3/Registration.html
    Should Be Equal As Strings    ${current_url}    http://localhost:7272/Lab11/Registration.html
	
    Close Browser
Register Success
    Open Browser     http://localhost:7272/Lab11/Registration.html    Chrome
    Input Text    //*[@id="firstname"]    Somsri
    Input Text    //*[@id="lastname"]    Sodsai
    Input Text    //*[@id="organization"]    CS KKU
    Input Text    //*[@id="email"]    somsri@kkumail.com
    Input Text    //*[@id="phone"]    081-001-1234
    Click Element    //*[@id="registerButton"]
    Sleep    2s  
    Page Should Contain    Success
    Page Should Contain    Thank you for participating in our event
    Close Browser   