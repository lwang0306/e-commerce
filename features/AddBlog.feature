Feature: Blogs and blog page

As an admin
so that I can track my blogs
I want to add a new blog to the list

Scenario: Add a blog
  Given I'm on the blog creation page
  When I add a new blog
  Then I should be able to see the new blog's page
  When I add a new blog leaving the title blank
  Then I should be able to see the error