class Restaurant
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(restaurant_name)
    self.all.select do |restaurant|
      if restaurant.name == restaurant_name
        restaurant.name
      end
    end
  end

  def reviews
    Review.all.select do |reviews|
      reviews.restaurant == self
    end.uniq
  end

  def customers
    my_customers = self.reviews.map do |customers|
      customers.customer
    end
  end

  def average_star_rating
    # use map to loop through the review array and grap all the ratings, then use the
    # then use the .inject method to get the sum of all numbers and divide by the size or number of reviews
  end

  def longest_review
    # use map to loop through the review array and grap the content in it, then use inject to find the longest one
  end
end
