*** Keywords ***
Open Chrome
    Open Browser                        about:blank     ${BROWSER}

Go To Car Rental Website
    Go To                               ${URL}
    Wait Until Page Contains            Infotiv Car Rental

Click on Create User Button
    Press Keys                          id=createUser      RETURN

Load Create A New User Page
    Wait Until Page Contains Element    id=questionText

Click On Cancel Button
    Press Keys                          id=cancel          RETURN

Click On Login Button
    Press Keys                          id=login           RETURN
Click On Logout Button
    Press Keys                          id=logout          RETURN

Date Selection Page Should Contain
    Page Should Contain Element         id=questionText

Page Should Contain Login/Create User Buttons
    Page Should Contain Button          id=login
    Page Should Contain Button          id=createUser

Page Should Contain Logout/My Page Buttons
    Page Should Contain Button          id=logout
    Page Should Contain Button          id=mypage

Enter Email And Password
    Input Text                          xpath://*[@id="email"]       ${EMAIL}
    Input Password                      xpath://*[@id="password"]    ${PASSWORD}

Page Should Contain A Welcome Phrase
    Page Should Contain Element       id=welcomePhrase

End Web Test
    Close Browser

