class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []


  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @content = content
    @@all << self
    if rating > 5
      @rating = 5
    elsif rating < 1
      @rating = 1
    else
      @rating = rating
    end
  end

  def self.all
    @@all
  end

end
