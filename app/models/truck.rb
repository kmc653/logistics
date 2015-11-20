class Truck < ActiveRecord::Base
  validates_presence_of :truck_id, :truck_brand, :truck_type, :buy_date

  has_many :trailers
end