*** Settings ***
Documentation
Library         SeleniumLibrary
Resource        ../Resources/keywords.robot


*** Variables ***
${BROWSER}              chrome
${URL}                  http://rental21.infotiv.net
*** Test Cases ***
Text
    [Documentation]     Test website flow and book a car
    [Tags]              krav-VG_Labb_Test
Scenario: Open website
    Given I have open chrome
    When I have entered the webadress
    Then The website shows
Scenario: Valid Login
    Given Enter Email And Password
    When Click On Login Button
    Then Page Should Contain A Welcome Phrase
# TODO scenario for book a car