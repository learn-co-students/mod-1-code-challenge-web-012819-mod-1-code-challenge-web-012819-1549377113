require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

Elizabeth = Customer.new("Elizabeth", "Kosowski")
Dolma = Customer.new("Dolma", "Gurung")
Eric = Customer.new("Eric", "Rai")

Shakeshack = Restaurant.new("Shakeshack")
Mc = Restaurant.new("Mc")
Olive = Restaurant.new("Olive Graden")

Elizabeth.add_review(Shakeshack, 4, "very good mushroom burgers")
Elizabeth.add_review(Mc, 2, "Bad breakfast")
Dolma.add_review(Shakeshack, 6, "very good mushroom burgers and fries")
Dolma.add_review(Olive, 5, "very good italian food specially pasta and pizza")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
