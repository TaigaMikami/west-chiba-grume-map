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

ActiveRecord::Schema.define(version: 2019_08_24_163007) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "food_categories", force: :cascade do |t|
    t.string "name", null: false, comment: "食べ物のカテゴリー"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shops", force: :cascade do |t|
    t.string "name", null: false, comment: "お店の名前"
    t.string "address", null: false, comment: "住所"
    t.float "lat", null: false, comment: "緯度"
    t.float "lng", null: false, comment: "経度"
    t.text "description", comment: "お店の説明"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "food_category_id"
    t.index ["food_category_id"], name: "index_shops_on_food_category_id"
  end

  add_foreign_key "shops", "food_categories"
end
