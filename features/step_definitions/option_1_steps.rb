
Given('I navigate to the Green Kart homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
  sleep 1 # The sleeps are added to slow down the automation to show it working
end

Then('I should see the Green Kart homepage') do
  pending # Write code here that turns the phrase above into concrete actions
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
