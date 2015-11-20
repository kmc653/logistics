class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
      t.string :truck_id
      t.string :truck_brand
      t.string :truck_type
      t.date :buy_date
      t.timestamps
    end
  end
end
