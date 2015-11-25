class RemoveMDateFromMissions < ActiveRecord::Migration
  def change
    remove_column :missions, :m_date
  end
end
