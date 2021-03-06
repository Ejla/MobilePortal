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

ActiveRecord::Schema.define(version: 20140730101436) do

  create_table "images", force: true do |t|
    t.text     "base64_string"
    t.integer  "width"
    t.integer  "height"
    t.string   "name"
    t.string   "tags"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "type"
  end

  create_table "page_webclips", force: true do |t|
    t.integer "page_id"
    t.integer "webclip_id"
    t.integer "position"
  end

  add_index "page_webclips", ["page_id"], name: "index_page_webclips_on_page_id"
  add_index "page_webclips", ["webclip_id"], name: "index_page_webclips_on_webclip_id"

  create_table "pages", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portal_settings", force: true do |t|
    t.string   "title"
    t.integer  "logo_image_id"
    t.string   "bg_css"
    t.integer  "bg_image_id"
    t.string   "layout"
    t.string   "font"
    t.string   "theme"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "icon_bg",       default: false
  end

  create_table "webclips", force: true do |t|
    t.string   "name"
    t.string   "link"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "webclip_icon_id"
  end

end
