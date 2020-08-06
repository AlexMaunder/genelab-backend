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

ActiveRecord::Schema.define(version: 2020_08_05_120350) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "labnotes", force: :cascade do |t|
    t.text "name"
    t.integer "strain_id"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "labnotes_strains", id: false, force: :cascade do |t|
    t.integer "note_id"
    t.integer "strain_id"
  end

  create_table "strains", force: :cascade do |t|
    t.text "name"
    t.text "mating_type"
    t.text "morphology"
    t.boolean "gm"
    t.boolean "is_child"
    t.integer "acid_tolerance"
    t.integer "ferment_rate"
    t.text "traits"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.text "email"
    t.text "password_digest"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
