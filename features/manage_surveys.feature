Feature: Survey Management
  
  Scenario: Survey creation
    Given I am on the new survey page
    When I fill in "survey_title" with "My new survey" 
    And I press "survey_submit"
    Then a survey should exist with title: "My new survey"

  Scenario: Survey viewing (all)
  Scenario: Survey view (atomic)
  Scenario: Survey editing
  Scenario: Survey deletion
