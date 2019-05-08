require 'rest-client'
require 'json'
require 'byebug'



url = 'https://spreadsheets.google.com/feeds/list/0AhySzEddwIC1dEtpWF9hQUhCWURZNEViUmpUeVgwdGc/1/public/basic?alt=json'

response_string = RestClient.get(url)

stocks_hash = JSON.parse(response_string)

stocks_array =[]

stocks_hash["feed"]["entry"].each do |company|
  company_hash = {}
  company_hash["company name"] = company["content"]["$t"].split(",")[0].split(":")[1]
  company_hash["price"] = company["content"]["$t"].split(",")[1].split(":")[1]
  company_hash["symbol"] = company["title"]["$t"]
  stocks_array << company_hash
end


stocks_hash["feed"]["entry"].each do |company|
  Stock.create(company_name: company["content"]["$t"].split(",")[0].split(":")[1], symbol: company["title"]["$t"] , price: company["content"]["$t"].split(",")[1].split(":")[1])
end




# stocks_array.each do |info|
#
#
#   # Stock.create(company_name: info["company_name"] ,symbol: info["price"] , price: info["symbol"] )
#
# end


# stock_array << stocks_hash["feed"]["entry"][0]["content"]["$t"].split(",")[0].split(":")[1]
# stock_array << stocks_hash["feed"]["entry"][0]["content"]["$t"].split(",")[1].split(":")[1]
# stock_array << stocks_hash["feed"]["entry"][0]["title"]["$t"]
#
# company_name = stocks_hash["feed"]["entry"][0]["content"]["$t"].split(",")[0].split(":")[1]
# price = stocks_hash["feed"]["entry"][0]["content"]["$t"].split(",")[1].split(":")[1]
# symbol = stocks_hash["feed"]["entry"][0]["title"]["$t"]

byebug
0
