require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
#Customer
sj = Customer.new("steve", "jobs")
em = Customer.new("elon", "musk")

#Review
rv1 = Review.new(sj, "chinese food", 5, "great")
rv2 = Review.new(em, "mexican food", 1, "horrible")
rv3 = Review.new(sj, "korean food", 3, "ok")

#Restaurant
cf = Restaurant.new("chinese food")
mf = Restaurant.new("mexican food")
kf = Restaurant.new("korean food")


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
