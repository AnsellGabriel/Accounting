class AddBranchToBank < ActiveRecord::Migration[7.0]
  def change
    add_reference :banks, :branch, null: false, foreign_key: true
  end
end
