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

ActiveRecord::Schema.define(version: 20151218092507) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "missions", force: true do |t|
    t.string   "client_1"
    t.string   "client_2"
    t.integer  "truck_id"
    t.integer  "number_of_item"
    t.boolean  "two_clients"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "loading_position"
    t.date     "m_date"
  end

  create_table "staffs", force: true do |t|
    t.string   "name"
    t.integer  "truck_id"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

  create_table "trailers", force: true do |t|
    t.string   "trailer_id"
    t.string   "trailer_brand"
    t.string   "trailer_type"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "truck_id"
  end

  create_table "trucks", force: true do |t|
    t.string   "truck_id"
    t.string   "truck_brand"
    t.string   "truck_type"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
