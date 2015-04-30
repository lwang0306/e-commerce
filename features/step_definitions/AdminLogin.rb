Given(/^I'm a admin just signed up$/) do
  visit(new_admin_registration_path)
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  click_button 'Sign up'
  click_button 'Log out'
end

When(/^I log in and visit the admin page$/) do
  click_link 'Admin'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  click_button 'Log in'
end

Then(/^I should be able to see the customized admin page$/) do
  assert_text(/Signed in successfully./)
end

