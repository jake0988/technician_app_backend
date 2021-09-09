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

ActiveRecord::Schema.define(version: 2021_09_08_172451) do

  create_table "appointment_pianos", force: :cascade do |t|
    t.integer "appointment_id", null: false
    t.integer "piano_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["appointment_id"], name: "index_appointment_pianos_on_appointment_id"
    t.index ["piano_id"], name: "index_appointment_pianos_on_piano_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "initial_a4"
    t.text "work_done"
    t.integer "price"
    t.date "date"
    t.integer "piano_id"
    t.integer "hours"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "email"
    t.string "phone_number"
    t.integer "number_of_pianos"
    t.string "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pianos", force: :cascade do |t|
    t.string "make"
    t.string "model"
    t.string "year"
    t.string "image"
    t.string "serial"
    t.text "future_work"
    t.integer "customer_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appointment_pianos", "appointments"
  add_foreign_key "appointment_pianos", "pianos"
end
