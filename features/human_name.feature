Feature: Ability to add a suggested name to the generator
  Background:
    Given   I am on the fantasy name page
    And     I see the text "Find the Perfect Fantasy Name"

  Scenario: Random name works properly
    When    I click the suggest button next to the human name field
    Then    A random name appears in the human name field
    Then    I submit the form
    And     The suggested name is present at least once in the generated names

  Scenario: User can add their own suggested name
    When    I enter a name in the human name field
    And     I submit the form
    Then    The name I entered is present at least once in the generated names 
