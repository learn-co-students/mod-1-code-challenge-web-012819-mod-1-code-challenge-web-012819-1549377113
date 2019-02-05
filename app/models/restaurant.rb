class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
		@@all << self
  end

  def reviews
  	Review.all.select { |review| review.restaurant == self }
  end

  def customers
  	reviews.map(&:customer).uniq
  end

  def average_star_rating
  	star_sum = reviews.inject(0) { |sum, review| sum += review.rating }
  	(star_sum.to_f / reviews.length.to_f).round(2)
  end

  def longest_review
  	reviews.max_by { |review| review.content.length }
  end

  def self.find_by_name(name)
  	@@all.find { |restaurant| restaurant.name == name }
  end

  def self.all
  	@@all
  end

end
