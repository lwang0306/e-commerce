Feature: Admin sign up page

  As an admin
  so that I can sign up
  I want to sign up as an admin

  Scenario: Add an admin
    Given I'm on the admin sign up page
    When I fill in admin information
    Then I should be able to see the admin page


