require 'rails_helper'

RSpec.describe Appointment, type: :model do
  describe "association with models" do
    it { should belong_to(:doctor) }
    it { should belong_to(:patient) }
  end

  describe "validates" do
    it { should validate_presence_of(:starts_at) }
    it { should validate_presence_of(:ends_at) }
  end
end

