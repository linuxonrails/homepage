Given /^my post has title "([^"]*)"$/ do |title|
  @post.title = title
  @post.save
end

Given /^my post has body "([^"]*)"$/ do |body|
  @post.body = body
  @post.save  
end

Given /^my post has author with name "([^"]*)"$/ do |name|
  @post.author = User.create(:name => name)
end

Given /^my post was published on "([^"]*)"$/ do |date|
  @post.published_on = Date.parse(date)
  @post.save
end

Given /^I have a post$/ do
  @post = Post.create
end

Given /^I have .+ posts$/ do |amount|
  amount.to_i.times do 
    Given "I have a post"
  end
end


When /^I display the post$/ do
  visit "/posts/#{@post.id}"
end

