Before do
  load "#{Rails.root}/db/seeds.rb"
end

Given /^I am an unauthenticated user$/ do
    Given 'I am on the root page'
    Then 'I should not see "Logout"'
end

Given /^I am an authenticated user$/ do
    Given "I am on the new_user_session page"
    When "I fill in the following:", table(%{
      | user_session[login]     | admin      |
      | user_session[password]  | test-admin |
    })
    When "I press \"Login\""
    Then "I should see \"Welcome, Test Admin\""
end
