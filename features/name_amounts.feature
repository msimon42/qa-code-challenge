Feature: Ability to adjust the amount of names generated
  Background:
    Given I am on the fantasy name page
    And   I see the text "Find the Perfect Fantasy Name"

  Scenario: I do not alter the amount generated field
    And   I submit the form
    Then  The number of names generated is equal to "20"

  Scenario: It is possible to change the amount of names generated
    When  I change the number of names generated to "27"
    And   I submit the form
    Then  The number of names generated is equal to "27"

  Scenario: It is not possible to generate under 10 names
    When  I change the number of names generated to "8"
    And   I submit the form
    Then  Returns a message saying minimum number is 10
    And   The number of names generated is equal to "10"

  Scenario: It is not possible to generate over 100 names
    When  I change the number of names generated to "167"
    And   I submit the form
    Then  Returns a message saying maximum number is 100
    And   The number of names generated is equal to "100"

  Scenario: Name amounts field is left blank
    When  I change the number of names generated to ""
    And   I submit the form
    Then  Returns a message saying minimum number is 10
    And   The number of names generated is equal to "10"
