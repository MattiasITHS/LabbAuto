*** Settings ***
Documentation   Basic info about test suite
Library         SeleniumLibrary
Resource        ../Resources/keywords.robot
Test Setup      Open Chrome
Test Teardown   End Web Test

*** Variables ***
${BROWSER}      chrome
${URL}          http://rental21.infotiv.net/webpage/html/gui/index.php
${PASSWORD}     test01
${EMAIL}        tester01@test.se

*** Test Cases ***
User redirects to date selection page when cancel button is clicked on create a new user page

    [Documentation]                     Test Cancel Button On Create User Page
    [Tags]                              krav-Create User
    Go To Car Rental Website

    Click on Create User Button

    Load Create A New User Page

    Click On Cancel Button

    Date Selection Page Should Contain


#En Avbryt-knapp som tar användaren till datumvalssidan
#och en Skapa-knapp som försöker skapa användarkontot med den inmatade informationen.

Buttons Login/Create User Changes To Logout/My Page Buttons When Successfully Logged In

    [Documentation]                     Test Buttons Login/Create User Changes To Logout/My Page When Login Successfull
    [Tags]                              krav-Header
    Go To Car Rental Website

    Page Should Contain Login/Create User Buttons

    Enter Email And Password

    Click On Login Button

    Page Should Contain A Welcome Phrase

    Page Should Contain Logout/My Page Buttons

    Click On Logout Button


#Om användaren loggar in framgångsrikt ändras användarinformationsfältet
#för att visa en välkomstfras med användarnas förnamn och knapparna ändras till Logout,
#som loggar ut användaren från sessionen och My Page

    # TODO Se över all text för att förtydliga...
    # TODO Se över Keywords och variabler. Kategorisera Keywords?