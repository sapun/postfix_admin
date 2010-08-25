# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100603074002) do

  create_table "admins", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aliases", :force => true do |t|
    t.string   "address"
    t.string   "goto"
    t.string   "domain"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domain_admins", :force => true do |t|
    t.string   "username"
    t.string   "domain"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "domains", :force => true do |t|
    t.string   "domain"
    t.text     "description"
    t.integer  "aliases"
    t.integer  "mailboxes"
    t.integer  "maxquota"
    t.integer  "quota"
    t.string   "transport"
    t.boolean  "backupmx"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mailboxes", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "maildir"
    t.integer  "quota"
    t.string   "domain"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.boolean  "published"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "redirects", :force => true do |t|
    t.string   "address"
    t.string   "goto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
