require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

c1 = Customer.new("Rob", "Han")
c2 = Customer.new("Rory", "Mcilroy")
c3 = Customer.new("Tiger", "Woods")
c4 = Customer.new("Rob", "Woods")

r1 = Restaurant.new("TGIF")
r2 = Restaurant.new("Cheesecake Factory")
r3 = Restaurant.new("Upland")

re1 = Review.new(c1, r1, 5, "i like friday!")
re2 = Review.new(c2, r2, 3, "i like cheesecake!")
re3 = Review.new(c3, r3, 1, "i dislike upland!")
re4 = Review.new(c1, r2, 4, "my 2nd review!")








binding.pry
puts "bye bye"
