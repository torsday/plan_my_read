# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(:email => "test", :password => "test", :password_confirmation => "test")

Book.create(
  :title => "Gödel, Escher, Bach",
  :page_count => 777,
  :isbn13 => "9780465026562"
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
  :title => "Tech books I've always wanted to read"
)
