class CreatePeriods < ActiveRecord::Migration[7.0]
  def change
    create_table :periods do |t|
      t.string :period_title
      t.date :start_date
      t.date :end_date
      t.string :journal_code
      t.boolean :active

      t.timestamps
    end
  end
end
