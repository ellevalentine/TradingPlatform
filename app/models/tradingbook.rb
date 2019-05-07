class Tradingbook < ApplicationRecord
  belongs_to :Stock
  belongs_to :user 
end
