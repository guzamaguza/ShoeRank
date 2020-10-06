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

ActiveRecord::Schema.define(version: 2020_10_06_044032) do

  create_table "contests", force: :cascade do |t|
    t.string "title"
    t.string "points"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "games", force: :cascade do |t|
    t.string "title"
    t.string "datetime_of_start"
    t.string "datetime_of_end"
    t.string "location"
    t.string "timezone"
    t.string "match_status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "q_num"
    t.string "content"
    t.string "answer"
    t.datetime "datetime_required"
    t.datetime "datetime_submitted"
    t.string "accepted"
    t.string "result"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_questions_on_game_id"
  end

  create_table "regs", force: :cascade do |t|
    t.string "datetime_registered"
    t.string "approved"
    t.string "w_or_l"
    t.integer "user_id"
    t.integer "game_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_regs_on_game_id"
    t.index ["user_id"], name: "index_regs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.integer "ranking"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
