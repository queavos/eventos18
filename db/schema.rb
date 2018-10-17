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

ActiveRecord::Schema.define(version: 2018_10_16_005502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: :cascade do |t|
    t.string "title"
    t.text "intro"
    t.date "date"
    t.time "time"
    t.string "place"
    t.bigint "event_id"
    t.bigint "speaker_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_conferences_on_event_id"
    t.index ["speaker_id"], name: "index_conferences_on_speaker_id"
  end

  create_table "events", force: :cascade do |t|
    t.string "name"
    t.date "dateStart"
    t.date "dateEnd"
    t.text "description"
    t.integer "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_events_on_user_id"
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "date"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_news_on_event_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "lastName"
    t.string "firstName"
    t.date "birthDate"
    t.string "idNumber"
    t.string "country"
    t.string "geren"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "registereds", force: :cascade do |t|
    t.date "regDate"
    t.boolean "status"
    t.boolean "checked"
    t.bigint "user_id"
    t.bigint "event_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_registereds_on_event_id"
    t.index ["user_id"], name: "index_registereds_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "speakers", force: :cascade do |t|
    t.string "lastName"
    t.string "firstName"
    t.text "resume"
    t.text "info"
    t.string "photo"
    t.string "email"
    t.string "country"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "conferences", "events"
  add_foreign_key "conferences", "speakers"
  add_foreign_key "events", "users"
  add_foreign_key "news", "events"
  add_foreign_key "profiles", "users"
  add_foreign_key "registereds", "events"
  add_foreign_key "registereds", "users"
end
