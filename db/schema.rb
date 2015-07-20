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

ActiveRecord::Schema.define(version: 20150720064203) do

  create_table "admins", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "",    null: false
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name",                   limit: 255
    t.boolean  "superadmin",             limit: 1,   default: false
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "albums", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "vendor_id",   limit: 4
  end

  create_table "articles", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "body",        limit: 65535
    t.string   "image_url",   limit: 255
    t.string   "author",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "category_id", limit: 4
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.string   "active",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "contactus", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "email",      limit: 255
    t.text     "message",    limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title",      limit: 255
    t.text     "body",       limit: 65535
    t.string   "name",       limit: 255
    t.string   "business",   limit: 255
    t.string   "image_url",  limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "vendor_id",  limit: 4
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name",                   limit: 255
    t.string   "email",                  limit: 255,   default: "",     null: false
    t.string   "encrypted_password",     limit: 255,   default: "",     null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,      null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
    t.boolean  "supervendor",            limit: 1,     default: false
    t.string   "image_url",              limit: 255
    t.string   "contactp",               limit: 255
    t.text     "address",                limit: 65535
    t.string   "city",                   limit: 255
    t.string   "vendor_category",        limit: 255
    t.string   "website",                limit: 255
    t.string   "social",                 limit: 255
    t.text     "description",            limit: 65535
    t.string   "statusta",               limit: 255,   default: "Free"
  end

  add_index "vendors", ["email"], name: "index_vendors_on_email", unique: true, using: :btree
  add_index "vendors", ["reset_password_token"], name: "index_vendors_on_reset_password_token", unique: true, using: :btree

end
