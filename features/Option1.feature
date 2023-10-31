Feature: Green Kart features
Scenario: Homepage is visible
  Given I navigate to the Green Kart homepage 
  Then I should see the Green Kart homepage

Scenario: Search for Brocolli
  Given I navigate to the Green Kart homepage 
  And I search for Brocolli 
  Then I see the Brocolli on the page