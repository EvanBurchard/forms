Feature: Survey Management
  
  Scenario: Survey creation
    Given I am on the new survey page
    When I fill in "survey_title" with "My new survey" 
    And I press "survey_submit"
    Then a survey should exist with title: "My new survey"
    And I should be on the surveys page

  Scenario: Survey viewing (all)
    Given a survey exists with title: "My new survey"
    And I am on the surveys page
    Then I should see "My new survey"
  Scenario: Survey view (atomic)
  Scenario: Survey editing
  Scenario: Survey deletion
