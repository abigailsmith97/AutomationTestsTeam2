Feature: GreenKart Feature



Scenario: checkout button
Given I am on the homepage
When I click add to cart
Then I should see a proceed to checkout button

Scenario: Checkout items
Given I am on the cart page
When I click place order
Then I should place order of items 

Scenario: Check total cost
Given I am on the checkout page
When I look at the cost breakdown
Then I can see the total cost