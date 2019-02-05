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
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def customers
    customer = Review.all.map do |review|
      if review.restaurant == self
        review.customer
      end
    end
    customerc.compact.uniq
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def longest_review
    length_tracker = 0
    restaurant_tracker = nil

    Review.all.map do |review|
      if review.content.length > 0
        length_tracker = review.content.length
        restaurant_tracker = review.restaurant
      end
    end
    restaurant_tracker
  end
end
