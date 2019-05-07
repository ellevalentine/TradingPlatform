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

ActiveRecord::Schema.define(version: 20190507093555) do

  create_table "analysts", force: :cascade do |t|
    t.string "name"
    t.text "bio"
    t.text "content"
  end

  create_table "blogs", force: :cascade do |t|
    t.string "user_id"
    t.string "analyst_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stocks", force: :cascade do |t|
    t.string "company_name"
    t.string "symbol"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tradingbooks", force: :cascade do |t|
    t.string "user_id"
    t.string "stock_id"
    t.integer "profit_loss"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "dob"
    t.integer "bank_account"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
