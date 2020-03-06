require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

brandon = Customer.new("Brandon", "Green")
brandon2 = Customer.new("Brandon", "Jones")
mike = Customer.new("Mike", "Smith")
joe = Customer.new("Joe", "Schmoe")

texas_roadhouse = Restaurant.new("Texas Roadhouse")
applebees = Restaurant.new("Applebees")
boston_market = Restaurant.new("Boston Market")

rev1 = Review.new(brandon, texas_roadhouse, 10)
rev2 = Review.new(brandon, boston_market, 4)
rev3 = Review.new(mike, texas_roadhouse, 8)
rev4 = Review.new(joe, applebees, 10)
rev5 = Review.new(joe, applebees, 6)
rev6 = Review.new(brandon, applebees, 4)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line