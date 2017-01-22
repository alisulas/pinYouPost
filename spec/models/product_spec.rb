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

require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:user) { User.new(email: "ali@example.com", password: "password9", password_confirmation: "password9") }

  subject { 
    described_class.new(name: "Anything", description: "lorem Ipsum", user: user) }

    describe "Validation" do

      it "is valid with valid attributes" do
        expect(subject).to be_valid
      end


      it "is not valid without a name" do
        subject.name = nil
        expect(subject).to_not be_valid 
      end


      it "is not valid without a description" do
        subject.description = nil
        expect(subject).to_not be_valid 
      end
    end

    

  end
