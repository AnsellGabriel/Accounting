class CreatePolyLedgers < ActiveRecord::Migration[7.0]
  def change
    create_table :poly_ledgers do |t|
      t.references :ledgerable, polymorphic: true, null: false
      t.string :entry_type
      t.decimal :debit
      t.decimal :credit

      t.timestamps
    end
  end
end
