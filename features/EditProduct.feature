Feature: Products and product page

  As an admin
  so that I can track my products
  I want to edit a product from the list

  Scenario: Edit a product
    Given I'm on the product list page to do edit
    When I edit an existed product
    Then I should be able to see product list page with the changes