class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end
  
#####Class_Methods#####

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |restaurant|
      restaurant.name == name
    end
  end

###Instance_Methods####

  def customers
    Review.all.select do |review|
      review.restaurant == self
    end.map do |restaurant_review|
      restaurant_review.customer
    end
  end

  def reviews
    array = Review.all.map do |review|
      if review.restaurant == self
        review.content
      end
    end
    array.compact
  end

  def average_star_rating
    count = 0
    sum = 0
    Review.all.each do |review|
      if review.restaurant == self
        count += 1
        sum += review.rating
      end
    end
    sum / count
  end

  def longest_review
    self.reviews.sort_by {|review| review.length }.reverse[0]
  end

end
