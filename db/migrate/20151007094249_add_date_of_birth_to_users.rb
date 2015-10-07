class AddDateOfBirthToUsers < ActiveRecord::Migration
  def change
    remove_column :users, :birthday, :date
    add_column :users, :date_of_birth, :date
  end
end
