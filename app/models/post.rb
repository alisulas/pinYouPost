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

class Post < ApplicationRecord

  # == Constants ============================================================
  
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  
  # == Relationships ========================================================
  belongs_to :user
  
  # == Validations ==========================================================
  validates :title, presence: true
  validates :content, presence: true, length: { minimum: 140 } 
  validates :user_id, presence: true
  

  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  
end
