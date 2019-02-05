require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

c1 = Customer.new('Josh', 'Gluck')
c2 = Customer.new('Jordan', 'Gluck')
c3 = Customer.new('Josh', 'Gluck')


res1 = Restaurant.new('chipotle')
res2 = Restaurant.new('greenpoke')
res3 = Restaurant.new('redpoke')


r1 = Review.new(c1, res2, 4, 'pretty good')
r2 = Review.new(c2, res3, 3, 'very very bad')
r3 = Review.new(c1, res1, 2, 'amazing')
r4 = Review.new(c3, res1, 5, 'ok')


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
