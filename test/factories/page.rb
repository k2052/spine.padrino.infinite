FactoryGirl.define do
  factory :page do
    name { Faker::Lorem.words(5).join(' ') }
  end
end
