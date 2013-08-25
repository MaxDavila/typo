Feature: Blog Categories
  As an admin
  In order to add categories
  I want to be able to edit and add blog categories

Background: articles  have been added to database
  Given the blog is set up
  And I am logged into the admin panel
  
  Given the following articles exist:
  | title                   | author | body         | user_id   |
  | Hello                   | Me     | Hallo mein   | 1         |
  | There                   | You    | schatz       | 2         |

  Given the following categories exist:
  | name                    | permalink            | position     |  title   |
  | hello_category          | hello_Category       | 2            |  Hello   |
       
Scenario: I should be able to see the categories page
  When I follow "Categories"
  Then I should see "Categories"

Scenario: I should be able create new categories
  Given I am on the Categories page 
  When I fill in "category_name" with "new_category"
  And I press "Save"
  Then I should see "new_category"

Scenario: I should be able to edit existing categories
  Given I am on the Categories page 
  And I follow "Edit"
  When I fill in "category_name" with "edited category"
  And I press "Save"
  Then I should see "edited category"
  Then show me the page
  



