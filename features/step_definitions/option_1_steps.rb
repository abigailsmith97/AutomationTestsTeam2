Given ('I am on the homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
end


When ('I click add to cart') do
  page.all(:button, 'ADD TO CART')[1]
end

Then('I should see a proceed to checkout button') do
  page.has_text?('PROCEED TO CHECKOUT')
end

Given ('I am on the checkout page') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/cart'
end

When ('I look at the cost breakdown') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/cart'
end

Then ('I can see the total cost') do
  page.has_text?('Total Amount')
end

Given('I am on the cart page') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/cart'
end

When('I click place order') do
  click_button('Place Order')
end

Then('I should place order of items') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/country'
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

Given('I add item to the cart') do
  first(:button, 'ADD TO CART').click # <- Click add to cart
  sleep 1

  expect(page).to have_selector('.cart-info', text:'1') # <- Verify 1 in cart

end


Then('I should be able to remove it') do

  find(:xpath, "//img[@alt='Cart']").click # <- Click shopping cart icon
  sleep 1

  find(:xpath, "//div[@class='cart-preview active']//div//div//a[@class='product-remove'][normalize-space()='×']").click # <- Click x to remove item
  sleep 1

  expect(page).to have_selector('.cart-info', text:'0')  # <- Verify nothing in cart

end


