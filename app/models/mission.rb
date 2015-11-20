class Mission < ActiveRecord::Base
  validates_presence_of :deliver_date, :client_1, :truck_id, :number_of_item, :two_clients

  belongs_to :truck
end