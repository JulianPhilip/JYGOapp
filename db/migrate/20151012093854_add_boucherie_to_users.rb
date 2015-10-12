class AddBoucherieToUsers < ActiveRecord::Migration
  def change
    add_column :users, :boucherie, :boolean
  end
end
