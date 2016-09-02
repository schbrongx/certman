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

ActiveRecord::Schema.define(version: 20160902061825) do

  create_table "certificates", force: :cascade do |t|
    t.integer  "certificatetype_id"
    t.integer  "key_id"
    t.integer  "csr_id"
    t.text     "content"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "certificates", ["certificatetype_id"], name: "index_certificates_on_certificatetype_id"
  add_index "certificates", ["csr_id"], name: "index_certificates_on_csr_id"
  add_index "certificates", ["key_id"], name: "index_certificates_on_key_id"

  create_table "certificatetypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csrs", force: :cascade do |t|
    t.integer  "key_id"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "csrs", ["key_id"], name: "index_csrs_on_key_id"

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
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "keys", ["keytype_id"], name: "index_keys_on_keytype_id"

  create_table "keystores", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "publickey_id"
    t.integer  "privatekey_id"
    t.integer  "csr_id"
    t.integer  "certificate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "keystores", ["certificate_id"], name: "index_keystores_on_certificate_id"
  add_index "keystores", ["csr_id"], name: "index_keystores_on_csr_id"
  add_index "keystores", ["privatekey_id"], name: "index_keystores_on_privatekey_id"
  add_index "keystores", ["publickey_id"], name: "index_keystores_on_publickey_id"

  create_table "keytypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
