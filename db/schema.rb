# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_07_052715) do

  create_table "book_tags", force: :cascade do |t|
    t.integer "book_id"
    t.integer "tag_id"
    t.index ["book_id"], name: "index_book_tags_on_book_id"
    t.index ["tag_id"], name: "index_book_tags_on_tag_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_title"
    t.string "book_author"
    t.string "book_description"
    t.integer "read_status_id"
    t.integer "fiction_nonfiction_group_id"
    t.index ["fiction_nonfiction_group_id"], name: "index_books_on_fiction_nonfiction_group_id"
    t.index ["read_status_id"], name: "index_books_on_read_status_id"
  end

  create_table "fiction_nonfiction_groups", force: :cascade do |t|
    t.string "group_name"
  end

  create_table "read_statuses", force: :cascade do |t|
    t.string "read_status"
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
  end

  add_foreign_key "book_tags", "books"
  add_foreign_key "book_tags", "tags"
  add_foreign_key "books", "fiction_nonfiction_groups"
  add_foreign_key "books", "read_statuses"
end
