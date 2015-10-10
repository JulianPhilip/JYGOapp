class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user, index: true, foreign_key: true
      t.references :shopper, index: true, foreign_key: true
      t.date :date
      t.time :begin_hour
      t.time :end_hour
      t.time :delivery_hour
      t.boolean :status_exec
      t.integer :total_est_amout_min
      t.integer :total_est_amount_max
      t.integercommission :total_amount
      t.text :comment

      t.timestamps null: false
    end
  end
end
