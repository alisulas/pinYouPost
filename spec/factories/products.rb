FactoryGirl.define do
  factory :product do
    name            { Faker::Name.name }
    description     { Faker::Lorem.paragraph }
  end
end