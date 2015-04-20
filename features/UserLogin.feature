Feature: User log in

  As an user
  so that I can log in
  I want to see my welcome message and shopping cart

  Scenario: Log-in user sees its customized welcome message
    Given I'm a user just signed up
    When I log in and visit homepage
    Then I should be able to see my customized welcome message

  Scenario: Log-in user sees its customized welcome message
    Given I'm a user just signed up
    When I log in and visit homepage
    Then I should be able to see the shopping cart