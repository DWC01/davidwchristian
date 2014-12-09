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

ActiveRecord::Schema.define(version: 20141209001838) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "category"
    t.string   "tags",       default: [], array: true
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questionnaires", force: true do |t|
    t.string   "company"
    t.string   "invested"
    t.string   "age"
    t.string   "visits_desktop"
    t.string   "visits_mobile"
    t.text     "features_visited_1"
    t.text     "features_visited_2"
    t.text     "features_visited_3"
    t.text     "features_visited_4"
    t.text     "features_visited_5"
    t.text     "delightful_features_1"
    t.text     "delightful_features_2"
    t.text     "delightful_features_3"
    t.text     "delightful_features_4"
    t.text     "delightful_features_5"
    t.text     "annoying_features_1"
    t.text     "annoying_features_2"
    t.text     "annoying_features_3"
    t.text     "annoying_features_4"
    t.text     "annoying_features_5"
    t.text     "feature_requests"
    t.text     "open_feedback"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
