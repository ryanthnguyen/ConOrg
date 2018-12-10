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

ActiveRecord::Schema.define(version: 2018_12_10_065135) do

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
    t.string "badge_name"
    t.string "business_name"
    t.string "type_of_merchandise_or_service"
    t.string "company_website_address"
    t.integer "number_of_spaces"
    t.string "display_require_AC_power"
    t.integer "number_of_memberships"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.boolean "approved"
    t.string "name_and_age_of_members"
  end

  create_table "gm_form1s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.string "name_on_badge"
    t.string "t_shirt_size"
    t.string "info_for_staff"
    t.boolean "approved"
  end

  create_table "gm_form2s", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.string "title_of_adventure_or_session"
    t.string "type_of_game"
    t.string "game_system_used"
    t.string "time_needed_for_game"
    t.integer "minimum_number_of_players"
    t.integer "maximum_number_of_players"
    t.string "materials_needed"
    t.string "player_experience"
    t.string "game_attitude"
    t.string "age_restriction"
    t.string "start_time_first_choice"
    t.string "start_time_second_choice"
    t.string "start_time_third_choice"
    t.string "game_description"
    t.string "info_for_staff"
    t.boolean "approved"
  end

  create_table "panelist_forms", force: :cascade do |t|
    t.string "title"
    t.string "pen_name"
    t.string "badge_name"
    t.string "website"
    t.string "availability"
    t.string "primary_professional_focus"
    t.string "secondary_professional_focus"
    t.string "panelist_before"
    t.string "time_in_pro_row"
    t.integer "amount_of_pro_row"
    t.string "place_art_in_art_room"
    t.string "recent_credits"
    t.string "short_biography"
    t.string "panel_suggestions"
    t.integer "amount_of_panels_at_convention"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.boolean "approved"
  end

  create_table "registration_forms", force: :cascade do |t|
    t.integer "different_prices"
    t.string "payment_type"
    t.string "coupon_codes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "admin_id"
    t.boolean "approved"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.integer "age"
    t.integer "phone"
    t.boolean "admin"
    t.string "middle_name"
    t.string "membership_type"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
