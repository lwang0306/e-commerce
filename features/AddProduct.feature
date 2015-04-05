Feature: Products and product page

  As a seller
  so that I track my products
  I want to add a new product

  Scenario: Add a product
    Given I'm on the product creation page
    When I add a new product
    Then I should be able to see the product's page