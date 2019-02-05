require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

elizabeth = Customer.new("Elizabeth", "Kosowski")
dolma = Customer.new("Dolma", "Gurung")

panera = Restaurant.new("Panera")
wendys = Restaurant.new("Wendys")

review1 = Review.new(elizabeth, panera, 5, "I love this restaurant.")
review2 = Review.new(dolma, panera, 2, "I don't like this restaurant")
review3 = Review.new(elizabeth, wendys, 1, "This place isn't great.")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
