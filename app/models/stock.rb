class Stock < ApplicationRecord
  has_many :tradingbooks
  has_many :users, through: :tradingbooks
end
