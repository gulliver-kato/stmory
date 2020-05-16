ActiveRecord::Schema.define(version: 2020_05_16_144606) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "text"
    t.string "image"
    t.bigint "story_id"
    t.index ["story_id"], name: "index_parts_on_story_id"
  end

  create_table "relationships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "admin_title"
    t.string "title"
    t.string "thumbnail_image"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "nickname"
    t.integer "age"
    t.integer "gender"
    t.integer "maritalstatus"
    t.integer "country"
    t.string "prefecture"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "parts", "stories"
end
