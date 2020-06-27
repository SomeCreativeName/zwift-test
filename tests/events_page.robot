*** Settings ***
Documentation     Zwift events page tests
Library           SeleniumLibrary
Library           ../keywords/browser_setup.py
Variables         ../locators/events_page.py
Variables         ../locators/homepage.py
Suite Teardown    Close All Browsers

*** Variables ***
${HOMEPAGE_URL}   http://zwift.com/

*** Test Cases ***
Events filters modify number of results
    Start Browser       ${HOMEPAGE_URL}
    Click Element       ${NAVBAR_EVENTS_LINK}
    Wait Until Element Is Visible    ${EVENTS_FILTER_APP}
    Count Event Listings
    Select From List By Value        ${SPORT_DROPDOWN}          RUNNING
    Select From List By Value        ${INTENSITY_DROPDOWN}      3
    Select From List By Value        ${START_TIMES_DROPDOWN}    afternoon
    Compare Event Listings Count

*** Keywords ***
Count Event Listings
    ${unfilteredcount}=   Get Element Count    ${EVENT_LISTINGS}
    Set Test Variable     ${UNFILTERED_COUNT}  ${unfiltered_count}

Compare Event Listings Count
    ${filtered_count}=    Get Element Count    ${EVENT_LISTINGS}
    Should Be True        ${UNFILTERED_COUNT} > ${filtered_count}

