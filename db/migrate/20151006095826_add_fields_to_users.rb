class AddFieldsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
    add_column :users, :birthdate, :date
    add_column :users, :sexe, :string
    add_column :users, :photo_link, :text
    add_column :users, :address, :text
    add_column :users, :zip_code, :string
    add_column :users, :city, :string
    add_column :users, :phone_number, :string
    add_column :users, :status, :string
    add_column :users, :avg_rating_user, :string
  end
end
