class Restaurant
  attr_accessor :customer, :restaurant, :rating, :content
  attr_reader :reviews

  @@all = []

  def initialize(customer, content, rating)
    @restaurant = restaurant
    @customer = customer
    @rating = rating
    @content = content
    @reviews = reviews
    @@all << self
  end

  def find_by_name(name)
    @@all.full_name.find{|name| full_name == name}.first
  end

  def reviews

  end

  def average_star_rating

  end


end
