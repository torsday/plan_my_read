class CreateBookLists < ActiveRecord::Migration
  def change
    create_table :book_lists do |t|
      t.belongs_to :user
      t.string :title
      t.integer :page_count_total
      t.date :start_date
      t.date :end_date
      t.timestamps null: false
    end
  end
end
