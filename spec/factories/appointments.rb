FactoryBot.define do
  factory :appointment do
    starts_at { DateTime.now }
    ends_at { starts_at + 15.minutes }
    doctor { FactoryBot.create(:doctor).id }
    patient { FactoryBot.create(:patient).id }
  end
end
