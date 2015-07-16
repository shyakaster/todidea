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

ActiveRecord::Schema.define(version: 20150707131141) do

  create_table "admin_users", force: :cascade do |t|
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "username",        limit: 255
    t.integer  "position",        limit: 4
    t.boolean  "visible",         limit: 1
    t.string   "password_digest", limit: 255
  end

  create_table "admin_users_comments", id: false, force: :cascade do |t|
    t.integer "admin_user_id", limit: 4
    t.integer "comment_id",    limit: 4
  end

  add_index "admin_users_comments", ["admin_user_id", "comment_id"], name: "index_admin_users_comments_on_admin_user_id_and_comment_id", using: :btree

  create_table "article_comments", force: :cascade do |t|
    t.integer  "article_id", limit: 4
    t.integer  "comment_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "article_comments", ["article_id", "comment_id"], name: "index_article_comments_on_article_id_and_comment_id", using: :btree

  create_table "articles", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "article",    limit: 65535
    t.text     "permalink",  limit: 65535
    t.integer  "position",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "visible",    limit: 1
  end

  create_table "comment_edits", force: :cascade do |t|
    t.text     "summary",       limit: 65535
    t.integer  "comment_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "admin_user_id", limit: 4
  end

  add_index "comment_edits", ["comment_id"], name: "index_comment_edits_on_comment_id_and_admin_users_id", using: :btree

  create_table "comments", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.text     "comment",    limit: 65535
    t.text     "permalink",  limit: 65535
    t.integer  "position",   limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.boolean  "visible",    limit: 1
  end

  create_table "photograph_comments", force: :cascade do |t|
    t.integer  "photograph_id", limit: 4
    t.integer  "comment_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "photograph_comments", ["photograph_id", "comment_id"], name: "index_photograph_comments_on_photograph_id_and_comment_id", using: :btree

  create_table "photographs", force: :cascade do |t|
    t.integer  "user_id",      limit: 4
    t.text     "caption",      limit: 65535
    t.text     "permalink",    limit: 65535
    t.string   "file_name",    limit: 255
    t.string   "content_type", limit: 255
    t.integer  "size",         limit: 4
    t.boolean  "visible",      limit: 1
    t.integer  "position",     limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "sliders", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "file_name",  limit: 255
    t.integer  "position",   limit: 4
    t.boolean  "visible",    limit: 1
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
    t.string   "password",        limit: 255
    t.integer  "position",        limit: 4
    t.boolean  "visible",         limit: 1
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

end
