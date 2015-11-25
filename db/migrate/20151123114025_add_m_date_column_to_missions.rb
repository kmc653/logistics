class AddMDateColumnToMissions < ActiveRecord::Migration
  def change
    add_column :missions, :m_date, :date
  end
end
