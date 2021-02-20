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

ActiveRecord::Schema.define(version: 2021_02_19_162115) do

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

  create_table "favorite_posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "jirolian_id", null: false
    t.bigint "post_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jirolian_id"], name: "index_favorite_posts_on_jirolian_id"
    t.index ["post_id"], name: "index_favorite_posts_on_post_id"
  end

  create_table "have_eaten_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "jiro_id", null: false
    t.bigint "jirolian_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jiro_id"], name: "index_have_eaten_statuses_on_jiro_id"
    t.index ["jirolian_id"], name: "index_have_eaten_statuses_on_jirolian_id"
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
    t.datetime "birth_date"
    t.string "home_jiro"
    t.text "introduction"
    t.string "hp_url"
    t.boolean "approved_favorited"
    t.integer "gender"
    t.string "image"
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

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "jirolian_id"
    t.integer "jiro_id"
    t.text "content"
    t.integer "soup"
    t.integer "noodle"
    t.integer "boiled_vegetable"
    t.integer "roasted_pork"
    t.string "called"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "relationships", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "jirolian_id"
    t.bigint "follow_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["follow_id"], name: "index_relationships_on_follow_id"
    t.index ["jirolian_id", "follow_id"], name: "index_relationships_on_jirolian_id_and_follow_id", unique: true
    t.index ["jirolian_id"], name: "index_relationships_on_jirolian_id"
  end

  create_table "wanna_eat_statuses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "jiro_id", null: false
    t.bigint "jirolian_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jiro_id"], name: "index_wanna_eat_statuses_on_jiro_id"
    t.index ["jirolian_id"], name: "index_wanna_eat_statuses_on_jirolian_id"
  end

  add_foreign_key "favorite_posts", "jirolians"
  add_foreign_key "favorite_posts", "posts"
  add_foreign_key "have_eaten_statuses", "jirolians"
  add_foreign_key "have_eaten_statuses", "jiros"
  add_foreign_key "relationships", "jirolians"
  add_foreign_key "relationships", "jirolians", column: "follow_id"
  add_foreign_key "wanna_eat_statuses", "jirolians"
  add_foreign_key "wanna_eat_statuses", "jiros"
end
