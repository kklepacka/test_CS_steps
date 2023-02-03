*** Settings ***
Documentation    Test dot slash
Metadata         ID                           172
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test dot slash
    [Documentation]    Test dot slash

    Given testing ./test


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_172_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_172_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_172_SETUP_VALUE} =    Get Variable Value    ${TEST_172_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_172_SETUP_VALUE is not None    Run Keyword    ${TEST_172_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_172_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_172_TEARDOWN}.

    ${TEST_172_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_172_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_172_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_172_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
