class ChangeTrailersIdToUuid < ActiveRecord::Migration[5.0]
  def change
    change_table :trailers do |t|
      t.remove :id
      t.remove :truck_id
    end

    add_column :trailers, :id, :uuid, default: "uuid_generate_v4()", null: false
    add_column :trailers, :truck_id, :uuid, default: "uuid_generate_v4()", null: false

    execute "ALTER TABLE trailers ADD PRIMARY KEY (id);"
  end
end
