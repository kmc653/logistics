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

ActiveRecord::Schema.define(version: 20170709161343) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "clients", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintain_units", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "maintenances", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.uuid     "vehicle_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "mileage"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "maintain_unit_id"
    t.index ["vehicle_id"], name: "index_maintenances_on_vehicle_id", using: :btree
  end

  create_table "missions", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "client_1"
    t.string   "client_2"
    t.integer  "number_of_item"
    t.boolean  "two_clients"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "loading_position"
    t.date     "m_date"
    t.uuid     "truck_id"
  end

  create_table "staffs", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "name"
    t.boolean  "admin"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.uuid     "truck_id"
  end

  create_table "trailers", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "trailer_id"
    t.string   "trailer_brand"
    t.string   "trailer_type"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.uuid     "truck_id"
  end

  create_table "trucks", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "truck_id"
    t.string   "truck_brand"
    t.string   "truck_type"
    t.date     "buy_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", id: :uuid, default: -> { "uuid_generate_v4()" }, force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "mobile_number"
    t.string   "aasm_state"
    t.integer  "role"
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
    t.string   "name"
  end

end
