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

ActiveRecord::Schema.define(version: 20140505102715) do

  create_table "event_categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "user_id"
    t.integer  "place_id"
    t.string   "name"
    t.integer  "created_by"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.integer  "event_category_id"
    t.string   "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "events", ["event_category_id"], name: "index_events_on_event_category_id"
  add_index "events", ["place_id"], name: "index_events_on_place_id"
  add_index "events", ["user_id"], name: "index_events_on_user_id"

  create_table "events_places", id: false, force: true do |t|
    t.integer "event_id"
    t.integer "place_id"
  end

  create_table "places", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
