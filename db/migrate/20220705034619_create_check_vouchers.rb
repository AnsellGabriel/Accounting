class CreateCheckVouchers < ActiveRecord::Migration[7.0]
  def change
    create_table :check_vouchers do |t|
      t.references :payee, null: false, foreign_key: true
      t.references :bank, null: false, foreign_key: true
      t.string :voucher
      t.date :date_voucher
      t.string :address
      t.text :description
      t.decimal :amount, precision: 18, scale: 2

      t.timestamps
    end
  end
end
