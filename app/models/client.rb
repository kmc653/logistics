class Client < ActiveRecord::Base
  validates_presence_of :name, :address

  belongs_to :mission
end