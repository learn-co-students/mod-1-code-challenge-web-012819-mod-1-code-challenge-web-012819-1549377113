require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("dana", "sevcik")
c2 = Customer.new("dana", "smith")

res1 = Restaurant.new("res1")
res2 = Restaurant.new("res2")
res3 = Restaurant.new("res3")

rev1 = Review.new(c1, res1, 5, "delicious food")
rev2 = Review.new(c2, res1, 4, "good food")
rev3 = Review.new(c1, res2, 1, "horrible")
rev4 = Review.new(c2, res2, 2, "bad")
rev5 = Review.new(c1, res3, 3, "avg")
rev6 = Review.new(c2, res3, 4, "OK")
rev7 = Review.new(c1, res1, 5, "always good")









# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
