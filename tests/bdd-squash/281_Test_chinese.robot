*** Settings ***
Documentation    Test chinese
Metadata         ID                           281
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test chinese
    [Documentation]    Test chinese

    Given testing 𨱏


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_281_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_281_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_281_SETUP_VALUE} =    Get Variable Value    ${TEST_281_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_281_SETUP_VALUE is not None    Run Keyword    ${TEST_281_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_281_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_281_TEARDOWN}.

    ${TEST_281_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_281_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_281_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_281_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
