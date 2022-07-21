class CreatePayments < ActiveRecord::Migration[7.0]
  def change
    create_table :payments do |t|
      t.string :payment_title
      t.text :description
      t.boolean :plan
      t.string :Abbreviation

      t.timestamps
    end
  end
end
