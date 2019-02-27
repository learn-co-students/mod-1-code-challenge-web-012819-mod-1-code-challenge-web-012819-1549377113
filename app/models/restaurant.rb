class Restaurant
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

  def rating
    reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    sum_ratings = rating.inject(0) do |result, rating|
      result + rating
    end
    sum_ratings / reviews.length
  end

  def content
    reviews.map do |review|
      review.content
    end
  end

  def longest_review
    content.max_by do |content|
      content.length
    end
  end

end
