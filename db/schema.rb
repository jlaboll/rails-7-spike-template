# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_10_19_211202) do
  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "coloring"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_dogs_on_owner_id"
  end

  create_table "email_addresses", force: :cascade do |t|
    t.string "address"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hedgehogs", force: :cascade do |t|
    t.string "name"
    t.date "birthday"
    t.string "coloring"
    t.string "breed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "owner_id"
    t.index ["owner_id"], name: "index_hedgehogs_on_owner_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.integer "phone_number_id"
    t.integer "email_address_id"
    t.index ["address_id"], name: "index_owners_on_address_id"
    t.index ["email_address_id"], name: "index_owners_on_email_address_id"
    t.index ["phone_number_id"], name: "index_owners_on_phone_number_id"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string "number"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "veterinarians", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "address_id"
    t.integer "phone_number_id"
    t.integer "email_address_id"
    t.index ["address_id"], name: "index_veterinarians_on_address_id"
    t.index ["email_address_id"], name: "index_veterinarians_on_email_address_id"
    t.index ["phone_number_id"], name: "index_veterinarians_on_phone_number_id"
  end

  add_foreign_key "dogs", "owners"
  add_foreign_key "hedgehogs", "owners"
  add_foreign_key "owners", "addresses"
  add_foreign_key "owners", "email_addresses"
  add_foreign_key "owners", "phone_numbers"
  add_foreign_key "veterinarians", "addresses"
  add_foreign_key "veterinarians", "email_addresses"
  add_foreign_key "veterinarians", "phone_numbers"
end
