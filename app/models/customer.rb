class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.find_by_name(name)
    self.all.select do |first|
      if first.full_name == name
        return first.full_name
      end
    end
  end

  def self.find_all_by_first_name(name)
    self.all.select do |first|
      if first.first_name == name
        first.first_name
      end
    end
  end

  def self.all_names
    self.all.map do |first|
      first.full_name
    end
  end

  def add_review(restaurant, content, rating)
    new_review = Review.new(self, restaurant, content, rating)
  end

  def num_reviews
    Review.all.select do |reviews|
      reviews.customer == self
    end.length
  end

  def restaurants
    Review.all.select do |reviews|
      reviews.map do |restaurants|
        restaurants.restaurant
      end.uniq
    end
  end
end
