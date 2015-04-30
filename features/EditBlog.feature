Feature: Blogs and blog page

  As an admin
  so that I can track my blogs
  I want to edit a blog from the list

  Scenario: Edit a blog
    Given I'm on the blog list page to do edit
    When I edit an existed blog
    Then I should be able to see blog list page with the changes