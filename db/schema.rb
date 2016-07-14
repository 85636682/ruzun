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

ActiveRecord::Schema.define(version: 20160714005721) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "game_teams", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.boolean  "confirmed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "lot"
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "constitution"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.text     "constitution_html"
    t.boolean  "locked",            default: false
  end

  create_table "playeds", force: :cascade do |t|
    t.integer  "home_team_id"
    t.integer  "guest_team_id"
    t.integer  "game_id"
    t.integer  "home_team_score"
    t.integer  "guest_team_score"
    t.datetime "start_time"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.boolean  "teched",           default: false
  end

  create_table "team_users", force: :cascade do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.boolean  "examined",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "number"
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.string   "sign"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "techstats", force: :cascade do |t|
    t.integer  "played_id"
    t.integer  "user_id"
    t.integer  "pts",        default: 0
    t.integer  "ast",        default: 0
    t.integer  "stl",        default: 0
    t.integer  "blk",        default: 0
    t.integer  "off",        default: 0
    t.integer  "reb",        default: 0
    t.integer  "pm3",        default: 0
    t.integer  "pm3_a",      default: 0
    t.integer  "ftm",        default: 0
    t.integer  "ftm_a",      default: 0
    t.integer  "fgm",        default: 0
    t.integer  "fgm_a",      default: 0
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "mobile"
    t.string   "name"
    t.date     "birthday"
    t.integer  "height"
    t.integer  "weight"
    t.string   "position"
    t.string   "avatar"
    t.string   "province"
    t.string   "city"
    t.string   "district"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.integer  "teams_count"
  end

end
