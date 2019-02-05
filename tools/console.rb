require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

camille = Customer.new("camille", "feghali")
camille_dib = Customer.new("camille", "dib")
antoine = Customer.new("antoine", "dib")
lilliane = Customer.new("lilliane", "dib")
nabil = Customer.new("nabil", "dib")
elie = Customer.new("elie", "dib")

burger_king = Restaurant.new("burger king")
zwz = Restaurant.new("zwz")
roadster = Restaurant.new("roadster")

review_1 = Review.new(camille, zwz, 1, "I hate this place")
review_2 = Review.new(antoine, burger_king, 2, "Zibola")
review_3 = Review.new(lilliane, roadster, 3, "Meh")
review_4 = Review.new(nabil, zwz, 3, "It's OK!")
review_5 = Review.new(elie, zwz, 5, "Awesome place!")

camille.add_review(zwz, 0, "what is this shit place asdasdasdasdasdasd")
antoine.add_review(roadster, 5, "love it")
lilliane.add_review(zwz, 4, "lovely")


# zwz.average_star_rating
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
