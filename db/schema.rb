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

ActiveRecord::Schema.define(version: 20140609134002) do

  create_table "activities", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.string   "title_ar"
    t.text     "description_fa"
    t.text     "description_en"
    t.text     "description_ar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "catalogues", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "categories", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title_fa"
    t.string   "title_en"
    t.text     "description_fa"
    t.text     "description_en"
    t.text     "warranty_fa"
    t.text     "maintaion_fa"
    t.text     "installation_fa"
    t.string   "title_ar"
    t.text     "description_ar"
  end

  create_table "certifications", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "galleries", force: true do |t|
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "harams", force: true do |t|
    t.string   "description_fa"
    t.string   "description_en"
    t.string   "description_ar"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "messages", force: true do |t|
    t.text     "email"
    t.string   "name"
    t.string   "phone"
    t.text     "text"
    t.boolean  "visited",    default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: true do |t|
    t.string   "title"
    t.text     "html_text"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa"
    t.text     "html_text_fa"
    t.string   "title_ar"
    t.text     "html_text_ar"
  end
r
  create_table "pictures", force: true do |t|
    t.string   "title_en"
    t.string   "title_fa"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "product_id"
    t.boolean  "coming_soon"
    t.boolean  "download"
  end

  create_table "products", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa"
    t.text     "description_fa"
    t.boolean  "coming_soon"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "title_ar"
    t.text     "description_ar"
  end

  create_table "resellers", force: true do |t|
    t.string   "title_fa"
    t.string   "title_en"
    t.string   "Management_name_fa"
    t.string   "Management_name_en"
    t.text     "phone"
    t.text     "address_fa"
    t.text     "address_en"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "send_links", force: true do |t|
    t.string   "sender_email"
    t.string   "receiver_email"
    t.string   "current_link"
    t.text     "text"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sliders", force: true do |t|
    t.string   "description_fa"
    t.string   "description_en"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "category_id"
  end

  create_table "users", force: true do |t|
    t.text     "email"
    t.string   "user_name"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: true do |t|
    t.string   "visit_token"
    t.string   "visitor_token"
    t.string   "ip"
    t.text     "user_agent"
    t.text     "referrer"
    t.text     "landing_page"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "referring_domain"
    t.string   "search_keyword"
    t.string   "browser"
    t.string   "os"
    t.string   "device_type"
    t.string   "country"
    t.string   "region"
    t.string   "city"
    t.string   "utm_source"
    t.string   "utm_medium"
    t.string   "utm_term"
    t.string   "utm_content"
    t.string   "utm_campaign"
    t.datetime "created_at"
  end

  add_index "visits", ["user_id", "user_type"], name: "index_visits_on_user_id_and_user_type", using: :btree
  add_index "visits", ["visit_token"], name: "index_visits_on_visit_token", unique: true, using: :btree

end
