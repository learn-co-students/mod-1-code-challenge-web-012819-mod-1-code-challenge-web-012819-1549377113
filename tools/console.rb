require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

elizabeth = Customer.new("Elizabeth", "Kosowski")
dolma = Customer.new("Dolma", "Gurung")
eric = Customer.new("Eric", "Rai")

shakeshack = Restaurant.new("Shakeshack")
mc = Restaurant.new("Mc")
olive = Restaurant.new("Olive Graden")

elizabeth.add_review(shakeshack, 4, "very good mushroom burgers")
elizabeth.add_review(mc, 2, "Bad breakfast")
dolma.add_review(shakeshack, 6, "very good mushroom burgers and fries")
dolma.add_review(olive, 5, "very good italian food specially pasta and pizza")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
