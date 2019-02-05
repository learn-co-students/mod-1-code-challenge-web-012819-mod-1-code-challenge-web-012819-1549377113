require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


michael = Customer.new("Michael","Carneal")
shannon = Customer.new("Shannon","Larue")
mike = Customer.new("Michael", "Thomas")

bennagins = Restaurant.new("Bennagins")
restaurant1 = Restaurant.new("Restaurant One")

review_1 = Review.new(michael, bennagins, 4, "I found the atmosphere inviting.")

review_2 = Review.new(shannon, restaurant1, 2, "This place is generic and lacks uniquness")


#### instance method tests #####

mike.add_review(restaurant1, "I really enjoyed the tacos",4)
michael.add_review(restaurant1, "meh", 4)



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
