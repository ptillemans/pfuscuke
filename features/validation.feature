Feature: Answer questions
    In order to sign checklists when the necessary questions are valid
    As a TeamMember
    I want to answer questions and receive feedback about validity


    Scenario Outline:
    Given to check field is <to check>
    And the required status is <required status>
    When the user gives the answer <answer> remark <remark>
    Then the status will be <status>


    Scenarios:
        | answer                                                              | remark | to_check                               | required | status |
        | http://www.google.com/    | na,    | CVS:design/${project}/product/planning | g        | g      |
        | http://www.google.com/    |        | CVS:design/${project}/product/planning | g        | g      |
        |                            |        | to_check            | required | status |
