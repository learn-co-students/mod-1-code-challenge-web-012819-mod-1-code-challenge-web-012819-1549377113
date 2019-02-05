require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
alexb = Customer.new("AJ","BO")
cd = Customer.new("CZ","DC")
a = Customer.new("XM","BF")
alexc= Customer.new("AJ","CL")

restaurant1 = Restaurant.new("R1", "Cool", 3)
restaurant2 = Restaurant.new("Thai", "Nice", 4)
restaurant3 = Restaurant.new("Chinese", "special", 2)
restaurant4 = Restaurant.new("Middle", "Delish", 5)

review1 = Review.new(alexb, "Awesome!")
review2 = Review.new(alexb, "Yum!")
review3 = Review.new(a, "Good!")
review4 = Review.new(alexc, "Yes!")
review5 = Review.new(cd, "Ew!")
review6 = Review.new(alexc, "Yummmy again!")



binding.pry
0 #leave this here to ensure binding.pry isn't the last line
