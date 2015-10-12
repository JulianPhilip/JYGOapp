class AddDetailsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :charcuterie, :boolean
    add_column :users, :prix, :boolean
    add_column :users, :legume, :boolean
    add_column :users, :fruit, :boolean
    add_column :users, :poisson, :boolean
    add_column :users, :boutique, :boolean
  end
end
