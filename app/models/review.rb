class Review

  attr_accessor :review, :rating, :content
  attr_reader :customer, :restaurant

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @rating = rating
    @@all << self
  end

  ##### class methods ######
  def self.all
    @@all
  end

end
