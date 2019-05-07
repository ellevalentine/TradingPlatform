class User < ApplicationRecord
  has_many :blogs
  has_many :analysts, through: :blogs

  validates :email, presence: true 
  validates :password, presence: true
  has_secure_password

  validates :email, uniqueness: true 
end
