*** Settings ***
Documentation     Zwift homepage tests
Library           SeleniumLibrary
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE_URL}   http://zwift.com/
${BROWSER}        chrome
${NAVBAR_LOGO}    css:#znv-header-logo-link

*** Test Cases ***
Homepage loads successfully
    Open Browser        ${HOMEPAGE_URL}     ${BROWSER}
    Verify Homepage URL
    Element Should Be Visible       ${NAVBAR_LOGO}

*** Keywords ***
Verify Homepage URL
    ${url}=             Get Location
    Should Be Equal     ${HOMEPAGE_URL}     ${url}
