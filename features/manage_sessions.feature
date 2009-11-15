Feature: Manage user_session
  In order to gain priviledged access
  an unauthenticated user
  wants to be authenticated
  
  Scenario: unathenticated user uses valid credentials
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I fill in the following:
      | user_session[login]     | admin      |
      | user_session[password]  | test-admin |
    And I press "Login"
    Then I should see "Welcome, Admin"
    And I should be on the home page

  Scenario: authenticated user attempts to logout
    Given I am an authenticated user
    And I am on the root page
    Then I should see "Welcome, Admin"
    When I follow "Logout"
    Then I should be on the root page
    And I should not see "Logout"
    And I should see "Welcome."

  Scenario: unauthenticated user access a public page
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I go to the root page
    Then I should see "Welcome."
    And I should be on the root page

  Scenario: unauthenticated user access a priviledged page
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I go to the home page
    Then I should see "Login"
    And I should be on the new_user_session page

  Scenario: unathenticated user uses invalid credentials
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I fill in the following:
      | user_session[login]     | admin      |
      | user_session[password]  | bogus      |
    And I press "Login"
    Then I should see "Password is not valid"
    And I should be on the user_session page

  Scenario: unauthenticated user omits username
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I fill in the following:
      | user_session[password] | bogus      |
    And I press "Login"
    Then I should see "Login cannot be blank"
    And I should be on the user_session page

  Scenario: unauthenticated user omits password
    Given I am an unauthenticated user
    And I am on the new_user_session page
    When I fill in the following:
      | user_session[login] | admin      |
    And I press "Login"
    Then I should see "Password cannot be blank"
    And I should be on the user_session page

  Scenario: authenticated user attempts to logout
    Given I am an authenticated user
    And I am on the root page
    Then I should see "Welcome, Admin"
    When I follow "Logout"
    Then I should be on the root page
    And I should not see "Logout"
    And I should see "Welcome."