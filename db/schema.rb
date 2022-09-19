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

ActiveRecord::Schema[7.0].define(version: 2022_08_02_010157) do
  create_table "accounts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "account_title"
    t.string "account_type"
    t.boolean "parent"
    t.string "code_order"
    t.decimal "order", precision: 18, scale: 2
    t.string "division"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "agents", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "agent_name"
    t.string "region"
    t.bigint "branch_id", null: false
    t.string "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_agents_on_branch_id"
  end

  create_table "banks", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "bank_title"
    t.string "address"
    t.string "contact_no"
    t.boolean "check_account"
    t.decimal "iOrder", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "branch_id", null: false
    t.index ["branch_id"], name: "index_banks_on_branch_id"
  end

  create_table "branches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "branch_name"
    t.string "branch_code"
    t.string "approver"
    t.string "position"
    t.string "initials"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cashiers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "orno"
    t.date "or_date"
    t.string "policy_number"
    t.bigint "payee_id", null: false
    t.bigint "payment_id", null: false
    t.bigint "agent_id", null: false
    t.bigint "bank_id", null: false
    t.date "date_deposit"
    t.decimal "amount_paid", precision: 18, scale: 2
    t.decimal "service_fee", precision: 18, scale: 2
    t.decimal "unuse_premium", precision: 18, scale: 2
    t.decimal "amount_deposit", precision: 18, scale: 2
    t.decimal "withholding_tax", precision: 18, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "address"
    t.index ["agent_id"], name: "index_cashiers_on_agent_id"
    t.index ["bank_id"], name: "index_cashiers_on_bank_id"
    t.index ["payee_id"], name: "index_cashiers_on_payee_id"
    t.index ["payment_id"], name: "index_cashiers_on_payment_id"
  end

  create_table "check_vouchers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "payee_id", null: false
    t.bigint "bank_id", null: false
    t.string "voucher"
    t.date "date_voucher"
    t.string "address"
    t.text "description"
    t.decimal "amount", precision: 18, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_check_vouchers_on_bank_id"
    t.index ["payee_id"], name: "index_check_vouchers_on_payee_id"
  end

  create_table "journal_vouchers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "voucher"
    t.date "date_voucher"
    t.bigint "payee_id"
    t.string "address"
    t.text "description"
    t.bigint "period_id"
    t.bigint "jv_period_id"
    t.bigint "branch_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["branch_id"], name: "index_journal_vouchers_on_branch_id"
    t.index ["jv_period_id"], name: "index_journal_vouchers_on_jv_period_id"
    t.index ["payee_id"], name: "index_journal_vouchers_on_payee_id"
    t.index ["period_id"], name: "index_journal_vouchers_on_period_id"
  end

  create_table "ledgers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "reference"
    t.string "entry_type"
    t.decimal "debit", precision: 18, scale: 2
    t.decimal "credit", precision: 18, scale: 2
    t.bigint "account_id"
    t.bigint "sub_account_id"
    t.string "ledgerable_type"
    t.bigint "ledgerable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["account_id"], name: "index_ledgers_on_account_id"
    t.index ["ledgerable_type", "ledgerable_id"], name: "index_ledgers_on_ledgerable"
    t.index ["sub_account_id"], name: "index_ledgers_on_sub_account_id"
  end

  create_table "payees", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "payee"
    t.string "address"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "payment_title"
    t.text "description"
    t.boolean "plan"
    t.string "Abbreviation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "periods", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "period_title"
    t.date "start_date"
    t.date "end_date"
    t.string "journal_code"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "poly_ledgers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "ledgerable_type", null: false
    t.bigint "ledgerable_id", null: false
    t.string "entry_type"
    t.decimal "debit", precision: 10
    t.decimal "credit", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ledgerable_type", "ledgerable_id"], name: "index_poly_ledgers_on_ledgerable"
  end

  create_table "sub_accounts", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "sub_account_title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "agents", "branches"
  add_foreign_key "banks", "branches"
  add_foreign_key "cashiers", "agents"
  add_foreign_key "cashiers", "banks"
  add_foreign_key "cashiers", "payees"
  add_foreign_key "cashiers", "payments"
  add_foreign_key "check_vouchers", "banks"
  add_foreign_key "check_vouchers", "payees"
end
