User.destroy_all
Stock.destroy_all
Analyst.destroy_all

require 'faker'
require_all 'app'
require 'byebug'
require 'rest-client'
require 'json'

# byebug


#
# 5.times do
#   User.create(first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday, bank_account: Faker::Bank.rand_in_range(0, 100000))
# end
#
#
# # stocks
#
# 5.times do
#   Stock.create(company_name: Faker::Company.name, symbol: Faker::Company.suffix, price: Faker::Bank.rand_in_range(0, 100))
# end
#
#
# # analyst
#
# 5.times do
#   Analyst.create(name: Faker::Name.name, bio: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
# end
#

url = 'https://spreadsheets.google.com/feeds/list/0AhySzEddwIC1dEtpWF9hQUhCWURZNEViUmpUeVgwdGc/1/public/basic?alt=json'

response_string = RestClient.get(url)

stocks_hash = JSON.parse(response_string)

stocks_hash["feed"]["entry"].each do |company|
  Stock.create(company_name: company["content"]["$t"].split(",")[0].split(":")[1], symbol: company["title"]["$t"] , price: company["content"]["$t"].split(",")[1].split(":")[1])
end

 # byebug
 #
 # 0
