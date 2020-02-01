# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_01_005236) do

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "price"
    t.boolean "availablity"
    t.string "pictures"
    t.integer "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "plant_id"
    t.index ["seller_id"], name: "index_plants_on_seller_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "title"
    t.integer "rating"
    t.string "comments"
    t.date "date"
    t.integer "user_id", null: false
    t.integer "plant_id", null: false
    t.integer "seller_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plant_id"], name: "index_ratings_on_plant_id"
    t.index ["seller_id"], name: "index_ratings_on_seller_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "sellers", force: :cascade do |t|
    t.string "email_address"
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "seller_id"
    t.string "password_digest"
    t.string "username"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "name"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "plants", "sellers"
  add_foreign_key "ratings", "plants"
  add_foreign_key "ratings", "sellers"
  add_foreign_key "ratings", "users"
end
