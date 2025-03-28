*** Settings ***

Documentation    Resource file.

Library     Selenium2Library
Library     String
Library     Collections
Library     OperatingSystem
Library     ArchiveLibrary
Library     Pdf2TextLibrary
Library     firefox_profile.py


*** Variables ***

# Timeout
${TIMEOUT}                              5


*** Keywords ***

Go To Page
    # Set Window Size  1600  1200
    Maximize Browser Window
    ${url}  Catenate  SEPARATOR=  ${SERVER}  ${APP}
    Go to  ${url}
    Reload Page
    Wait Until Page Contains  TEST  10s
    # Maximize Browser Window
    Execute JavaScript    window.scrollTo(0,0)