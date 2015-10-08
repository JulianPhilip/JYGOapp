class AddEndingHourToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :ending_hour, :time
  end
end
