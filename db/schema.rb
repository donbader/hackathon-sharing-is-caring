# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_04_17_044119) do

  create_table "charities", force: :cascade do |t|
    t.string "name"
    t.text "mission"
    t.text "short_desc"
    t.text "long_desc"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "monthly_votes_reports", force: :cascade do |t|
    t.integer "charity_id_id", null: false
    t.integer "votes_count", default: 0
    t.date "report_month"
    t.string "status", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["charity_id_id"], name: "index_monthly_votes_reports_on_charity_id_id"
  end

  create_table "votes", force: :cascade do |t|
    t.integer "voter_id", null: false
    t.integer "charity_id_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["charity_id_id"], name: "index_votes_on_charity_id_id"
    t.index ["voter_id"], name: "index_votes_on_voter_id"
  end

  add_foreign_key "monthly_votes_reports", "charity_ids"
  add_foreign_key "votes", "charity_ids"
  add_foreign_key "votes", "voters"
end
