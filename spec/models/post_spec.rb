# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  content    :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Post, type: :model do

  

  describe 'Validation' do
    it "has a valid factory" do
      expect(build(:post)).to be_valid
    end

    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:content) }
    it { should validate_presence_of(:user_id) }
    it { should validate_length_of(:content).is_at_least(140) }
  end

  describe 'Association' do
    it { should belong_to(:user)}
  end


end
