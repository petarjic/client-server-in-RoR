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

ActiveRecord::Schema.define(version: 20141124170924) do

  create_table "lockers", force: true do |t|
    t.integer  "lockerNumber"
    t.string   "location"
    t.string   "type"
    t.integer  "combo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "or_associations", force: true do |t|
    t.integer  "registration_id"
    t.integer  "registrar_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "or_associations", ["registrar_id"], name: "index_or_associations_on_registrar_id", using: :btree
  add_index "or_associations", ["registration_id", "registrar_id"], name: "index_or_associations_on_registration_id_and_registrar_id", unique: true, using: :btree
  add_index "or_associations", ["registration_id"], name: "index_or_associations_on_registration_id", using: :btree

  create_table "organization_registrations", force: true do |t|
    t.integer  "registrar_id"
    t.integer  "registration_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "organization_registrations", ["registrar_id"], name: "index_organization_registrations_on_registrar_id", using: :btree
  add_index "organization_registrations", ["registration_id"], name: "index_organization_registrations_on_registration_id", using: :btree

  create_table "organizations", force: true do |t|
    t.string   "name",          default: "", null: false
    t.string   "streetAddress"
    t.string   "city"
    t.string   "country"
    t.string   "postalCode"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.integer  "studentNumber"
    t.string   "firstName"
    t.string   "lastName"
    t.string   "email"
    t.integer  "lockerNumber"
    t.string   "lockerType"
    t.integer  "lockerCombo"
    t.integer  "numberOfSemesters"
    t.boolean  "termsAccepted"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
