class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.integer :page_count
      t.integer :isbn13

      t.timestamps null: false
    end
  end
end
