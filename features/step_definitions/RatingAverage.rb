Given(/^I'm on the product list page$/) do
  visit(products_path)
end

When(/^I click a certain product$/) do
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
  visit(new_rate_path)
  fill_in "Rating", :with => "2"
  select "Vitamin A", :from => "Product"
  click_button 'Create Rate'
end

Then(/^I should be able to see the average rating$/) do
  visit(products_path)
  click_link 'Show'
  assert page.has_content?("Average rating: 2.5")

end
