Feature: Product is added to shopping cart on products page

  As an user
  so that I can add a product to my shopping cart
  I want to see the new product in shopping cart

  Scenario: Add a product to shopping cart
    Given I'm on the all products page
    When I add a product to shopping cart
    Then I should be able to see the product in shopping cart

  Scenario: Add a product that is already in cart to shopping cart
    Given I'm on the blog creation page
    When I add a product that is already in cart to shopping cart
    Then I should be able to see the product with updated quantity