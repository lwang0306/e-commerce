Feature: Products and product page

  As an admin
  so that I can track my product
  I want to add a new product to the list

  Scenario: Add a product
    Given I'm on the product creation page
    When I add a new product
    Then I should be able to see the new product's page

  Scenario: Add a product with name blank
    Given I'm on the product creation page
    When I add a new product leaving the name blank
    Then I should be able to see the error for the product name

  Scenario: Add a product with price blank
    Given I'm on the product creation page
    When I add a new product leaving the price blank
    Then I should be able to see the error for the blank price

  Scenario: Add a product with negative price
    Given I'm on the product creation page
    When I add a new product with negative price
    Then I should be able to see the error for the price

  Scenario: Add a product with more than 2000 characters
    Given I'm on the product creation page
    When I add a description for more than 2000 characters
    Then I should be able to see the error for the description