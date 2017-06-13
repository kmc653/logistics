class ChangeStaffsToUuid < ActiveRecord::Migration[5.0]
  def change
    add_column :staffs, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    
    change_table :staffs do |t|
      t.remove :id
      t.rename :uuid, :id
    end
    execute "ALTER TABLE staffs ADD PRIMARY KEY (id);"
    
    remove_column :staffs, :truck_id, :integer
    add_column :staffs, :truck_id, :uuid
  end
end
