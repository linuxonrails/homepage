class Post < ActiveRecord::Base
  belongs_to :author, :class_name => "User"
  
  validates_presence_of :title, :body, :published_on, :author_id
end
