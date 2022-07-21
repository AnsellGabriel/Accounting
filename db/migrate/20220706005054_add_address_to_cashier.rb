class AddAddressToCashier < ActiveRecord::Migration[7.0]
  def change
    add_column :cashiers, :address, :string
  end
end
