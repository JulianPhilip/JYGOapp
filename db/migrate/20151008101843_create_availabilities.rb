class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.references :shopper, index: true, foreign_key: true
      t.date :date
      t.boolean :acceptation_auto
      t.boolean :status

      t.timestamps null: false
    end
  end
end
