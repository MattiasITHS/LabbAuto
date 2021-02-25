*** Settings ***
Documentation   Basic info about test suite
Library         SeleniumLibrary
Resource        ../Resources/keywords.robot

*** Variables ***
${BROWSER}      chrome
${URL}          http://rental21.infotiv.net/webpage/html/gui/index.php
${PASSWORD}     test01
${EMAIL}        tester01@test.se

*** Test Cases ***
User redirects to date selection page when cancel button is clicked on create a new user page

    [Documentation]                     Test cancel button on create a new user page
    [Tags]                              Test 1
    Open Car Rental Website

    Click on Create User Button

    Load Create A New User Page

    Click On Cancel Button

    Load Date Selection Page

    Close Browser

Buttons Login/Create User Changes To Logout/My Page Buttons When Successfully Logged In

    [Documentation]                     Test Buttons Login/Create User Changes To Logout/My Page When Login Successfull
    [Tags]                              Test 2
    Open Car Rental Website

    Page Should Contain Login/Create User Buttons

    Enter Email And Password

    Click On Login Button

    Page Should Contain Logout/My Page Buttons

    Close Browser

    # TODO Se över all text för att förtydliga...
    # TODO Se över Keywords och variabler.