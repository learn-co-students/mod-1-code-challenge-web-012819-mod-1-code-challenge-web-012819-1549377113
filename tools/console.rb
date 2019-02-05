require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("Jon", "Doe")
c2 = Customer.new("Jane", "Doe")
c3 = Customer.new("Jon", "Doe")
c4 = Customer.new("Mike", "Johnson")


r1 = Restaurant.new("Outback")
r2 = Restaurant.new("Gersi")
r3 = Restaurant.new("La Cigogne")

rev1 = Review.new("Jane Doe", "Outback", 4, "Love this place!")
rev2 = Review.new("Mike Johnson", "Gersi", 5, "The service is dolomite!!")
rev3 = Review.new("Mike Johnson", "Gersi", 5, "The service is dolomite!!")
rev4 = Review.new("Mike Johnson", "Gersi", 5, "The service is dolomite!!")






binding.pry
0 #leave this here to ensure binding.pry isn't the last line
