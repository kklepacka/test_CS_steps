*** Settings ***
Documentation    Test and
Metadata         ID                           138
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test and
    [Documentation]    Test and

    Given testing & echo test


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_138_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_138_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_138_SETUP_VALUE} =    Get Variable Value    ${TEST_138_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_138_SETUP_VALUE is not None    Run Keyword    ${TEST_138_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_138_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_138_TEARDOWN}.

    ${TEST_138_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_138_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_138_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_138_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
