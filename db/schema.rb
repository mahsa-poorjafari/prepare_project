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

ActiveRecord::Schema.define(version: 20170117212630) do

  create_table "catalogues", force: :cascade do |t|
    t.string   "title_fa",           limit: 255
    t.string   "title_en",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "categories", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "description",        limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.string   "title_fa",           limit: 255
    t.string   "title_en",           limit: 255
    t.text     "description_fa",     limit: 65535
    t.text     "description_en",     limit: 65535
    t.text     "installation",       limit: 65535
    t.text     "maintaion",          limit: 65535
    t.text     "warranty",           limit: 65535
    t.text     "warranty_fa",        limit: 65535
    t.text     "maintaion_fa",       limit: 65535
    t.text     "installation_fa",    limit: 65535
  end

  create_table "certifications", force: :cascade do |t|
    t.string   "title_fa",           limit: 255
    t.string   "title_en",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "category_id",        limit: 4
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "galleries", force: :cascade do |t|
    t.integer  "category_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.text     "description_fa",     limit: 65535
    t.text     "description_en",     limit: 65535
    t.integer  "g_folder_id",        limit: 4
  end

  create_table "gallery_folders", force: :cascade do |t|
    t.string   "title_fa",    limit: 255
    t.string   "title_en",    limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "category_id", limit: 4
  end

  create_table "messages", force: :cascade do |t|
    t.text     "email",      limit: 65535
    t.string   "name",       limit: 255
    t.string   "phone",      limit: 255
    t.text     "text",       limit: 65535
    t.boolean  "visited",                  default: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", force: :cascade do |t|
    t.string   "title",        limit: 255
    t.text     "html_text",    limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa",     limit: 255
    t.text     "html_text_fa", limit: 65535
  end

  create_table "pictures", force: :cascade do |t|
    t.string   "title_en",           limit: 255
    t.string   "title_fa",           limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "product_id",         limit: 4
    t.boolean  "coming_soon"
    t.boolean  "download"
    t.integer  "product_folder_id",  limit: 4
    t.boolean  "model_type"
  end

  create_table "product_folders", force: :cascade do |t|
    t.string   "title_en",   limit: 255
    t.string   "title_fa",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "product_id", limit: 4
  end

  create_table "products", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "description",        limit: 65535
    t.integer  "category_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title_fa",           limit: 255
    t.text     "description_fa",     limit: 65535
    t.boolean  "coming_soon"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.integer  "sub_category_id",    limit: 4
  end

  create_table "resellers", force: :cascade do |t|
    t.string   "title_fa",           limit: 255
    t.string   "title_en",           limit: 255
    t.string   "Management_name_fa", limit: 255
    t.string   "Management_name_en", limit: 255
    t.text     "phone",              limit: 65535
    t.text     "address_fa",         limit: 65535
    t.text     "address_en",         limit: 65535
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "send_links", force: :cascade do |t|
    t.string   "sender_email",   limit: 255
    t.string   "receiver_email", limit: 255
    t.string   "current_link",   limit: 255
    t.text     "text",           limit: 65535
    t.string   "subject",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sliders", force: :cascade do |t|
    t.string   "description_fa",     limit: 255
    t.string   "description_en",     limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.string   "title_en",           limit: 255
    t.string   "title_fa",           limit: 255
    t.integer  "category_id",        limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name",    limit: 255
    t.string   "image_content_type", limit: 255
    t.integer  "image_file_size",    limit: 4
    t.datetime "image_updated_at"
    t.boolean  "comming_soon"
    t.text     "description_fa",     limit: 65535
    t.text     "description_en",     limit: 65535
  end

  create_table "users", force: :cascade do |t|
    t.text     "email",      limit: 65535
    t.string   "user_name",  limit: 255
    t.string   "password",   limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visits", force: :cascade do |t|
    t.string   "visit_token",      limit: 255
    t.string   "visitor_token",    limit: 255
    t.string   "ip",               limit: 255
    t.text     "user_agent",       limit: 65535
    t.text     "referrer",         limit: 65535
    t.text     "landing_page",     limit: 65535
    t.integer  "user_id",          limit: 4
    t.string   "user_type",        limit: 255
    t.string   "referring_domain", limit: 255
    t.string   "search_keyword",   limit: 255
    t.string   "browser",          limit: 255
    t.string   "os",               limit: 255
    t.string   "device_type",      limit: 255
    t.string   "country",          limit: 255
    t.string   "region",           limit: 255
    t.string   "city",             limit: 255
    t.string   "utm_source",       limit: 255
    t.string   "utm_medium",       limit: 255
    t.string   "utm_term",         limit: 255
    t.string   "utm_content",      limit: 255
    t.string   "utm_campaign",     limit: 255
    t.datetime "created_at"
  end

  add_index "visits", ["user_id", "user_type"], name: "index_visits_on_user_id_and_user_type", using: :btree
  add_index "visits", ["visit_token"], name: "index_visits_on_visit_token", unique: true, using: :btree

end
