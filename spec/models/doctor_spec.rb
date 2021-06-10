require 'rails_helper'

RSpec.describe Doctor, type: :model do
  describe "validations" do
    subject { create(:doctor) }

    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:crm) }
    it { should validate_presence_of(:crm_uf) }
    it { should validate_length_of(:crm_uf).is_equal_to(2) }
    it { should validate_length_of(:crm).is_at_least(4).is_at_most(10) }
    it { should validate_length_of(:name).is_at_most(130) }
  end
end
