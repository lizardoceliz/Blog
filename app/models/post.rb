class Post < ActiveRecord::Base
  validates :title,  :presence  => true, :uniqueness => true
  validates :entry,  :presence  => true
  validates :author, :presence  => true
end
