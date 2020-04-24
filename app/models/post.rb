class Post < ApplicationRecord
  has_many :comments #this will take comments and add a method with the same name to post model objects
end
