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

ActiveRecord::Schema.define(version: 2020_09_26_215737) do

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

  create_table "customers", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["first_name"], name: "index_customers_on_first_name"
    t.index ["last_name"], name: "index_customers_on_last_name"
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

  create_table "parrots", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "pirate_id"
    t.index ["pirate_id"], name: "index_parrots_on_pirate_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "patient_name"
  end

  create_table "physicians", force: :cascade do |t|
    t.string "physician_name"
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

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stats", force: :cascade do |t|
    t.datetime "start_date", null: false
    t.string "statable_type"
    t.bigint "statable_id"
    t.index ["statable_type", "statable_id"], name: "index_stats_on_statable_type_and_statable_id"
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
