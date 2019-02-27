require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new('Micaela', 'Rivera')
c2 = Customer.new('Chloe', 'Nunez')
c3 = Customer.new('Blanca', 'Vera')

r1 = Restaurant.new("La Esquina")
r2 = Restaurant.new("Carbone")
r3 = Restaurant.new("Catch")

rv1 = Review.new(c1, r1, 4, 'Good tequila')
rv2 = Review.new(c1, r2, 5, 'Amazing everything, rainbow cookies YUM')
rv3 = Review.new(c1, r3, 3, 'Must like seafood, pretty solid Old Fashion')
rv4 = Review.new(c2, r1, 1, 'Tequila yuck')
rv5 = Review.new(c2, r2, 4, 'It was aight')
rv6 = Review.new(c2, r3, 2, 'Seafood, ew')
rv7 = Review.new(c3, r1, 3, 'Ok taco')
rv8 = Review.new(c3, r2, 2, 'Overated')
rv9 = Review.new(c3, r3, 4, 'Oldie but goodie')

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
binding.pry
0 #leave this here to ensure binding.pry isn't the last line
