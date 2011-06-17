class Post < ActiveRecord::Base
  validates :body, :presence => true
  has_many :comments
end
