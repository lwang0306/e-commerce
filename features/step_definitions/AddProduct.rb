Given(/^I'm on the product creation page$/) do
  visit(new_product_path)
end

When(/^I add a new product$/) do
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
end

Then(/^I should be able to see the new product's page$/) do
  assert page.has_content?("Product was successfully created.")
end

When(/^I add a new product leaving the name blank$/) do
  visit(new_product_path)
  fill_in 'Price', :with => '3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
end

Then(/^I should be able to see the error for the product name$/) do
  assert page.has_content?("Name can't be blank")
end

When(/^I add a new product leaving the price blank$/) do
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
end

Then(/^I should be able to see the error for the blank price$/) do
  assert page.has_content?("Price can't be blank")
end


When(/^I add a new product with negative price$/) do
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '-3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
end

Then(/^I should be able to see the error for the price$/) do
  assert page.has_content?("Price must be greater than or equal to 0")
end

When(/^I add a description for more than (\d+) characters$/) do |arg1|
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '-3.90'
  fill_in 'Description', :with => "I will give the nutrition information at the bottom of this review, since Amazon doesn't seem to provide it. This is exactly as it appears on the box.

Okay, first off, almond milk is really good! I encourage you to try it. It's so much healthier than regular milk and will help you get so many nutrients in which Americans do not get enough. As far as the taste goes, it tastes exactly like chocolate milk. I know it says dark chocolate but it's sweeter than that.

As far as the size goes, I had a hard time visualizing what 8 ounces looks like. The best way I could describe it is to say that it looks a little bigger than a child's juice box.

Now the nutrition information:
Serving Size 1 Container
Calories 120 Fat Calories 25

Total Fat 3g 5%
Sat Fat 0g
Trans Fat 0g
Polunsaturated Fat 0.5g
Monounsaturated Fat 1.5g
Cholesterol 0mg 0%
Sodium 190mg 8%
Potassium 120mg 3%
Total Carb 23g 8%
Dietary Fiber 1g 4%
Sugars 22g
Protein 1g

Vitamin A 10%
Vitamin C 35%
Calcium 45%
Iron 8%
Vitamin D 25%
Vitamin E 50%
Riboflavin 25%
Vitamin B12 50%
Magnesium 8%
Zinc 10%
Copper 8%
Manganese 10%
I will give the nutrition information at the bottom of this review, since Amazon doesn't seem to provide it. This is exactly as it appears on the box.

Okay, first off, almond milk is really good! I encourage you to try it. It's so much healthier than regular milk and will help you get so many nutrients in which Americans do not get enough. As far as the taste goes, it tastes exactly like chocolate milk. I know it says dark chocolate but it's sweeter than that.

As far as the size goes, I had a hard time visualizing what 8 ounces looks like. The best way I could describe it is to say that it looks a little bigger than a child's juice box.

Now the nutrition information:
Serving Size 1 Container
Calories 120 Fat Calories 25

Total Fat 3g 5%
Sat Fat 0g
Trans Fat 0g
Polunsaturated Fat 0.5g
Monounsaturated Fat 1.5g
Cholesterol 0mg 0%
Sodium 190mg 8%
Potassium 120mg 3%
Total Carb 23g 8%
Dietary Fiber 1g 4%
Sugars 22g
Protein 1g

Vitamin A 10%
Vitamin C 35%
Calcium 45%
Iron 8%
Vitamin D 25%
Vitamin E 50%
Riboflavin 25%
Vitamin B12 50%
Magnesium 8%
Zinc 10%
Copper 8%
Manganese 10%"
  click_button 'Create Product'
end

Then(/^I should be able to see the erro for the description$/) do
  assert page.has_content?("Description 2000 characters is the maximum allowed")
end
