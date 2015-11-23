class Mission < ActiveRecord::Base
  # before_save :set_time_string, :set_time_string

  validates_presence_of :client_1, :truck_id, :number_of_item, :loading_position, :m_date, :m_time

  belongs_to :truck

  private

  # def set_time_string
  #   self.m_time = :m_time.strftime("%H:%M")
  # end

  # def set_date_string
  #   self.m_date = :m_date.strftime("%Y-%m-%d")
  # end
end