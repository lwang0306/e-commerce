Given(/^I'm on the product creation page$/) do
  visit(new_product_path)
end

When(/^I add a new product$/) do
  fill_in "Name", :with => "Vitamin A"
  fill_in "Description", :with => "This is Vitamin A, which is good for eyes."
  fill_in "Price", :with => 3.20
  fill_in "Weight", :with => 1.00
  click_button 'Create Product'
end

Then(/^I should be able to see the product's page$/) do
  assert page.has_content?("Product was successfully created.")
end
