class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :page_count
      t.string :isbn13
      t.timestamps null: false
    end
    add_index(:books, :isbn13, :unique => true)
  end
end
