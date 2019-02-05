require 'pry'

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
    self.all.find do |restaurant_name|
      restaurant_name.name == name
    end
  end

  def customers
    Review.all.map do |reviewed|
      reviewed.customer
    end.uniq
  end

  def reviews
    Review.all.map do |reviewed|
      self.reviewed
    end
  end

  def average_star_rating
    #go through all the reviews
    #look at the rating
    #find average of each restaurant review
    #return average rating for specific restaurant
  end

  def longest_review
    #look at all reviews
    #find the length of each string and compare
    #return the string that is the longest
  end

end
