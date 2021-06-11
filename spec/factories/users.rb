FactoryBot.define do
  factory :user do
    sequence :email do |n|
      "email#{n}@consult.com"
    end
    password { Faker::Internet.password(min_length: 10, max_length: 20) }
    name { Faker::Internet.username }
  end
end
