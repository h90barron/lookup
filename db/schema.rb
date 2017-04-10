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

ActiveRecord::Schema.define(version: 20170410195207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "copier_requests", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "req_name"
    t.string   "user_name"
    t.string   "user_phone"
    t.string   "user_email"
    t.string   "req_oem"
    t.string   "req_marketer"
    t.boolean  "req_pc_embedded"
    t.string   "req_embedded_platform"
    t.boolean  "req_pc_int_scanning"
    t.boolean  "req_pc_dependency"
    t.string   "req_pc_dependency_detail"
    t.string   "req_general_notes"
    t.string   "req_aka"
    t.datetime "req_intro_date"
    t.datetime "req_disc_date"
    t.boolean  "req_print"
    t.boolean  "req_copy"
    t.boolean  "req_scan"
    t.boolean  "req_fax"
    t.boolean  "req_card_reader_support"
    t.boolean  "req_vending_connector"
    t.string   "req_vending_connector_oem"
    t.string   "req_vending_connector_ex"
    t.string   "req_vending_connector_cpad"
    t.string   "req_card_reader_mode"
    t.string   "req_card_reader_types"
  end

  create_table "copiers", force: :cascade do |t|
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "marketer"
    t.string   "embedded_platform"
    t.string   "general_notes"
    t.string   "aka"
    t.datetime "intro_date"
    t.datetime "disc_date"
    t.boolean  "print"
    t.boolean  "copy"
    t.boolean  "scan"
    t.boolean  "fax"
    t.string   "name"
    t.string   "oem"
    t.boolean  "card_reader_support"
    t.string   "oem_vending_harness_01"
    t.string   "old_db_id"
    t.string   "acdi_vending_harness_01"
    t.text     "pcb_details_01"
    t.string   "acdi_vending_harness_02"
    t.string   "oem_vending_harness_02"
    t.text     "pcb_details_02"
    t.string   "name_details"
    t.string   "model_type"
    t.string   "manufacturing_status"
    t.string   "print_speed"
    t.string   "supported_name"
    t.string   "supported_notes_01"
    t.string   "supported_notes_02"
    t.string   "manufacturer"
    t.string   "supported_status"
  end

  create_table "oems", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
