class CreateSchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :schedules do |t|
      t.date :date
      t.string :hour
      t.integer :status
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
