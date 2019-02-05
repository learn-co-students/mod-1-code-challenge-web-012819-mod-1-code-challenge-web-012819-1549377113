require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new("A", "B")
c2 = Customer.new("F", "M")

r1 = Restaurant.new("ABC")
r2 = Restaurant.new("XYZ")

rev1 = Review.new(c1, r1, 4, "Good Food!")
rev2 = Review.new(c2, r2, 5, "OK Food!")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
