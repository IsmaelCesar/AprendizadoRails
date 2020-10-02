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

ActiveRecord::Schema.define(version: 2020_10_02_120623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "coin_wallets", force: :cascade do |t|
    t.bigint "wallet_id"
    t.bigint "coin_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["coin_id"], name: "index_coin_wallets_on_coin_id"
    t.index ["wallet_id"], name: "index_coin_wallets_on_wallet_id"
  end

  create_table "coins", force: :cascade do |t|
    t.text "description"
    t.string "acronym"
    t.bigint "mining_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "value"
    t.string "url_image"
    t.index ["mining_type_id"], name: "index_coins_on_mining_type_id"
  end

  create_table "mining_types", force: :cascade do |t|
    t.text "description"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.decimal "budget"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_users_on_name"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_wallets_on_user_id"
  end

  add_foreign_key "coin_wallets", "coins"
  add_foreign_key "coin_wallets", "wallets"
  add_foreign_key "coins", "mining_types"
  add_foreign_key "wallets", "users"
end
