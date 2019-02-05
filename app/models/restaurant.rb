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
    cust = []
    Review.all.select do |review|
      if review.restaurant == self
        cust << review.customer
      end
      end
      cust.uniq
  end

  def reviews
    revs = []
    Review.all.select do |review|
      if review.restaurant == self
        revs << review.content
      end
    end
    revs
  end

  def average_star_rating
    rating = []
    sum = 0
    Review.all.select do |review|
      if review.restaurant == self
      rating << review.rating
    end
  end
      rating.each do |rate|
        sum += rate
      end
      total = sum.to_f / rating.length.to_f
  end

  def longest_review
    revs = []
    Review.all.select do |review|
      if review.restaurant == self
        revs << review.content
      end
    end
    longest = revs.max_by do |rev|
          rev.length
    end
    longest
  end
end
