*** Settings ***
Documentation   This is my first test
Library    SeleniumLibrary
Test Setup      Open the browser
Test Teardown       Close the browser


*** Variables ***

*** Test Cases ***
#Open the google home page
#        Open the browser
#        Close the browser

Verification for correct google home page landing
        Text presence on landing page       Google



*** Keywords ***
Open the browser
        create webdriver    Chrome      executable_path=C:/Users/Amit/Drivers/chromedriver
        maximize browser window
        go to       https://www.google.com/

Close the browser
        close browser

Text presence on landing page
        [arguments]         ${text}
        page should contain       ${text}