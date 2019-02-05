require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

ethan = Customer.new("Ethan", "Nam")
michael = Customer.new("Michael", "Jordan")
robert = Customer.new("Robert", "Han")
michael2 = Customer.new("Michael", "Jackson")

fridays = Restaurant.new("TGIFridays")
olive = Restaurant.new("Olive Garden")
mcdonalds = Restaurant.new("McDonalds")

ethan.add_review(fridays, "This restaurant sucks", 1)
ethan.add_review(olive, "This restaurant is great", 1)
ethan.add_review(mcdonalds, "This restaurant is so awesome", 100)
ethan.add_review(olive, 100.0, 5)

michael.add_review(fridays, "WOOHOO", 5)
michael.add_review(olive, "dayam", 1)
michael.add_review(mcdonalds, "I will go again", 4)

robert.add_review(fridays, "All day", 5)
robert.add_review(olive, "never again", 1)
robert.add_review(mcdonalds, "This restaurant sucks", 2)

robert.add_review(fridays, "Could be better", 4)
robert.add_review(olive, "Average", 3)
robert.add_review(mcdonalds, "This restaurant sucks", 2)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line