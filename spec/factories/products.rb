FactoryGirl.define do
  factory :product do
    name            { Faker::Name.name }
    description     { Faker::Lorem.paragraph }


    trait :home do
      name            { Faker::Name.name }
      description     { Faker::Lorem.paragraph }
    end


    trait :car do
      name            { Faker::Name.name }
      description     { Faker::Lorem.paragraph }
    end

  end


#build(:product) ==>make an instance
#create(:product) ==>make an instance and save in database

#TRAIT ==> create(:product, :home) ==>instead of: create(:product, name: "anything", description: "anything" )

  
end



