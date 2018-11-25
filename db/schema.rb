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

ActiveRecord::Schema.define(version: 2018_11_25_103115) do

  create_table "admins", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.string "email_address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dealer_forms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "badge_name"
    t.integer "age"
    t.string "business_name"
    t.string "type_of_merchandise_or_service"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "phone"
    t.string "company_website_address"
    t.string "email_address"
    t.integer "number_of_spaces"
    t.string "display_require_AC_power"
    t.integer "number_of_memberships"
    t.string "list_names_ages_of_extra_members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
  end

  create_table "gm_form1s", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
  end

  create_table "gm_form2s", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.string "games"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
  end

  create_table "panelist_forms", force: :cascade do |t|
    t.string "title"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.string "pen_name"
    t.string "badge_name"
    t.integer "phone"
    t.string "email_address"
    t.string "website"
    t.string "availability"
    t.string "primary_professional_focus"
    t.string "secondary_professional_focus"
    t.boolean "panelist_before"
    t.boolean "time_in_pro_row"
    t.integer "amount_of_pro_row"
    t.boolean "place_art_in_art_room"
    t.string "recent_credits"
    t.string "short_biography"
    t.string "panel_suggestions"
    t.integer "amount_of_panels_at_convention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
  end

  create_table "registration_forms", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "different_prices"
    t.string "payment_type"
    t.string "coupon_codes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.string "membership_type"
    t.string "email_address"
    t.integer "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "encrypted_password", limit: 128
    t.string "confirmation_token", limit: 128
    t.string "remember_token", limit: 128
    t.index ["email"], name: "index_users_on_email"
    t.index ["remember_token"], name: "index_users_on_remember_token"
  end

end
