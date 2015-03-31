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

ActiveRecord::Schema.define(version: 20150329055426) do

  create_table "admins", force: :cascade do |t|
    t.string  "name",           limit: 100,   default: "", null: false
    t.integer "xp",             limit: 4,     default: 0,  null: false
    t.text    "subcode",        limit: 65535,              null: false
    t.string  "branch",         limit: 4,     default: "", null: false
    t.string  "email",          limit: 50,    default: "", null: false
    t.string  "password",       limit: 10,    default: "", null: false
    t.string  "phno",           limit: 11,    default: "", null: false
    t.integer "excelent_count", limit: 4,     default: 0,  null: false
    t.integer "good_count",     limit: 4,     default: 0,  null: false
    t.integer "fair_count",     limit: 4,     default: 0,  null: false
    t.integer "poor_count",     limit: 4,     default: 0,  null: false
    t.integer "total",          limit: 4,     default: 0,  null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "name",       limit: 100, default: "", null: false
    t.integer  "regnum",     limit: 4,   default: 0,  null: false
    t.string   "semester",   limit: 4,   default: "", null: false
    t.string   "branch",     limit: 4,   default: "", null: false
    t.string   "email",      limit: 50,  default: "", null: false
    t.string   "password",   limit: 10,  default: "", null: false
    t.datetime "created_at"
  end

end
