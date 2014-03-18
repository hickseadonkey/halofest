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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20140314224435) do
=======
ActiveRecord::Schema.define(version: 20140317175453) do
>>>>>>> 4d6b4168b8e32a6372a5f8bde7f594beec78bbf0

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "draft_rounds", force: true do |t|
    t.integer  "round_number"
    t.integer  "draft_id"
    t.integer  "pick_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "drafts", force: true do |t|
    t.integer  "year"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "keepers", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "picks", force: true do |t|
    t.integer  "user_id"
    t.integer  "draft_round_id"
    t.integer  "pick_num"
    t.string   "pick_kind"
    t.integer  "pre_picked_player_id"
    t.integer  "picked_player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "player_stats", force: true do |t|
    t.integer  "player_id"
    t.integer  "year"
    t.float    "fpts_total"
    t.float    "fpts_avg"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "fgm"
    t.float    "fga"
    t.float    "ftm"
    t.float    "fta"
    t.float    "reb"
    t.float    "ast"
    t.float    "stl"
    t.float    "blk"
    t.float    "to"
    t.float    "pts"
    t.float    "tpm"
  end

  create_table "players", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players_rosters", force: true do |t|
    t.integer "player_id"
    t.integer "roster_id"
  end

  create_table "rosters", force: true do |t|
    t.integer  "user_id"
    t.integer  "draft_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "team_name"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
<<<<<<< HEAD
    t.string   "password"
    t.string   "password_confirmation"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["remember_token"], name: "index_users_on_remember_token", using: :btree
=======
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
>>>>>>> 4d6b4168b8e32a6372a5f8bde7f594beec78bbf0

end
