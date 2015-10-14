class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :order, index: true, foreign_key: true
      t.text :content
      t.integer :rating

      t.timestamps null: false
    end
  end
end
