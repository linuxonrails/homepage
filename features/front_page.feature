Feature: Front Page
  In order to see the most relevant posts
  As a reader
  I want the 5 most recent posts on the front page
  
  Scenario: 1 post in blog
    Given I have a post
    And my post has title "My Post"
    And my post has body "This is my post. Back off!!!"
    And my post has author with name "John Doe"
    And my post was published on "May 22, 2010"
    When I go to the front page
    Then I should see "My Post"
    And I should see "This is my post. Back off!!!"
    And # I should see "John Doe"
And show me the page
    And I should see "22.5.2010"
    
  Scenario: Pagination
    Given I have an user named "John Doe"
     When I have 15 posts
      And I go to the front page
     Then I should see only 10 articles
      And I should see "1" in pagination links
      And I should see "2" as link in pagination links
      And I should not see "3" in pagination links
     When I follow "2"
     Then I should see only 5 articles
      And I should see "1" as link in pagination links
      And I should see "2" in pagination links
    
