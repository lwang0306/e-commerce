Given(/^I added one product to shopping cart from products page$/) do
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
  visit(products_path)
  click_link 'Add To Shopping Cart'
end

When(/^I increase the quantity of this product in shopping cart$/) do
  assert page.has_content?(" + ")
  page.all('tr td a').each do |a|
    if (a.text == " + ") then
      assert a.href == '/products/increase/1'
    end
  end
  visit '/products/increase/1'
end

Then(/^I should be able to see the increased quantity$/) do
  page.all('tr').each do |tr|
    # Do stuff with trs that meet the href requirement
    if (tr.all('td').size() > 3 and tr.all('td')[1].text == 'Silk') then
      assert tr.all('td')[3].text == '2'
    end
  end
end

Given(/^I added one product with quantity more than one to shopping cart from products page$/) do
  visit(new_product_path)
  fill_in 'Name', :with => 'Silk'
  fill_in 'Price', :with => '3.90'
  fill_in 'Description', :with => "Great product for your health!"
  click_button 'Create Product'
  visit(new_user_registration_path)
  fill_in 'Name', :with => 'xiaoyuan'
  fill_in 'Email', :with => 'bizhen@seas.upenn.edu'
  fill_in 'Password', :with => '12345678'
  fill_in 'Password confirmation', :with => '12345678'
  fill_in 'Gender', :with => 'Female'
  fill_in 'Age', :with => '12'
  fill_in 'Phone number', :with => '1234567'
  click_button 'Sign up'
  visit(products_path)
  click_link 'Add To Shopping Cart'
  visit(products_path)
  click_link 'Add To Shopping Cart'
end

When(/^I decrease the quantity of this product in shopping cart$/) do
  assert page.has_content?(" - ")
  page.all('tr td a').each do |a|
    if (a.text == " - ") then
      assert a.href == '/products/decrease/1'
    end
  end
  visit '/products/decrease/1'
end

Then(/^I should be able to see the decreased quantity$/) do
  page.all('tr').each do |tr|
    # Do stuff with trs that meet the href requirement
    if (tr.all('td').size() > 3 and tr.all('td')[1].text == 'Silk') then
      assert tr.all('td')[3].text == '1'
    end
  end
end
