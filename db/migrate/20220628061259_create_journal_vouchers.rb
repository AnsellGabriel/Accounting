class CreateJournalVouchers < ActiveRecord::Migration[7.0]
  def change
    create_table :journal_vouchers do |t|
      t.string :voucher
      t.date :date_voucher
      t.references :payee#, null: false, foreign_key: true
      t.string :address
      t.text :description
      t.references :period#, null: false, foreign_key: true
      t.references :jv_period#, null: false, foreign_key: true
      t.references :branch#, null: false, foreign_key: true

      t.timestamps
    end
  end
end
