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

ActiveRecord::Schema.define(:version => 20121001231740) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.string   "slug"
    t.text     "body"
    t.text     "excerpt"
    t.string   "main_image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "articles_categories", :id => false, :force => true do |t|
    t.integer "article_id"
    t.integer "category_id"
  end

  add_index "articles_categories", ["article_id", "category_id"], :name => "index_articles_categories_on_article_id_and_category_id"
  add_index "articles_categories", ["category_id", "article_id"], :name => "index_articles_categories_on_category_id_and_article_id"

  create_table "books", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "date_started"
    t.datetime "date_finished"
    t.string   "link"
    t.text     "description"
    t.text     "summary"
    t.string   "cover_image"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "slug"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "author"
    t.string   "email"
    t.string   "url"
    t.text     "comment"
    t.integer  "article_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
