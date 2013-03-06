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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130305153001) do

  create_table "bookings", :force => true do |t|
    t.date     "booking_date"
    t.integer  "customer_id"
    t.time     "show_time"
    t.integer  "movie_id"
    t.integer  "cinema_id"
    t.integer  "payment_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "cinemas", :force => true do |t|
    t.string   "name"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "movies", :force => true do |t|
    t.string   "title"
    t.integer  "duration"
    t.string   "summary"
    t.string   "genre"
    t.string   "actors"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "payments", :force => true do |t|
    t.integer  "amount"
    t.datetime "date"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "seats", :force => true do |t|
    t.integer  "number"
    t.string   "type"
    t.integer  "theater_id"
    t.boolean  "is_taken"
    t.integer  "booking_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "shows", :force => true do |t|
    t.time     "show_time"
    t.date     "show_date"
    t.string   "show_type"
    t.integer  "theater_id"
    t.integer  "cinema_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "movie_id"
  end

  create_table "theaters", :force => true do |t|
    t.integer  "cinema_id"
    t.integer  "theater_number"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "name"
    t.boolean  "is_customer"
    t.boolean  "is_admin"
    t.boolean  "is_manager"
    t.integer  "reward_points"
    t.string   "billing_address"
    t.integer  "creditcard_num"
    t.string   "creditcard_type"
    t.integer  "security_num"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
