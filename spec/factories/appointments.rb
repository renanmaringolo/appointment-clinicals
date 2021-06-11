FactoryBot.define do
  factory :appointment do
    starts_at { "2021-06-11 01:00:21" }
    ends_at { "2021-06-11 01:00:21" }
    doctor { 1 }
    patient { 22 }
  end
end
