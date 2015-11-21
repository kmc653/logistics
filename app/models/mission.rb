class Mission < ActiveRecord::Base
  validates_presence_of :deliver_date, :client_1, :truck_id, :number_of_item

  belongs_to :truck
end