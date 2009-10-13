Feature: Manage sessions
  In order to gain priviledged access
  an unauthenticated user
  wants to be authenticated
  
  Scenario: unauthenticated user access a public page
    Given I am on sessions/new
    And I am an unauthenticated user
    When I go to /
    Then I should see "Welcome."
    And I should be on /
    And I should be an unauthenticated user

  Scenario: unauthenticated user access a priviledged page
    Given I am on sessions/new
    And I am an unauthenticated user
    When I go to /home
    Then I should see "Login"
    And I should be on sessions/new
    And I should be an unauthenticated user

  Scenario: unathenticated user uses valid credentials
    Given I am on sessions/new
    And I am an unauthenticated user
    When I fill in the following:
      | username | admin      |
      | password | test-admin |
    Then I should see "Welcome, Test Admin"
    And I should be on /home
    And I should be an authenticated user

  Scenario: unathenticated user uses invalid credentials
    Given I am on sessions/new
    And I am an unauthenticated user
    When I fill in the following:
      | username | admin      |
      | password | bogus      |
    Then I should see "failed"
    And I should be on sessions/new
    And I should be an unauthenticated user

  Scenario: unathenticated user omits username
    Given I am on sessions/new
    And I am an unauthenticated user
    When I fill in the following:
      | password | bogus      |
    Then I should see "failed"
    And I should be on sessions/new
    And I should be an unauthenticated user

  Scenario: unathenticated user omits password
    Given I am on sessions/new
    And I am an unauthenticated user
    When I fill in the following:
      | username | admin      |
    Then I should see "failed"
    And I should be on sessions/new
    And I should be an unauthenticated user

  Scenario: authenticated user attempts to logout
    Given I am an authenticated user
    And I am on /
    Then I should see "Welcome,"
    When I follow "logout"
    Then I should be an unauthenticated user
    And I should be on /
    And I should see "Welcome."