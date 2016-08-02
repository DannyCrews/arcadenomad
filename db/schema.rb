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

ActiveRecord::Schema.define(version: 20160802182057) do

  create_table "arcades", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "location_id"
    t.string   "comment"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["game_id"], name: "index_arcades_on_game_id"
    t.index ["location_id"], name: "index_arcades_on_location_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "slug"
    t.integer  "locations_count"
    t.index ["slug"], name: "index_categories_on_slug", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text     "body"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type"
  end

  create_table "games", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "release_date"
    t.integer  "manufacturer_id"
    t.string   "slug"
    t.index ["manufacturer_id"], name: "index_games_on_manufacturer_id"
    t.index ["slug"], name: "index_games_on_slug", unique: true
  end

  create_table "games_locations", id: false, force: :cascade do |t|
    t.integer "game_id",     null: false
    t.integer "location_id", null: false
    t.index ["game_id", "location_id"], name: "index_games_locations_on_game_id_and_location_id", unique: true
    t.index ["location_id", "game_id"], name: "index_games_locations_on_location_id_and_game_id", unique: true
  end

  create_table "locations", force: :cascade do |t|
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.string   "name"
    t.string   "street"
    t.string   "city"
    t.string   "zip"
    t.decimal  "latitude",               precision: 15, scale: 10, default: "0.0"
    t.decimal  "longitude",              precision: 15, scale: 10, default: "0.0"
    t.string   "description"
    t.string   "telephone",   limit: 10
    t.string   "slug"
    t.integer  "state_id"
    t.integer  "category_id"
    t.string   "url"
    t.index ["category_id"], name: "index_locations_on_category_id"
    t.index ["slug"], name: "index_locations_on_slug", unique: true
    t.index ["state_id"], name: "index_locations_on_state_id"
  end

  create_table "manufacturers", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "states", force: :cascade do |t|
    t.string   "name"
    t.string   "abbreviation"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "locations_count"
  end

end
