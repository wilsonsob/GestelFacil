# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_11_05_194758) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "commissions", force: :cascade do |t|
    t.text "note"
    t.boolean "active", default: true
    t.bigint "contract_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_commissions_on_contract_id"
    t.index ["user_id"], name: "index_commissions_on_user_id"
  end

  create_table "contracts", force: :cascade do |t|
    t.string "number"
    t.string "cnpj_contractor"
    t.string "company"
    t.string "cnpj_hired"
    t.text "object"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "number"
    t.integer "service_code"
    t.float "value"
    t.string "cnpj_contractor"
    t.bigint "term_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["term_id"], name: "index_invoices_on_term_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "item_number"
    t.string "item_title"
    t.integer "service_code"
    t.integer "quantity"
    t.float "price"
    t.bigint "term_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["term_id"], name: "index_items_on_term_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_results_on_invoice_id"
  end

  create_table "terms", force: :cascade do |t|
    t.string "number"
    t.date "date_start"
    t.date "date_end"
    t.text "description"
    t.bigint "contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_terms_on_contract_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "commissions", "contracts"
  add_foreign_key "commissions", "users"
  add_foreign_key "invoices", "terms"
  add_foreign_key "items", "terms"
  add_foreign_key "results", "invoices"
  add_foreign_key "terms", "contracts"
end
