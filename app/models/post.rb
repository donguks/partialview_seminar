class Post < ApplicationRecord
  has_many :posts
  has_many :users, through: :likes
end
