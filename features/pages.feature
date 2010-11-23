Feature: Page display
  In order to provide frecuently pages
  When user click in any fixed page we show it
  
  Scenario: Show links
    When I go to the front page
    Then I should see "About" option in navigation menu
     And I should see "Contact" option in navigation menu
     And I should see "Sitemap" option in navigation menu
       
  Scenario: Create Post
    Given I have an user named "John Doe"
     When I go to the posts creation page
      And I fill in "post[title]" with "My Post"
      And I fill in "post[body]" with "This is my post. Back off!!!"
      And I select "John Doe" from "post[author]"
      And I push "Publish"
     Then I should see "My Post"
      And I should see "This is my post. Back off!!!"
      And I should see "John Doe"
      And I should see "May 22, 2010"       
    

