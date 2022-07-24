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

ActiveRecord::Schema[7.0].define(version: 2022_07_22_080810) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "competition_results", force: :cascade do |t|
    t.bigint "sporter_id", null: false
    t.bigint "competition_id", null: false
    t.integer "place"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["competition_id"], name: "index_competition_results_on_competition_id"
    t.index ["sporter_id"], name: "index_competition_results_on_sporter_id"
  end

  create_table "competitions", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "countries", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sporters", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.bigint "country_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["country_id"], name: "index_sporters_on_country_id"
  end

  add_foreign_key "competition_results", "competitions"
  add_foreign_key "competition_results", "sporters"
  add_foreign_key "sporters", "countries"
end
