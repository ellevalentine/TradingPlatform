# User.destroy_all
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



# Blog.create( user_id:  , analyst_id: )



url = 'https://spreadsheets.google.com/feeds/list/0AhySzEddwIC1dEtpWF9hQUhCWURZNEViUmpUeVgwdGc/1/public/basic?alt=json'

response_string = RestClient.get(url)

stocks_hash = JSON.parse(response_string)

stocks_hash["feed"]["entry"].each do |company|
  Stock.create(company_name: company["content"]["$t"].split(",")[0].split(":")[1], symbol: company["title"]["$t"] , price: company["content"]["$t"].split(",")[1].split(":")[1])
end


Analyst.create(name: "Nico", bio: "tech guru", content: "The United States and China have locked horns over trade since last year, when the Trump administration slapped levies on billions of dollars worth of Chinese goods and demanded the Asian nation adopt policy changes that would, among other things, make China’s market more accessible to U.S. companies.

Beijing has responded in kind with its own tariffs on a range of U.S. goods including soybeans and pork products. While expectations have mounted that the two sides appeared to be nearing a deal, relations have soured in recent days.

Reuters, citing U.S. government and private-sector sources, reported on Wednesday that China late last week had backtracked on almost all aspects of a draft trade agreement, threatening to blow up the negotiations.

Trump, who has embraced largely protectionist policies as part of his “America First” agenda, warned China on Wednesday that it was mistaken if it hoped to delay a trade deal until a Democrat controlled the White House.

“The reason for the China pullback & attempted renegotiation of the Trade Deal is the sincere HOPE that they will be able to ‘negotiate’ with Joe Biden or one of the very weak Democrats,” Trump, a Republican, tweeted on Wednesday.

“Guess what, that’s not going to happen! China has just informed us that they (Vice-Premier) are now coming to the U.S. to make a deal. We’ll see, but I am very happy with over $100 Billion a year in Tariffs filling U.S. coffers,” he added." )
Analyst.create(name: "Dan", bio: "lean mean coding machine", content: "Hopes of trade dispute resolution underpin FTSE 100
Shashwat Awasthi, Yadarisa Shabong
3 MIN READ

(Reuters) - Britain’s FTSE 100 ended higher on Wednesday as investors welcomed indications from Washington that it and Beijing could be closer to a trade deal, though the mood remained wary and dull earnings updates kept a lid on gains.

FILE PHOTO: A broker looks at financial information on computer screens on the IG Index trading floor in London, Britain February 6, 2018. REUTERS/Simon Dawson
The main index inched 0.2 percent higher, also boosted by oil stocks after data showed a surprise draw in U.S. crude inventories.

The FTSE 250 was up 0.3 percent, helped by gains in industrial and oil stocks.

World markets saw an uptick after the U.S. said it had received an indication that Beijing wanted to make a trade deal. Washington earlier announced it would raise tariffs on $200 billion worth of Chinese imports.

Investors had remained wary all session as trade concerns dominated. Reuters sources said a draft agreement was riddled with reversals by China that undermined core U.S. demands, backing claims that China had backtracked on almost all aspects of the deal.

China’s commerce ministry said late on Wednesday it would retaliate if the tariff hikes went ahead.

ADVERTISEMENT



“Stock markets are again tied to headlines... just like the dark days of earlier in the trade war, on the watch for signs that worst-case scenarios can be avoided,” Cityindex analyst Ken Odeluga said.

Wednesday’s earnings updates kept any optimism in check.

Imperial Brands affirmed its full-year forecast but the tobacco company’s shares fell 6.3 percent to a more than five-year low on weaker-than-expected sales of e-cigarettes.

“Imperial’s valuation is one that continues to reflect little market conviction in hitting its target,” Jefferies analysts said.

Broadcaster ITV fell 6.1 percent to its worst day in more than a year as it said the late timing of Easter and political and economic uncertainty led to weaker advertising demand in the first quarter.

EasyJet gave up 3 percent while mid-cap peer Wizz Air fell 2.6 percent after Davy Research said low-cost carriers would be cautious on their second-half outlooks due to uncertainty over Brexit, higher fuel prices and MAX issues for those using Boeing’s fleet." )
Analyst.create(name: "Alice", bio: "hello im alice", content: "Healthcare Sector Overview
With a 1.3 Bn population, healthcare in India is expected to be a $372 Bn industry by 2022 and opens a largely untapped opportunity for the healthtech startups globally.

According to Inc42 DataLabs estimate, there are at present more than 4,800 active healthtech startups in India.  In all, the healthtech startups raised $504 Mn, as per Inc42 DataLabs’ funding report 2018.

In the healthtech sector, Netmeds competes with startups such as mChemist, Medikoe, BigChemist and 1mg.

Recently in April, Gurugram-based MyHealthcare has raised $3 Mn as part of its ongoing Series A funding round, led by Sixth Sense Ventures. Closely followed by the Bengaluru-based digital healthtech startup mfine, which raised $17.2 Mn Series B funding round from SBI Investment, SBI Ven Capital and BEENEXT." )
Analyst.create(name: "Lucy", bio: "I like healthtech", content: "The panic attacks started after Chloe watched a man die.

She spent the past three and a half weeks in training, trying to harden herself against the daily onslaught of disturbing posts: the hate speech, the violent attacks, the graphic pornography. In a few more days, she will become a full-time Facebook content moderator, or what the company she works for, a professional services vendor named Cognizant, opaquely calls a “process executive.”

For this portion of her education, Chloe will have to moderate a Facebook post in front of her fellow trainees. When it’s her turn, she walks to the front of the room, where a monitor displays a video that has been posted to the world’s largest social network. None of the trainees have seen it before, Chloe included. She presses play.

SOMEONE IS STABBING HIM, DOZENS OF TIMES, WHILE HE SCREAMS AND BEGS FOR HIS LIFE.
The video depicts a man being murdered. Someone is stabbing him, dozens of times, while he screams and begs for his life. Chloe’s job is to tell the room whether this post should be removed. She knows that section 13 of the Facebook community standards prohibits videos that depict the murder of one or more people. When Chloe explains this to the class, she hears her voice shaking.

Returning to her seat, Chloe feels an overpowering urge to sob. Another trainee has gone up to review the next post, but Chloe cannot concentrate. She leaves the room, and begins to cry so hard that she has trouble breathing.

No one tries to comfort her. This is the job she was hired to do. And for the 1,000 people like Chloe moderating content for Facebook at the Phoenix site, and for 15,000 content reviewers around the world, today is just another day at the office.

Message Input")


 # byebug
 #
 # 0
