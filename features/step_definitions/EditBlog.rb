Given(/^I'm on the blog list page to do edit$/) do
  visit(admin_branch_blogs_path)
end
When(/^I edit an existed blog$/) do
  visit(new_blog_path)
  fill_in 'Title', :with => 'Why should we eat health snacks'
  fill_in 'Content', :with => 'Because I do not know.'
  click_button 'Create Blog'
  visit( '/blogs/1/edit')
  # visit(admin_branch_blogs_path)
  # click_button 'Edit'
   fill_in 'Title', :with => 'snack is bad'
  click_button 'Update Blog'
end

Then(/^I should be able to see blog list page with the changes$/) do
  visit(admin_branch_blogs_path)
  assert_text('snack is bad')
end
