class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :bank_title
      t.string :address
      t.string :contact_no
      t.boolean :check_account
      t.decimal :iOrder

      t.timestamps
    end
  end
end
