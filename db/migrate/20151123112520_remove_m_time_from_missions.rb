class RemoveMTimeFromMissions < ActiveRecord::Migration
  def change
    remove_column :missions, :m_time
  end
end
