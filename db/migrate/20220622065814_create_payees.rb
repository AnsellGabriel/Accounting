class CreatePayees < ActiveRecord::Migration[7.0]
  def change
    create_table :payees do |t|
      t.string :payee
      t.string :address
      t.text :description

      t.timestamps
    end
  end
end
