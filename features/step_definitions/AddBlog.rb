Given(/^I'm on the blog creation page$/) do
  visit(new_blog_path)
end

When(/^I add a new blog$/) do
  fill_in 'Title', :with => 'Why should we eat health snacks'
  fill_in 'Content', :with => 'Because I do not know.'
  click_button 'Create Blog'
end

Then(/^I should be able to see the new blog's page$/) do
  assert page.has_content?("Blog was successfully created.")
end

When(/^I add a new blog leaving the title blank$/) do
  visit(new_blog_path)
  fill_in 'Content', :with => 'Because I do not know.'
  click_button 'Create Blog'
end

Then(/^I should be able to see the error$/) do
  assert page.has_content?("Title can't be blank")
end
