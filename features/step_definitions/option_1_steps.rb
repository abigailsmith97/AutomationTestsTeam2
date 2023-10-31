
Given('I navigate to the Green Kart homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
  sleep 1 # The sleeps are added to slow down the automation to show it working
end


Then('I should see the Green Kart homepage') do
  page.has_title?('GreenKart - veg and fruits kart')
end

Given('I navigate to the homepage') do
  visit 'https://rahulshettyacademy.com/seleniumPractise/#/'
end

When('I click on the checkout bag') do
  click_on('#root > div > header > div > div.cart > a.cart-icon > img')
end

Then('I should see a summary list of my items') do
  page.has_selector?('#root > div > header > div > div.cart > div.cart-preview.active')
end

When('I add items to the checkout bag') do
  page.all(:button, 'ADD TO CART').click.each do |item|
    puts item
end
  all(:button, 'ADD TO CART')[0].click
end

Then('I should see a total cost of the items') do
  page.has_selector?('#root > div > header > div > div.cart > div.cart-info')
end

