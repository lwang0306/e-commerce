Feature: User log in

  As an user
  so that I can forget my password
  I want to see my password

  Scenario: click forget password
    Given I'm a user just foget password
    When fill in the email without email address
    Then I should be able to see error message