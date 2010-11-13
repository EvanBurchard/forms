Feature: Submission Management
  
  Scenario: Submission creation
    Given I am on the new submission page
    When I press "submission_submit"
    Then a submission should exist 
    And I should be on the surveys page

  Scenario: Submission viewing (all)
    Given a submission exists
    And I am on the submissions page

  Scenario: Submission view (atomic)
    Given a submission exists
    And I am on that submission's page

