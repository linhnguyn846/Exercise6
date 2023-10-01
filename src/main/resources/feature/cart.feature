Feature: Order feature
  Verify all item detail in shopping cart page

  Scenario: Verify all item detail in shopping cart page
    Given I navigate to powerbuy page
    And   I change language to English
    When  I enter<inputValue> on search textbox
      | inputValue |
      |     TV     |
    And I filter all item to 44 to 55 inches
      | size                  |
      | 44 to 55 inches       |
    And I choose first item to add to cart
    And I navigate to 56 to 65 inches item page
    And I choose second item to add to cart
    And I navigate to cart page
    Then I should be to show list of item contain two items were just picked up

