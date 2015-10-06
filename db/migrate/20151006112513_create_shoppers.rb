class CreateShoppers < ActiveRecord::Migration
  def change
    create_table :shoppers do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :default_radius
      t.string :avg_rating_shopper
      t.integer :nb_exec_orders
      t.integer :nb_due_orders
      t.integer :total_com
      t.string :seniority
      t.string :availibility
      t.boolean :accept_auto
      t.boolean :elearning

      t.timestamps null: false
    end
  end
end
