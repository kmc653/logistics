class MaintainUnit < ActiveRecord::Base
  validates_presence_of :title

  has_many :maintenances
end
