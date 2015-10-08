class AddBeginningHourToAvailabilities < ActiveRecord::Migration
  def change
    add_column :availabilities, :beginning_hour, :time
  end
end
