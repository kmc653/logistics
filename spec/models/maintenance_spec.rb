require "rails_helper"

RSpec.describe Maintenance, type: :model do
  context "associations" do
    it { should belong_to(:truck) }
    it { should belong_to(:trailer) }
    it { should belong_to(:maintain_unit) }
  end

  context "validations" do
    it { should validate_presence_of :vehicle_id }
    it { should validate_presence_of :start_at }
    it { should validate_presence_of :end_at }
    it { should validate_presence_of :mileage }
  end
end