require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

jared = Customer.new("Jared", "Wigan")
hanna = Customer.new("Hanna", "Brown")
justin = Customer.new("Justin", "Long")
jared2 = Customer.new("Jared", "Hampton")

emeril = Restaurant.new("Emeril's Kitchen")
wolf = Restaurant.new("Wolfgang Puck")
bistro = Restaurant.new("Bistro Pot")

superb = Review.new(jared, emeril, 5, "Food Was Fantastic!")
wow = Review.new(jared2, emeril, 4, "Food Was Fantastic!")
rubbish = Review.new(hanna, bistro, 1, "Food Was Terrible!")
meh = Review.new(justin, wolf, 3, "Food could've been better!")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
