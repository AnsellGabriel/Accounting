class CreateLedgers < ActiveRecord::Migration[7.0]
  def change
    create_table :ledgers do |t|
      t.string :reference
      t.string :entry_type
      t.decimal :debit, precision: 18, scale: 2
      t.decimal :credit, precision: 18, scale: 2
      t.references :account#, null: false, foreign_key: true
      t.references :sub_account#, null: false, foreign_key: true
      t.references :ledgerable, polymorphic: true#, null: false

      t.timestamps
    end
  end
end
