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
    self.all.find{|restaurant| restaurant.name == name}
  end

  def reviews
    Review.all.select{|review| review.restaurant == self}
  end

  def customers
    reviews.map{|review| review.customer}.uniq
  end

  def restaurant_ratings
    reviews.map{|review| review.rating}
  end

  def average_star_rating
    number_of_ratings = reviews.count
        # binding.pry
    total_rating = restaurant_ratings.inject{|sum, rating| sum+rating}
    average_star_rating = total_rating.to_f/number_of_ratings.to_f
  end

  def review_content
    reviews.map{|review| review.content}
  end

  def longest_review
    review_content.max_by{|content| content.length}
  end

end
