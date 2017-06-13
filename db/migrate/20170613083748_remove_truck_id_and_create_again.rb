class RemoveTruckIdAndCreateAgain < ActiveRecord::Migration[5.0]
  def change
    change_table :trailers do |t|
      t.remove :truck_id
    end

    add_column :trailers, :truck_id, :uuid
  end
end
