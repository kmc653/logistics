class CreateMaintenance < ActiveRecord::Migration[5.0]
  def change
    create_table :maintenances, id: :uuid do |t|
      t.uuid :vehicle_id
      t.datetime :start_at
      t.datetime :end_at
      t.integer :mileage

      t.timestamps null: false
    end

    add_index :maintenances, :vehicle_id
  end
end
