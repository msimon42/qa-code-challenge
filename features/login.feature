

Scenario: Verify Login error messages
Given I navigate to home page
When I press on Signin button on home page
Then I type my login "invalid-login"
And I type my password "cool_password"
Then I press on Signin button on login page
Then I will see invalid login or password error message

Scenario: Verify that password is required
Given I navigate to home page
When I press on Signin button on home page
Then I type my login "invalid-login"
Then I press on Signin button on login page
Then I will see password required error message