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

ActiveRecord::Schema.define(version: 20160624144014) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "character_skills", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "skill_id"
    t.integer  "value"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "character_skills", ["character_id"], name: "index_character_skills_on_character_id", using: :btree
  add_index "character_skills", ["skill_id"], name: "index_character_skills_on_skill_id", using: :btree

  create_table "character_spells", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "spell_id"
    t.string   "damage_modifier"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "character_spells", ["character_id"], name: "index_character_spells_on_character_id", using: :btree
  add_index "character_spells", ["spell_id"], name: "index_character_spells_on_spell_id", using: :btree

  create_table "character_stats", force: :cascade do |t|
    t.integer  "character_id"
    t.integer  "stat_id"
    t.integer  "stat_value"
    t.integer  "saving_throw"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "character_stats", ["character_id"], name: "index_character_stats_on_character_id", using: :btree
  add_index "character_stats", ["stat_id"], name: "index_character_stats_on_stat_id", using: :btree

  create_table "characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "race"
    t.string   "deity"
    t.string   "alignment"
    t.string   "gender"
    t.integer  "age"
    t.decimal  "currency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "characters", ["user_id"], name: "index_characters_on_user_id", using: :btree

  create_table "examples", force: :cascade do |t|
    t.text     "text",       null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "examples", ["user_id"], name: "index_examples_on_user_id", using: :btree

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "primary_stat"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "spells", force: :cascade do |t|
    t.string   "name"
    t.string   "school"
    t.string   "subschool"
    t.string   "descriptor"
    t.string   "spell_level"
    t.string   "casting_time"
    t.string   "range"
    t.string   "area"
    t.string   "effect"
    t.string   "targets"
    t.string   "duration"
    t.string   "saving_throw"
    t.string   "spell_resistence"
    t.string   "description"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "stats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",           null: false
    t.string   "token",           null: false
    t.string   "password_digest", null: false
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["token"], name: "index_users_on_token", unique: true, using: :btree

  add_foreign_key "character_skills", "characters"
  add_foreign_key "character_skills", "skills"
  add_foreign_key "character_spells", "characters"
  add_foreign_key "character_spells", "spells"
  add_foreign_key "character_stats", "characters"
  add_foreign_key "character_stats", "stats"
  add_foreign_key "characters", "users"
  add_foreign_key "examples", "users"
end
