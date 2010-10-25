class Post < ActiveRecord::Base
  has_many :links
  
  validates :title,  :presence  => true, :uniqueness => true
  validates :entry,  :presence  => true
  validates :author, :presence  => true
end
