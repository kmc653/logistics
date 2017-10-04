require "rails_helper"

RSpec.describe Truck, type: :model do
  context "associations" do
    it { should have_many(:trailers) }
    it { should have_many(:missions) }
    it { should have_many(:maintenances).with_foreign_key("vehicle_id") }
  end

  context "validations" do
    it { should validate_presence_of :truck_id }
    it { should validate_presence_of :truck_brand }
    it { should validate_presence_of :truck_type }
    it { should validate_presence_of :buy_date }
  end
end