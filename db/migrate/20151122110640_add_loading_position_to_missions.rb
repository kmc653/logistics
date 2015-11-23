class AddLoadingPositionToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :loading_position, :string
  end
end
