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

ActiveRecord::Schema.define(version: 20150328213755) do

  create_table "bookings", force: true do |t|
    t.integer  "host_id"
    t.integer  "dog_id"
    t.integer  "dog_feedback"
    t.integer  "owner_feedback"
    t.string   "dog_comments"
    t.string   "owner_comments"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "address"
    t.string   "email"
    t.string   "phone_number"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
    t.string   "description"
    t.string   "profile_picture"
    t.string   "gender"
  end

  create_table "hosts", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone_number"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "city"
    t.string   "country"
    t.string   "zipcode"
    t.string   "description"
    t.string   "profile_picture"
    t.string   "password"
    t.string   "username"
    t.string   "email_hash"
  end

end
