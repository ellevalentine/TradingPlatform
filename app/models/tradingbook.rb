class Tradingbook < ApplicationRecord
  # this has to be a mtm (tradingbook <-> stocks)
  has_one :stock
  belongs_to :user
end
