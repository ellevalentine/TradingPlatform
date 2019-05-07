User.destroy_all
Stock.destroy_all
Analyst.destroy_all

require 'faker'
require_all 'app'
# require 'pry'
require 'byebug'

# byebug

5.times do
  User.create(first_name: Faker::Name.male_first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email, dob: Faker::Date.birthday, bank_account: Faker::Bank.rand_in_range(0, 100000))
end

# users



# u1=User.create(first_name: "elle", last_name: "valentine", email: "elle.valentine@gmail.com", bank_account: 2000, dob:"27/09/1994")
# u2=User.create(first_name: "tom", last_name: "hanks", email: "tom.hanks@gmail.com", bank_account: 200, dob:"23/03/1990")
# u3=User.create(first_name: "ranya", last_name: "habanero", email: "ranya.h@gmail.com", bank_account: 400, dob:"21/05/1980")
# u4=User.create(first_name: "ben", last_name: "smith", email: "ben.smith@gmail.com", bank_account: 1000, dob:"15/02/1980")
# u5=User.create(first_name: "harry", last_name: "roberts", email: "harry.r@gmail.com", bank_account: 1500, dob:"10/11/1970")


# stocks

5.times do
  Stock.create(company_name: Faker::Company.name, symbol: Faker::Company.suffix, price: Faker::Bank.rand_in_range(0, 100))
end
#
# s1 =Stock.create(company_name: "facebook" symbol: "fb" price:100)
# s2 =Stock.create(company_name: "google" symbol: "gg" price:134)
# s3 =Stock.create(company_name: "apple" symbol: "ap" price:150)
# s4 =Stock.create(company_name: "tesla" symbol: "tes" price:80)
# s5 =Stock.create(company_name: "microsoft" symbol: "ms" price:94)

# analyst

5.times do
  Analyst.create(name: Faker::Name.name, bio: Faker::Lorem.sentence, content: Faker::Lorem.paragraph)
end
