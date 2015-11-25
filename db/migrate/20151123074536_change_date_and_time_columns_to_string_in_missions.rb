class ChangeDateAndTimeColumnsToStringInMissions < ActiveRecord::Migration
  def change
    change_column :missions, :m_date, :string
    change_column :missions, :m_time, :string
  end
end
