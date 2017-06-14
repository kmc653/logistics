class Trailer < ActiveRecord::Base
  validates_presence_of :trailer_id, :trailer_brand, :trailer_type, :buy_date

  belongs_to :truck
  has_many :maintenances, foreign_key: "vehicle_id"
end