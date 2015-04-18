Given(/^I'm on the user sign up page$/) do
  visit(new_user_registration_path)
end

When(/^I fill in individual information$/) do
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
end

Then(/^I should be able to see the home page$/) do
  assert page.has_content?("Welcome! You have signed up successfully.")
end

When(/^I fill in user information with the username blank$/) do
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => ''
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
end

Then(/^I should be able to see the username blank error$/) do
  assert page.has_content?("Name can't be blank")
end

When(/^I fill in user information with the phone number blank$/) do
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => ''
  click_button 'Sign up'
end

Then(/^I should be able to see the phone number blank error$/) do
  assert page.has_content?("Phone number can't be blank")
end

When(/^I fill in user information with the phone number larger than (\d+) digit$/) do |arg1|
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '123567899876432134'
  click_button 'Sign up'
end

Then(/^I should be able to see the phone number error$/) do
  assert page.has_content?("Phone number 13 characters is the maximum allowed")
end

When(/^I fill in user information with age less than (\d+)$/) do |arg1|
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '-1'
  fill_in 'Phone number', :with => '12356789'
  click_button 'Sign up'
end

Then(/^I should be able to see the age error$/) do
  assert page.has_content?("Age must be greater than or equal to 0")
end

When(/^I fill in user information with phone number with characters other than digits or '-'$/) do
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '1'
  fill_in 'Phone number', :with => '123567#a89'
  click_button 'Sign up'
end

Then(/^I should be able to see the phone number characters error$/) do
  assert page.has_content?("Phone number only allows digits")
end

When(/^I fill in user information with gender that is not female or male \(case insensitive\)$/) do
  click_link 'Sign Out'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'F'
  fill_in 'Age', :with => '1'
  fill_in 'Phone number', :with => '12356789'
  click_button 'Sign up'
end

Then(/^I should be able to see the gender error$/) do
  assert page.has_content?("Gender only allows male or female")
end

