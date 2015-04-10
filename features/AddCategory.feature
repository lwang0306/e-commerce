Feature: Categories and category page

  As an admin
  so that I can track my category
  I want to add a new category to the list

  Scenario: Add a category
    Given I'm on the category creation page
    When I add a new category
    Then I should be able to see the new category's page
    When I add a new category leaving the title blank
    Then I should be able to see the error for the name