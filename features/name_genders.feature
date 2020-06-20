Feature: Ability to choose gender of generated names
  Background:
    Given I am on the fantasy name page

  Scenario: Names are generated properly when female is selected
    When  I select "female" from the genders dropdown
    And   I submit the form
    Then  The number of names generated is equal to "20"

  Scenario: Names are generated properly when male is selected
    When  I select "male" from the genders dropdown
    And   I submit the form
    Then  The number of names generated is equal to "20"
