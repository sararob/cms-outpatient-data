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

ActiveRecord::Schema.define(:version => 20130612001819) do

  create_table "procedures", :force => true do |t|
    t.string   "apc"
    t.string   "provider_id"
    t.string   "provider_name"
    t.string   "provider_street"
    t.string   "provider_city"
    t.string   "provider_state"
    t.string   "provider_zip"
    t.string   "hospital_region"
    t.string   "outpatient_services"
    t.string   "avg_submitted_charges"
    t.string   "avg_total_payments"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

end