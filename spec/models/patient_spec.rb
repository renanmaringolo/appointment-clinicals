require 'rails_helper'

RSpec.describe Patient, type: :model do
  describe "validations" do 
    subject { create(:patient) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:birth_date) }
    it { should validate_presence_of(:cpf) }
    it { should validate_length_of(:cpf).is_equal_to(11) }
    it { should validate_length_of(:name).is_at_most(130) }
  end

  describe "association with model" do
    it { should have_many(:appointments) }
  end
end
