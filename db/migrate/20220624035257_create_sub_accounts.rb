class CreateSubAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_accounts do |t|
      t.string :sub_account_title
      t.text :description

      t.timestamps
    end
  end
end
