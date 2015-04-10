Given(/^I'm on the category creation page$/) do
  visit(new_category_path)
end

When(/^I add a new category$/) do
  fill_in 'Name', :with => 'Milk'
  click_button 'Create Category'
end

Then(/^I should be able to see the new category's page$/) do
  assert page.has_content?("Category was successfully created.")
end

When(/^I add a new category leaving the title blank$/) do
  visit(new_category_path)
  click_button 'Create Category'
end

Then(/^I should be able to see the error for the name$/) do
  assert page.has_content?("Name can't be blank")
end
