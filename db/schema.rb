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

ActiveRecord::Schema.define(version: 20140401094744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "quarterly_reports", force: true do |t|
    t.integer  "stock_id"
    t.integer  "year"
    t.integer  "quarter"
    t.float    "revenue"
    t.float    "gross_profit"
    t.float    "op_income"
    t.float    "net_income_before_tax"
    t.float    "net_income"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "quarterly_reports", ["stock_id"], name: "index_quarterly_reports_on_stock_id", using: :btree

  create_table "stocks", force: true do |t|
    t.string   "symbol"
    t.string   "company_name"
    t.string   "country"
    t.string   "stock_exchange"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stocks", ["symbol"], name: "index_stocks_on_symbol", using: :btree

end
