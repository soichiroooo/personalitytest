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

ActiveRecord::Schema.define(version: 2022_12_15_140550) do

  create_table "tests", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "item1", null: false
    t.integer "item2", null: false
    t.integer "item3", null: false
    t.integer "item4", null: false
    t.integer "item5", null: false
    t.integer "item6", null: false
    t.integer "item7", null: false
    t.integer "item8", null: false
    t.integer "item9", null: false
    t.integer "item10", null: false
    t.integer "item11", null: false
    t.integer "item12", null: false
    t.integer "item13", null: false
    t.integer "item14", null: false
    t.integer "item15", null: false
    t.integer "item16", null: false
    t.integer "item17", null: false
    t.integer "item18", null: false
    t.integer "item19", null: false
    t.integer "item20", null: false
    t.integer "item21", null: false
    t.integer "item22", null: false
    t.integer "item23", null: false
    t.integer "item24", null: false
    t.integer "item25", null: false
    t.integer "item26", null: false
    t.integer "item27", null: false
    t.integer "item28", null: false
    t.integer "item29", null: false
    t.integer "item30", null: false
    t.integer "item31", null: false
    t.integer "item32", null: false
    t.integer "item33", null: false
    t.integer "item34", null: false
    t.integer "item35", null: false
    t.integer "item36", null: false
    t.integer "item37", null: false
    t.integer "item38", null: false
    t.integer "item39", null: false
    t.integer "item40", null: false
    t.integer "item41", null: false
    t.integer "item42", null: false
    t.integer "item43", null: false
    t.integer "item44", null: false
    t.integer "item45", null: false
    t.integer "item46", null: false
    t.integer "item47", null: false
    t.integer "item48", null: false
    t.integer "item49", null: false
    t.integer "item50", null: false
    t.integer "item51", null: false
    t.integer "item52", null: false
    t.integer "item53", null: false
    t.integer "item54", null: false
    t.integer "item55", null: false
    t.integer "item56", null: false
    t.integer "r_score", null: false
    t.integer "y_score", null: false
    t.integer "b_score", null: false
    t.integer "g_score", null: false
    t.integer "color_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "gender", default: "", null: false
    t.date "birthday", null: false
    t.bigint "test_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["test_id"], name: "index_users_on_test_id"
  end

  add_foreign_key "users", "tests"
end
