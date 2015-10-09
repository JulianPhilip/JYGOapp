class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :category
      t.string :country
      t.string :city
      t.string :zip_code
      t.string :street_and_number
      t.text :description

      t.timestamps null: false
    end
  end
end
