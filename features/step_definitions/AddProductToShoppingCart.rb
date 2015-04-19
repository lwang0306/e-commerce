Given(/^I'm on the all products page$/) do
  visit(products_path)
end

When(/^I add a product to shopping cart$/) do
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
  visit(products_path)
  click_link 'Add To Shopping Cart'
end

Then(/^I should be able to see the product in shopping cart$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I add a product that is already in cart to shopping cart$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be able to see the product with updated quantity$/) do
  pending # express the regexp above with the code you wish you had
end