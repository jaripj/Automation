*** Settings ***
Library  SeleniumLibrary
Resource  ../Recources/UserKeywords.robot

*** Variables ***
${var1}  https://www.thetestingworld.com

*** Test Cases ***
TC_001 Login Logout Functionally
    Open Browser  ${var1}  Chrome
    maximize browser window
    click element  xpath://a[text()='Login']
    ${row}=  Read number of rows  Sheet1

    FOR  ${i}  IN RANGE  1   ${row}+1
        ${username}=  Read Excel Data of Cell  Sheet1  ${i}  1
        ${password}=  Read Excel Data of Cell  Sheet1  ${i}  2
        input text  id:username  ${username}
        input text  id:password  ${password}
        click button  xpath://button[@type='submit']
        sleep  5 seconds
    END

