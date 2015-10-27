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

ActiveRecord::Schema.define(version: 20151027101219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "availabilities", force: :cascade do |t|
    t.integer  "shopper_id"
    t.date     "date"
    t.boolean  "acceptation_auto"
    t.boolean  "status"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.time     "beginning_hour"
    t.time     "ending_hour"
  end

  add_index "availabilities", ["shopper_id"], name: "index_availabilities_on_shopper_id", using: :btree

  create_table "ordered_products", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "shop_id"
    t.string   "origin"
    t.integer  "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
    t.text     "comment"
  end

  add_index "ordered_products", ["order_id"], name: "index_ordered_products_on_order_id", using: :btree
  add_index "ordered_products", ["product_id"], name: "index_ordered_products_on_product_id", using: :btree
  add_index "ordered_products", ["shop_id"], name: "index_ordered_products_on_shop_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "shopper_id"
    t.date     "date"
    t.time     "begin_hour"
    t.time     "end_hour"
    t.time     "delivery_hour"
    t.boolean  "status_exec"
    t.integer  "total_est_amout_min"
    t.integer  "total_est_amount_max"
    t.integer  "total_amount"
    t.integer  "commission"
    t.text     "comment"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "orders", ["shopper_id"], name: "index_orders_on_shopper_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "category"
    t.string   "sub_category"
    t.string   "name"
    t.string   "key_words"
    t.text     "description"
    t.integer  "min_price"
    t.integer  "max_price"
    t.string   "difficulty"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "unit"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer  "order_id"
    t.text     "content"
    t.integer  "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "reviews", ["order_id"], name: "index_reviews_on_order_id", using: :btree

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

  create_table "shops", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.string   "country"
    t.string   "city"
    t.string   "zip_code"
    t.string   "street_and_number"
    t.text     "description"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "sexe"
    t.text     "photo_link"
    t.text     "address"
    t.string   "zip_code"
    t.string   "city"
    t.string   "phone_number"
    t.boolean  "status"
    t.string   "avg_rating_user"
    t.float    "latitude"
    t.float    "longitude"
    t.date     "date_of_birth"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.boolean  "vin"
    t.boolean  "boucherie"
    t.boolean  "charcuterie"
    t.boolean  "prix"
    t.boolean  "legume"
    t.boolean  "fruit"
    t.boolean  "poisson"
    t.boolean  "boutique"
    t.boolean  "admin",                  default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "availabilities", "shoppers"
  add_foreign_key "ordered_products", "orders"
  add_foreign_key "ordered_products", "products"
  add_foreign_key "ordered_products", "shops"
  add_foreign_key "orders", "shoppers"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "orders"
  add_foreign_key "shoppers", "users"
end
