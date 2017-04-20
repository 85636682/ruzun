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

ActiveRecord::Schema.define(version: 20170420074249) do

  create_table "game_teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "games", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "logo"
    t.text     "constitution",      limit: 65535
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.text     "constitution_html", limit: 65535
    t.boolean  "locked",                          default: false
  end

  create_table "managers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "orderable_type"
    t.integer  "orderable_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "sn"
  end

  create_table "playeds", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "shopping_carts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "ticket_id"
    t.integer  "user_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sport_fields", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "swiming_lessons", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "avatar"
    t.integer  "height"
    t.string   "phone"
    t.integer  "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "age"
  end

  create_table "team_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "team_id"
    t.integer  "user_id"
    t.boolean  "examined",   default: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "number"
  end

  create_table "teams", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "techstats", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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

  create_table "tickets", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.decimal  "price",          precision: 10
    t.integer  "sport_field_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
  end

end
