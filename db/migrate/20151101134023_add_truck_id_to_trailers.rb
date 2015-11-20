class AddTruckIdToTrailers < ActiveRecord::Migration
  def change
    add_column :trailers, :truck_id, :integer
  end
end
