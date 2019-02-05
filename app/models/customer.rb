class Customer

  @@all = []

  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @all
  end

  def self.find_by_name(full_name)
   @@all.find do |customer|
     self.full_name == #concatenate first and last name
   end
 end

 def find_all_by_first_name(name)
   @all.select do |customer|
      customer.first_name = name
   end
 end

 def self.all_names

 end

 def add_review(restaurant, content, rating)
   Review.new(self, restaurant)
 end

 def num_reviews
   total_review = 0
   Review.all do |review|
     if review_author == self
       total_review += 1
     end
   end
      total_review
 end

def restaurants
  Reviews.all.find do |review|
    #can use uniq here
  end
end

end
