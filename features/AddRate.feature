Feature: Rates and rate page

  As a buyer
  so that I rate a certain product
  I want to add a new rate

  Scenario: Add a rate
    Given I'm on the rate creation page
    When I add a new rate
    Then I should be able to see the rate's page