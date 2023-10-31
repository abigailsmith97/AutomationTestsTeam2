
Given('I navigate to the Green Kart homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
  sleep 1 # The sleeps are added to slow down the automation to show it working
end


Then('I should see the Green Kart homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

# When("I will search for {Brocolli}") do |searchText|
#   fill_in "Brocolli", with => searchText
#   sleep 1 
# end

# When("I click search") do 
#   find('Brocolli').click
#   sleep 1
# end

# Then("I should use {Brocolli}") do |expectedText|
#   page.should have_content(expectedText)
#   sleep 1
# end

Given('I search for Brocolli') do
  #fill_in 'search', :with => "Brocolli"
  find(:xpath, "//input[@placeholder='Search for Vegetables and Fruits']").set('Brocolli')
  sleep 2
end

Then('I see the Brocolli on the page') do 
  expect(page).to have_content('Brocolli')
end