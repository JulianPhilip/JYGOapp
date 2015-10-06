# encoding: UTF-8
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


ActiveRecord::Schema.define(version: 20151006112513) do
 adda3bb63d4e236a63dd3648ea810911be4b2fd7

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "shoppers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "default_radius"
    t.string   "avg_rating_shopper"
    t.integer  "nb_exec_orders"
    t.integer  "nb_due_orders"
    t.integer  "total_com"
    t.string   "seniority"
    t.string   "availibility"
    t.boolean  "accept_auto"
    t.boolean  "elearning"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "shoppers", ["user_id"], name: "index_shoppers_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.date     "birthdate"
    t.string   "sexe"
    t.text     "photo_link"
    t.text     "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "phone_number"
    t.boolean  "status"
    t.string   "avg_rating_user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "shoppers", "users"
end
