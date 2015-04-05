Feature: Average Rating

  As a buyer
  so that I can see the updated rate
  I want to check the product rate

  Scenario: Check a rate
    Given I'm on the product list page
    When I click a certain product
    Then I should be able to see the average rating