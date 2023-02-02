*** Settings ***
Documentation    Test equals
Metadata         ID                           301
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test equals
    [Documentation]    Test equals

    Given testing =


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_301_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_301_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_301_SETUP_VALUE} =    Get Variable Value    ${TEST_301_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_301_SETUP_VALUE is not None    Run Keyword    ${TEST_301_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_301_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_301_TEARDOWN}.

    ${TEST_301_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_301_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_301_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_301_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
