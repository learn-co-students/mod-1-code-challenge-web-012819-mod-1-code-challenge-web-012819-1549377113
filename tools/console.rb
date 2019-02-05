require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

### Customer ###
david_ren = Customer.new("David", "Ren")
bruce_wayne = Customer.new("Bruce", "Wayne")
david_copperfield = Customer.new("David", "Ren")

### Restaurant ###
taste_of_china = Restaurant.new("Taste of China")
iggy_pizza = Restaurant.new("Iggy's Pizza")

### Review ###
china_review = Review.new(david_ren, taste_of_china, 5, "It was great!")
pizza = Review.new(bruce_wayne, iggy_pizza, 3, "It's meh")
david_pizza = Review.new(david_ren, iggy_pizza, 2, "I've had better")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
