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

ActiveRecord::Schema.define(version: 2020_12_12_190404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parking_spots", force: :cascade do |t|
    t.string "name"
    t.string "spot_type"
    t.boolean "occupied", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parkings", force: :cascade do |t|
    t.bigint "parking_spot_id"
    t.bigint "vehicle_id"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["parking_spot_id"], name: "index_parkings_on_parking_spot_id"
    t.index ["vehicle_id"], name: "index_parkings_on_vehicle_id"
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "registration_number"
    t.string "type"
    t.boolean "parked", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "parkings", "parking_spots"
  add_foreign_key "parkings", "vehicles"
end
