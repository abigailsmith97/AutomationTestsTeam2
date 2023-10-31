Feature: GreenKart total cost checkout

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

Feature: Green Kart features
Scenario: Homepage is visible
  Given I navigate to the Green Kart homepage 
  Then I should see the Green Kart homepage

Scenario: Search for Brocolli
  Given I navigate to the Green Kart homepage 
  And I search for Brocolli 
  Then I see the Brocolli on the page

Scenario: Item is in cart
  Given I add item to the cart
  Then I should be able to remove it

