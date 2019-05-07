class User < ApplicationRecord
  has_many :blogs
  has_many :analysts, through: :blogs
end
