class CreateAgents < ActiveRecord::Migration[7.0]
  def change
    create_table :agents do |t|
      t.string :agent_name
      t.string :region
      t.references :branch, null: false, foreign_key: true
      t.string :position

      t.timestamps
    end
  end
end
