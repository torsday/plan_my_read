# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20150218031921) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_lists", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "title"
    t.integer  "page_count_total"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.integer  "page_count"
    t.string   "isbn13"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "books", ["isbn13"], name: "index_books_on_isbn13", unique: true, using: :btree

  create_table "books_book_lists", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "book_list_id"
    t.integer  "position"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "books_book_lists", ["book_list_id", "position"], name: "index_books_book_lists_on_book_list_id_and_position", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree

end
