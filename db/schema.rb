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

ActiveRecord::Schema.define(version: 20160930124800) do

  create_table "certificates", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.integer  "certificatetype_id"
    t.integer  "csr_id"
    t.integer  "keystore_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "certificates", ["certificatetype_id"], name: "index_certificates_on_certificatetype_id"
  add_index "certificates", ["csr_id"], name: "index_certificates_on_csr_id"
  add_index "certificates", ["keystore_id"], name: "index_certificates_on_keystore_id"

  create_table "certificatetypes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "csrs", force: :cascade do |t|
    t.string   "name"
    t.text     "content"
    t.string   "cn"
    t.string   "ou"
    t.string   "o"
    t.string   "l"
    t.string   "s"
    t.string   "c"
    t.string   "email"
    t.integer  "keypair_id"
    t.integer  "csrtemplate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "csrs", ["csrtemplate_id"], name: "index_csrs_on_csrtemplate_id"
  add_index "csrs", ["keypair_id"], name: "index_csrs_on_keypair_id"

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

  create_table "keypairs", force: :cascade do |t|
    t.string   "name"
    t.text     "privatekey"
    t.text     "publickey"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keystores", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "keypair_id"
    t.integer  "csr_id"
    t.integer  "certificate_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "keystores", ["certificate_id"], name: "index_keystores_on_certificate_id"
  add_index "keystores", ["csr_id"], name: "index_keystores_on_csr_id"
  add_index "keystores", ["keypair_id"], name: "index_keystores_on_keypair_id"

  create_table "settings", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "value"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["username"], name: "index_users_on_username", unique: true

end
