*** Settings ***
Documentation    Test emoticon
Metadata         ID                           282
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test emoticon
    [Documentation]    Test emoticon

    Given testing 👩‍❤️‍💋‍👨


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_282_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_282_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_282_SETUP_VALUE} =    Get Variable Value    ${TEST_282_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_282_SETUP_VALUE is not None    Run Keyword    ${TEST_282_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_282_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_282_TEARDOWN}.

    ${TEST_282_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_282_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_282_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_282_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
