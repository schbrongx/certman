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

ActiveRecord::Schema.define(version: 20160901061842) do

  create_table "certificatetypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csrtemplates", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "cn"
    t.string   "ou"
    t.string   "o"
    t.string   "l"
    t.string   "s"
    t.string   "c"
    t.string   "email"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "keys", force: :cascade do |t|
    t.integer  "keytype_id"
    t.integer  "keypartner_id"
    t.text     "content"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "keys", ["keypartner_id"], name: "index_keys_on_keypartner_id"
  add_index "keys", ["keytype_id"], name: "index_keys_on_keytype_id"

  create_table "keytypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
