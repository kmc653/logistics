class AddDateAndTimeColumnToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :m_date, :date
    add_column :missions, :m_time, :time
  end
end
