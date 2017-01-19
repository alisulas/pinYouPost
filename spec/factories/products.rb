FactoryGirl.define do
  factory :product do
    name            { Faker::Name.name }
    description     { Faker::Lorem.paragraph }
  end




  # factory :article do
  #   trait :published do
  #     status :published
  #   end

  #   trait :unpublished do
  #     status :unpublished
  #   end

  #   trait :in_the_future do
  #     published_at { 2.days.from_now }
  #   end

  #   trait :in_the_past do
  #     published_at { 2.days.ago }
  #   end
  # end
  
  #MEANS: Article has attribute: status dgn value :published dan :unpublished
  #dan attribute published_at dgn type DateTime
  
end



