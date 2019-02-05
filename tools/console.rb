require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

###Customers###

c1 = Customer.new("matt", "masiello")
c2 = Customer.new("tom", "dwyer")
c3 = Customer.new("deb", "ovila")
c4 = Customer.new("john", "dillanger")
c5 = Customer.new("rachel", "fergotti")
c6 = Customer.new("matt", "fergotti")

###Restaurants###

r1 = Restaurant.new("good restaurant")
r2 = Restaurant.new("okay restaurant")
r3 = Restaurant.new("best restaurant")
r4 = Restaurant.new("worst restaurant")
r5 = Restaurant.new("weird restaurant")

###Reviews###

re1 = Review.new(c1, r1, 5, "definitly good!")
re2 = Review.new(c2, r1, 5, "not bad!")
re3 = Review.new(c1, r1, 5, "definitly the worst!")
re4 = Review.new(c1, r5, 5, "definitly weird!")
re5 = Review.new(c2, r5, 5, "definitly weird!")
re6 = Review.new(c2, r5, 5, "definitly weirdoooooos")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
