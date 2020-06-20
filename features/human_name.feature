Feature: Ability to add a suggested name to the generator
  Background:
    Given   I am on the fantasy name page
    And     I see the text "Find the Perfect Fantasy Name"

  Scenario: Random name works properly
    When    I click the suggest button next to the human name field
    Then    A random name appears in the human name field
    Then    I submit the form
    Then    I am now on a results page that is "not empty"
    And     The suggested name is present at least once in the generated names

  Scenario: User can add their own suggested name
    When    I enter "John Smith" in the human name field
    And     I submit the form
    Then    I am now on a results page that is "not empty"
    Then    "John Smith" is present at least once in the generated names

  Scenario: A human name containing only numbers and special chars is not factored in to the generated names
    When    I enter "234#$%@352434@" in the human name field
    And     I submit the form
    Then    I am now on a results page that is "not empty"
    Then    None of the generated names contain integers or special chars
