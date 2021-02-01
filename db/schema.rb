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

ActiveRecord::Schema.define(version: 2021_01_30_144917) do

  create_table "business_hours", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "jiro_id"
    t.integer "wday"
    t.integer "category", default: 0
    t.string "start_at"
    t.string "end_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_holiday", default: false
  end

  create_table "facilities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "jiro_id"
    t.boolean "is_renge"
    t.boolean "is_tissue"
    t.boolean "is_apron"
    t.boolean "is_water_server"
    t.boolean "is_trash_box"
    t.boolean "is_vending_machine"
    t.boolean "is_hair_tie"
    t.integer "in_store_pending"
    t.integer "seasoning1"
    t.integer "seasoning2"
    t.integer "seasoning3"
    t.integer "seasoning4"
    t.integer "seasoning5"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "jirolians", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.integer "failed_attempts", default: 0, null: false
    t.string "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "provider"
    t.string "uid"
    t.string "username"
    t.integer "sex"
    t.datetime "birth_date"
    t.string "home_jiro"
    t.text "introduction"
    t.string "hp_url"
    t.boolean "approved_favorited"
    t.index ["confirmation_token"], name: "index_jirolians_on_confirmation_token", unique: true
    t.index ["email"], name: "index_jirolians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_jirolians_on_reset_password_token", unique: true
    t.index ["unlock_token"], name: "index_jirolians_on_unlock_token", unique: true
  end

  create_table "jiros", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "address"
    t.string "phone_number"
    t.string "access"
    t.string "hp_url"
    t.integer "seat_count"
    t.integer "payment_method"
    t.integer "how_to_order"
    t.integer "call_timing"
    t.text "information"
    t.boolean "is_closed"
    t.integer "registered_jirolian_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "is_parking_area"
  end

  create_table "menu_items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "jiro_id"
    t.integer "price"
    t.boolean "is_main"
    t.integer "noodle_quantity"
    t.text "note"
    t.string "topping1"
    t.string "topping2"
    t.string "topping3"
    t.string "topping4"
    t.string "topping5"
    t.string "topping6"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "topping7"
  end

end
