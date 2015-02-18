class User < ActiveRecord::Base

  has_secure_password

  has_many :book_lists
  has_many :books, :through => :book_lists
end
