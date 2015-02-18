class CreateBooksBookLists < ActiveRecord::Migration
  def change
    create_table :books_book_lists do |t|
      t.belongs_to :book
      t.belongs_to :book_list
      t.timestamps null: false
    end
  end
end
