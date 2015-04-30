Given(/^I'm a user just foget password$/) do
  visit(new_user_password_path)
end

When(/^fill in the email without email address$/) do
  fill_in 'Email', :with => ''
end

Then(/^I should be able to see error message$/) do
  page.has_content?("Email can't be blank")
end
