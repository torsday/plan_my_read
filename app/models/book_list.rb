class BookList < ActiveRecord::Base
  belongs_to :user
  has_many :books_book_lists
  has_many :books, :through => :books_book_lists
end
