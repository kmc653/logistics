class Mission < ActiveRecord::Base
  validates_presence_of :client_1, :truck_id, :number_of_item, :loading_position, :m_date

  belongs_to :truck
  has_many :clients
end