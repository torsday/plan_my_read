# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "test", :password => "test", :password_confirmation => "test")

geb = Book.create(
  :title => "Gödel, Escher, Bach",
  :page_count => 777,
  :isbn13 => "9780465026562"
)

Book.create(
  :title => "Algorithms (4th Edition)",
  :page_count => 992,
  :isbn13 => "9780321573513"
)

Book.create(
  :title => "Introduction to Algorithms",
  :page_count => 1180,
  :isbn13 => "9780262032933"
)

Book.create(
  :title => "The Art of Unix Programming",
  :page_count => 560,
  :isbn13 => "0076092025368"
)

Book.create(
  :title => "Compilers: Principles, Techniques, and Tools",
  :page_count => 500,
  :isbn13 => "9780201100884"
)

BookList.create(
  :user => User.first,
  :title => "Tech books I've always wanted to read",
  :end_date => 5.weeks.from_now
)

Book.all.each do |b|
  BooksBookList.create(
    :book_list => BookList.first,
    :book => b
  )
end

b_list_b = BookList.create(
  :user => User.first,
  :title => "Food for the Soul",
  :end_date => 3.weeks.from_now
)

books_for_list_b = []

books_for_list_b << Book.create(
  :title => "Everyday Zen: Love and Work",
  :page_count => 214,
  :isbn13 => "9780060607340"
)

books_for_list_b << Book.create(
  :title => "Nothing Special",
  :page_count => 288,
  :isbn13 => "9780062511171"
)

books_for_list_b << geb

books_for_list_b.each do |b|
  BooksBookList.create(
    :book_list => b_list_b,
    :book => b
  )
end
