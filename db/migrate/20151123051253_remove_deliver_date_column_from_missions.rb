class RemoveDeliverDateColumnFromMissions < ActiveRecord::Migration
  def change
    remove_column :missions, :deliver_date
  end
end
