class RemoveHourFromSchedules < ActiveRecord::Migration[5.0]
  def change
    remove_column :schedules, :hour, :string
  end
end
