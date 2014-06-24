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

ActiveRecord::Schema.define(version: 20140623201337) do

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "consoles", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.integer  "console_id",    default: 0
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.text     "descripton"
    t.integer  "category_id"
    t.integer  "console_id"
    t.string   "youtube_link"
    t.integer  "status",       default: 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "product_title"
    t.decimal  "product_price",      precision: 8, scale: 2
    t.text     "product_link"
    t.string   "site_name"
    t.integer  "status"
    t.integer  "console_id"
    t.integer  "category_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "crawler_id"
    t.integer  "game_id"
  end

end
