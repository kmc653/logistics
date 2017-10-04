class ChangeTruckIdToUuid < ActiveRecord::Migration[5.0]
  def change
    add_column :trucks, :uuid, :uuid, default: "uuid_generate_v4()", null: false

    change_table :trucks do |t|
      t.remove :id
      t.rename :uuid, :id
    end
    execute "ALTER TABLE trucks ADD PRIMARY KEY (id);"
  end
end
