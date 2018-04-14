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

ActiveRecord::Schema.define(version: 20180414054606) do

  create_table "boorus", force: :cascade do |t|
    t.string "name"
    t.string "url"
    t.string "api_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.integer "booru_idx"
    t.string "file_url"
    t.string "hash"
    t.string "image"
    t.string "rating"
    t.string "source"
    t.text "tags"
    t.integer "change"
    t.integer "width"
    t.integer "height"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "booru_id"
    t.index ["booru_id"], name: "index_pictures_on_booru_id"
  end

  create_table "tag_pictures", force: :cascade do |t|
    t.integer "user_tag_id"
    t.integer "picture_id"
    t.integer "is_seen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picture_id"], name: "index_tag_pictures_on_picture_id"
    t.index ["user_tag_id"], name: "index_tag_pictures_on_user_tag_id"
  end

  create_table "user_tags", force: :cascade do |t|
    t.integer "user_id"
    t.integer "start_from"
    t.string "rating"
    t.text "tags"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_tags_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "user_type"
    t.string "email"
    t.string "name"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
