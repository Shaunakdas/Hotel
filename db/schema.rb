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

ActiveRecord::Schema.define(version: 20161013113047) do

  create_table "chapters", force: :cascade do |t|
    t.string   "name",           limit: 255
    t.integer  "chapter_number", limit: 4
    t.integer  "subject_id",     limit: 4
    t.integer  "standard_id",    limit: 4
    t.integer  "class_id",       limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "code",           limit: 255
    t.integer  "stream_id",      limit: 4
  end

  add_index "chapters", ["code"], name: "index_chapters_on_code", unique: true, using: :btree
  add_index "chapters", ["stream_id"], name: "index_chapters_on_stream_id", using: :btree

  create_table "standards", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "standard_number", limit: 4
    t.string   "board",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "code",            limit: 255
  end

  add_index "standards", ["code"], name: "index_standards_on_code", unique: true, using: :btree

  create_table "streams", force: :cascade do |t|
    t.string   "code",       limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "sub_topics", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "subtopic_number", limit: 4
    t.integer  "subject_id",      limit: 4
    t.integer  "standard_id",     limit: 4
    t.integer  "class_id",        limit: 4
    t.integer  "chapter_id",      limit: 4
    t.integer  "topic_id",        limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "code",            limit: 255
    t.integer  "stream_id",       limit: 4
  end

  add_index "sub_topics", ["code"], name: "index_sub_topics_on_code", unique: true, using: :btree
  add_index "sub_topics", ["stream_id"], name: "index_sub_topics_on_stream_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "full_name",   limit: 255
    t.integer  "standard_id", limit: 4
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "code",        limit: 255
  end

  add_index "subjects", ["code"], name: "index_subjects_on_code", unique: true, using: :btree

  create_table "topics", force: :cascade do |t|
    t.string   "name",         limit: 255
    t.integer  "topic_number", limit: 4
    t.integer  "subject_id",   limit: 4
    t.integer  "standard_id",  limit: 4
    t.integer  "class_id",     limit: 4
    t.integer  "chapter_id",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "code",         limit: 255
    t.integer  "stream_id",    limit: 4
  end

  add_index "topics", ["code"], name: "index_topics_on_code", unique: true, using: :btree
  add_index "topics", ["stream_id"], name: "index_topics_on_stream_id", using: :btree

end
