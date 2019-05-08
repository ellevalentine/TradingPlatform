class User < ApplicationRecord
  has_many :blogs
  has_many :analysts, through: :blogs
  has_many :tradingbooks

  validates :email, presence: true
  validates :password, presence: true
  has_secure_password

  validates :email, uniqueness: true
end
