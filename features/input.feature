Feature: Homepage Inputs
  Background:
    Given I am on the fantasy name page
    And   I see the text "Find the Perfect Fantasy Name"

  Scenario: Fields for categories function properly
    Given There are 23 categories
    And   All categories are selected
    And   I can deselect all categories
    And   I can select the category "Dragon"

  Scenario: Defaults to generating 20 names
    Given There is a field where one can enter the amount of names they would like generated
    And   The field is populated with the number 20

  Scenario: Gender of names defaults to female
    Given There is a dropdown menu for gender

  Scenario: Human name field defaults to blank
    Given There is a field where a user can enter a human name
    And   The field is currently blank

  Scenario: Random seed contains a number
    Given There is a field where a user can enter a seed for the generator
    And   The field already contains a random number
