class Product < ApplicationRecord

  # == Constants ============================================================
  
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  has_attached_file :image, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  
  # == Relationships ========================================================
  belongs_to :user
  
  # == Validations ==========================================================
  validates_presence_of :name
  validates_presence_of :description

  
  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
  





end
