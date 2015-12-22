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

ActiveRecord::Schema.define(version: 20151222070300) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expertise_entries", force: :cascade do |t|
    t.string   "label",      null: false
    t.integer  "rating_id",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "category"
    t.integer  "user_id"
  end

  add_index "expertise_entries", ["rating_id"], name: "index_expertise_entries_on_rating_id", using: :btree

  create_table "ratings", force: :cascade do |t|
    t.integer  "level",       null: false
    t.string   "title",       null: false
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "timeline_entries", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "content",    null: false
    t.date     "from"
    t.date     "to"
    t.integer  "year"
    t.string   "category",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",                  null: false
    t.string   "second_name"
    t.string   "last_name",                   null: false
    t.date     "birthdate",                   null: false
    t.string   "address",                     null: false
    t.string   "zipcode"
    t.string   "administrative_area_level_3"
    t.string   "administrative_area_level_2"
    t.string   "administrative_area_level_1", null: false
    t.string   "country",                     null: false
    t.string   "national_id",                 null: false
    t.string   "phone",                       null: false
    t.string   "email",                       null: false
    t.string   "linkedin"
    t.string   "github"
    t.text     "description",                 null: false
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "profile_picture"
  end

end
