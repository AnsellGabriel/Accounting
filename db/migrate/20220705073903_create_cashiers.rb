class CreateCashiers < ActiveRecord::Migration[7.0]
  def change
    create_table :cashiers do |t|
      t.string :orno
      t.date :or_date
      t.string :policy_number
      t.references :payee, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.references :agent, null: false, foreign_key: true
      t.references :bank, null: false, foreign_key: true
      t.date :date_deposit
      t.decimal :amount_paid, precision: 18, scale: 2
      t.decimal :service_fee, precision: 18, scale: 2
      t.decimal :unuse_premium, precision: 18, scale: 2
      t.decimal :amount_deposit, precision: 18, scale: 2
      t.decimal :withholding_tax, precision: 18, scale: 2

      t.timestamps
    end
  end
end
