

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




