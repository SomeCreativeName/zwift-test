*** Settings ***
Documentation     Zwift homepage tests
Library           SeleniumLibrary
Library           ../keywords/browser_setup.py
Variables         ../locators/homepage.py
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE_URL}   http://zwift.com/

*** Test Cases ***
Homepage loads successfully
    Start Browser       ${HOMEPAGE_URL}
    Verify Homepage URL
    Element Should Be Visible       ${NAVBAR_LOGO}

*** Keywords ***
Verify Homepage URL
    ${url}=             Get Location
    Should Be Equal     ${HOMEPAGE_URL}     ${url
}
