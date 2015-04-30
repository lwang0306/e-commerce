
Given(/^I'm on the admin sign up page$/) do
  visit(new_admin_registration_path)

end

When(/^I fill in admin information$/) do
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  click_button 'Sign up'
end

Then(/^I should be able to see the admin page$/) do
  assert_text(/Welcome! You have signed up successfully./)
end