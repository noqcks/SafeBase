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

ActiveRecord::Schema.define(version: 20140925031316) do

  create_table "clinics", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "institution_id"
    t.string   "password"
    t.decimal  "latitude"
    t.decimal  "longitude"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "phone"
    t.string   "email"
    t.string   "website"
  end

  create_table "results", force: true do |t|
    t.integer  "herpes"
    t.integer  "chlamydia"
    t.integer  "gonorrhoeae"
    t.integer  "hiv"
    t.integer  "hepatitis"
    t.integer  "syphilis"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "clinic_id"
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "date_of_birth"
    t.string   "email"
    t.string   "password"
    t.string   "personal_health_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
