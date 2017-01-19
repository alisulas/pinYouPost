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