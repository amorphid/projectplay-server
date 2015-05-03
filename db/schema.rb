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

ActiveRecord::Schema.define(version: 20150503211742) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "aliases", force: true do |t|
    t.integer  "playground_id"
    t.string   "aliasname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "criteriakeys", force: true do |t|
    t.string  "criterianame"
    t.integer "scalevalue"
    t.text    "textvalue"
    t.string  "description"
  end

  create_table "geometry_columns", id: false, force: true do |t|
    t.string  "f_table_catalog",   limit: 256, null: false
    t.string  "f_table_schema",    limit: 256, null: false
    t.string  "f_table_name",      limit: 256, null: false
    t.string  "f_geometry_column", limit: 256, null: false
    t.integer "coord_dimension",               null: false
    t.integer "srid",                          null: false
    t.string  "type",              limit: 30,  null: false
  end

  create_table "playgrounds", force: true do |t|
    t.string   "name"
    t.integer  "mapid"
    t.string   "agelevel"
    t.integer  "totplay"
    t.integer  "opentopublic"
    t.integer  "invitation"
    t.integer  "howtogetthere"
    t.integer  "safelocation"
    t.integer  "shade"
    t.integer  "monitoring"
    t.integer  "programming"
    t.integer  "weather"
    t.integer  "seating"
    t.integer  "restrooms"
    t.integer  "drinkingw"
    t.integer  "activeplay"
    t.integer  "socialplay"
    t.integer  "creativeplay"
    t.integer  "naturualen"
    t.integer  "freeplay"
    t.text     "specificcomments"
    t.text     "generalcomments"
    t.integer  "compsum"
    t.integer  "modsum"
    t.integer  "graspvalue"
    t.string   "playclass"
    t.text     "subarea"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.float    "lat"
    t.float    "long"
    t.string   "google_placesid"
    t.text     "imageurl"
    t.string   "address"
    t.boolean  "is_school"
    t.integer  "pleasant_surrounding_rating"
    t.integer  "fencing_rating"
    t.integer  "disabilities_rating"
    t.integer  "musical_features_rating"
    t.integer  "swings_rating"
    t.integer  "bucket_swings_rating"
    t.integer  "sprayground_play_fountain_rating"
    t.integer  "skate_park_rating"
    t.integer  "streams_rating"
    t.integer  "slide_ratings"
    t.integer  "climbing_structures_rating"
    t.integer  "spinning_structures_rating"
    t.integer  "rocking_structure"
    t.integer  "balance_features_rating"
    t.integer  "sandbox_rating"
    t.integer  "playhouse_rating"
    t.integer  "stage_rating"
    t.integer  "path_for_wheeled_toys_rating"
    t.integer  "basketball_courts_rating"
    t.integer  "surface_marked_for_games_rating"
    t.integer  "open_space_for_ball_play"
    t.integer  "woods_rating"
    t.integer  "garden_rating"
    t.integer  "natural_elements_rating"
    t.text     "other_cool_features"
    t.text     "disabilities_comments"
  end

  create_table "rails_admin_histories", force: true do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "spatial_ref_sys", id: false, force: true do |t|
    t.integer "srid",                   null: false
    t.string  "auth_name", limit: 256
    t.integer "auth_srid"
    t.string  "srtext",    limit: 2048
    t.string  "proj4text", limit: 2048
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
