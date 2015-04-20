Given(/^I'm a user just signed up$/) do
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
  click_link 'Sign Out'
end

When(/^I log in and visit homepage$/) do
  click_link 'Sign In'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
end

Then(/^I should be able to see my customized welcome message$/) do
  page.has_content?("Shopping Cart")
end

Then(/^I should be able to see the shopping cart$/) do
  page.has_content?("Hello, xiaoyuan")
end
