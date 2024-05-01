# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_04_30_190018) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "author"
    t.string "slug"
    t.datetime "published_at"
    t.string "category"
    t.string "featured_image"
    t.string "status"
    t.integer "views"
    t.integer "likes"
    t.integer "comments_count"
    t.string "meta_title"
    t.text "meta_description"
    t.string "meta_keywords"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "related_posts", force: :cascade do |t|
    t.bigint "blog_id", null: false
    t.bigint "related_post_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blog_id"], name: "index_related_posts_on_blog_id"
    t.index ["related_post_id"], name: "index_related_posts_on_related_post_id"
  end

  add_foreign_key "related_posts", "blogs"
  add_foreign_key "related_posts", "blogs", column: "related_post_id"
end
