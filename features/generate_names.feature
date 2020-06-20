Feature: Name Generator
  Background:
    Given I am on the fantasy name page
    And   I see the text "Find the Perfect Fantasy Name"
    And   All categories are checked
    And   I deselect all categories

  Scenario: I can generate names for a single category
    When  I select a single category
    And   I submit the form
    Then  I am now on a page containing 20 results
    And   These results all belong to the category I selected

  Scenario: I can generate names for multiple categories
    When  I select multiple categories
    And   I submit the form
    Then  I am now on a page containing 20 results
    And   These results all belong to one of the categories I selected

  Scenario: I submit the form with no categories selected
    When  I submit the form with no categories selected
    Then  I am now on a page with no results

  Scenario: I can generate names from all categories
    When  I select all categories
    And   I submit the form
    Then  I am now on a page containing 20 results
    
