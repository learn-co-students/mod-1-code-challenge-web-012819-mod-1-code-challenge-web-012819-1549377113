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

  def self.find_by_name(name)
    self.all.find { |restaurant| restaurant.name == name }
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    my_customers = self.reviews.map { |review| review.customer }
    my_customers.uniq
  end

  def average_star_rating
    #"map" the rating of each review for this restaurant
    #add each integer in the returned array
    #divide by the length of the array


  end

  def longest_review
    #max_by?  the content length of each review for this restaurant

    #self.reviews.max_by { |review| review.content }
  end

end
