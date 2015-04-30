Feature: Categories and category page

  As an admin
  so that I can track my categories
  I want to edit a categories from the list

  Scenario: Edit a category
    Given I'm on the category list page to do edit
    When I edit an existed category
    Then I should be able to see category list page with the changes