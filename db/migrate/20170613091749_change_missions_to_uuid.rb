class ChangeMissionsToUuid < ActiveRecord::Migration[5.0]
  def change
    add_column :missions, :uuid, :uuid, default: "uuid_generate_v4()", null: false
    
    change_table :missions do |t|
      t.remove :id
      t.rename :uuid, :id
    end
    execute "ALTER TABLE missions ADD PRIMARY KEY (id);"
    
    remove_column :missions, :truck_id, :integer
    add_column :missions, :truck_id, :uuid
  end
end
