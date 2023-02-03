*** Settings ***
Documentation    Test quote
Metadata         ID                           134
Metadata         Automation priority          null
Metadata         Test case importance         Low
Resource         squash_resources.resource
Test Setup       Test Setup
Test Teardown    Test Teardown


*** Test Cases ***
Test quote
    [Documentation]    Test quote

    Given testing "


*** Keywords ***
Test Setup
    [Documentation]    test setup
    ...                You can define the ${TEST_SETUP} variable with a keyword for setting up all your tests.
    ...                You can define the ${TEST_134_SETUP} variable with a keyword for setting up this specific test.
    ...                If both are defined, ${TEST_134_SETUP} will be run after ${TEST_SETUP}.

    ${TEST_SETUP_VALUE} =        Get Variable Value    ${TEST_SETUP}
    ${TEST_134_SETUP_VALUE} =    Get Variable Value    ${TEST_134_SETUP}
    IF    $TEST_SETUP_VALUE is not None        Run Keyword    ${TEST_SETUP}
    IF    $TEST_134_SETUP_VALUE is not None    Run Keyword    ${TEST_134_SETUP}

Test Teardown
    [Documentation]    test teardown
    ...                You can define the ${TEST_TEARDOWN} variable with a keyword for tearing down all your tests.
    ...                You can define the ${TEST_134_TEARDOWN} variable with a keyword for tearing down this specific test.
    ...                If both are defined, ${TEST_TEARDOWN} will be run after ${TEST_134_TEARDOWN}.

    ${TEST_134_TEARDOWN_VALUE} =    Get Variable Value    ${TEST_134_TEARDOWN}
    ${TEST_TEARDOWN_VALUE} =        Get Variable Value    ${TEST_TEARDOWN}
    IF    $TEST_134_TEARDOWN_VALUE is not None    Run Keyword    ${TEST_134_TEARDOWN}
    IF    $TEST_TEARDOWN_VALUE is not None        Run Keyword    ${TEST_TEARDOWN}
