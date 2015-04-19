Feature: User sign up page

  As an user
  so that I can sign
  I want to sign up as a member

  Scenario: Add a user
    Given I'm on the user sign up page
    When I fill in individual information
    Then I should be able to see the home page

  Scenario: Add a user with name blank
    Given I'm on the user sign up page
    When I fill in user information with the username blank
    Then I should be able to see the username blank error

  Scenario: Add a user with phone number blank
    Given I'm on the user sign up page
    When I fill in user information with the phone number blank
    Then I should be able to see the phone number blank error

  Scenario: Add a user with phone number larger than 13 digit
    Given I'm on the user sign up page
    When I fill in user information with the phone number larger than 13 digit
    Then I should be able to see the phone number error

  Scenario: Add a user with with phone number with age less than 0
    Given I'm on the user sign up page
    When I fill in user information with age less than 0
    Then I should be able to see the age error

  Scenario: Add a user with with phone number with characters other than digits or '-'
    Given I'm on the user sign up page
    When I fill in user information with phone number with characters other than digits or '-'
    Then I should be able to see the phone number characters error

  Scenario: Add a user with with phone number that is not female or male (case insensitive)
    Given I'm on the user sign up page
    When I fill in user information with gender that is not female or male (case insensitive)
    Then I should be able to see the gender error


