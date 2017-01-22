# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#

FactoryGirl.define do
  factory :product do
    name            { Faker::Name.name }
    description     { Faker::Lorem.paragraph }
    user

  end


#build(:product) ==>make an instance
#create(:product) ==>make an instance and save in database

#TRAIT ==> create(:product, :home) ==>instead of: create(:product, name: "anything", description: "anything" )

  
end



