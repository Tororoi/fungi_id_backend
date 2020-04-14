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

ActiveRecord::Schema.define(version: 2020_04_13_202317) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "mushrooms", force: :cascade do |t|
    t.string "species"
    t.string "genus"
    t.string "family"
    t.string "order"
    t.string "classis"
    t.string "phylum"
    t.string "common_name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "observations", force: :cascade do |t|
    t.string "location"
    t.bigint "user_id", null: false
    t.bigint "mushroom_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mushroom_id"], name: "index_observations_on_mushroom_id"
    t.index ["user_id"], name: "index_observations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.string "bio"
    t.string "avatar"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "observations", "mushrooms"
  add_foreign_key "observations", "users"
end
