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

ActiveRecord::Schema.define(version: 20161214173064) do

  create_table "notee_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",       default: "category_name", null: false
    t.string   "slug"
    t.integer  "parent_id"
    t.boolean  "is_private", default: false,           null: false
    t.boolean  "is_deleted", default: false,           null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.index ["slug"], name: "index_notee_categories_on_slug", unique: true, using: :btree
  end

  create_table "notee_comments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "post_id"
    t.text     "content",    limit: 65535
    t.string   "name"
    t.string   "email"
    t.boolean  "is_hidden",                default: false, null: false
    t.boolean  "is_deleted",               default: false, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notee_images", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "content",                    null: false
    t.boolean  "is_deleted", default: false, null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "notee_posts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "title"
    t.text     "content",                   limit: 65535
    t.string   "slug"
    t.integer  "status",                                  default: 0
    t.integer  "category_id",                             default: 0
    t.integer  "thumbnail_id",                            default: 0
    t.datetime "published_at"
    t.integer  "user_id"
    t.boolean  "is_deleted",                              default: false, null: false
    t.string   "seo_keyword",                             default: ""
    t.string   "seo_description",                         default: ""
    t.string   "secret_published_password"
    t.datetime "created_at",                                              null: false
    t.datetime "updated_at",                                              null: false
    t.index ["slug"], name: "index_notee_posts_on_slug", unique: true, using: :btree
  end

  create_table "notee_tokens", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "access_token", null: false
    t.integer  "user_id"
    t.datetime "expires_at",   null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["access_token"], name: "index_notee_tokens_on_access_token", unique: true, using: :btree
  end

  create_table "notee_users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                                             null: false
    t.string   "email",                                            null: false
    t.string   "encrypted_password",                               null: false
    t.text     "profile",            limit: 65535
    t.string   "profile_img"
    t.integer  "role",                                             null: false
    t.boolean  "is_deleted",                       default: false, null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.index ["name", "email"], name: "index_notee_users_on_name_and_email", unique: true, using: :btree
  end

end
