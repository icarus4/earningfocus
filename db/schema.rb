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

ActiveRecord::Schema.define(version: 20140529084546) do

  create_table "statements", force: true do |t|
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

  add_index "statements", ["stock_id"], name: "index_statements_on_stock_id"

  create_table "stocks", force: true do |t|
    t.string   "symbol"
    t.string   "company_name"
    t.string   "country",        default: "US"
    t.string   "stock_exchange"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cik"
  end

  add_index "stocks", ["cik"], name: "index_stocks_on_cik", unique: true
  add_index "stocks", ["company_name"], name: "index_stocks_on_company_name"
  add_index "stocks", ["symbol"], name: "index_stocks_on_symbol"

end
