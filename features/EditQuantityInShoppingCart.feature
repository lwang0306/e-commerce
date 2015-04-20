Feature: User log in

  As an user
  so that I edit the quantity of a product in shopping cart
  I want to see the updated quantity of this product

  Scenario: User increases the quantity of a product in shopping cart
    Given I added one product to shopping cart from products page
    When I increase the quantity of this product in shopping cart
    Then I should be able to see the increased quantity

  Scenario: User decreases the quantity of a product in shopping cart
    Given I added one product with quantity more than one to shopping cart from products page
    When I decrease the quantity of this product in shopping cart
    Then I should be able to see the decreased quantity