*** Settings ***

Suite Setup         Open Browser  about:blank  ${BROWSER}
Suite Teardown      Close All Browsers
Test Setup          Open Application Tab  ${TAB_SELECTED}  ${TAB}  ${TAB_TITLE}
Test Teardown       Run Keyword If Test Failed  Capture Page Screenshot

Resource            ../resources/resources.robot


*** Variables ***
${TEST_DATA_FOLDER}     /test_data/


*** Test Cases ***

gui_test_001 Verify input
    [Tags]  GUI
    [Documentation]  Check menu fields options and field enable and disable logic.

    List Selection Should Be  ${TEST FIELD}  test
    Checkbox Should Be Selected  ${TEST_CHECKBOX}
    Element Should Be Disabled  ${TEST_ELE}
    ${test_value}=  Get Value  ${TEST_FIELD}
    Should Be Equal  ${test_value}  80

    Select From List By Label  ${TEST_OPTIONS}  test_option
    Wait Until Element Contains  ${TEST}  test_value  timeout=${TIMEOUT}
    Sleep  1 sec
    List Selection Should Be  ${TEST_OPTIONS}  Not Selected
    Select From List By Label  ${TEST_OPTIONS}  Not Selected
    ${expected}=  Create list   Not Selected
    Check List Items  ${TEST_OPTIONS}  ${expected}
