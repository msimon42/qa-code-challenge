Feature: Name Generator
  Background:
    Given I am on the fantasy name page
    And   I see the text "Find the Perfect Fantasy Name"
    And   I deselect all categories

  Scenario: I can generate names for a single category
    When  I select a single category
    And   I submit the form
    Then  I am now on a results page that is "not empty"
    And   These results are "Ideal for an alien"

  Scenario: I can generate names for multiple categories
    When  I select multiple categories
    And   I submit the form
    Then  I am now on a results page that is "not empty"
    And   These results are "Ideal for an alien,Ideal for a dragon"

  Scenario: I submit the form with no categories selected
    When  I submit the form
    Then  I am now on a results page that is "empty"

  Scenario: I can generate names from all categories
    When  I select all categories
    And   I submit the form
    Then  I am now on a results page that is "not empty"
