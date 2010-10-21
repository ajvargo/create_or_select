# title => string
# contents => text
# category_id => integer
class Post < ActiveRecord::Base
  validates :category, :presence => true
  belongs_to :category
  accepts_nested_attributes_for :category
end
