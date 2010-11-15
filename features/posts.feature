Feature: Post Management & Display
  In order to provide quality content
  As a author
  I need to be able to manage posts
  
  Scenario: Show Post
    Given I have a post
    And my post has title "My Post"
    And my post has body "This is my post. Back off!!!"
    And my post has author with name "John Doe"
    And my post was published on "May 22, 2010"
    When I display the post
    Then I should see "My Post"
    And I should see "This is my post. Back off!!!"
    And I should see "John Doe"
    And I should see "May 22, 2010"
       
  Scenario: Create Post
    Given I have a user named "John Doe"
    When I got to the posts creation page
    And I fill in "post[title]" with "My Post"
    And I filll in "post[body]" with "This is my post. Back off!!!"
    And I select "John Doe" from "post[author]"
    And I push "Publish"
    Then I should see "My Post"
    And I should see "This is my post. Back off!!!"
    And I should see "John Doe"
    And I should see "May 22, 2010"          
