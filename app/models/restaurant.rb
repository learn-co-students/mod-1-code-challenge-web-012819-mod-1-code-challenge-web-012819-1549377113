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

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    self.reviews.map do |review|
      review.customer
    end.uniq
  end

  def average_star_rating
    total_rating = 0
    self.reviews.each do |review|
      total_rating += review.rating
    end
    average_rating = total_rating.to_f / self.reviews.length
  end

  def longest_review
    longest_length_review = ""
    self.reviews.each do |review|
      # binding.pry
      longest_length_review = review.content if longest_length_review.length < review.content.length
    end
    longest_length_review
  end

end
