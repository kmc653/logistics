class AddMaintainUnitIdToMaintenance < ActiveRecord::Migration[5.0]
  def change
    add_column :maintenances, :maintain_unit_id, :integer
  end
end
