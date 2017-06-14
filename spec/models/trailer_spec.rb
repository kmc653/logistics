require "rails_helper"

RSpec.describe Trailer, type: :model do
  context "associations" do
    it { should belong_to(:truck) }
    it { should have_many(:maintenances).with_foreign_key("vehicle_id") }
  end

  context "validations" do
    it { should validate_presence_of :trailer_id }
    it { should validate_presence_of :trailer_brand }
    it { should validate_presence_of :trailer_type }
    it { should validate_presence_of :buy_date }
  end
end