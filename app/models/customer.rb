class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end

  def self.find_by_name(full_name)
    @@all.find do |person|
      person.full_name == full_name
    end
  end

  def self.find_all_by_first_name(first_name)
    @@all.select do |person|
      person.first_name == first_name
    end
  end

  def add_review(restaurant, rating, content)
    Review.new(self, restaurant, rating, content)
  end

  def num_reviews
    total_review = Review.all.select do |review|
      review.customer == self
    end
    total_review.length
  end

  def restaurants
    review = Review.all.map do |review|
      if review.customer == self
        review.restaurant
      end
    end
    review.compact.uniq
  end
end
