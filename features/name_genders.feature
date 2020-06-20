Feature: Ability to choose gender of generated names
  Background:
    Given I am on the fantasy names home page

  Scenario: Names are generated properly when female is selected
    When  I select female from genders dropdown
    And   I submit the form
    Then  20 names are properly generated

  Scenario: Names are generated properly when male is selected
    When  I select male from the genders dropdown
    And   I submit the form
    Then  20 names are properly generated 
