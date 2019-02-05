require 'pry'

class Review

  attr_reader :customer, :restaurant
  attr_accessor :rating, :content

  @@all = []

  def initialize(customer, restaurant, rating, content)
    @customer = customer
    @restaurant = restaurant
    @rating = rating
    @content = content
  end

  def self.all
    @@all
  end

end
