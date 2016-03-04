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

ActiveRecord::Schema.define(version: 20150401100400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "auctions", force: :cascade do |t|
    t.integer  "problem_id"
    t.integer  "winning_bid"
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.boolean  "active"
  end

  create_table "bids", force: :cascade do |t|
    t.integer  "auction_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "config_tables", force: :cascade do |t|
    t.string   "key"
    t.string   "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "free_pool_items", force: :cascade do |t|
    t.integer  "problem_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "problems", force: :cascade do |t|
    t.integer  "difficulty"
    t.text     "statement"
    t.text     "sample_input"
    t.text     "sample_output"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "reward"
    t.integer  "base_price"
    t.text     "short_statement"
  end

  create_table "problems_users", force: :cascade do |t|
    t.integer "problem_id"
    t.integer "user_id"
  end

  create_table "runs", force: :cascade do |t|
    t.integer  "problem_id"
    t.text     "code"
    t.text     "input"
    t.text     "expected_output"
    t.text     "output"
    t.boolean  "success"
    t.datetime "timestamp"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.boolean  "tested"
  end

  create_table "test_cases", force: :cascade do |t|
    t.integer  "problem_id"
    t.text     "input"
    t.text     "output"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
    t.string   "gender"
    t.string   "name"
    t.string   "college"
    t.integer  "balance"
  end

end
