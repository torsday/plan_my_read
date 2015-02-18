class Book < ActiveRecord::Base
  has_many :books_book_lists
  has_many :book_lists, :through => :books_book_lists

  validates :isbn13, :uniqueness => :true
end

