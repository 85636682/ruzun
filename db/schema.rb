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

ActiveRecord::Schema.define(version: 20170509072931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "postgis"

  create_table "admins", force: :cascade do |t|
    t.string   "phone"
    t.string   "password_digest"
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "role_id"
  end

  create_table "deposits", force: :cascade do |t|
    t.string   "trade_no"
    t.integer  "fee"
    t.integer  "user_id"
    t.boolean  "checkouted", default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "game_teams", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "team_id"
    t.boolean  "confirmed"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.string   "lot"
    t.integer  "points",           default: 0
    t.integer  "wins",             default: 0
    t.integer  "losses",           default: 0
    t.integer  "score_difference", default: 0
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

  create_table "lessons", force: :cascade do |t|
    t.string   "subject"
    t.decimal  "price"
    t.text     "summary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "managers", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "order_tickets", force: :cascade do |t|
    t.string   "order_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.integer  "ticket_id"
    t.string   "serial_number"
    t.boolean  "used",          default: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sn"
  end

  create_table "permissions", force: :cascade do |t|
    t.string   "resource"
    t.string   "action"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean  "finish",           default: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "stock"
    t.integer  "warning_line"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sales_list_products", force: :cascade do |t|
    t.integer  "sales_list_id"
    t.integer  "product_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "sales_lists", force: :cascade do |t|
    t.string   "sn"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shopping_carts", force: :cascade do |t|
    t.integer  "ticket_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sport_fields", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "avatar"
    t.integer  "height"
    t.string   "phone"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "age"
    t.integer  "lesson_id"
    t.string   "trade_no"
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
    t.integer  "fouls",      default: 0
    t.integer  "to",         default: 0
  end

  create_table "tickets", force: :cascade do |t|
    t.string   "name"
    t.float    "price"
    t.integer  "sport_field_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.text     "summary"
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
    t.integer  "team_id"
    t.string   "open_id"
    t.string   "access_token"
    t.string   "refresh_token"
    t.integer  "expires_in"
    t.string   "provider"
    t.string   "uid"
    t.string   "nickname"
    t.integer  "sex"
    t.string   "wechat_avatar"
    t.integer  "fairy_coins"
  end

end
