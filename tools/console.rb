require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end




c1 = Customer.new("cynthia", "eddy")
c2 = Customer.new("ive", "sell")
c3 = Customer.new("jeff", "davies")

r1 = Restaurant.new("omai")
r2 = Restaurant.new("the best ever")
r3 = Restaurant.new("yummy")


rev1 = Review.new(c1, r1, 5,"great")
rev2 = Review.new(c2, r2, 3,"okay")
rev3 = Review.new(c1, r3, 2,"subpar")
rev4 = Review.new(c3, r1, 3,"okay")
rev5 = Review.new(c1, r2, 4,"delish")

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
