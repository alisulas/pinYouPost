# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default("0"), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  name                   :string
#  date_of_birth          :datetime
#  is_female              :boolean          default("false")
#  phone_number           :string(13)
#

class User < ApplicationRecord

  # == Constants ============================================================
  
  # == Attributes ===========================================================
  
  # == Extensions ===========================================================
  #devise
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #paperclip
  has_attached_file :avatar, styles: { large: "600x600>", medium: "210x210>>", small: "100x100>", thumb: "37x37>"}, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment :avatar,
    content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

  
  # == Relationships ========================================================
  has_many :products, dependent: :destroy
  has_many :posts, dependent: :destroy
  
  # == Validations ==========================================================
  
  # == Scopes ===============================================================
  
  # == Callbacks ============================================================
  
  # == Class Methods ========================================================
  
  # == Instance Methods =====================================================
end
