# name => string
class Category < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  has_many :posts
end
