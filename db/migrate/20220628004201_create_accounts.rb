class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :account_title
      t.string :account_type
      t.boolean :parent
      t.string :code_order
      t.decimal :order

      t.timestamps
    end
  end
end
