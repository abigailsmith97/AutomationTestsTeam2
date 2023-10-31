Feature: Green Kart features
Scenario: Homepage is visible
  Given I navigate to the Green Kart homepage 
  Then I should see the Green Kart homepage 

  # As a customer, I want to be able to complete a purchase of vegetables and see the total amount at the end so that I can know how much I am spending.

Scenario: Checkout bag is visible
  Given I navigate to the homepage
  When I click on the checkout bag
  Then I should see a summary list of my items

Scenario: Total price of all items is displayed
  Given I navigate to the homepage
  When I add items to the checkout bag
  Then I should see a total cost of the items 

Scenario: Delete individual items from checkout bag
  Given I navigate to the checkout bag 
  And have items in the checkout bag
  When I click on the checkout bag
  Then I should be able to delete individual items

Scenario: Proceed to checkout once list is reviewed
  Given I nagivate to the checkout bag 
  And I have items in the checkout bag 
  When I click proceed to checkout
  Then I should be able to proceed to checkout page

Scenario: Check list of items on checkout Page
  Given I navigate to the checkout Page
  And I have items in my checkout bag
  When the page is loaded
  Then I should see a list of items with their cost and quanity 
  

Scenario: Checkout items
  Given I navigate to the checkout page
  And I have items in my checkout bag
  When the items are listed
  Then I should see a checkout button
