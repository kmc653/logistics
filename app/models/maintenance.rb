class Maintenance < ActiveRecord::Base
  validates_presence_of :vehicle_id, :start_at, :end_at, :mileage

  belongs_to :truck, class_name: "Truck", foreign_key: "vehicle_id"
  belongs_to :trailer, class_name: "Trailer", foreign_key: "vehicle_id"
  belongs_to :maintain_unit
end