require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

park = Customer.new("nate", "park")
parker = Customer.new("nate", "parker")
choi = Customer.new("jane", "choi")

rest1 = Restaurant.new("burger")
rest2 = Restaurant.new("pizza")
rest3 = Restaurant.new("halal")

park.add_review(rest1, 10, "blah")
park.add_review(rest2, 3, "ahsffefefefwef")
park.add_review(rest1, 4, "ahsasdffwef")
parker.add_review(rest2, 9, "iiiief")
choi.add_review(rest1, 7, "ddddawefdd")
choi.add_review(rest3, 6, "aweefaw")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
