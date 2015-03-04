class CreateBooksBookLists < ActiveRecord::Migration
  def change
    create_table :books_book_lists do |t|
      t.belongs_to :book
      t.belongs_to :book_list
      t.integer :position
      t.timestamps null: false
    end
    add_index(:books_book_lists, [:book_list_id, :position], unique: true)
  end
end
