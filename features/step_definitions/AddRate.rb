
Given(/^I'm on the rate creation page$/) do
  visit(new_rate_path)
end

When(/^I add a new rate$/) do
  visit(new_product_path)
  fill_in "Name", :with => "Vitamin A"
  fill_in "Description", :with => "This is Vitamin A, which is good for eyes."
  fill_in "Price", :with => 3.20
  fill_in "Weight", :with => 1.00
  click_button 'Create Product'
  visit(new_rate_path)
  fill_in "Rating", :with => "3"
  select "Vitamin A", :from => "Product"
  click_button 'Create Rate'
end

Then(/^I should be able to see the rate's page$/) do
  assert page.has_content?("Rate was successfully created.")
end
