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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140623002040) do

  create_table "crawlers", force: true do |t|
    t.string   "site_name"
    t.text     "site_link"
    t.string   "product_price"
    t.string   "product_title"
    t.text     "product_image"
    t.text     "product_link"
    t.integer  "status",        default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "site_paginas",  default: 0
  end

end
