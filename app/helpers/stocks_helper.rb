require 'rest-client'
require 'json'
require 'byebug'

module StocksHelper

  def get_current_stocks

    url = 'https://spreadsheets.google.com/feeds/list/0AhySzEddwIC1dEtpWF9hQUhCWURZNEViUmpUeVgwdGc/1/public/basic?alt=json'

    response_string = RestClient.get(url)
    stocks_hash = JSON.parse(response_string)

    stocks_array = []

    stocks_hash["feed"]["entry"].each do |company|
      company_hash = {}
      company_hash["company name"] = company["content"]["$t"].split(",")[0].split(":")[1]
      company_hash["price"] = company["content"]["$t"].split(",")[1].split(":")[1]
      company_hash["symbol"] = company["title"]["$t"]
      stocks_array << company_hash
    end

     stocks_array

  end
end
