Feature: Admin log in

  As an admin
  so that I can log in
  I want to see my admin page

  Scenario: Log-in admin sees its admin page
    Given I'm a admin just signed up
    When I log in and visit the admin page
    Then I should be able to see the customized admin page

