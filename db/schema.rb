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

ActiveRecord::Schema.define(version: 20150819113732) do

  create_table "badge_users", force: :cascade do |t|
    t.integer  "badge_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "badge_users", ["badge_id"], name: "index_badge_users_on_badge_id"
  add_index "badge_users", ["user_id"], name: "index_badge_users_on_user_id"

  create_table "badges", force: :cascade do |t|
    t.string   "name"
    t.string   "fa_symbol"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id"

  create_table "video_users", force: :cascade do |t|
    t.integer  "video_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "iteration",  default: 0
  end

  add_index "video_users", ["user_id", "video_id"], name: "index_video_users_on_user_id_and_video_id", unique: true
  add_index "video_users", ["user_id"], name: "index_video_users_on_user_id"
  add_index "video_users", ["video_id"], name: "index_video_users_on_video_id"

  create_table "videos", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
