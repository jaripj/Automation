*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${var1}  https://www.thetestingworld.com

*** Test Cases ***
TC_001 Login Logout Functionally
    ${var2}= Open Browser  ${var1}  Chrome
    maximize browser window
