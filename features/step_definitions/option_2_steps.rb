Given('I navigate to the Para Bank homepage') do
    visit 'https://parabank.parasoft.com/parabank/services.htm'
    sleep 1 # The sleeps are added to slow down the automation to show it working
end

Then('I should see the Para Bank homepage') do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I create a {string} username") do ||
  fill_in 'username', with: 'Lindsay.ezeagu@solirius.com' 
end
