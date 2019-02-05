require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Me")
c2 = Customer.new("You")
c3 = Cusotmer.new("Them")

r1 = Restaurant.new("La Esquina")
r2 = Restaurant.new("Carbone")
r3 = Restaurant.new("Catch")

rv1 = Review.new("Decent Mexican food, awesome tequila")
rv2 = Review.new("Amazing everything, rainbow cookies YUM")
rv3 = Review.new("Must like seafood, pretty solid Old Fashion")
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
