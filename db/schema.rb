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
    t.integer "item1"
    t.integer "item2"
    t.integer "item3"
    t.integer "item4"
    t.integer "item5"
    t.integer "item6"
    t.integer "item7"
    t.integer "item8"
    t.integer "item9"
    t.integer "item10"
    t.integer "item11"
    t.integer "item12"
    t.integer "item13"
    t.integer "item14"
    t.integer "item15"
    t.integer "item16"
    t.integer "item17"
    t.integer "item18"
    t.integer "item19"
    t.integer "item20"
    t.integer "item21"
    t.integer "item22"
    t.integer "item23"
    t.integer "item24"
    t.integer "item25"
    t.integer "item26"
    t.integer "item27"
    t.integer "item28"
    t.integer "item29"
    t.integer "item30"
    t.integer "item31"
    t.integer "item32"
    t.integer "item33"
    t.integer "item34"
    t.integer "item35"
    t.integer "item36"
    t.integer "item37"
    t.integer "item38"
    t.integer "item39"
    t.integer "item40"
    t.integer "item41"
    t.integer "item42"
    t.integer "item43"
    t.integer "item44"
    t.integer "item45"
    t.integer "item46"
    t.integer "item47"
    t.integer "item48"
    t.integer "item49"
    t.integer "item50"
    t.integer "item51"
    t.integer "item52"
    t.integer "item53"
    t.integer "item54"
    t.integer "item55"
    t.integer "item56"
    t.integer "r_score"
    t.integer "y_score"
    t.integer "b_score"
    t.integer "g_score"
    t.integer "color_id"
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
    t.integer "color_id", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
