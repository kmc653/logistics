class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
      t.string :name
      t.integer :truck_id
      t.boolean :admin
      t.timestamps null: false
    end
  end
end
