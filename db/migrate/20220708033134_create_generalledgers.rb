class CreateGeneralledgers < ActiveRecord::Migration[7.0]
  # def change
  #   create_table :generalledgers do |t|
  #     t.string :reference_id
  #     t.string :entry_type
  #     t.date :transaction_date
  #     t.bigint :debit_code
  #     t.bigint :credit_code
  #     t.decimal :debit, precision: 18, scale: 2
  #     t.decimal :credit, precision: 18, scale: 2
  #     t.references :account, null: false, foreign_key: true
  #     t.references :branch, null: false, foreign_key: true
  #     t.references :sub_account, null: false, foreign_key: true

  #     t.timestamps
  #   end
  # end
end
