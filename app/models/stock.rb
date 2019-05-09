class Stock < ApplicationRecord
  has_many :tradingbooks
  has_many :users, through: :tradingbooks

  def self.search_by(search_term)
    if search_term
     self.select { |a| a.company_name == search_term.upcase }
    else
     Stock.all
    end
   end

end
