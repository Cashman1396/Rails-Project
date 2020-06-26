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

ActiveRecord::Schema.define(version: 2020_06_15_181726) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "camp_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["camp_id"], name: "index_activities_on_camp_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.string "name"
    t.integer "rating"
    t.boolean "filled", default: false
    t.integer "camp_counselor_id"
    t.integer "activity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "camp_id"
    t.index ["activity_id"], name: "index_assignments_on_activity_id"
    t.index ["camp_counselor_id"], name: "index_assignments_on_camp_counselor_id"
    t.index ["camp_id"], name: "index_assignments_on_camp_id"
  end

  create_table "camp_counselors", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "age"
    t.boolean "admin"
    t.string "uid"
    t.string "provider"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "camps", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "camp_counselor_id"
    t.integer "activity_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["activity_id"], name: "index_comments_on_activity_id"
    t.index ["camp_counselor_id"], name: "index_comments_on_camp_counselor_id"
  end

  add_foreign_key "activities", "camps"
  add_foreign_key "assignments", "activities"
  add_foreign_key "assignments", "camp_counselors"
  add_foreign_key "assignments", "camps"
end
