
### Given 

Given /^I have an user named "([^"]*)"$/ do |username|
  Factory.create :user, :name => username
end


