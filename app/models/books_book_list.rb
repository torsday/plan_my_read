class BooksBookList < ActiveRecord::Base
  belongs_to :book_list
  belongs_to :book
end
