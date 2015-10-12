class AddVinToUsers < ActiveRecord::Migration
  def change
    add_column :users, :vin, :boolean
  end
end
