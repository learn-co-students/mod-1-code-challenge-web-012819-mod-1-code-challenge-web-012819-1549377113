class Review

attr_reader :review_author, :restaurant
attr_accessor :review

@@all = []

def initialize(review_author, restaurant,review_name)
  @review_author = review_author
  @restaurant = restaurant
  @review_name = review_name
  @@all << self
end

def customer(review)

end

def rating

end

def content(review_name)
 Review.all.find do |review|
   review == review_name
 end

def self.all
 @@all
end

end
