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

ActiveRecord::Schema.define(version: 2020_10_28_133707) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "hstore"
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.bigint "physician_id"
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
    t.index ["physician_id"], name: "index_appointments_on_physician_id"
  end

  create_table "author_ships", force: :cascade do |t|
    t.bigint "author_id"
    t.bigint "book_id"
    t.index ["author_id"], name: "index_author_ships_on_author_id"
    t.index ["book_id"], name: "index_author_ships_on_book_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "age", null: false
  end

  create_table "blogposts", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "customer_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "book_name", null: false
    t.integer "pages", null: false
  end

  create_table "books_genres", id: false, force: :cascade do |t|
    t.bigint "genre_id", null: false
    t.bigint "book_id", null: false
    t.index ["book_id"], name: "index_books_genres_on_book_id"
    t.index ["genre_id"], name: "index_books_genres_on_genre_id"
  end

  create_table "cars", force: :cascade do |t|
    t.string "model", null: false
    t.integer "year", null: false
    t.string "transmission", null: false
    t.bigint "driver_id"
    t.index ["driver_id"], name: "index_cars_on_driver_id"
  end

  create_table "comments", force: :cascade do |t|
    t.text "content"
  end

  create_table "companies", force: :cascade do |t|
    t.string "name", null: false
    t.string "sic_code", null: false
    t.text "catch_phrase"
    t.bigint "owner_id"
    t.index ["owner_id"], name: "index_companies_on_owner_id"
  end

  create_table "content_stats", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "content_id"
    t.string "content_type"
    t.integer "status"
  end

  create_table "customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_name"], name: "index_customers_on_first_name"
    t.index ["last_name"], name: "index_customers_on_last_name"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "age", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.text "purpose", null: false
    t.string "entryable_type"
    t.bigint "entryable_id"
    t.index ["entryable_type", "entryable_id"], name: "index_entries_on_entryable_type_and_entryable_id"
  end

  create_table "game_rooms", force: :cascade do |t|
    t.string "roomname", null: false
  end

  create_table "game_rooms_players", id: false, force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_room_id", null: false
    t.index ["game_room_id"], name: "index_game_rooms_players_on_game_room_id"
    t.index ["player_id"], name: "index_game_rooms_players_on_player_id"
  end

  create_table "genres", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "ideas", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "customer_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "subscription_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["subscription_id"], name: "index_invoices_on_subscription_id"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name", null: false
    t.integer "frequency", null: false
    t.float "price", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text "subject"
  end

  create_table "microblogs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.bigint "customer_id"
  end

  create_table "newspapers", force: :cascade do |t|
    t.string "name", null: false
    t.integer "frequency", null: false
    t.decimal "price", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string "recipient_type", null: false
    t.bigint "recipient_id", null: false
    t.string "type", null: false
    t.jsonb "params"
    t.datetime "read_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["read_at"], name: "index_notifications_on_read_at"
    t.index ["recipient_type", "recipient_id"], name: "index_notifications_on_recipient_type_and_recipient_id"
  end

  create_table "ones", force: :cascade do |t|
    t.string "one_name"
    t.string "one_age"
    t.index ["one_name"], name: "index_ones_on_one_name", unique: true
  end

  create_table "orders", force: :cascade do |t|
    t.integer "quantity"
    t.bigint "customer_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
  end

  create_table "owners", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
  end

  create_table "parrots", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "pirate_id"
    t.index ["pirate_id"], name: "index_parrots_on_pirate_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "age", null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "physician_name"
  end

  create_table "pinned_contents", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "content_stat_id"
  end

  create_table "pinned_posts", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "pinned_stat_id"
  end

  create_table "pirates", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.integer "age", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "name", null: false
    t.string "nickname"
    t.integer "age", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "description", null: false
    t.bigint "author_id", null: false
    t.index ["author_id"], name: "index_posts_on_author_id"
  end

  create_table "posts_tags", id: false, force: :cascade do |t|
    t.bigint "post_id", null: false
    t.bigint "tag_id", null: false
    t.index ["post_id"], name: "index_posts_tags_on_post_id"
    t.index ["tag_id"], name: "index_posts_tags_on_tag_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rides", force: :cascade do |t|
    t.datetime "booking_time"
    t.bigint "driver_id"
    t.bigint "passenger_id"
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["passenger_id"], name: "index_rides_on_passenger_id"
  end

  create_table "stats", force: :cascade do |t|
    t.datetime "start_date", null: false
    t.string "statable_type"
    t.bigint "statable_id"
    t.index ["statable_type", "statable_id"], name: "index_stats_on_statable_type_and_statable_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "customer_id"
    t.string "subscribable_type"
    t.bigint "subscribable_id"
    t.index ["customer_id"], name: "index_subscriptions_on_customer_id"
    t.index ["subscribable_type", "subscribable_id"], name: "index_subscriptions_on_subscribable_type_and_subscribable_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name", null: false
  end

  create_table "twos", force: :cascade do |t|
    t.string "two_name"
    t.string "two_age"
    t.index ["two_name"], name: "index_twos_on_two_name", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.hstore "parts"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
