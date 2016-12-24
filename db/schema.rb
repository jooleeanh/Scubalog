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

ActiveRecord::Schema.define(version: 20161221155811) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "animals", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "buddies", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "buddable_type"
    t.integer  "buddable_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["buddable_type", "buddable_id"], name: "index_buddies_on_buddable_type_and_buddable_id", using: :btree
    t.index ["user_id"], name: "index_buddies_on_user_id", using: :btree
  end

  create_table "dives", force: :cascade do |t|
    t.string   "divable_type"
    t.integer  "divable_id"
    t.string   "dive_types",      default: [],                 array: true
    t.boolean  "computer",        default: false
    t.datetime "start_at"
    t.datetime "end_at"
    t.float    "max_depth"
    t.float    "avg_depth"
    t.integer  "min_temp"
    t.integer  "max_temp"
    t.integer  "sample_interval"
    t.json     "data_points"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.index ["divable_type", "divable_id"], name: "index_dives_on_divable_type_and_divable_id", using: :btree
  end

  create_table "divespots", force: :cascade do |t|
    t.string   "name"
    t.float    "max_depth"
    t.float    "avg_depth"
    t.float    "salinity"
    t.boolean  "shore"
    t.string   "entry_difficulty"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.hstore   "location"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "freedive_sessions", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "divespot_id"
    t.integer  "gear_set_id"
    t.datetime "start_at"
    t.datetime "end_at"
    t.integer  "enjoyment"
    t.text     "comments"
    t.text     "tip_for_others"
    t.json     "map_tracks"
    t.integer  "visibility"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["divespot_id"], name: "index_freedive_sessions_on_divespot_id", using: :btree
    t.index ["gear_set_id"], name: "index_freedive_sessions_on_gear_set_id", using: :btree
    t.index ["user_id"], name: "index_freedive_sessions_on_user_id", using: :btree
  end

  create_table "gear_sets", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gear_sets_on_user_id", using: :btree
  end

  create_table "gear_uses", force: :cascade do |t|
    t.integer  "gear_set_id"
    t.integer  "gear_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["gear_id"], name: "index_gear_uses_on_gear_id", using: :btree
    t.index ["gear_set_id"], name: "index_gear_uses_on_gear_set_id", using: :btree
  end

  create_table "gears", force: :cascade do |t|
    t.string   "category"
    t.string   "brand"
    t.string   "name"
    t.string   "size"
    t.string   "detail"
    t.date     "purchased_on"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_identities_on_user_id", using: :btree
  end

  create_table "scubadives", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "divespot_id"
    t.integer  "gear_set_id"
    t.integer  "enjoyment"
    t.text     "comments"
    t.text     "tip_for_others"
    t.json     "map_tracks"
    t.integer  "visibility"
    t.integer  "start_air"
    t.integer  "end_air"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["divespot_id"], name: "index_scubadives_on_divespot_id", using: :btree
    t.index ["gear_set_id"], name: "index_scubadives_on_gear_set_id", using: :btree
    t.index ["user_id"], name: "index_scubadives_on_user_id", using: :btree
  end

  create_table "sightings", force: :cascade do |t|
    t.integer  "animal_id"
    t.string   "sighteable_type"
    t.integer  "sighteable_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["animal_id"], name: "index_sightings_on_animal_id", using: :btree
    t.index ["sighteable_type", "sighteable_id"], name: "index_sightings_on_sighteable_type_and_sighteable_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "first_name"
    t.string   "last_name"
    t.boolean  "admin",                  default: false
    t.string   "name"
    t.string   "facebook_picture_url"
    t.string   "google_picture_url"
    t.date     "dob"
    t.integer  "gender"
    t.string   "avatar_picture_url"
    t.hstore   "location"
    t.float    "latitude"
    t.float    "longitude"
    t.hstore   "preferences"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "buddies", "users"
  add_foreign_key "freedive_sessions", "divespots"
  add_foreign_key "freedive_sessions", "gear_sets"
  add_foreign_key "freedive_sessions", "users"
  add_foreign_key "gear_sets", "users"
  add_foreign_key "gear_uses", "gear_sets"
  add_foreign_key "gear_uses", "gears"
  add_foreign_key "identities", "users"
  add_foreign_key "scubadives", "divespots"
  add_foreign_key "scubadives", "gear_sets"
  add_foreign_key "scubadives", "users"
  add_foreign_key "sightings", "animals"
end
