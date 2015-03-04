# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# ---
# CREATE USERS

User.create(:email => "test", :password => "test", :password_confirmation => "test")
User.create(:email => "test2", :password => "test2", :password_confirmation => "test2")

# ---
# CREATE BOOKS

Book.create(
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

Book.create(
  :title => "Everyday Zen: Love and Work",
  :page_count => 214,
  :isbn13 => "9780060607340"
)

Book.create(
  :title => "Nothing Special",
  :page_count => 288,
  :isbn13 => "9780062511171"
)

# ---
# CREATE BOOK LISTS

BookList.create(
  :user => User.first,
  :title => "Tech books I've always wanted to read",
  :end_date => 5.weeks.from_now
)

BookList.create(
  :user => User.first,
  :title => "Food for the Soul",
  :end_date => 3.weeks.from_now
)

# ---
# POPULATE BOOK LISTS

tech_titles = [
  "Gödel, Escher, Bach",
  "Algorithms (4th Edition)",
  "Introduction to Algorithms",
  "The Art of Unix Programming",
  "Compilers: Principles, Techniques, and Tools",
]

zen_titles = [
  "Gödel, Escher, Bach",
  "Everyday Zen: Love and Work",
  "Nothing Special",
]

tech_titles.each do |t|
  BooksBookList.create(
    :book_list => BookList.where(:title => "Tech books I've always wanted to read").first,
    :book => Book.where(:title => t).first
  )
end

zen_titles.each do |t|
  BooksBookList.create(
    :book_list => BookList.where(:title => "Food for the Soul").first,
    :book => Book.where(:title => "Food for the Soul").first
  )
end
