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
    # return restaurant instance
    @@all.find do |restaurant|
      restaurant.name == name
    end
  end

  def reviews
    # go through reviews and just select
    # reviews for this restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def all_my_customers
    # go through reviews and just
    # get the customers
    self.reviews.map do |review|
      review.customer
    end
  end

  def customers
    # just get unique customers from all_my_customers
    self.all_my_customers.uniq
  end

  def my_ratings
    # go through my reviews and just get the ratings
    self.reviews.map do |review|
      review.rating
    end
  end

  def average_star_rating
    # go through my_ratings array and add up
    # all ratings
    # divide that number by the count of my reviews
    # CHANGE TO FLOAT
    count = self.reviews.count.to_f
    total_reviews = 0
    self.my_ratings.each do |rating_num|
      total_reviews += rating_num.to_f
    end
    result = total_reviews / count
  end

  def content_array
    # get array of this restaurant's reviews
    self.reviews.map do |review|
      review.content
    end
  end


  def longest_review
    # look through content array
    # change each review to an array and count characters
    # add that to hash
    # find the max
    review_length = {}
    self.content_array.each do |content|
      review_length[content] = content.split("").count
    end
    review_length.max_by {|content, count| count}.first
  end


end
