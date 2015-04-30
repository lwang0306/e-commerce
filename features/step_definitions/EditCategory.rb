Given(/^I'm on the category list page to do edit$/) do
  visit(categories_path)
end

When(/^I edit an existed category$/) do
  visit(new_category_path)
  fill_in 'Name', :with => 'Milk'
  click_button 'Create Category'
  visit( '/categories/1/edit')
  fill_in 'Name', :with => 'Milky'
  click_button 'Update Category'
end

Then(/^I should be able to see category list page with the changes$/) do
  visit(categories_path)
  assert_text('Milky')
end