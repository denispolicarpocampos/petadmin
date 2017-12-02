class AddHourToSchedules < ActiveRecord::Migration[5.0]
  def change
    add_column :schedules, :hour, :time
  end
end
