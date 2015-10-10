class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :category
      t.string :sub_category
      t.string :name
      t.string :key_words
      t.text :description
      t.integer :min_price
      t.integer :max_price
      t.string :difficulty

      t.timestamps null: false
    end
  end
end
